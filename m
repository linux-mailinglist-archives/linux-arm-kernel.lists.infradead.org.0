Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3E184752
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:28:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfl+3ZDy5/9Jno1zvrf9WuoEhiq1QkF6ZUO7LbYQp9c=; b=V0ep7h60VqjCbh
	BlH7vfN/Sr8z9IGlPUuLHPS2biagkS6+DrID0TfyJVjYNi2P+BpZcJ6hlz2kGK8tQZ7Sj/lY7ur2I
	gJhUkuADpn2d6IXy1yQ0Ja4DbI1KhV3EfWtjqHypMUojIwLSTp/92JKrqc3JeI06zAxMW+hYYJJCD
	8Zbwho1mCx6QATKyLi3pM1nQgDq7FtdtpcWIleqJzUwFeOkfvqvqObe4wqc4qA6qPr8coWPd1m11W
	Kb/19y4j8TsAQ+jRHpc1y4OaVGAL4daQba/Sp0p+VaQ4IlvCcdmxvaNQRpznXnRlz3wwD14WJtyJO
	V3RSlKIAvktVFSZgszjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvHIl-00044c-GD; Wed, 07 Aug 2019 08:28:07 +0000
Received: from mail-eopbgr130133.outbound.protection.outlook.com
 ([40.107.13.133] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvHH2-0002et-Og
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:26:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DJD2H0TDH3mKuSKbuGZZXcRsews/hRAKZkSLDHG3rb9KQXTqgYfUDccOzARAheVymqjKkedPZBl8hUHAky4YQQ8qs2LlZjoemmMOOQkes3wD4m6fOf1AFzg3J/Z2apVCqyoTWOgXrek2C5cR/quiT1+Y7BTimXb1D8j/H2tvid5SLTaEprbSfFh8qFHnFPZc7MqndN70Ae50wNleDy1KroyA+1msYK8csJyjsumjkJyoRBXz1TSDlBW5LwUXr3j1ggmoIM43XMttrbC8OffylSKOaCSitRfVJ+wg9ihOMAaRMvW2CbJnO1uul8dNp0JWbLGiaJqkYLf8hx+3G4TmMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=88Yn1S7c60Q0f0LJ6scFK0RJW3nVCp5JNWS4q19ZFPg=;
 b=CFPqU5F4WEGHgrQ/oOY4+vgE/GXC8nhacx3g6IJmb7wor+xvDiThCJFfsf/FnPuzfxF9eaam4SakfJkOQDIqseMn85C0kfDqWkbcTuJ9wVB8CjLcNkkvVbXDHskAh0/JRzRvRQN7hu1WaOrqQsmiFw/isjsfhs2Bwxg3C35USwiS1cX0DRfpCEeERYBLXh8SXhiB3Un2qAEByY420ZTE5oF4BLiCj0ZSuygzfXSLQR/sRFtPiEBWTE2nlP5A5KUsYjHG0MCj6ipi6+01eM1pX6nnEDzSRtxf1tGNaBcyhNmJPsBNEoGyEQ0yuhWuGPY65KXwcNODop2z7OaCwxYuaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=88Yn1S7c60Q0f0LJ6scFK0RJW3nVCp5JNWS4q19ZFPg=;
 b=E6J1JJ1lBhyHcd8C1EgJVB8QBZgrD3JS8aXfHFjzYWb7ARMH6PuWLez4RnKA7JPc6RouBof0AhzZXVAEInpUwU69wbRH39sBcPHGDyBj7pjVPmeUyHHO7mZ2u43W38Gnfk6HfPFftAY5xdedjlPuiiiC6386V8w+B0eWc9Qfzjs=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3614.eurprd05.prod.outlook.com (52.134.7.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Wed, 7 Aug 2019 08:26:14 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 08:26:13 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 04/21] ARM: dts: imx7-colibri: Add sleep mode to ethernet
Thread-Topic: [PATCH v3 04/21] ARM: dts: imx7-colibri: Add sleep mode to
 ethernet
Thread-Index: AQHVTPnG4NnH76SPykai+ZVROgdAjA==
Date: Wed, 7 Aug 2019 08:26:13 +0000
Message-ID: <20190807082556.5013-5-philippe.schenker@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR0101CA0044.eurprd01.prod.exchangelabs.com
 (2603:10a6:200:41::12) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.22.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e53950a0-202f-46a1-d2ee-08d71b10e8dd
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3614; 
x-ms-traffictypediagnostic: VI1PR0502MB3614:
x-microsoft-antispam-prvs: <VI1PR0502MB3614674EDBC5F42B3F457A00F4D40@VI1PR0502MB3614.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(396003)(39850400004)(136003)(366004)(199004)(189003)(305945005)(14444005)(6116002)(26005)(81156014)(76176011)(36756003)(3846002)(6486002)(86362001)(6512007)(478600001)(25786009)(71190400001)(2906002)(7416002)(81166006)(256004)(316002)(71200400001)(2201001)(44832011)(53936002)(7736002)(110136005)(8936002)(54906003)(52116002)(66446008)(64756008)(14454004)(99286004)(476003)(102836004)(8676002)(6436002)(1076003)(66556008)(5660300002)(6506007)(2501003)(4326008)(66946007)(486006)(446003)(11346002)(66066001)(68736007)(50226002)(186003)(66476007)(2616005)(386003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3614;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nuV/U1TN5dmWOm3rRq3IDkLjsuXo3+mX8OIsOKdWYrI5TO50/Geo4DBN+UlAfP5qDsL6tv6iQOiyVX1qBh6PiDLoI5j1/ZRg2fjqwvouC9M9Mw7fvrMRbtACShekY2HtP/BtvwWVCrVm9Hj1Rq4Fg/GQNfD8PBz7EEX1ONffTxIiOrxMreCNtvzFWChEgabskDSFjeOQsYIyxbeR9OpsPFclutoDgUUkuZnFK3cPJolrN36Lr+LFfpdNnMeQ52X+whOpsyf/njFobLyWOLWNJPYN8IEiveugUF72syOxT3+/tLquLX3GQw0+k912wAB1/t29C16wlAlVZWT+K9bAt/QxrcBdvf/Wn7jw1RH72L9Teg3x6ty3+aSUl7LSf+Jg+DKq9Cuiq6LXdk+ST97LQMm3Byd14h5GvR6lvHhJNAo=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e53950a0-202f-46a1-d2ee-08d71b10e8dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 08:26:13.8331 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UuJ7PCYZ2Cstgl7H/n2btwzyKjgyyglq4nZf9WJdMgKQEa+RAHR+K9FStb3NOWg4fAo9rR2oknrjAjB1ZOrKBHkn9jPP+LMBaShbf39RS3Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3614
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_012621_749737_1DB480AA 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.133 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Changes in v3: None
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
