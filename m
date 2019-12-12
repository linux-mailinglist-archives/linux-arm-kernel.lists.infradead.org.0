Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED45211CB1A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 11:38:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5ybH7Am+9OSxlbq2VPK2DgrOhBI50ZKmKEFu8wDcj7A=; b=IQtC6vb7H9WQk3
	NgGP3UXnLD69xpXRT/RXzzbOuU4eyL0k4zjT4HnCSa9pyAR2uzxxGloWqOHFxesQ9CdtM8u/M1DxN
	pWWtIYxgJYOqT5aPSiFiw9Ww2KNzAWgN2YSx+RBMl/db+wPOJD8+xuGluMNuSVGHz6m4iqljJG5vi
	Ueyg3vAZbpgXhlHd95H4MM6PG4ET5ZvQ24UxGP3VI9+dd49v6BvrvtCmxsGwmJMFnblGvFTvSXqu0
	KEFCXePzqmKka4o068GPD2n1eBSsTHHq7Yo7cK+/9sEGR1nN2bvFGTypTyRIfy/b4UswL/18OlIi2
	SGc98XNmGaj1H/NR9oLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifLra-0002Wd-RS; Thu, 12 Dec 2019 10:38:30 +0000
Received: from mail-eopbgr150132.outbound.protection.outlook.com
 ([40.107.15.132] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifLrR-0002UY-GG
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 10:38:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VCJvj/L9g8F8wGzJ/5COZb44O7tj9U7l2sFHhTbW49Iu1YZTKDhi35AfJ2UD+mT/g3t/7ksbD/KQdnKdQLTGZQPOK2iSjJJo/KGmOOtb1sfXSi0R7O54n44rJn0ACRuiJaJGXpA7zz65X20fi/AF9/srZIES4CygHNoXXwAEpNKHBPB2EOW8vVs+3YAfwW3v89K5SOJjMwmVe4IVJyjRKbIxcHVMKEGHfvKHZsB6h1htvwBBKGUuApD6Ox0vBP9RsVKFkr3dozNd8eT1YSmIgyCz8te8eOw0Kt3JcsGdQ4b3AV7RQ2a6hpMF7U/GPUJ2wU9lGMKggNBwzOUatq9YhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/qAXnOv4A9mgT65gULgQBLvarBUJBsVW5I53NfIOXG4=;
 b=kMw5iTAi46LGj8r20Qh2f1o0vTG6k6EQDclfFQ8YYN7TlskTiEqMHyKO1Jm3iQ8ojIiDNQg+XORyNgutkdBrX8s2DgF9GzLsnkmNehAZbkkjlZW93EUj6IZl/lmzD1UK3aLPxu+gtuSdvo+3PH1udSqpff7h4vicZcPrbyveEe8XZIoWIm9dKdmzE35sW1s59F6wiF9wjtCVtsX1ZY7p/GrS470lCYXcr3hpePV6wel8nHrMqAqlMFSIGFbk/R639A7iMdl7g+9FyhqFxvT+O7OIoUoHl0owEn/Nks3UcIaEoDBcovh0EtQhRqOZLOhGQ/Uzu+1ubYv2a6qti+depQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/qAXnOv4A9mgT65gULgQBLvarBUJBsVW5I53NfIOXG4=;
 b=F3or+EKcQHmC++syilc022yPh9tdqcqU6YYLCQyqBnpRzZuczZZjblFlz3W1f0j80o0N2CUx9TxGr1jE6xaUsDoWEGFG50AQAW+gPS8YqYAN8Nu9urY8jsZ0Ihxf6nHdFsQ2P2XOwXQ/PFy31zhk6Q7pQ9uxj5eH3XB/S976E10=
Received: from DB6PR0502MB3015.eurprd05.prod.outlook.com (10.172.247.138) by
 DB6PR0502MB2966.eurprd05.prod.outlook.com (10.172.246.140) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.16; Thu, 12 Dec 2019 10:38:11 +0000
Received: from DB6PR0502MB3015.eurprd05.prod.outlook.com
 ([fe80::c459:8ad5:c5c4:d603]) by DB6PR0502MB3015.eurprd05.prod.outlook.com
 ([fe80::c459:8ad5:c5c4:d603%6]) with mapi id 15.20.2538.016; Thu, 12 Dec 2019
 10:38:10 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: [PATCH v3] ARM: dts: colibri-imx6ull: correct wrong pinmuxing and add
 comments
Thread-Topic: [PATCH v3] ARM: dts: colibri-imx6ull: correct wrong pinmuxing
 and add comments
Thread-Index: AQHVsNg/enX90yHw7UyzBN9BhKQE1A==
Date: Thu, 12 Dec 2019 10:38:10 +0000
Message-ID: <20191212103745.44672-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: GVAP278CA0003.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:710:20::13) To DB6PR0502MB3015.eurprd05.prod.outlook.com
 (2603:10a6:4:99::10)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.24.0
x-originating-ip: [31.10.206.124]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 738c2ab9-d339-4220-fad4-08d77eef623b
x-ms-traffictypediagnostic: DB6PR0502MB2966:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0502MB296671F28ABB588F4F907651F4550@DB6PR0502MB2966.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0249EFCB0B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(39850400004)(346002)(396003)(376002)(366004)(189003)(199004)(4326008)(81166006)(6512007)(8936002)(5660300002)(71200400001)(30864003)(6486002)(81156014)(7416002)(26005)(52116002)(1076003)(186003)(110136005)(54906003)(6506007)(86362001)(66946007)(64756008)(2616005)(66556008)(66446008)(8676002)(36756003)(44832011)(2906002)(478600001)(316002)(66476007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DB6PR0502MB2966;
 H:DB6PR0502MB3015.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MMA7/nieavP9tq+Fn42e+EDOUAelIg1E6C9Mc4uPDuZBHwSka3T5Q5W8+k2zUmdLU4ZGDqULeh0Cm1BecPqbspmXnbJvG1KFOrfxPdYAYzTR/lo1bfsHkB4+cT+7nCBgqxzg+u/ijV50poAsUVVmDRqi31Iv0/kzt1s2RnAWidZxsyayxMSutz1dsnMvcL16VuSdu2Y201tr388tMMvRgLPLHsrvPk/ScBY90VSMmf/MCLbyIjB3hcs4k1H6WF6bPUQ1LQLiHr77nWX7SRJVB4KoaVDgSXhXvJze2HkE4Eui1o920LHCcUFBPDvVQJ7I9/tco2TgGjY1vWwlwvUE2CtWvY0tcJQnuiZDkadcN5pxtV0UfoBhPHghgOMzezMpYOMX3I51yGd5ZlfIWj8hoPx9Hn+npN9dLaXJwC08hs/Biqha3uvQF+1+nFTCekig
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 738c2ab9-d339-4220-fad4-08d77eef623b
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2019 10:38:10.9084 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vmHsQmGhBTha+1iGbncqXit6fudUL7RxgyIQr1LUAV/j2e81upugB2F6h1IBG7jFPdwCev0xPfAQ5YQLLH6T78hxFpl8AeBHiRSjL5UrHjQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0502MB2966
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_023821_679148_A63A0999 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.132 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: Mark Rutland <mark.rutland@arm.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some pinmuxings are obviously wrong, originating from a copy/paste
error. This patch corrects that with the following strategy:

- Set all reserved bits to zero
- Leave drive strength and slew rate as is
- Add sensible pull and hysteresis depending on the function of the pin
- Not used pins are muxed to their reset-value defined by the SoC

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

---

Changes in v3:
- Fixed breakage. Sorry Shawn! Should've checked after rebasing...

Changes in v2:
- Rebased against Shawn Guos imx/dt branch, sorry it didn't work the
  first time!

 arch/arm/boot/dts/imx6ull-colibri.dtsi | 188 ++++++++++++-------------
 1 file changed, 94 insertions(+), 94 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ull-colibri.dtsi b/arch/arm/boot/dts/imx6ull-colibri.dtsi
index 6d850d997e1e..9145c536d71a 100644
--- a/arch/arm/boot/dts/imx6ull-colibri.dtsi
+++ b/arch/arm/boot/dts/imx6ull-colibri.dtsi
@@ -220,7 +220,7 @@ &wdog1 {
 &iomuxc {
 	pinctrl_can_int: canint-grp {
 		fsl,pins = <
-			MX6UL_PAD_ENET1_TX_DATA1__GPIO2_IO04	0X14 /* SODIMM 73 */
+			MX6UL_PAD_ENET1_TX_DATA1__GPIO2_IO04	0x13010	/* SODIMM 73 */
 		>;
 	};
 
@@ -256,15 +256,15 @@ MX6UL_PAD_ENET2_TX_EN__GPIO2_IO13	0x0
 
 	pinctrl_ecspi1_cs: ecspi1-cs-grp {
 		fsl,pins = <
-			MX6UL_PAD_LCD_DATA21__GPIO3_IO26	0x000a0
+			MX6UL_PAD_LCD_DATA21__GPIO3_IO26	0x70a0	/* SODIMM 86 */
 		>;
 	};
 
 	pinctrl_ecspi1: ecspi1-grp {
 		fsl,pins = <
-			MX6UL_PAD_LCD_DATA20__ECSPI1_SCLK	0x000a0
-			MX6UL_PAD_LCD_DATA22__ECSPI1_MOSI	0x000a0
-			MX6UL_PAD_LCD_DATA23__ECSPI1_MISO	0x100a0
+			MX6UL_PAD_LCD_DATA20__ECSPI1_SCLK	0x000a0	/* SODIMM 88 */
+			MX6UL_PAD_LCD_DATA22__ECSPI1_MOSI	0x000a0 /* SODIMM 92 */
+			MX6UL_PAD_LCD_DATA23__ECSPI1_MISO	0x100a0 /* SODIMM 90 */
 		>;
 	};
 
@@ -284,68 +284,68 @@ MX6UL_PAD_ENET1_RX_EN__FLEXCAN2_TX	0x1b020
 
 	pinctrl_gpio_bl_on: gpio-bl-on-grp {
 		fsl,pins = <
-			MX6UL_PAD_JTAG_TMS__GPIO1_IO11		0x000a0
+			MX6UL_PAD_JTAG_TMS__GPIO1_IO11		0x30a0	/* SODIMM 71 */
 		>;
 	};
 
 	pinctrl_gpio1: gpio1-grp {
 		fsl,pins = <
-			MX6UL_PAD_UART3_RX_DATA__GPIO1_IO25	0X14 /* SODIMM 77 */
-			MX6UL_PAD_JTAG_TCK__GPIO1_IO14		0x14 /* SODIMM 99 */
-			MX6UL_PAD_NAND_CE1_B__GPIO4_IO14	0x14 /* SODIMM 133 */
-			MX6UL_PAD_UART3_TX_DATA__GPIO1_IO24	0x14 /* SODIMM 135 */
-			MX6UL_PAD_UART3_CTS_B__GPIO1_IO26	0x14 /* SODIMM 100 */
-			MX6UL_PAD_JTAG_TRST_B__GPIO1_IO15	0x14 /* SODIMM 102 */
-			MX6UL_PAD_ENET1_RX_ER__GPIO2_IO07	0x14 /* SODIMM 104 */
-			MX6UL_PAD_UART3_RTS_B__GPIO1_IO27	0x14 /* SODIMM 186 */
+			MX6UL_PAD_UART3_RX_DATA__GPIO1_IO25	0x10b0 /* SODIMM 77 */
+			MX6UL_PAD_JTAG_TCK__GPIO1_IO14		0x70a0 /* SODIMM 99 */
+			MX6UL_PAD_NAND_CE1_B__GPIO4_IO14	0x10b0 /* SODIMM 133 */
+			MX6UL_PAD_UART3_TX_DATA__GPIO1_IO24	0x10b0 /* SODIMM 135 */
+			MX6UL_PAD_UART3_CTS_B__GPIO1_IO26	0x10b0 /* SODIMM 100 */
+			MX6UL_PAD_JTAG_TRST_B__GPIO1_IO15	0x70a0 /* SODIMM 102 */
+			MX6UL_PAD_ENET1_RX_ER__GPIO2_IO07	0x10b0 /* SODIMM 104 */
+			MX6UL_PAD_UART3_RTS_B__GPIO1_IO27	0x10b0 /* SODIMM 186 */
 		>;
 	};
 
 	pinctrl_gpio2: gpio2-grp { /* Camera */
 		fsl,pins = <
-			MX6UL_PAD_CSI_DATA04__GPIO4_IO25	0x74 /* SODIMM 69 */
-			MX6UL_PAD_CSI_MCLK__GPIO4_IO17		0x14 /* SODIMM 75 */
-			MX6UL_PAD_CSI_DATA06__GPIO4_IO27	0x14 /* SODIMM 85 */
-			MX6UL_PAD_CSI_PIXCLK__GPIO4_IO18	0x14 /* SODIMM 96 */
-			MX6UL_PAD_CSI_DATA05__GPIO4_IO26	0x14 /* SODIMM 98 */
+			MX6UL_PAD_CSI_DATA04__GPIO4_IO25	0x10b0 /* SODIMM 69 */
+			MX6UL_PAD_CSI_MCLK__GPIO4_IO17		0x10b0 /* SODIMM 75 */
+			MX6UL_PAD_CSI_DATA06__GPIO4_IO27	0x10b0 /* SODIMM 85 */
+			MX6UL_PAD_CSI_PIXCLK__GPIO4_IO18	0x10b0 /* SODIMM 96 */
+			MX6UL_PAD_CSI_DATA05__GPIO4_IO26	0x10b0 /* SODIMM 98 */
 		>;
 	};
 
 	pinctrl_gpio3: gpio3-grp { /* CAN2 */
 		fsl,pins = <
-			MX6UL_PAD_ENET1_RX_EN__GPIO2_IO02	0x14 /* SODIMM 178 */
-			MX6UL_PAD_ENET1_TX_DATA0__GPIO2_IO03	0x14 /* SODIMM 188 */
+			MX6UL_PAD_ENET1_RX_EN__GPIO2_IO02	0x10b0 /* SODIMM 178 */
+			MX6UL_PAD_ENET1_TX_DATA0__GPIO2_IO03	0x10b0 /* SODIMM 188 */
 		>;
 	};
 
 	pinctrl_gpio4: gpio4-grp {
 		fsl,pins = <
-			MX6UL_PAD_CSI_DATA07__GPIO4_IO28	0x74 /* SODIMM 65 */
+			MX6UL_PAD_CSI_DATA07__GPIO4_IO28	0x10b0 /* SODIMM 65 */
 		>;
 	};
 
 	pinctrl_gpio5: gpio5-grp { /* ATMEL MXT TOUCH */
 		fsl,pins = <
-			MX6UL_PAD_JTAG_MOD__GPIO1_IO10		0x74 /* SODIMM 106 */
+			MX6UL_PAD_JTAG_MOD__GPIO1_IO10		0xb0a0 /* SODIMM 106 */
 		>;
 	};
 
 	pinctrl_gpio6: gpio6-grp { /* Wifi pins */
 		fsl,pins = <
-			MX6UL_PAD_GPIO1_IO03__GPIO1_IO03	0x14 /* SODIMM 89 */
-			MX6UL_PAD_CSI_DATA02__GPIO4_IO23	0x14 /* SODIMM 79 */
-			MX6UL_PAD_CSI_VSYNC__GPIO4_IO19		0x14 /* SODIMM 81 */
-			MX6UL_PAD_CSI_DATA03__GPIO4_IO24	0x14 /* SODIMM 97 */
-			MX6UL_PAD_CSI_DATA00__GPIO4_IO21	0x14 /* SODIMM 101 */
-			MX6UL_PAD_CSI_DATA01__GPIO4_IO22	0x14 /* SODIMM 103 */
-			MX6UL_PAD_CSI_HSYNC__GPIO4_IO20		0x14 /* SODIMM 94 */
+			MX6UL_PAD_GPIO1_IO03__GPIO1_IO03	0x10b0 /* SODIMM 89 */
+			MX6UL_PAD_CSI_DATA02__GPIO4_IO23	0x10b0 /* SODIMM 79 */
+			MX6UL_PAD_CSI_VSYNC__GPIO4_IO19		0x10b0 /* SODIMM 81 */
+			MX6UL_PAD_CSI_DATA03__GPIO4_IO24	0x10b0 /* SODIMM 97 */
+			MX6UL_PAD_CSI_DATA00__GPIO4_IO21	0x10b0 /* SODIMM 101 */
+			MX6UL_PAD_CSI_DATA01__GPIO4_IO22	0x10b0 /* SODIMM 103 */
+			MX6UL_PAD_CSI_HSYNC__GPIO4_IO20		0x10b0 /* SODIMM 94 */
 		>;
 	};
 
 	pinctrl_gpio7: gpio7-grp { /* CAN1 */
 		fsl,pins = <
-			MX6UL_PAD_ENET1_RX_DATA0__GPIO2_IO00	0x74 /* SODIMM 55 */
-			MX6UL_PAD_ENET1_RX_DATA1__GPIO2_IO01	0x74 /* SODIMM 63 */
+			MX6UL_PAD_ENET1_RX_DATA0__GPIO2_IO00	0xb0b0/* SODIMM 55 */
+			MX6UL_PAD_ENET1_RX_DATA1__GPIO2_IO01	0xb0b0 /* SODIMM 63 */
 		>;
 	};
 
@@ -370,15 +370,15 @@ MX6UL_PAD_NAND_READY_B__RAWNAND_READY_B	0x100a9
 
 	pinctrl_i2c1: i2c1-grp {
 		fsl,pins = <
-			MX6UL_PAD_UART4_TX_DATA__I2C1_SCL 0x4001b8b0
-			MX6UL_PAD_UART4_RX_DATA__I2C1_SDA 0x4001b8b0
+			MX6UL_PAD_UART4_TX_DATA__I2C1_SCL 0x4001b8b0	/* SODIMM 196 */
+			MX6UL_PAD_UART4_RX_DATA__I2C1_SDA 0x4001b8b0	/* SODIMM 194 */
 		>;
 	};
 
 	pinctrl_i2c1_gpio: i2c1-gpio-grp {
 		fsl,pins = <
-			MX6UL_PAD_UART4_TX_DATA__GPIO1_IO28 0x4001b8b0
-			MX6UL_PAD_UART4_RX_DATA__GPIO1_IO29 0x4001b8b0
+			MX6UL_PAD_UART4_TX_DATA__GPIO1_IO28 0x4001b8b0	/* SODIMM 196 */
+			MX6UL_PAD_UART4_RX_DATA__GPIO1_IO29 0x4001b8b0	/* SODIMM 194 */
 		>;
 	};
 
@@ -398,107 +398,107 @@ MX6UL_PAD_UART5_RX_DATA__GPIO1_IO31 0x4001b8b0
 
 	pinctrl_lcdif_dat: lcdif-dat-grp {
 		fsl,pins = <
-			MX6UL_PAD_LCD_DATA00__LCDIF_DATA00  0x00079
-			MX6UL_PAD_LCD_DATA01__LCDIF_DATA01  0x00079
-			MX6UL_PAD_LCD_DATA02__LCDIF_DATA02  0x00079
-			MX6UL_PAD_LCD_DATA03__LCDIF_DATA03  0x00079
-			MX6UL_PAD_LCD_DATA04__LCDIF_DATA04  0x00079
-			MX6UL_PAD_LCD_DATA05__LCDIF_DATA05  0x00079
-			MX6UL_PAD_LCD_DATA06__LCDIF_DATA06  0x00079
-			MX6UL_PAD_LCD_DATA07__LCDIF_DATA07  0x00079
-			MX6UL_PAD_LCD_DATA08__LCDIF_DATA08  0x00079
-			MX6UL_PAD_LCD_DATA09__LCDIF_DATA09  0x00079
-			MX6UL_PAD_LCD_DATA10__LCDIF_DATA10  0x00079
-			MX6UL_PAD_LCD_DATA11__LCDIF_DATA11  0x00079
-			MX6UL_PAD_LCD_DATA12__LCDIF_DATA12  0x00079
-			MX6UL_PAD_LCD_DATA13__LCDIF_DATA13  0x00079
-			MX6UL_PAD_LCD_DATA14__LCDIF_DATA14  0x00079
-			MX6UL_PAD_LCD_DATA15__LCDIF_DATA15  0x00079
-			MX6UL_PAD_LCD_DATA16__LCDIF_DATA16  0x00079
-			MX6UL_PAD_LCD_DATA17__LCDIF_DATA17  0x00079
+			MX6UL_PAD_LCD_DATA00__LCDIF_DATA00 0x00079	/* SODIMM 76 */
+			MX6UL_PAD_LCD_DATA01__LCDIF_DATA01 0x00079	/* SODIMM 70 */
+			MX6UL_PAD_LCD_DATA02__LCDIF_DATA02 0x00079	/* SODIMM 60 */
+			MX6UL_PAD_LCD_DATA03__LCDIF_DATA03 0x00079	/* SODIMM 58 */
+			MX6UL_PAD_LCD_DATA04__LCDIF_DATA04 0x00079	/* SODIMM 78 */
+			MX6UL_PAD_LCD_DATA05__LCDIF_DATA05 0x00079	/* SODIMM 72 */
+			MX6UL_PAD_LCD_DATA06__LCDIF_DATA06 0x00079	/* SODIMM 80 */
+			MX6UL_PAD_LCD_DATA07__LCDIF_DATA07 0x00079	/* SODIMM 46 */
+			MX6UL_PAD_LCD_DATA08__LCDIF_DATA08 0x00079	/* SODIMM 62 */
+			MX6UL_PAD_LCD_DATA09__LCDIF_DATA09 0x00079	/* SODIMM 48 */
+			MX6UL_PAD_LCD_DATA10__LCDIF_DATA10 0x00079	/* SODIMM 74 */
+			MX6UL_PAD_LCD_DATA11__LCDIF_DATA11 0x00079	/* SODIMM 50 */
+			MX6UL_PAD_LCD_DATA12__LCDIF_DATA12 0x00079	/* SODIMM 52 */
+			MX6UL_PAD_LCD_DATA13__LCDIF_DATA13 0x00079	/* SODIMM 54 */
+			MX6UL_PAD_LCD_DATA14__LCDIF_DATA14 0x00079	/* SODIMM 66 */
+			MX6UL_PAD_LCD_DATA15__LCDIF_DATA15 0x00079	/* SODIMM 64 */
+			MX6UL_PAD_LCD_DATA16__LCDIF_DATA16 0x00079	/* SODIMM 57 */
+			MX6UL_PAD_LCD_DATA17__LCDIF_DATA17 0x00079	/* SODIMM 61 */
 		>;
 	};
 
 	pinctrl_lcdif_ctrl: lcdif-ctrl-grp {
 		fsl,pins = <
-			MX6UL_PAD_LCD_CLK__LCDIF_CLK	    0x00079
-			MX6UL_PAD_LCD_ENABLE__LCDIF_ENABLE  0x00079
-			MX6UL_PAD_LCD_HSYNC__LCDIF_HSYNC    0x00079
-			MX6UL_PAD_LCD_VSYNC__LCDIF_VSYNC    0x00079
+			MX6UL_PAD_LCD_CLK__LCDIF_CLK	    0x00079	/* SODIMM 56 */
+			MX6UL_PAD_LCD_ENABLE__LCDIF_ENABLE  0x00079	/* SODIMM 44 */
+			MX6UL_PAD_LCD_HSYNC__LCDIF_HSYNC    0x00079	/* SODIMM 68 */
+			MX6UL_PAD_LCD_VSYNC__LCDIF_VSYNC    0x00079	/* SODIMM 82 */
 		>;
 	};
 
 	pinctrl_pwm4: pwm4-grp {
 		fsl,pins = <
-			MX6UL_PAD_NAND_WP_B__PWM4_OUT	0x00079
+			MX6UL_PAD_NAND_WP_B__PWM4_OUT	0x00079		/* SODIMM 59 */
 		>;
 	};
 
 	pinctrl_pwm5: pwm5-grp {
 		fsl,pins = <
-			MX6UL_PAD_NAND_DQS__PWM5_OUT	0x00079
+			MX6UL_PAD_NAND_DQS__PWM5_OUT	0x00079		/* SODIMM 28 */
 		>;
 	};
 
 	pinctrl_pwm6: pwm6-grp {
 		fsl,pins = <
-			MX6UL_PAD_ENET1_TX_EN__PWM6_OUT	0x00079
+			MX6UL_PAD_ENET1_TX_EN__PWM6_OUT	0x00079		/* SODIMM 30 */
 		>;
 	};
 
 	pinctrl_pwm7: pwm7-grp {
 		fsl,pins = <
-			MX6UL_PAD_ENET1_TX_CLK__PWM7_OUT	0x00079
+			MX6UL_PAD_ENET1_TX_CLK__PWM7_OUT	0x00079	/* SODIMM 67 */
 		>;
 	};
 
 	pinctrl_uart1: uart1-grp {
 		fsl,pins = <
-			MX6UL_PAD_UART1_TX_DATA__UART1_DTE_RX	0x1b0b1
-			MX6UL_PAD_UART1_RX_DATA__UART1_DTE_TX	0x1b0b1
-			MX6UL_PAD_UART1_RTS_B__UART1_DTE_CTS	0x1b0b1
-			MX6UL_PAD_UART1_CTS_B__UART1_DTE_RTS	0x1b0b1
+			MX6UL_PAD_UART1_TX_DATA__UART1_DTE_RX	0x1b0b1	/* SODIMM 33 */
+			MX6UL_PAD_UART1_RX_DATA__UART1_DTE_TX	0x1b0b1	/* SODIMM 35 */
+			MX6UL_PAD_UART1_RTS_B__UART1_DTE_CTS	0x1b0b1	/* SODIMM 27 */
+			MX6UL_PAD_UART1_CTS_B__UART1_DTE_RTS	0x1b0b1	/* SODIMM 25 */
 		>;
 	};
 
 	pinctrl_uart1_ctrl1: uart1-ctrl1-grp { /* Additional DTR, DCD */
 		fsl,pins = <
-			MX6UL_PAD_JTAG_TDI__GPIO1_IO13		0x1b0b1 /* DCD */
-			MX6UL_PAD_LCD_DATA18__GPIO3_IO23	0x1b0b1 /* DSR */
-			MX6UL_PAD_JTAG_TDO__GPIO1_IO12		0x1b0b1 /* DTR */
-			MX6UL_PAD_LCD_DATA19__GPIO3_IO24        0x1b0b1 /* RI */
+			MX6UL_PAD_JTAG_TDI__GPIO1_IO13		0x70a0 /* SODIMM 31 */
+			MX6UL_PAD_LCD_DATA18__GPIO3_IO23	0x10b0 /* SODIMM 29 */
+			MX6UL_PAD_JTAG_TDO__GPIO1_IO12		0x90b1 /* SODIMM 23 */
+			MX6UL_PAD_LCD_DATA19__GPIO3_IO24        0x10b0 /* SODIMM 37 */
 		>;
 	};
 
 	pinctrl_uart2: uart2-grp {
 		fsl,pins = <
-			MX6UL_PAD_UART2_TX_DATA__UART2_DTE_RX	0x1b0b1
-			MX6UL_PAD_UART2_RX_DATA__UART2_DTE_TX	0x1b0b1
-			MX6UL_PAD_UART2_CTS_B__UART2_DTE_RTS	0x1b0b1
-			MX6UL_PAD_UART2_RTS_B__UART2_DTE_CTS	0x1b0b1
+			MX6UL_PAD_UART2_TX_DATA__UART2_DTE_RX	0x1b0b1 /* SODIMM 36 */
+			MX6UL_PAD_UART2_RX_DATA__UART2_DTE_TX	0x1b0b1 /* SODIMM 38 */
+			MX6UL_PAD_UART2_CTS_B__UART2_DTE_RTS	0x1b0b1 /* SODIMM 32 */
+			MX6UL_PAD_UART2_RTS_B__UART2_DTE_CTS	0x1b0b1 /* SODIMM 34 */
 		>;
 	};
 	pinctrl_uart5: uart5-grp {
 		fsl,pins = <
-			MX6UL_PAD_GPIO1_IO04__UART5_DTE_RX	0x1b0b1
-			MX6UL_PAD_GPIO1_IO05__UART5_DTE_TX	0x1b0b1
+			MX6UL_PAD_GPIO1_IO04__UART5_DTE_RX	0x1b0b1 /* SODIMM 19 */
+			MX6UL_PAD_GPIO1_IO05__UART5_DTE_TX	0x1b0b1 /* SODIMM 21 */
 		>;
 	};
 
 	pinctrl_usbh_reg: gpio-usbh-reg {
 		fsl,pins = <
-			MX6UL_PAD_GPIO1_IO02__GPIO1_IO02	0x1b0b1 /* SODIMM 129 USBH PEN */
+			MX6UL_PAD_GPIO1_IO02__GPIO1_IO02	0x10b0 /* SODIMM 129 */
 		>;
 	};
 
 	pinctrl_usdhc1: usdhc1-grp {
 		fsl,pins = <
-			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x17059
-			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x10059
-			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x17059
-			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x17059
-			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x17059
-			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x17059
+			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x17059 /* SODIMM 47 */
+			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x10059 /* SODIMM 190 */
+			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x17059 /* SODIMM 192 */
+			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x17059 /* SODIMM 49 */
+			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x17059 /* SODIMM 51 */
+			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x17059 /* SODIMM 53 */
 		>;
 	};
 
@@ -533,7 +533,7 @@ MX6UL_PAD_CSI_DATA03__USDHC2_DATA3	0x17059
 			MX6UL_PAD_CSI_HSYNC__USDHC2_CMD		0x17059
 			MX6UL_PAD_CSI_VSYNC__USDHC2_CLK		0x17059
 
-			MX6UL_PAD_GPIO1_IO03__OSC32K_32K_OUT	0x14
+			MX6UL_PAD_GPIO1_IO03__OSC32K_32K_OUT	0x10
 		>;
 	};
 
@@ -547,23 +547,23 @@ MX6UL_PAD_LCD_RESET__WDOG1_WDOG_ANY    0x30b0
 &iomuxc_snvs {
 	pinctrl_snvs_gpio1: snvs-gpio1-grp {
 		fsl,pins = <
-			MX6ULL_PAD_SNVS_TAMPER6__GPIO5_IO06	0x14 /* SODIMM 93 */
-			MX6ULL_PAD_SNVS_TAMPER3__GPIO5_IO03	0x14 /* SODIMM 95 */
-			MX6ULL_PAD_BOOT_MODE0__GPIO5_IO10	0x74 /* SODIMM 105 */
-			MX6ULL_PAD_SNVS_TAMPER5__GPIO5_IO05	0x14 /* SODIMM 131 USBH OC */
-			MX6ULL_PAD_SNVS_TAMPER8__GPIO5_IO08	0x74 /* SODIMM 138 */
+			MX6ULL_PAD_SNVS_TAMPER6__GPIO5_IO06	0x110a0	/* SODIMM 93 */
+			MX6ULL_PAD_SNVS_TAMPER3__GPIO5_IO03	0x110a0	/* SODIMM 95 */
+			MX6ULL_PAD_BOOT_MODE0__GPIO5_IO10	0x1b0a0	/* SODIMM 105 */
+			MX6ULL_PAD_SNVS_TAMPER5__GPIO5_IO05	0x0b0a0	/* SODIMM 131 */
+			MX6ULL_PAD_SNVS_TAMPER8__GPIO5_IO08	0x110a0	/* SODIMM 138 */
 		>;
 	};
 
 	pinctrl_snvs_gpio2: snvs-gpio2-grp { /* ATMEL MXT TOUCH */
 		fsl,pins = <
-			MX6ULL_PAD_SNVS_TAMPER4__GPIO5_IO04	0x74 /* SODIMM 107 */
+			MX6ULL_PAD_SNVS_TAMPER4__GPIO5_IO04	0xb0a0	/* SODIMM 107 */
 		>;
 	};
 
 	pinctrl_snvs_gpio3: snvs-gpio3-grp { /* Wifi pins */
 		fsl,pins = <
-			MX6ULL_PAD_BOOT_MODE1__GPIO5_IO11	0x14 /* SODIMM 127 */
+			MX6ULL_PAD_BOOT_MODE1__GPIO5_IO11	0x130a0	/* SODIMM 127 */
 		>;
 	};
 
@@ -587,13 +587,13 @@ MX6ULL_PAD_SNVS_TAMPER2__GPIO5_IO02	0x130b0
 
 	pinctrl_snvs_gpiokeys: snvs-gpiokeys-grp {
 		fsl,pins = <
-			MX6ULL_PAD_SNVS_TAMPER1__GPIO5_IO01	0x130b0
+			MX6ULL_PAD_SNVS_TAMPER1__GPIO5_IO01	0x130a0	/* SODIMM 45 */
 		>;
 	};
 
 	pinctrl_snvs_usdhc1_cd: snvs-usdhc1-cd-grp {
 		fsl,pins = <
-			MX6ULL_PAD_SNVS_TAMPER0__GPIO5_IO00	0x1b0b0 /* CD */
+			MX6ULL_PAD_SNVS_TAMPER0__GPIO5_IO00	0x1b0a0 /* SODIMM 43 */
 		>;
 	};
 
@@ -605,7 +605,7 @@ MX6ULL_PAD_SNVS_TAMPER0__GPIO5_IO00	0x0
 
 	pinctrl_snvs_wifi_pdn: snvs-wifi-pdn-grp {
 		fsl,pins = <
-			MX6ULL_PAD_BOOT_MODE1__GPIO5_IO11	0x14
+			MX6ULL_PAD_BOOT_MODE1__GPIO5_IO11	0x130a0
 		>;
 	};
 };
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
