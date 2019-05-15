Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD701F6C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 16:43:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kIopzRGmn8LaqTxkWZ5G2Cusz2VJDV3H3qRc+vwHLEg=; b=gdQl6szPNB2L3E
	7Vg2kn722mq8dM96qq6NnouL4bkSM9cUmAqGJ5SaID5Ga30VXhNW8wfsFCOXTGtRcyCEDXYYpV26m
	sodQ+t4Ao69FLAO7F6/sfhqIKBo4zMUAJmoQGZe9hf1GvhEfpBoHPme5Zs/9bn3OKcxLOwAq9wKnS
	8g20DjbR15YFVjO/MkdE1JacZcGAtcx5AJ8g19x6B6y33fy51SRllqYyXz8h4BQom4ga6KCrB3e0i
	v+5MBJPjAd/pkiZp8xA8aJrSfjnl3U2Rr09AlhUWjSwQL+SG1pS9avJRRbn1Y1cY9w/9EpUhNqzbG
	vb2UUC/Wbhh2AXdRP8Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQv7e-00061G-0P; Wed, 15 May 2019 14:43:10 +0000
Received: from mail-eopbgr130041.outbound.protection.outlook.com
 ([40.107.13.41] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQv7E-0005cg-H0
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 14:42:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OMve6dwHHrqRGTtyS31i6HGfZ2Wfl1AM2fGbmNH9H2A=;
 b=Kz0Gr+DdwoZNfBlFb02N8e5EofjXgDLI7COny6p0V2XFMAyD5vPUKXDSowUpKULpvtI+GYQeGjWv43xNBjXPjbeERAXYD6RCts2mLQCcgil77kQ5of5manltrS19sqKSgtkmfqVTD4y9L3pJrzHhnrdCD0TVEgNj1mo+1rhqchA=
Received: from VI1PR0402MB3357.eurprd04.prod.outlook.com (52.134.1.18) by
 VI1PR0402MB2895.eurprd04.prod.outlook.com (10.175.24.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Wed, 15 May 2019 14:42:29 +0000
Received: from VI1PR0402MB3357.eurprd04.prod.outlook.com
 ([fe80::888f:9ea:6f65:508f]) by VI1PR0402MB3357.eurprd04.prod.outlook.com
 ([fe80::888f:9ea:6f65:508f%6]) with mapi id 15.20.1900.010; Wed, 15 May 2019
 14:42:29 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: [PATCH v3 2/2] arm64: dts: imx8mm-evk: Enable audio codec wm8524
Thread-Topic: [PATCH v3 2/2] arm64: dts: imx8mm-evk: Enable audio codec wm8524
Thread-Index: AQHVCyxr/1Fx7JEh8EGBF02px5rSJw==
Date: Wed, 15 May 2019 14:42:29 +0000
Message-ID: <20190515144210.25596-3-daniel.baluta@nxp.com>
References: <20190515144210.25596-1-daniel.baluta@nxp.com>
In-Reply-To: <20190515144210.25596-1-daniel.baluta@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR06CA0094.eurprd06.prod.outlook.com
 (2603:10a6:803:8c::23) To VI1PR0402MB3357.eurprd04.prod.outlook.com
 (2603:10a6:803:2::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9a9c0405-474e-4f81-2bfe-08d6d9438e44
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB2895; 
x-ms-traffictypediagnostic: VI1PR0402MB2895:
x-microsoft-antispam-prvs: <VI1PR0402MB28953AAF14A7CD8747407D4CF9090@VI1PR0402MB2895.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:873;
x-forefront-prvs: 0038DE95A2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(396003)(39860400002)(136003)(346002)(189003)(199004)(54906003)(5640700003)(6506007)(76176011)(6916009)(478600001)(6512007)(66446008)(14454004)(99286004)(102836004)(36756003)(52116002)(386003)(73956011)(66946007)(7416002)(3846002)(6116002)(64756008)(66476007)(66556008)(446003)(2616005)(476003)(11346002)(53936002)(316002)(486006)(44832011)(5660300002)(2351001)(71200400001)(71190400001)(1076003)(7736002)(26005)(305945005)(186003)(6486002)(86362001)(2501003)(4326008)(66066001)(25786009)(256004)(14444005)(68736007)(81166006)(8676002)(50226002)(81156014)(1730700003)(6436002)(2906002)(8936002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2895;
 H:VI1PR0402MB3357.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: lFwqlPL5PI821QFOLcoHtpjPdeboZUbAnY81BswGHH267HX8YlTrx15W6f83gn5xs8HFMxXou0t8R3Sv0IYZZI6Oo3yCYe9lXfPdEdgw7othSFKDv7fLKzf++fliEBmVz0FJTNtfYzx53oZRo37IiKhI6ahB9IYzcYwr/s2FTkz+RjKBuatORJ195WtIzEdNHTRG3aiH3hox5JN8tZT8ci4FhECkEQnEQ7U/BLXVFZpk4S/FD4ZPc8ck21P7YG4jmzQwhBIzjRSx2rigp4mmJlnBF88KPoQquwHplswILkLiNtAb1+lCxibktyBSIpm8LItVyYJzMv3ul8pXUvhzzEaxHzLiVCELyvrqOCOqStFIJQ9CsAwHUjgwsHRj/NA5Ly6i+MIUHMNwNDzl3rrT13sehW5TaZvZE66ep+6zz9Y=
Content-ID: <127BF082BBC1824D9BA7AEC6678EAD49@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a9c0405-474e-4f81-2bfe-08d6d9438e44
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2019 14:42:29.5170 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2895
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_074245_125132_9E1B7511 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX8MM has one wm8524 audio codec connected with
SAI3 digital audio interface.

This patch uses simple-card machine driver in order
to enable wm8524 codec.

We need to set:
	* SAI3 pinctrl configuration
	* codec reset gpio pinctrl configuration
	* clock hierarchy
	* codec node
	* simple-card configuration

Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-evk.dts | 55 ++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
index 2d5d89475b76..7c578d8762b9 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
@@ -37,6 +37,37 @@
 		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 	};
+
+	wm8524: audio-codec {
+		#sound-dai-cells = <0>;
+		compatible = "wlf,wm8524";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_wlf>;
+		wlf,mute-gpios = <&gpio5 21 GPIO_ACTIVE_LOW>;
+	};
+
+	sound-wm8524 {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "wm8524-audio";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,frame-master = <&cpudai>;
+		simple-audio-card,bitclock-master = <&cpudai>;
+		simple-audio-card,widgets =
+			"Line", "Left Line Out Jack",
+			"Line", "Right Line Out Jack";
+		simple-audio-card,routing =
+			"Left Line Out Jack", "LINEVOUTL",
+			"Right Line Out Jack", "LINEVOUTR";
+
+		cpudai: simple-audio-card,cpu {
+			sound-dai = <&sai3>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&wm8524>;
+			clocks = <&clk IMX8MM_CLK_SAI3_ROOT>;
+		};
+	};
 };
 
 &fec1 {
@@ -61,6 +92,15 @@
 	};
 };
 
+&sai3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sai3>;
+	assigned-clocks = <&clk IMX8MM_CLK_SAI3>;
+	assigned-clock-parents = <&clk IMX8MM_AUDIO_PLL1_OUT>;
+	assigned-clock-rates = <24576000>;
+	status = "okay";
+};
+
 &uart2 { /* console */
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart2>;
@@ -124,12 +164,27 @@
 		>;
 	};
 
+	pinctrl_gpio_wlf: gpiowlfgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_I2C4_SDA_GPIO5_IO21        0xd6
+		>;
+	};
+
 	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmc {
 		fsl,pins = <
 			MX8MM_IOMUXC_SD2_RESET_B_GPIO2_IO19	0x41
 		>;
 	};
 
+	pinctrl_sai3: sai3grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SAI3_TXFS_SAI3_TX_SYNC     0xd6
+			MX8MM_IOMUXC_SAI3_TXC_SAI3_TX_BCLK      0xd6
+			MX8MM_IOMUXC_SAI3_MCLK_SAI3_MCLK        0xd6
+			MX8MM_IOMUXC_SAI3_TXD_SAI3_TX_DATA0     0xd6
+		>;
+	};
+
 	pinctrl_uart2: uart2grp {
 		fsl,pins = <
 			MX8MM_IOMUXC_UART2_RXD_UART2_DCE_RX	0x140
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
