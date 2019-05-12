Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0021ABB8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 12:17:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0/ivEozIWox43NNUwF3A1lP2H+bl3StTg/KbKv9MOeU=; b=YdgCs38yA/sBSY
	cNynsmdFLdftdno//CONtU1vszzyj+w+CNqNbm4/lUt8y+8cD+rGZzuog/hk34cGxixBHb+31R1bI
	5rj6fga83aMqCtnCS/G8A9IlXVXOP08pu2RgakieI577EvVimw/T/zwKb/tstTCVeW4hpIeNs5aSf
	RYuFZeTnALFwtEHAD+ooL9/hkBfWP8OzyHQAWsVAXmX6db8f5zWM6exO+imHKxFDdvPFwaAgtzmdw
	HhwiimY6SSiniApvmsdTbMvYtVsZhaP52rpS+4wmxRxgRAdfa75f42ukOQRs76WtygJvdiKeP3WyY
	xLy1DiSCoFxs5d2odnBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPlY8-0003XR-Gb; Sun, 12 May 2019 10:17:44 +0000
Received: from mail-eopbgr80055.outbound.protection.outlook.com ([40.107.8.55]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPlXn-0003EP-DC
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 10:17:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IdkQe65UllMCK1Lo692/q35p7MrKVn0ocPabj5f7cGU=;
 b=sB8Reivdhm3WEwCrHmnNp3ipkmQCUODKBETZAAhy5KFWyxt0yxJJ4b+lVNNhCI1RJnZVebQ+jTkCn1PhulfUq4Cxb4RTQ2WXuopGQELF23WpKkv12oZjgAynewBfvZk2xgLwtk6PjRZDeF7N2t6kL4noBrEJ/TCIlResXNWTwhE=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3946.eurprd04.prod.outlook.com (52.134.72.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.21; Sun, 12 May 2019 10:17:19 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Sun, 12 May 2019
 10:17:19 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, Jacky Bai <ping.bai@nxp.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>
Subject: [PATCH RESEND 3/3] arm64: dts: imx8mm: add clock for GPIO node
Thread-Topic: [PATCH RESEND 3/3] arm64: dts: imx8mm: add clock for GPIO node
Thread-Index: AQHVCKvh/NX7XOmts02cLucmrJnrTQ==
Date: Sun, 12 May 2019 10:17:19 +0000
Message-ID: <1557655926-12915-3-git-send-email-Anson.Huang@nxp.com>
References: <1557655926-12915-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557655926-12915-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0044.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::32) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0a61d12a-9f46-49d8-3114-08d6d6c30321
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3946; 
x-ms-traffictypediagnostic: DB3PR0402MB3946:
x-microsoft-antispam-prvs: <DB3PR0402MB3946E3B4BE664B96FDC27895F50E0@DB3PR0402MB3946.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:923;
x-forefront-prvs: 0035B15214
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(346002)(39860400002)(366004)(136003)(199004)(189003)(52116002)(2906002)(110136005)(386003)(102836004)(14454004)(478600001)(76176011)(4326008)(8936002)(2501003)(68736007)(99286004)(6486002)(25786009)(50226002)(66066001)(3846002)(7416002)(53936002)(6116002)(66946007)(256004)(66476007)(64756008)(66446008)(66556008)(73956011)(7736002)(486006)(305945005)(5660300002)(2616005)(476003)(11346002)(446003)(71190400001)(71200400001)(26005)(186003)(86362001)(2201001)(8676002)(6436002)(81166006)(6506007)(36756003)(316002)(81156014)(6512007)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3946;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SPUTZJOD+o6v3zoQf3nQp6HQDX7S/Dec9TUAT5ZgdrYQylwZVoQWAa5zH1lyMAUY2YJbEhMfMfPcE2CPeghK5H0HnbJMIDC6UNd5lbXKrjU5mQMHppf98/1SomA/DF8FGNLTVE+0xjW2KCNrlvzJKyM5Gby2uzPfHr9LVEBFmFU2wnWDUgeFtVHWLU2I0mv0OMTUn3kvgL8xA+vmfLvLoSB4X9iFAT3IAvued9n9Ic8DPav1ofNOC2j3zKlkyCPP+5AViQMTc7TnCXWFTb1wHBhMiMqrNzbF17L+odnb+qAeggAmsamyqjp6n0C93w0v4+5S5uJ3oZt/xbqaI5MIsQrCAeTWTeIgFw5DnE10kme+yafb3T5EQeyWKmtNh4w/DACjDGNDzSDx91rBSsvLlhOvbA0Th/7VCrNdtcEQ2pY=
Content-ID: <D71E0B23D8290D4EB06ADDAEEBBE7193@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a61d12a-9f46-49d8-3114-08d6d6c30321
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2019 10:17:19.6059 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3946
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_031723_450834_FF1FD191 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX8MM has clock gate for each GPIO bank, add clock info
to GPIO node for clock management.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
---
No change, just resend patch with correct encoding.
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 6b407a94..f32d4e9 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -206,6 +206,7 @@
 				reg = <0x30200000 0x10000>;
 				interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_GPIO1_ROOT>;
 				gpio-controller;
 				#gpio-cells = <2>;
 				interrupt-controller;
@@ -217,6 +218,7 @@
 				reg = <0x30210000 0x10000>;
 				interrupts = <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_GPIO2_ROOT>;
 				gpio-controller;
 				#gpio-cells = <2>;
 				interrupt-controller;
@@ -228,6 +230,7 @@
 				reg = <0x30220000 0x10000>;
 				interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_GPIO3_ROOT>;
 				gpio-controller;
 				#gpio-cells = <2>;
 				interrupt-controller;
@@ -239,6 +242,7 @@
 				reg = <0x30230000 0x10000>;
 				interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_GPIO4_ROOT>;
 				gpio-controller;
 				#gpio-cells = <2>;
 				interrupt-controller;
@@ -250,6 +254,7 @@
 				reg = <0x30240000 0x10000>;
 				interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_GPIO5_ROOT>;
 				gpio-controller;
 				#gpio-cells = <2>;
 				interrupt-controller;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
