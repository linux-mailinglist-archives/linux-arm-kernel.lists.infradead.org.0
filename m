Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D53EBBF9E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 03:14:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQTe/QkQ6CkT2nCTGSyiEyD/rkL9ze2F5Ua6pxo3Xa0=; b=Lu4rB7TeEhgFEu
	0l0VLnvCybdT/+mqpm1M+eQ7ODej7b5yV+HXo4m0I3M2gBINbFsA6EJeMA2MFvEXOsCDsqXaPs7kw
	Z6Ujwv/xVD/HaOKPPYRI4f7vWRVm/K+UT2Hg6mnfiwc/qlIzKgcKKbdwT2Ajk66isPqzGuaoV2vXH
	9XlC3/kP/1uFPZdbl1WLXxlwjIgMsypsLGIqe8/qvvZfctLHYp4Jr6aHhjG/PuoPh6rXt+h8Xi4qa
	wYxiQMuIy7O15gDwjxOcBaryynyT+5rvFtccLyDP9+3h4GCjM8HdXyV4Gk+1CwgGv9yRQnmiYDj+C
	1RslbCCHNDsLjWbZblXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCZPV-0002HB-KU; Tue, 24 Sep 2019 01:14:33 +0000
Received: from mail-eopbgr30069.outbound.protection.outlook.com ([40.107.3.69]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCZP9-000294-Iz
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 01:14:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=goStEW2sYLJO9z0CQfEAeEuG7805zQSLxj6k+CLRuPfrkhs8LWlifyvtLhGtz03X/9QckWCCYmidAIL1DqlNgun7BhP6rmcSZ0lVJS/8m/d5rjqfYVwYE50KxhzN/tWmih+wV7w0LGdmQWldQktHLliQy6gFYNx8RoGVGSQwjI/9ES1rIMQ/38YCK0RMJDrlOxIW5urY31XrRiQfmLbVZfmZSOWL95FaJjqNZ8tlHlObL7hOQtPBuRWkt8n+3NoPgP/xc99t+e8rOd288qj2JAqbj/bU23UCmO/w962GZwuiz1uBLqn3HFtGEuaLXmLMYk8Cej0RekF2NFLJwkb4QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SZEmrTrLvcHhk4Rwl/9jaIFU1TZCoQCs1/2nesl5Lhs=;
 b=ClNE6LsJgXjKAO7bQhBbEI+aUpcT/IaLTA2ekf0Fh/up5zgH/C4+YH9wEhipz1d1hF0GECOixJRkEw+t/MnM/4k4v3GglrlOgFj3j9AzJwE5cW3zjI1M7yA22T2/t3ZT57TC1991B/E0B9rIU3ElsDmKxrEJRXdfugy60dU4yu14nbDqWaFIo526CtQ1jcjqh4+cD+nO1886ejsW7AyRlSZpG4lWprVrmU/xayMn37ocFRFyeG6wD4NilsXQFPmcNWucrwo+voGsWJztW3xu94Uyim8oUbVEDABZ+FTy4qBzpNpy1v24wPeHDe+ORXMBIO5puAIgvsBQ8Zkr8tn64A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SZEmrTrLvcHhk4Rwl/9jaIFU1TZCoQCs1/2nesl5Lhs=;
 b=TrIOhJ2cOC5MQ2ohbFwCIA5znBjyQXvzaRu8X5rokTwuAFkHuIIm3ThV1vDP3alyUKuMgsk9widyl3VsQc4I9ZBNXouGiZk5kVG/rjgWALP4Z83UWyY+VpYGKO3HkQX4hq6E6DEB76D6hiYdKfpWK9OhGVRjtK484qfyojcBEVM=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5396.eurprd04.prod.outlook.com (20.178.113.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Tue, 24 Sep 2019 01:14:07 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 01:14:07 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>, "f.fainelli@gmail.com"
 <f.fainelli@gmail.com>
Subject: [PATCH V8 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Topic: [PATCH V8 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Index: AQHVcnVdFX3gX9rzB0uylBnhc7LQFw==
Date: Tue, 24 Sep 2019 01:14:07 +0000
Message-ID: <1569287538-10854-2-git-send-email-peng.fan@nxp.com>
References: <1569287538-10854-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1569287538-10854-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0001.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:18::13) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f52c62cc-63ee-44b0-c97d-08d7408c7f6f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5396; 
x-ms-traffictypediagnostic: AM0PR04MB5396:|AM0PR04MB5396:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5396C7B936459F2FDAB3EA5988840@AM0PR04MB5396.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(39860400002)(396003)(136003)(346002)(189003)(199004)(66066001)(6436002)(2420400007)(7110500001)(36756003)(478600001)(2201001)(316002)(14454004)(966005)(305945005)(66946007)(26005)(86362001)(71200400001)(66446008)(64756008)(66476007)(71190400001)(6116002)(3846002)(256004)(99286004)(6306002)(386003)(66556008)(486006)(6512007)(186003)(76176011)(6486002)(2501003)(6506007)(2906002)(4326008)(446003)(2616005)(102836004)(8676002)(54906003)(11346002)(110136005)(8936002)(52116002)(81166006)(50226002)(5660300002)(81156014)(44832011)(15650500001)(7736002)(25786009)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5396;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /6ZBm1RhjiAsnelTsWi9meaFflB62ZngcCbfdAcpYuWqYyAKOTlJf90SoF45RQ7ha0v/gmPhalIO+ohaMGFvVI9NEVa1nqySxZwTWCyN7+afFo71+3dKl9be5EQXxGPrzYJW53E8MTJuCxG4tG0u141S8quZnHNOAUGOjWh+K3SY1a0QOftzoVvItbuNyKOHn0Hw5PKSUaURgdFNBsNLC4SVWnOeW1Z6l/141+wX57EqB2+xENqtve6M6rpSKgLw19L3PesIxUAJc6UndSIzQQ7bV3iZmDC+REuBL6IyJXIzQK0IPb9z7bCjWJGfjIS33KCQJ/zaOliKxW3+uU26fVT0CHSBIDAFISqhkCs2nNzVKrRQ9P8Y2bE0QhNCZ+s5So4pNxF0svFuuYwv6lyDDX2tGX2xf7Nc5qPFZW0xlok=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f52c62cc-63ee-44b0-c97d-08d7408c7f6f
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 01:14:07.5405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lWXANa/jYaGy5//Goesp2hdW0NSyCLY34ABqlgkpihcLus7JosbgTjie5JjVLPYUOCDUyZnPcPxtpl6IqcjhcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5396
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_181411_629549_FD91B6EF 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.69 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 .../devicetree/bindings/mailbox/arm-smc.yaml       | 95 ++++++++++++++++++++++
 1 file changed, 95 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.yaml b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
new file mode 100644
index 000000000000..8764ad2726b2
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
@@ -0,0 +1,95 @@
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
