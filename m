Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EE7FEF0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 19:35:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aPrb5gRXpssjt0YZWSS8RS40bMQHjdkZLWfoG/+u+Bw=; b=dbLpdgbrI2gI4u
	oLqdQPeK2H5OxggYRbhE+1TzFf8xEkoYFiuLuO5uQ7AsmJdOm4+OojenOimqXqlRI5VKK+pRei9i6
	kofgtLEvGt3ayDwpnRkifrczVNZqX9w9YxUMInT1s8x4hOjMerEdSNUHthB8R3LAUaeum9QYckmcx
	DQvKMTCdFTLuZBXDZSmfJoIRxWL7WRPP8yNdwWQMDH+56qR1fnoBXNWnr0mNd3JWwmvD+i8L1xpv0
	jyqZBMOHrABiQIAK0EFVv868ODywmgZx+7ccxZAh0FQJBnzGoRCeWU4fuGvaHgGYhhVpZOdryHzYV
	6d7q250Sn2wnPUysOIog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLWfZ-0002f7-G4; Tue, 30 Apr 2019 17:35:53 +0000
Received: from mail-eopbgr70075.outbound.protection.outlook.com ([40.107.7.75]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLWfF-0002Mq-4i
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 17:35:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9rwejN7Mf09aKc7fDLTTXWqvzXGJIsNZlQLq7GIbOk4=;
 b=X3sxogKh5Luaq8xqlr7GF78ltG+4maqoxsq03gASujLUebZqC1C8p8bV7iX5VA8LHZzx0UvNdDhAhjX/w/g3NAivQtHlootqt069fQjXAloIiv1rtCR8slscO7UaUq3f4Nie9+3qSIKaqtv4Rp7rqRtGWTl3rpwBJ+Gvz+KDqkQ=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB5730.eurprd04.prod.outlook.com (20.178.119.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.12; Tue, 30 Apr 2019 17:35:28 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::8cda:4e52:8e87:8f0e]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::8cda:4e52:8e87:8f0e%2]) with mapi id 15.20.1835.018; Tue, 30 Apr 2019
 17:35:28 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: [PATCH V2 1/2] dt-bindings: firmware: imx-scu: new binding to parse
 clocks from device tree
Thread-Topic: [PATCH V2 1/2] dt-bindings: firmware: imx-scu: new binding to
 parse clocks from device tree
Thread-Index: AQHU/3sZNSeTsgJx/0O0a2xVB8NaKg==
Date: Tue, 30 Apr 2019 17:35:28 +0000
Message-ID: <1556645270-20648-2-git-send-email-aisheng.dong@nxp.com>
References: <1556645270-20648-1-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1556645270-20648-1-git-send-email-aisheng.dong@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2P15301CA0007.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::17) To AM0PR04MB4211.eurprd04.prod.outlook.com
 (2603:10a6:208:5b::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1aff0e25-5d1b-487e-b3b9-08d6cd923c28
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5730; 
x-ms-traffictypediagnostic: AM0PR04MB5730:
x-microsoft-antispam-prvs: <AM0PR04MB5730597908399CDB3271719F803A0@AM0PR04MB5730.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(376002)(136003)(39860400002)(366004)(54534003)(189003)(199004)(81166006)(97736004)(6506007)(476003)(4326008)(386003)(102836004)(2501003)(50226002)(66066001)(2616005)(8936002)(486006)(81156014)(66946007)(8676002)(6116002)(53936002)(3846002)(305945005)(66556008)(73956011)(86362001)(64756008)(6512007)(7736002)(66446008)(66476007)(36756003)(478600001)(71190400001)(52116002)(2906002)(186003)(446003)(54906003)(14454004)(26005)(76176011)(68736007)(44832011)(11346002)(316002)(6486002)(71200400001)(6436002)(5660300002)(99286004)(110136005)(14444005)(25786009)(256004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5730;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7oeDOrlpExZDrLH4Us+fXN/jdvDUr34j5X2S3hx9ebOzYo6akZ2uLMsJ6VtJtCoyXz4uxZeZVFdJ1lCztO6urv+kTDISD8aT+EOgdWYsduWlQb64WSd2+dbgVPZ9K/m2Yoo+NPY/QfYoyI9a7yUhDS7Tttmo+RMJpNoTTYIuIP3Dkne4YlO4DqcqW2+tJ2a4lPBTlHIUlJ4yjrGcYymkGKE7WZSTtWINL7tczA6+Yzce55iDBwi9t4R+Ted8QUSX8qHGKn1CJb0DbTivao87LJ0Tjnx8U9EICSx327LcAE438ENYLllbB9Vlu+0DPWou/hGZZOwbXHJNFPALgmnLWBLJcgjau+fsaCMeeKCa0GcpPGykIguBUgKbbaV1zFMbXqOBXbhgPf+vNhxSPJX8cBrjKNAZOXuXSj1LuiBcaNE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1aff0e25-5d1b-487e-b3b9-08d6cd923c28
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 17:35:28.2406 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5730
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_103533_460856_E672B311 
X-CRM114-Status: GOOD (  22.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Aisheng Dong <aisheng.dong@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There's a few limitations on the original one cell clock binding
(#clock-cells = <1>) that we have to define all clock IDs for device
tree to reference. This may cause troubles if we want to use common
clock IDs for multi platforms support when the clock of those platforms
are mostly the same.
e.g. Current clock IDs name are defined with SS prefix.

However the device may reside in different SS across CPUs, that means the
SS prefix may not valid anymore for a new SoC. Furthermore, the device
availability of those clocks may also vary a bit.

For such situation, We formerly planned to add all new IDs for each SS
and dynamically check availability for different SoC in driver. That can
be done but that may involve a lot effort and may result in more changes
and duplicated code in driver, also make device tree upstreaming hard which
depends on Clock IDs.

To relief this situation, we want to move the clock definition into
device tree which can fully decouple the dependency of Clock ID definition
from device tree. This can make us write a full generic clock driver
for SCU based SoCs. No more frequent changes needed in clock driver
any more.

In the meanwhile, we can also use the existence of clock nodes in device
tree to address the device and clock availability differences across
different SoCs.

For SCU clocks, only two params required. The first one is resource id
which is encoded in reg property and the second is clock type index
which is encoded in generic clock-indices property they're not continuously.

And as we also want to support clock set parent function, 'clocks' property
is also used to pass all the possible input parents.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <kernel@pengutronix.de>
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: devicetree@vger.kernel.org
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v1->v2:
 * changed to one cell binding inspired by arm,scpi.txt
   Documentation/devicetree/bindings/arm/arm,scpi.txt
   Resource ID is encoded in 'reg' property.
   Clock type is encoded in generic clock-indices property.
   Then we don't have to search all the DT nodes to fetch
   those two value to construct clocks which is relatively
   low efficiency.
 * Add required power-domain property as well.
---
 .../devicetree/bindings/arm/freescale/fsl,scu.txt  | 45 ++++++++++++++++++----
 include/dt-bindings/firmware/imx/rsrc.h            | 17 ++++++++
 2 files changed, 54 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
index 5d7dbab..2f46e89 100644
--- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
+++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
@@ -89,6 +89,27 @@ Required properties:
 			  "fsl,imx8qm-clock"
 			  "fsl,imx8qxp-clock"
 			followed by "fsl,scu-clk"
+- #address-cells:	Should be 1.
+- #size-cells:		Should be 0.
+
+Sub nodes are required to represent all available SCU clocks within this
+hardware subsystem and the following properties are needed:
+
+- reg:			Should contain the Resource ID of this SCU clock.
+- #clock-cells:		Should be 1.
+- clock-indices:	Index of all clock types supported by this SCU clock.
+			The order should match the clock-output-names array.
+			Refer to <include/dt-bindings/firmware/imx/rsrc.h> for
+			available clock types supported by SCU.
+- clock-output-names:	Shall be the corresponding names of the outputs.
+- power-domains:	Should contain the power domain used by this SCU clock.
+
+Optional properties:
+- clocks:		Shall be the input parent clock(s) phandle for the clock.
+			For multiplexed clocks, the list order must match the hardware
+			programming order.
+
+Legacy Clock binding (No sub-nodes which is DEPRECATED):
 - #clock-cells:		Should be 1. Contains the Clock ID value.
 - clocks:		List of clock specifiers, must contain an entry for
 			each required entry in clock-names
@@ -144,6 +165,21 @@ lsio_mu1: mailbox@5d1c0000 {
 	#mbox-cells = <2>;
 };
 
+conn-scu-clock-controller {
+	compatible = "fsl,imx8qxp-clk", "fsl,scu-clk";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	uart0_clk: clock-scu@57 {
+		reg = <57>;
+		#clock-cells = <1>;
+		clock-indices = <IMX_SC_PM_CLK_PER>;
+		clock-output-names = "uart0_clk";
+		power-domains = <&pd IMX_SC_R_UART_0>;
+	};
+	...
+}
+
 firmware {
 	scu {
 		compatible = "fsl,imx-scu";
@@ -160,11 +196,6 @@ firmware {
 			  &lsio_mu1 1 3
 			  &lsio_mu1 3 3>;
 
-		clk: clk {
-			compatible = "fsl,imx8qxp-clk", "fsl,scu-clk";
-			#clock-cells = <1>;
-		};
-
 		iomuxc {
 			compatible = "fsl,imx8qxp-iomuxc";
 
@@ -192,8 +223,6 @@ serial@5a060000 {
 	...
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_lpuart0>;
-	clocks = <&clk IMX8QXP_UART0_CLK>,
-		 <&clk IMX8QXP_UART0_IPG_CLK>;
-	clock-names = "per", "ipg";
+	clocks = <&uart0_clk IMX_SC_PM_CLK_PER>;
 	power-domains = <&pd IMX_SC_R_UART_0>;
 };
diff --git a/include/dt-bindings/firmware/imx/rsrc.h b/include/dt-bindings/firmware/imx/rsrc.h
index 4e61f64..fbeaca7 100644
--- a/include/dt-bindings/firmware/imx/rsrc.h
+++ b/include/dt-bindings/firmware/imx/rsrc.h
@@ -547,4 +547,21 @@
 #define IMX_SC_R_ATTESTATION		545
 #define IMX_SC_R_LAST			546
 
+/*
+ * Defines for SC PM CLK
+ */
+#define IMX_SC_PM_CLK_SLV_BUS		0	/* Slave bus clock */
+#define IMX_SC_PM_CLK_MST_BUS		1	/* Master bus clock */
+#define IMX_SC_PM_CLK_PER		2	/* Peripheral clock */
+#define IMX_SC_PM_CLK_PHY		3	/* Phy clock */
+#define IMX_SC_PM_CLK_MISC		4	/* Misc clock */
+#define IMX_SC_PM_CLK_MISC0		0	/* Misc 0 clock */
+#define IMX_SC_PM_CLK_MISC1		1	/* Misc 1 clock */
+#define IMX_SC_PM_CLK_MISC2		2	/* Misc 2 clock */
+#define IMX_SC_PM_CLK_MISC3		3	/* Misc 3 clock */
+#define IMX_SC_PM_CLK_MISC4		4	/* Misc 4 clock */
+#define IMX_SC_PM_CLK_CPU		2	/* CPU clock */
+#define IMX_SC_PM_CLK_PLL		4	/* PLL */
+#define IMX_SC_PM_CLK_BYPASS		4	/* Bypass clock */
+
 #endif /* __DT_BINDINGS_RSCRC_IMX_H */
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
