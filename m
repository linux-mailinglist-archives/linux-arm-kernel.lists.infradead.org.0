Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5507B686DD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 12:11:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zaQ1U3Vt2MEul2MUvtIxWGalsOTdUpMtRWqJ9oMKNAQ=; b=IztaQLcqxgaXYv
	xAyA/UOr5vJa9jdIobenfWYVRJBGTAavq6WzqRDQ4BzXQdnSaPFBM1jAG2ukRlQG3YMgJqdTOJguK
	gAnzns7NjFbmshEci3V+qurbGLfTi9+J9rXgDhUdV77iwC0+Xy9sUzzrCLmXpgds5bRZqd4fyq5N6
	bIeVnX4sLAwlDMV3nQ6o0Q8N9WSp/DV/Iv/R/CgK/aGBe1QyKwyanyvXMBkegfQjmqW3NXyWCTHwE
	EBuj1vcN53LzZccB0jWRhXW9KSsw4LYdGGKN+8ISOg6xGyj+NMnRZdeSmGrSJgroSONQL3tRoz22y
	aAZBH0Io2Gm65DhsoSOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmxwR-0005Pf-2f; Mon, 15 Jul 2019 10:10:43 +0000
Received: from mail-eopbgr140077.outbound.protection.outlook.com
 ([40.107.14.77] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmxvw-0005En-3o
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 10:10:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kyv78UNZmuvfPqnRCXd2HJNQqQqYjD8uz5wvbvYbyJj084j9UmmX6gOshPagf2y+JxXdhAoKOeaSiCXojZQz8R3+l1XEAbk+co7Y30vVpHB05I0eq0W5Ec403o2QcDMmiUVX+1cq9V6EeH/537GZx+PW123FjDteBtKIG8ygLDACvOLI0n+vK1562SPi/HvzqRwqto/GSCPIVOqkTbaF07Qk1MaJQjiaNvorT8O54NS/YjoEifIha0AypOiSEnearCBjGypeZlf64WJ2+tMgfH0w9+cHEJcBFhdOkZ6N2QWzj85tG4dmJOT5ryuBUgbUbTJE9CcJzoh4ULnIjFwAug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pMPKKSIRspN5ganPLxr2YKdh0EHmbfjvslctydqFXys=;
 b=k5axLIOm0dBGUUiuiUZX9CCEfpZsWoSFULSdWcIGsanHU5u9hSFqdihYuuEdclgkhjYLiIO28OP4JPA+X9l2Zw5zIeGBUhoWby6y9CRMk7YrRQso/9J70naAYChhZMAVYvsHz/+mfg26V1ZA7yvdxLSi+90eQchyFOqBgRMxsDBU3ciPQ1GVdse8KpBJYBfkL3EJAel3M3lM2yXQpFkJoRBrxX3y8R+fg2HTAmg5MgmatOaMvlyCdOp6lu02peVy+6bhboJtBLJ5W40o+xoXQ+LMWkk58vD9g7kAMDwOf8pwuk6aRilAOuDxPzfb9UKn/slBGnFASTC5NWurOkiQkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pMPKKSIRspN5ganPLxr2YKdh0EHmbfjvslctydqFXys=;
 b=DwpRcf9atL7oEo+AJlbc5VvbRsDIdL8tDcKEpJxj7kF10a5i+06NqRfQszExHBvO9BhhZa8jCrdc9ho7Sc1j2kLXSnm9HUQeri+Syhi32OJV52ZshorrixPUy/jRTbg3qIZNlgYp83VhGOVYog24U/cQi5Ywj3D6DwGsCKhBlrI=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4356.eurprd04.prod.outlook.com (52.134.93.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Mon, 15 Jul 2019 10:10:11 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47%5]) with mapi id 15.20.2052.020; Mon, 15 Jul 2019
 10:10:11 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>, "f.fainelli@gmail.com"
 <f.fainelli@gmail.com>
Subject: [PATCH v3 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Topic: [PATCH v3 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Index: AQHVOvV8miufREPgWk29kTcXKZEuBQ==
Date: Mon, 15 Jul 2019 10:10:10 +0000
Message-ID: <1563184103-8493-2-git-send-email-peng.fan@nxp.com>
References: <1563184103-8493-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1563184103-8493-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0024.apcprd03.prod.outlook.com
 (2603:1096:203:2e::36) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 075c2886-9846-4998-d6be-08d7090c9ecc
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4356; 
x-ms-traffictypediagnostic: AM0PR04MB4356:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <AM0PR04MB4356C7933144024FC78B4FC488CF0@AM0PR04MB4356.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00997889E7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(396003)(39860400002)(376002)(366004)(199004)(189003)(66066001)(68736007)(2501003)(7736002)(305945005)(110136005)(316002)(7110500001)(99286004)(54906003)(50226002)(8936002)(52116002)(386003)(44832011)(8676002)(186003)(102836004)(446003)(2616005)(11346002)(26005)(14454004)(486006)(66446008)(64756008)(66556008)(66476007)(66946007)(81156014)(81166006)(6306002)(25786009)(2906002)(3846002)(6116002)(2201001)(15650500001)(2420400007)(6486002)(478600001)(86362001)(6436002)(14444005)(966005)(256004)(76176011)(6506007)(5660300002)(71190400001)(476003)(71200400001)(36756003)(6512007)(53936002)(4326008)(53376002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4356;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: AtzLDsRvqKTXNVTLt/FmlK5BH5wNFAutUrF7UpeiSwI4o2wlHXFh30G1CKoPeuZEhEpEExiELlF5gd2FsUAja5nufRfT+Szxd3bnBPwNZXz/MDNXf6l7Nwx4KZ6p906VSamBviJ8H4xyTz6/XQI0gm/5LSRog/7l0EHkVB5tayjbCWgxXyOdX2uKgDe7038IC/kjAgBUCs4wUOVquB4kZe3UANdy2Xj26ZWYZzO+WIqDhF3dg7QSDuhQunStlRha6BZDajmYeq6ciSM+m4aAoah6izoFnosYoB4zR0omCMvcXZasKjQ3pOl9K81iHrOUJP+Xqqs56e3rFWOp982A4R8ke/wMwiUOFKwyAtfeTWmmGKHVqOb+s5O9DoYsMBGn44mesxGNHHl7hTsaBkVn/p+v7gUCqKWeu8vsYp7LULc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 075c2886-9846-4998-d6be-08d7090c9ecc
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2019 10:10:10.8164 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4356
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_031012_158405_EDE659E5 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

The ARM SMC/HVC mailbox binding describes a firmware interface to trigger
actions in software layers running in the EL2 or EL3 exception levels.
The term "ARM" here relates to the SMC instruction as part of the ARM
instruction set, not as a standard endorsed by ARM Ltd.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V3:
 Convert to yaml
 Drop interrupt
 Introudce transports to indicate mem/reg
 The func id is still kept as optional, because like SCMI it only
 cares about message.

V2:
 Introduce interrupts as a property.

 .../devicetree/bindings/mailbox/arm-smc.yaml       | 124 +++++++++++++++++++++
 1 file changed, 124 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.yaml b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
new file mode 100644
index 000000000000..da9b1a03bc4e
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
@@ -0,0 +1,124 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mailbox/arm-smc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM SMC Mailbox Interface
+
+maintainers:
+  - Peng Fan <peng.fan@nxp.com>
+
+description: |
+  This mailbox uses the ARM smc (secure monitor call) and hvc (hypervisor
+  call) instruction to trigger a mailbox-connected activity in firmware,
+  executing on the very same core as the caller. By nature this operation
+  is synchronous and this mailbox provides no way for asynchronous messages
+  to be delivered the other way round, from firmware to the OS, but
+  asynchronous notification could also be supported. However the value of
+  r0/w0/x0 the firmware returns after the smc call is delivered as a received
+  message to the mailbox framework, so a synchronous communication can be
+  established, for a asynchronous notification, no value will be returned.
+  The exact meaning of both the action the mailbox triggers as well as the
+  return value is defined by their users and is not subject to this binding.
+
+  One use case of this mailbox is the SCMI interface, which uses shared memory
+  to transfer commands and parameters, and a mailbox to trigger a function
+  call. This allows SoCs without a separate management processor (or when
+  such a processor is not available or used) to use this standardized
+  interface anyway.
+
+  This binding describes no hardware, but establishes a firmware interface.
+  Upon receiving an SMC using one of the described SMC function identifiers,
+  the firmware is expected to trigger some mailbox connected functionality.
+  The communication follows the ARM SMC calling convention.
+  Firmware expects an SMC function identifier in r0 or w0. The supported
+  identifiers are passed from consumers, or listed in the the arm,func-ids
+  properties as described below. The firmware can return one value in
+  the first SMC result register, it is expected to be an error value,
+  which shall be propagated to the mailbox client.
+
+  Any core which supports the SMC or HVC instruction can be used, as long as
+  a firmware component running in EL3 or EL2 is handling these calls.
+
+properties:
+  compatible:
+    const: arm,smc-mbox
+
+  "#mbox-cells":
+    const: 1
+
+  arm,num-chans:
+    description: The number of channels supported.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  method:
+    items:
+      - enum:
+          - smc
+          - hvc
+
+  transports:
+    items:
+      - enum:
+          - mem
+          - reg
+
+  arm,func-ids:
+    description: |
+      An array of 32-bit values specifying the function IDs used by each
+      mailbox channel. Those function IDs follow the ARM SMC calling
+      convention standard [1].
+
+      There is one identifier per channel and the number of supported
+      channels is determined by the length of this array.
+    minItems: 0
+    maxItems: 4096   # Should be enough?
+
+required:
+  - compatible
+  - "#mbox-cells"
+  - arm,num-chans
+  - transports
+  - method
+
+examples:
+  - |
+    sram@910000 {
+      compatible = "mmio-sram";
+      reg = <0x0 0x93f000 0x0 0x1000>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+      ranges = <0 0x0 0x93f000 0x1000>;
+
+        cpu_scp_lpri: scp-shmem@0 {
+          compatible = "arm,scmi-shmem";
+          reg = <0x0 0x200>;
+        };
+
+        cpu_scp_hpri: scp-shmem@200 {
+          compatible = "arm,scmi-shmem";
+          reg = <0x200 0x200>;
+        };
+    };
+
+    firmware {
+      smc_mbox: mailbox {
+        #mbox-cells = <1>;
+        compatible = "arm,smc-mbox";
+        method = "smc";
+        arm,num-chans = <0x2>;
+        transports = "mem";
+        /* Optional */
+        arm,func-ids = <0xc20000fe>, <0xc20000ff>;
+      };
+
+      scmi {
+        compatible = "arm,scmi";
+        mboxes = <&mailbox 0 &mailbox 1>;
+        mbox-names = "tx", "rx";
+        shmem = <&cpu_scp_lpri &cpu_scp_hpri>;
+      };
+    };
+
+...
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
