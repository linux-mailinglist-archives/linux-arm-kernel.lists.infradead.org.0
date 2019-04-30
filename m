Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C87D8FEF1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 19:36:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjJW9fdqUayGUgwL/sUbt6VYNCdksFfhResGEVd4nQY=; b=LtMf9bWQl8ixqt
	vACvr00DATsCFGeET9Oii3WaPrDFnw3+K2O2pArB4K/B3t9i6bSvm1WKo0WdFLvPFU47rtovEKg2/
	LShPAMLjZJb0yJD6qVYciTRVi90X7B93Xdmyec//pCjywpZvnX0NVdRTgwrT3ib9FVSFRiZstk3Lj
	UZgK+v4+FbPpGDlJSAjEnDO68iuD3KGKeLFOR4OR1+CO6dhsVPZ463S2zJY5YmsYOWcr+iaCKF8M7
	EZMJHPoIRJ78SWV7K0X5Lkby+I5fDN61HGXCAZb/GyVElJaUwoAsUWro+KLKlm4+ngx4dUT/0aYHr
	0S9edVbaCHWRUVV6CRRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLWfj-0002ma-NU; Tue, 30 Apr 2019 17:36:03 +0000
Received: from mail-am5eur02on062f.outbound.protection.outlook.com
 ([2a01:111:f400:fe07::62f]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLWfH-0002PD-Bw
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 17:35:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m+oyjylI89WOdiEJe1vxtVTeRifl01vyRdMgmrLAUBE=;
 b=BqS2X0oGqJac7ylCGLmHfxOp0qo/v5L5ezSvzghirZCpoTWZm+rwniqOhKOQ2Lj14lAvg5OOvzo13PrAaWM58oXgJOQh8r+OCpcbTkibYQe7zaCVfFOMmYCPilK62wInnx/nQGh8B40PVaCtMsCh+NhQlIQVcknEKRcygM1VsTY=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4995.eurprd04.prod.outlook.com (20.176.215.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.18; Tue, 30 Apr 2019 17:35:31 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::8cda:4e52:8e87:8f0e]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::8cda:4e52:8e87:8f0e%2]) with mapi id 15.20.1835.018; Tue, 30 Apr 2019
 17:35:31 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: [PATCH V2 2/2] dt-bindings: clock: imx-lpcg: add support to parse
 clocks from device tree
Thread-Topic: [PATCH V2 2/2] dt-bindings: clock: imx-lpcg: add support to
 parse clocks from device tree
Thread-Index: AQHU/3scQmNSzEByRUu6j1Pj1Cb9pQ==
Date: Tue, 30 Apr 2019 17:35:31 +0000
Message-ID: <1556645270-20648-3-git-send-email-aisheng.dong@nxp.com>
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
x-ms-office365-filtering-correlation-id: a87900d6-e059-425c-5132-08d6cd923e65
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4995; 
x-ms-traffictypediagnostic: AM0PR04MB4995:
x-microsoft-antispam-prvs: <AM0PR04MB49959517A5BB907752BB0C1D803A0@AM0PR04MB4995.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(366004)(346002)(39860400002)(376002)(136003)(396003)(199004)(189003)(54534003)(6506007)(5660300002)(14444005)(36756003)(386003)(102836004)(186003)(256004)(26005)(4326008)(68736007)(71190400001)(71200400001)(25786009)(2501003)(6486002)(6436002)(8936002)(6512007)(50226002)(8676002)(81166006)(81156014)(53936002)(54906003)(66066001)(2906002)(110136005)(66556008)(99286004)(73956011)(66446008)(316002)(66946007)(66476007)(64756008)(52116002)(76176011)(2616005)(44832011)(476003)(11346002)(486006)(97736004)(7736002)(86362001)(446003)(478600001)(14454004)(6116002)(3846002)(305945005)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4995;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: sIzGlBNHiQDB6sCIhq4+NpjZlEEaf8FaL3SVhMi22Iv12iSmQzC7LxjjczgNQEGaKDaKrPu1GF0vNeQrAPTCxM3w9C/jlpmlV2cbK1t42RW0zPipa0q5tOCnuvL6eZlh48Vb7N5ykQIp88wWiq0CKISbAmIcN2sXBKu2Z7iykTvTZTI1MwStxmCjCm2S6+6RW6Z6fu1wPpWQwGdB3FcUWqYDwT8aYtpj8alf6wiWCHTaRuqRQ3PG5+OvhDgkurGYPEymJxZ1ehn6CCh5gXROisN5OmnAOODvf/atRzaufm/DPolkjQ/YVJ1F/64nCeEPWsBwMlXH2K/Oo0dccX5/T/n7DpEPuCz2JSk5yN9HtRsppz/wTNwCUmku05QImbr5JuL1kBfZVzVpgfMWOwWW8HJt7lD0Y+mdil2eWONqT3s=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a87900d6-e059-425c-5132-08d6cd923e65
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 17:35:31.7852 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4995
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_103536_029806_9F8A76B3 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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

MX8QM and MX8QXP LPCG Clocks are mostly the same except they may reside
in different subsystems across CPUs and also vary a bit on the availability.

Same as SCU clock, we want to move the clock definition into device tree
which can fully decouple the dependency of Clock ID definition from device
tree and make us be able to write a fully generic lpcg clock driver.

And we can also use the existence of clock nodes in device tree to address
the device and clock availability differences across different SoCs.

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
 * Update example
 * Add power domain property
---
 .../devicetree/bindings/clock/imx8qxp-lpcg.txt     | 34 ++++++++++++++++++----
 1 file changed, 28 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt b/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
index 965cfa4..6fc2fd8 100644
--- a/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
+++ b/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
@@ -11,6 +11,21 @@ enabled by these control bits, it might still not be running based
 on the base resource.
 
 Required properties:
+- compatible:		Should be one of:
+			  "fsl,imx8qxp-lpcg"
+			  "fsl,imx8qm-lpcg" followed by "fsl,imx8qxp-lpcg".
+- reg:			Address and length of the register set.
+- #clock-cells:		Should be 1. One LPCG supports multiple clocks.
+- clocks:		Input parent clocks phandle array for each clock.
+- bit-offset:		An integer array indicating the bit offset for each clock.
+- hw-autogate:		Boolean array indicating whether supports HW autogate for
+			each clock.
+- clock-output-names:	Shall be the corresponding names of the outputs.
+			NOTE this property must be specified in the same order
+			as the clock bit-offset and hw-autogate property.
+- power-domains:	Should contain the power domain used by this clock.
+
+Legacy binding (DEPRECATED):
 - compatible:	Should be one of:
 		  "fsl,imx8qxp-lpcg-adma",
 		  "fsl,imx8qxp-lpcg-conn",
@@ -33,10 +48,17 @@ Examples:
 
 #include <dt-bindings/clock/imx8qxp-clock.h>
 
-conn_lpcg: clock-controller@5b200000 {
-	compatible = "fsl,imx8qxp-lpcg-conn";
-	reg = <0x5b200000 0xb0000>;
+sdhc0_lpcg: clock-controller@5b200000 {
+	compatible = "fsl,imx8qxp-lpcg";
+	reg = <0x5b200000 0x10000>;
 	#clock-cells = <1>;
+	clocks = <&sdhc0_clk IMX_SC_PM_CLK_PER>,
+		 <&conn_ipg_clk>, <&conn_axi_clk>;
+	bit-offset = <0 16 20>;
+	clock-output-names = "sdhc0_lpcg_per_clk",
+			     "sdhc0_lpcg_ipg_clk",
+			     "sdhc0_lpcg_ahb_clk";
+	power-domains = <&pd IMX_SC_R_SDHC_0>;
 };
 
 usdhc1: mmc@5b010000 {
@@ -44,8 +66,8 @@ usdhc1: mmc@5b010000 {
 	interrupt-parent = <&gic>;
 	interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_HIGH>;
 	reg = <0x5b010000 0x10000>;
-	clocks = <&conn_lpcg IMX8QXP_CONN_LPCG_SDHC0_IPG_CLK>,
-		 <&conn_lpcg IMX8QXP_CONN_LPCG_SDHC0_PER_CLK>,
-		 <&conn_lpcg IMX8QXP_CONN_LPCG_SDHC0_HCLK>;
+	clocks = <&sdhc0_lpcg 1>,
+		 <&sdhc0_lpcg 0>,
+		 <&sdhc0_lpcg 2>;
 	clock-names = "ipg", "per", "ahb";
 };
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
