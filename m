Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5296EBD647
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 04:09:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+KrJV6BWnLh7GQLnCdmNP5ay9uNyU9/bvpPnzDerEVc=; b=gU8EblqLYHfQlW
	PH1OxQvZJ9SIYqzI08edBQs7DfnzSC5A9IQk70Jc8ssBW60VYbe/0IPsSTIzVKyNVPbv8jL0tIU9g
	5+/I4/WTY8XyEnOVJX1kbn9Jak81eH1sVEYCdXErb8yZKzoGT1E4V4ZhLLT3nEdPfEKhLTQc//Nza
	8tQ2SRNBM9iiRybB3Sm61KNDvTQ2OTTg8dv9DpyGZUjRRcEyDW56VA0GWPZ4vDbLWszqJHhR9ZIVp
	D6RK0mLKDUNlOdrMBpUgoPExUrdnd3gMNazINB3RA7IEQxEc7S6VPto8LiyHcxQshHqOaCCxu4ySj
	OPGPpaGLCssfpvlXMtUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCwkP-0007sd-Ov; Wed, 25 Sep 2019 02:09:41 +0000
Received: from mail-eopbgr50056.outbound.protection.outlook.com ([40.107.5.56]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCwjv-0007ek-J5
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 02:09:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bJdBYc0n2n1nz6DcpnC+/7sQ+scl/EgUujA2Kznrf+OkD4Q5pgfrtgYaXucZ4G7a9Y9bFiq2E6rznDpyrFoI6L65cLCgDVcS26i0pf3rVo5oF4EL224Kd9CL4tHdzQF6fBjNhAq+Ci+2GEWmQU5LoRue4P7uqZiXb8lZEL2neAZk4VtaFBMbJYvrVk3zPzljY4+AjF5D/tR/HQDQeFbwuNOJyJnQERvs0bGxk9DyRXPDvjYEqz2qcHOQBxXUEJjAK2tSXlBrQBLjoWppdrcuFXihqodeYZoCHwFO+Zw6kjRwrlqmp5/y+HyIvbw6bh4Xw8Tu4x6OmEOBpJwdJqoJgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VZOMJ4MChVpWcVTNCQOkpoKg9clHfoUZrRLyCl+ldGM=;
 b=FSTxhReAf7zrwgQBzh12jNGvJlgoIquEFnJK9aqC9LZq0UcTVVV3lnxkwD/geV822FFT5+xYpMmCwSRfBK/aTk8E679uZI80njNL+gQeWYsLUHiAt59SRGhIkyMIDv8p7Y9fgNq37DTO4jOtr/EkgG/oGgKlnfbk/xl9KwOlEBzoS+VqGXKz+Jq0UW0nOOGoxxVwgJ4iPbqb9XzqHgyF0dOCSi+AT2kPuSjUF+saJVPt1IkaA2sIuUoG/VADBlFoOOL+zfQh75KKqRY4qdPliXBq7izBtfICXjbfrZsqVRITxP3C1kFoTGpYVlQe75AyJE3xmpBJCxDZ9Zu/+MCvcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VZOMJ4MChVpWcVTNCQOkpoKg9clHfoUZrRLyCl+ldGM=;
 b=hJrJALWFrk54m87wDG/G0qsK/4hVrNfh75ObeCG0l6dpTJFWpb/tVyT2abKt2Lw/aHbFmcnYaGdMqfazj7ez5Q8M7mUDKQ1+aOI24P+aI+wfgMbfNWNM2wPcGCTt8SJ7ILZnInCKnR2gPH6XfehMtZHih/tofSrmj/L6yNb0Z7I=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4451.eurprd04.prod.outlook.com (52.135.149.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.25; Wed, 25 Sep 2019 02:09:08 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2284.023; Wed, 25 Sep 2019
 02:09:08 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>, "f.fainelli@gmail.com"
 <f.fainelli@gmail.com>
Subject: [PATCH V9 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Topic: [PATCH V9 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Index: AQHVc0Y291KPBxEKYUuzX6RMzv1TyQ==
Date: Wed, 25 Sep 2019 02:09:08 +0000
Message-ID: <1569377224-5755-2-git-send-email-peng.fan@nxp.com>
References: <1569377224-5755-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1569377224-5755-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0041.apcprd03.prod.outlook.com
 (2603:1096:203:2f::29) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c2c68e1a-3066-4696-63e2-08d7415d591f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM0PR04MB4451; 
x-ms-traffictypediagnostic: AM0PR04MB4451:|AM0PR04MB4451:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB44516D94A22A557EEF3C138E88870@AM0PR04MB4451.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01713B2841
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(396003)(136003)(39860400002)(346002)(189003)(199004)(8676002)(2501003)(66446008)(6116002)(66946007)(6512007)(6306002)(102836004)(6436002)(66476007)(64756008)(26005)(186003)(86362001)(44832011)(386003)(6506007)(54906003)(7110500001)(76176011)(66556008)(486006)(316002)(8936002)(2616005)(446003)(11346002)(476003)(25786009)(7736002)(256004)(15650500001)(2420400007)(305945005)(99286004)(66066001)(14454004)(71200400001)(50226002)(81166006)(81156014)(110136005)(3846002)(478600001)(2906002)(52116002)(966005)(2201001)(36756003)(5660300002)(71190400001)(4326008)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4451;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: f8C/G9ZETagMY0slCkSc90dCO59JOWpvtx3kLUIz5FzHWG5cYOWaUpWug3ElmVykm8LPu/XjRoezfngkrZ3ISuGS2yEWMLgM6zKZ6rJy36r9wCMQFDphlYZyC5e6fL4OXvN7qWk85gjH7fk1JLirSxkObkzwYFfNGQt4cHvQmPI9FRiesowyzKF5NUvgQXsTQkxs9cIT4VjpFYIvw0pmLlOCLDqR5Go2BwKOvQ/YqhptOisakDJL08KRSc3VAXABo+MdSr1hZDoktorE+OaPcmW3Xr2NbVZKvkEJkDfXG3bxiYPACdljcjbB3MIGL7JSh2xwxHAEr4GnqDgwjApXW+KX4p5CqXtcSX51l/ExHE7K2i+EDwHngAL9ln/KVTXJqenfTg7B8rFPPIiE9B+yDkD+cWvh6ICNzceiW9S2RCEMsclrXWbpXLnULfZxSptA
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2c68e1a-3066-4696-63e2-08d7415d591f
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2019 02:09:08.0587 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j0vVMXspMMTDgcgDBaX5SGlMuzLSyL0UeeoOO26TEi4piqDBgeJrb782+r1OJmcWvOJUAsvJoStW0VoWesNPeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4451
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_190911_630874_F9C4D8A7 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../devicetree/bindings/mailbox/arm-smc.yaml       | 96 ++++++++++++++++++++++
 1 file changed, 96 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.yaml b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
new file mode 100644
index 000000000000..b061954d1678
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
@@ -0,0 +1,96 @@
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
+  This mailbox uses the ARM smc (secure monitor call) or hvc (hypervisor
+  call) instruction to trigger a mailbox-connected activity in firmware,
+  executing on the very same core as the caller. The value of r0/w0/x0
+  the firmware returns after the smc call is delivered as a received
+  message to the mailbox framework, so synchronous communication can be
+  established. The exact meaning of the action the mailbox triggers as
+  well as the return value is defined by their users and is not subject
+  to this binding.
+
+  One example use case of this mailbox is the SCMI interface, which uses
+  shared memory to transfer commands and parameters, and a mailbox to
+  trigger a function call. This allows SoCs without a separate management
+  processor (or when such a processor is not available or used) to use
+  this standardized interface anyway.
+
+  This binding describes no hardware, but establishes a firmware interface.
+  Upon receiving an SMC using the described SMC function identifier, the
+  firmware is expected to trigger some mailbox connected functionality.
+  The communication follows the ARM SMC calling convention.
+  Firmware expects an SMC function identifier in r0 or w0. The supported
+  identifier are passed from consumers, or listed in the the arm,func-id
+  property as described below. The firmware can return one value in
+  the first SMC result register, it is expected to be an error value,
+  which shall be propagated to the mailbox client.
+
+  Any core which supports the SMC or HVC instruction can be used, as long
+  as a firmware component running in EL3 or EL2 is handling these calls.
+
+properties:
+  compatible:
+    oneOf:
+      - description:
+          For implementations using ARM SMC instruction.
+        const: arm,smc-mbox
+
+      - description:
+          For implementations using ARM HVC instruction.
+        const: arm,hvc-mbox
+
+  "#mbox-cells":
+    const: 0
+
+  arm,func-id:
+    description: |
+      An single 32-bit value specifying the function ID used by the mailbox.
+      The function ID follows the ARM SMC calling convention standard.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+required:
+  - compatible
+  - "#mbox-cells"
+  - arm,func-id
+
+examples:
+  - |
+    sram@93f000 {
+      compatible = "mmio-sram";
+      reg = <0x0 0x93f000 0x0 0x1000>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+      ranges = <0x0 0x93f000 0x1000>;
+
+      cpu_scp_lpri: scp-shmem@0 {
+        compatible = "arm,scmi-shmem";
+        reg = <0x0 0x200>;
+      };
+    };
+
+    smc_tx_mbox: tx_mbox {
+      #mbox-cells = <0>;
+      compatible = "arm,smc-mbox";
+      arm,func-id = <0xc20000fe>;
+    };
+
+    firmware {
+      scmi {
+        compatible = "arm,scmi";
+        mboxes = <&smc_tx_mbox>;
+        mbox-names = "tx";
+        shmem = <&cpu_scp_lpri>;
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
