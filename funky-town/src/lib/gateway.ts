import { invoke, type InvokeArgs } from "@tauri-apps/api/tauri";

const MOCK = false;

function promisify(data: any): Promise<any> {
  return new Promise((res, rej) => res(data))
}
function rejectify(message: string): Promise<any> {
  return new Promise((res, rej) => rej(message))
}

function invokeWrapper(cmd: string, args?: InvokeArgs | undefined): Promise<any> {
  if (!MOCK){
    return invoke(cmd, args)
  }

  // Begin mocking
  switch (cmd) {
    case "get_auth_status":
      return promisify({ "is_logged_in": false, "username": null, roles: [] })
    case "login":
      return promisify(true)
  }

  return rejectify(`Unsupported mock: ${cmd}`)
}


export { invokeWrapper as invoke };