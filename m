Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7610A7C194
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:39:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ZGG8u4JW0VHvX0lrwIoH4eilHASTQMnUPrwx+xqQ+g=; b=tfjoaCFyzYjVpw
	YyEv7ZcDYntJod0J3vD/ZI7uX4cscL2P/5kij0gXsB4aB8rOLXR3cSEf/KEG4vlDdgiYnDjAthFC2
	4OvXTehXWlcWpSa87LaUjZZQnX4BnM7dxhaNfFTTcQJfn0gDro/nCLEeHmc5jndLSC9HRiL0yQCMr
	NhXF4yp/2ZexuiMuL4l720/ze5ZMo1xC/fFsu1Ru21aFxP9IGjIQH7wuaiL9GCtJ3sqtvfkb4P04i
	gCTqXk3zuWGHZUI2knXQY+Cgup2DdUcKOKLnqKAbvgKMgr9GwULJQa5L1r/x+u2N9xZBZuod0RDa+
	eV8DiLO0X+9OMxzpeBgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnt2-0007Az-1Q; Wed, 31 Jul 2019 12:39:20 +0000
Received: from mail-eopbgr50113.outbound.protection.outlook.com
 ([40.107.5.113] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnru-0005tW-Qt
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:38:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O9MVFHkWnhYR1CAjS30X+mMNj8D3gJ0BDo2+8cpeC4BMIEVqrImkxHUF054TF0vxXLoJOey0HFbqxtgFwiuOZHr6JMSPehnx6TBogqMVtRwlgkcsX1NunjD8Vmz3iq436zxxUhVOpYzQaXnyKMk40imXF04RrhsSYCbrtTvMcENHcluunTMLEMGqBbNGGfehfgQZLe/KHPIMHw/4YYGSiwcJavpYI9miCFM3VSNiQRzq27nncSnahScNjKkCSb1Jcbn/5aSQ3xaTQlnlr6Cgu0fFJhEr9gj/XKx8BW8YqQ9IY2JTi8CWMFwqPc6cbhWAhjyiFOdF8NGCFXQOgwyodg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fXEGd6GE27j6romxb8yNqfyiU9YCWJArLtxHDtKVapE=;
 b=FgJkEvhscW+xdz2bF23U98bAFbNB1PgI8IMXiyX7ntR2Lz4ukpHgZONR7FryAzf2d+heUCgupMwfftiqnw6TAokcGdZA9tc656W66aeFNDhQLSnfaLKv4tk3/r9EKNWm6E5J4BzRPG+yZcXJH9sn6rp8TgiBUA8jrc5RW+uCb+O22mW1syHnTUvvSQnrvOXx8f1t1Yorr7cvSGqZSJAP3SpBKnOqHeEvF0YOBVaqYAxYD0b5LORmHdvvLkvqvuQO3F3NrmxjFedX+fNIjE7ILRrPtlfLLSb3CUml59VkFA29+Mhsf596KkN6ZAw7umL/6+jenH+lgD+oSKmmFteZfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fXEGd6GE27j6romxb8yNqfyiU9YCWJArLtxHDtKVapE=;
 b=DhsJYvm92GPJIa5H99TW7ijmEvSYwPUNID9qGEPF8qzcI91UTHQoXL5lTwqGbhLm5QK23d1tU4/So0cBqFyXxUGhI82RaiJ6Ofx+8qL0dzfQE17Tu6G8MqROuBzQFnqcNsEK1ZDEVxS/8wUph8Y4f3EA+CgZ0qDU0QCdPt/PU/4=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3615.eurprd05.prod.outlook.com (52.134.7.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Wed, 31 Jul 2019 12:38:07 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 12:38:07 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 04/20] ARM: dts: imx7-colibri: Add sleep mode to ethernet
Thread-Topic: [PATCH v2 04/20] ARM: dts: imx7-colibri: Add sleep mode to
 ethernet
Thread-Index: AQHVR5zNpzPPnhwDRkytX8iwKmxe9w==
Date: Wed, 31 Jul 2019 12:38:06 +0000
Message-ID: <20190731123750.25670-5-philippe.schenker@toradex.com>
References: <20190731123750.25670-1-philippe.schenker@toradex.com>
In-Reply-To: <20190731123750.25670-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR02CA0012.eurprd02.prod.outlook.com
 (2603:10a6:208:3e::25) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.22.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 216457b4-90d7-425d-c5d1-08d715b3f01a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3615; 
x-ms-traffictypediagnostic: VI1PR0502MB3615:
x-microsoft-antispam-prvs: <VI1PR0502MB3615A4B1C16ED31B58BB0A57F4DF0@VI1PR0502MB3615.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39850400004)(376002)(136003)(396003)(366004)(346002)(199004)(189003)(66946007)(52116002)(66446008)(64756008)(66556008)(66476007)(76176011)(99286004)(53936002)(6512007)(6436002)(5660300002)(4326008)(7416002)(66066001)(6486002)(25786009)(478600001)(14454004)(7736002)(305945005)(71190400001)(71200400001)(3846002)(6116002)(36756003)(2501003)(68736007)(2906002)(2201001)(44832011)(486006)(476003)(86362001)(446003)(2616005)(14444005)(11346002)(256004)(186003)(81166006)(81156014)(26005)(102836004)(50226002)(8936002)(8676002)(6506007)(386003)(316002)(54906003)(110136005)(1076003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3615;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qBb97LgbxOmYdOoBPwJRkZAmaiyQV2EkTavplfh8vJqeOyRkJwHMWUXR9hBssjJJDS+6K5bCWq+ATGMzhF35IQakkwZOdixG4cQ7BCoEmv77olMEkOzjqm0gQyKsVJUYg5y/3d9UumlefkmzJvx7Lwo6Q/vLO2UoEZGKi/CMM+Ifcp7ur5an6Fdu5tcYCRrD3azWOmSHv05tXdHvAmx6hOgjRgwdYb/vs3JhVoufMqBZu1woyosLx3UuvKewMFjIIAxHvgFdU2FG9SdhofFIPUHLHGyNlCEOTNHoiMaOP2nhdkvetEhPvug8uNvZnIqFG7OcrR4++n23Sp3hGtHmYbl0D6KNsubDq+E6srfYyICQBBp1FNRFE1iEtrzonGZkPw/FB/3ZvFgNKqUUhncRRy/ixAy3CPmf3q1BJvIZzng=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 216457b4-90d7-425d-c5d1-08d715b3f01a
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 12:38:06.9529 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: philippe.schenker@toradex.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3615
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_053810_882768_2B6E72FD 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.113 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add sleep pinmux to the fec so it can properly sleep.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

Changes in v2: None

 arch/arm/boot/dts/imx7-colibri.dtsi | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
index 52046085ce6f..a8d992f3e897 100644
--- a/arch/arm/boot/dts/imx7-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri.dtsi
@@ -101,8 +101,9 @@
 };
 
 &fec1 {
-	pinctrl-names = "default";
+	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <&pinctrl_enet1>;
+	pinctrl-1 = <&pinctrl_enet1_sleep>;
 	clocks = <&clks IMX7D_ENET_AXI_ROOT_CLK>,
 		<&clks IMX7D_ENET_AXI_ROOT_CLK>,
 		<&clks IMX7D_ENET1_TIME_ROOT_CLK>,
@@ -463,6 +464,22 @@
 		>;
 	};
 
+	pinctrl_enet1_sleep: enet1sleepgrp {
+		fsl,pins = <
+			MX7D_PAD_ENET1_RGMII_RX_CTL__GPIO7_IO4		0x0
+			MX7D_PAD_ENET1_RGMII_RD0__GPIO7_IO0		0x0
+			MX7D_PAD_ENET1_RGMII_RD1__GPIO7_IO1		0x0
+			MX7D_PAD_ENET1_RGMII_RXC__GPIO7_IO5		0x0
+
+			MX7D_PAD_ENET1_RGMII_TX_CTL__GPIO7_IO10		0x0
+			MX7D_PAD_ENET1_RGMII_TD0__GPIO7_IO6		0x0
+			MX7D_PAD_ENET1_RGMII_TD1__GPIO7_IO7		0x0
+			MX7D_PAD_GPIO1_IO12__GPIO1_IO12			0x0
+			MX7D_PAD_SD2_CD_B__GPIO5_IO9			0x0
+			MX7D_PAD_SD2_WP__GPIO5_IO10			0x0
+		>;
+	};
+
 	pinctrl_ecspi3_cs: ecspi3-cs-grp {
 		fsl,pins = <
 			MX7D_PAD_I2C2_SDA__GPIO4_IO11		0x14
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
