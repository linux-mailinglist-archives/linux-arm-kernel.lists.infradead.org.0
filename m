Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB57984769
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:31:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pWdIaKVLCkJrmnNHxDbJdMzdnlqcn0zfsh6Dsi/cEHI=; b=m1Crj9dry8bnQW
	YFyrwIvkh6YclLW3svNrAyFVp8uSHENsZ2OlcstCQl1y+lLALho843cr4gokn+fzJ0MxcbeAo451D
	4+/YMDrl+jUo05STyY1gqDj6epzA+Owykb/XRibns2tAcbsh6mIkVPNiJk93xfTwc1690t33uV6fX
	Q8Z/HG3cIBP0LmPYQdw+r589T5xKIlXhT7cW33mwmKAD6n2a0CggywUyKoGuMxRf3zUuPBnEgQf2g
	bGNDIB4ZuI9UkSLJSEKNmKqCzMvt6QavbKeJQ8sCDT9bC/JO7CoD5inDcnZ5dTWBZdRvkiqiAqEH5
	NAhiU0YjiZI3iLOTr/xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvHLh-0007KH-U5; Wed, 07 Aug 2019 08:31:10 +0000
Received: from mail-eopbgr00091.outbound.protection.outlook.com ([40.107.0.91]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvHHG-0002nw-6V
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:26:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GZvQ6d5d4GY0iqlSOiYQ/Jk5VKc3p/6Ggdl2Xypbl0fuQqmOE6A3lnp9SXLd63VGe6AHLNiBj3fkwALR1D1HZ8AbNYlQ1tkGS5eOgcnEknvViOsiTZON959PyTxMbYvhFt1Wzwc6ygjJixrQiXtwMPodVA+t7wub+w9z0zJoJvoxQyAoBDB8FxvkbpTA7gDpaAH5w3HBQmY8uwmjsou1PvGmscAZsS12QFXKAvClTQCdB6OzuLtVFs4dd60o74deMYb/sdCIKPZIEB9BBycpN7mCnmvfOLwdhD2bKU669YPJpnC9FgTg6YOSvx3MEmPp5n8inGx6Go/j9LvSlbrAEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pgABcW6WuxZwZN11PtgvqqrAelok5zPLC6GPx4cduBI=;
 b=naTbYnn/Kemajae20lBN6rfBrrJgB1HdhPVHIk4fHLsPTmMBvIMYUmyMWFZB8dOFy0mn4pSN1y3Mkg8HKPhKzcXq58xDiuwpXPgJClo0YmUDx7HsPKESGqi02RbAfF1HRokfJvQGg3EfrU/B1IyGFZYI8ZbE0dhLuFmbFybU9kAykmgqJMBQNlpoYIhS75gIfMx26DQDNXryVXqBC5wKXPw6yMkkycmcJLmIalo5K41iLEeP9WqqUqEMslFOJ+3moKD4cQVdCgnAt77woayYWTBz27ALyYD8/1hzBmAxAACV8nAvAapjHSUmjR04WaLh2+XR4CY4vKx1Nd+NYKNFLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pgABcW6WuxZwZN11PtgvqqrAelok5zPLC6GPx4cduBI=;
 b=ppNYty/LQKwwEZkQ4WGiR+hlI21OJeek/WW7cSZ2ft2131TWdRr8+ut4EpQIVH1Hs4uWr3ZbHl4zWiv5GYbYUTh7xq35RrEQuLzhyA/1CGLOhXi+TpIkADtA0VY/CSYcfqYW+3FCqrUXkBbc0WuN7CKTHPlD9inYF3imB2b5K6Y=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB2928.eurprd05.prod.outlook.com (10.175.25.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.15; Wed, 7 Aug 2019 08:26:30 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 08:26:30 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 12/21] ARM: dts: imx6-apalis: Add touchscreens used on
 Toradex eval boards
Thread-Topic: [PATCH v3 12/21] ARM: dts: imx6-apalis: Add touchscreens used on
 Toradex eval boards
Thread-Index: AQHVTPnQjtMg1e7O6kmFWinqGabNyA==
Date: Wed, 7 Aug 2019 08:26:30 +0000
Message-ID: <20190807082556.5013-13-philippe.schenker@toradex.com>
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
x-ms-office365-filtering-correlation-id: 9b55f4b5-426f-4fe5-7931-08d71b10f2d3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB2928; 
x-ms-traffictypediagnostic: VI1PR0502MB2928:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB2928CFD7EF0F43DD10DEBCEBF4D40@VI1PR0502MB2928.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:741;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39850400004)(366004)(396003)(346002)(136003)(376002)(199004)(189003)(64756008)(66556008)(66476007)(66946007)(36756003)(11346002)(476003)(6436002)(76176011)(2906002)(316002)(305945005)(2616005)(66446008)(1076003)(54906003)(110136005)(68736007)(486006)(14454004)(14444005)(5660300002)(446003)(256004)(86362001)(44832011)(50226002)(4326008)(66066001)(53936002)(6486002)(186003)(8676002)(26005)(71200400001)(99286004)(6512007)(2501003)(2201001)(71190400001)(102836004)(386003)(8936002)(6506007)(478600001)(7736002)(7416002)(52116002)(3846002)(81156014)(81166006)(6116002)(25786009);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB2928;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GaX+97uA0ge7bypAHyjZ2XO1UfN/OJ4/oVRp4guDQui+4Bki1uO9LeCk8MgDr/mFTgdDrb0UVx5hAizzm8jxsdFjTYaiKnR4TToraD+B1wCwnTS5ZpB9kLAI7ed9tAq8litpdPeWAwzXZ7YgaQkr+mEFzYeJJSKancAUKUm5lwJKABloId9FmML7Ym+FLsJlQNStAOlwbv4NB8/7RrPRwgeWt/ksF963Xvm/qmOzjD3mmcAfs3mrxZ4wykeK8VfoHN252VbI+8bl38TQo9nTbZpfdUeRc3bWNdNM6dOBBZW2SZpnMYK5QmjqGUCHZDGEJwSn8YsOATh0P3LQBMktEqQIDOzz5d04XgM8LpVqBosEyCuKZs1u23gP82SJ8oh6R5AOKnhwJmCKMTxCi05zrlprkgTdOAWF+ssP1EyPqJA=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b55f4b5-426f-4fe5-7931-08d71b10f2d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 08:26:30.6714 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ocuUq5hBK77KM1Yl0nK1mqQQ4zZf4b2FfaTC35+WRN7KjHBbiqDJujReJXwX83SF/8D+J52n5l5lGDQU1AlprTOpIHOKlVIvaDHfbq8cc08=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2928
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_012634_412319_9220F686 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.91 listed in list.dnswl.org]
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

This commit adds the touchscreens from Toradex so one can enable it.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

---

Changes in v3:
- Fix commit title to "...imx6-apalis:..."

Changes in v2:
- Deleted touchrevolution downstream stuff
- Use generic node name
- Put a better comment in there

 arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts  | 31 +++++++++++++++++++
 arch/arm/boot/dts/imx6q-apalis-eval.dts       | 13 ++++++++
 arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts | 13 ++++++++
 arch/arm/boot/dts/imx6q-apalis-ixora.dts      | 13 ++++++++
 4 files changed, 70 insertions(+)

diff --git a/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts b/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
index 9a5d6c94cca4..763fb5e90bd3 100644
--- a/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
+++ b/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
@@ -168,6 +168,21 @@
 &i2c3 {
 	status = "okay";
 
+	/*
+	 * Touchscreen is using SODIMM 28/30, also used for PWM<B>, PWM<C>,
+	 * aka pwm2, pwm3. so if you enable touchscreen, disable the pwms
+	 */
+	touchscreen@4a {
+		compatible = "atmel,maxtouch";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pcap_1>;
+		reg = <0x4a>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;		/* SODIMM 28 */
+		reset-gpios = <&gpio2 10 GPIO_ACTIVE_HIGH>;	/* SODIMM 30 */
+		status = "disabled";
+	};
+
 	/* M41T0M6 real time clock on carrier board */
 	rtc_i2c: rtc@68 {
 		compatible = "st,m41t0";
@@ -175,6 +190,22 @@
 	};
 };
 
+&iomuxc {
+	pinctrl_pcap_1: pcap-1 {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_9__GPIO1_IO09	0x1b0b0 /* SODIMM 28 */
+			MX6QDL_PAD_SD4_DAT2__GPIO2_IO10	0x1b0b0 /* SODIMM 30 */
+		>;
+	};
+
+	pinctrl_mxt_ts: mxt-ts {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_CS1__GPIO2_IO24	0x130b0 /* SODIMM 107 */
+			MX6QDL_PAD_SD2_DAT1__GPIO1_IO14	0x130b0 /* SODIMM 106 */
+		>;
+	};
+};
+
 &ipu1_di0_disp0 {
 	remote-endpoint = <&lcd_display_in>;
 };
diff --git a/arch/arm/boot/dts/imx6q-apalis-eval.dts b/arch/arm/boot/dts/imx6q-apalis-eval.dts
index 0edd3043d9c1..4665e15b196d 100644
--- a/arch/arm/boot/dts/imx6q-apalis-eval.dts
+++ b/arch/arm/boot/dts/imx6q-apalis-eval.dts
@@ -167,6 +167,19 @@
 &i2c1 {
 	status = "okay";
 
+	/*
+	 * Touchscreen is using SODIMM 28/30, also used for PWM<B>, PWM<C>,
+	 * aka pwm2, pwm3. so if you enable touchscreen, disable the pwms
+	 */
+	touchscreen@4a {
+		compatible = "atmel,maxtouch";
+		reg = <0x4a>;
+		interrupt-parent = <&gpio6>;
+		interrupts = <10 IRQ_TYPE_EDGE_FALLING>;
+		reset-gpios = <&gpio6 9 GPIO_ACTIVE_HIGH>; /* SODIMM 13 */
+		status = "disabled";
+	};
+
 	pcie-switch@58 {
 		compatible = "plx,pex8605";
 		reg = <0x58>;
diff --git a/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts b/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts
index b94bb687be6b..a3fa04a97d81 100644
--- a/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts
+++ b/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts
@@ -172,6 +172,19 @@
 &i2c1 {
 	status = "okay";
 
+	/*
+	 * Touchscreen is using SODIMM 28/30, also used for PWM<B>, PWM<C>,
+	 * aka pwm2, pwm3. so if you enable touchscreen, disable the pwms
+	 */
+	touchscreen@4a {
+		compatible = "atmel,maxtouch";
+		reg = <0x4a>;
+		interrupt-parent = <&gpio6>;
+		interrupts = <10 IRQ_TYPE_EDGE_FALLING>;
+		reset-gpios = <&gpio6 9 GPIO_ACTIVE_HIGH>; /* SODIMM 13 */
+		status = "disabled";
+	};
+
 	/* M41T0M6 real time clock on carrier board */
 	rtc_i2c: rtc@68 {
 		compatible = "st,m41t0";
diff --git a/arch/arm/boot/dts/imx6q-apalis-ixora.dts b/arch/arm/boot/dts/imx6q-apalis-ixora.dts
index 302fd6adc8a7..5ba49d0f4880 100644
--- a/arch/arm/boot/dts/imx6q-apalis-ixora.dts
+++ b/arch/arm/boot/dts/imx6q-apalis-ixora.dts
@@ -171,6 +171,19 @@
 &i2c1 {
 	status = "okay";
 
+	/*
+	 * Touchscreen is using SODIMM 28/30, also used for PWM<B>, PWM<C>,
+	 * aka pwm2, pwm3. so if you enable touchscreen, disable the pwms
+	 */
+	touchscreen@4a {
+		compatible = "atmel,maxtouch";
+		reg = <0x4a>;
+		interrupt-parent = <&gpio6>;
+		interrupts = <10 IRQ_TYPE_EDGE_FALLING>;
+		reset-gpios = <&gpio6 9 GPIO_ACTIVE_HIGH>; /* SODIMM 13 */
+		status = "disabled";
+	};
+
 	eeprom@50 {
 		compatible = "atmel,24c02";
 		reg = <0x50>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
