// 

import Foundation
@testable import WalletConnect_Swift

enum SerialiserTestData {
    static let emptyAgreementKeys = X25519AgreementKeys(sharedKey: Data(hex: ""), publicKey: Data(hex: ""))
    static let iv = Data(hex: "f0d00d4274a7e9711e4e0f21820b8877")
    static let publicKey = Data(hex: "45c59ad0c053925072f4503a39fe579ca8b7b8fa6bf0c7297e6db8f6585ee77f")
    static let mac = Data(hex: "fc6d3106fa827043279f9db08cd2e29a988c7272fa3cfdb739163bb9606822c7")
    static let cipherText =
        Data(hex: "14aa7f6034dd0213be5901b472f461769855ac1e2f6bec6a8ed1157a9da3b2df08802cbd6e0d030d86ff99011040cfc831eec3636c1d46bfc22cbe055560fea3")
    static let serialisedMessage = "f0d00d4274a7e9711e4e0f21820b887745c59ad0c053925072f4503a39fe579ca8b7b8fa6bf0c7297e6db8f6585ee77ffc6d3106fa827043279f9db08cd2e29a988c7272fa3cfdb739163bb9606822c714aa7f6034dd0213be5901b472f461769855ac1e2f6bec6a8ed1157a9da3b2df08802cbd6e0d030d86ff99011040cfc831eec3636c1d46bfc22cbe055560fea3"
    static let pairingApproveJSONRPCRequest = ClientSynchJSONRPC(id: 0,
                                               jsonrpc: "2.0",
                                               method: ClientSynchJSONRPC.Method.pairingApprove,
                                                                                        params: ClientSynchJSONRPC.Params.pairingApprove(PairingApproveParams(topic: "test_topic")))
    static let pairingApproveJSON = """
    {
    "id":1,
    "jsonrpc":"2.0",
    "method":"wc_pairingApprove",
    "params":{
      "topic":"test_topic"
    }
    }
    """
}
