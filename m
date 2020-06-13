Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E251F84BF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 20:46:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q7DibZmTCQ6H0JScw3X12PifBGCFJ31Xd+rZ1rkmmqI=; b=j4OTKf6Y3MAw2z
	FR8LXcW+qqAw72ggijQqA2hea+kbZ0U3Ejlzf1lYVaTwp1ag2mJJlSNz9r4eOidTGAj7laAjZt28p
	BQ67+AMS+5VM7CDidf8loe6NrCfliuVifdkPRi+Pr3JVRKFIw9JVlD82SE7WXMxowU3pKo90c1Y6Y
	7U6Ke1GulNmJEt5K9/gG78Oz7iAEnPpW3xph+mw1kwY4GdKj2J12U0P+/cfqU7rx+2dQGktqf3fjr
	+0HG/H0JjHt5poiTpB4WAmbW/dSumKB89uHTwBRaIETg1+WMmWGHraVhtUnUEcUi+fCBFFzG7oKvl
	1XEwvjP7i9xk7cDzf+rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkBAB-00065g-SX; Sat, 13 Jun 2020 18:45:55 +0000
Received: from mail-oln040092004015.outbound.protection.outlook.com
 ([40.92.4.15] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkB9W-0005d1-Fs
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 18:45:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f1QmpPwUJ1ZOB45gOZxvgG3gOxFwUbqJB0pNKAXgKaT0Fc+QWEsCS9B5VFVNo4GvrU9tmjadYUZxF4KWYveOJ4CRvppbOMSLMZi/5s7+KMOZT2/HucyLmO0x+xfic7xAMfHmHv0OZJtATOq4NFTzP98xMS7M3yQlvLCRsGpbEzOFytBuE1q/aNV81qQQ0x0S4Uw0jm1zTx5uqCZaQt2Dsjq1Ib1j5hY3b08unM67zMRjEcqNbUvXiv2XgOatRbjLjprV6PQ5AIQYyb5HhexkUgB9VwR/Ldt/ptBVLa5HD0RMpDW37uwHi6Nr61/E7e0iEE2GGt5M7B6qiguriF1OFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qLhibS2AH1uHRC3+TqD15Yd73eMQZgZCUXQlC9VcWuM=;
 b=haTmMhzmKugajKF7Eb1ixwnlAlPmS22UU4J0Nt72BZoP/QnVelfZZMYEpUuYMtIzdFXOLliBFz0QrhCDPZdLC5Abb5tz/DH7TuVPe4Lt8IC1EboHTY7TJ0hHmqaaJB6rO8Ad/3CgHYfqEaaAEoZJJRF0RhZphqtH/45ia/nL6LvRBLNyNQ4CVYcjv73eDE8UB1abD7IBFbUwo4XS2PN9PjwDpX9nG36yTolwDHK7DdvKwYeAzHoM5EpvfxEP0HVKZJvAomTZ21Zp/zpUiMT0wY3uQTvSYma8Rt50KhAI5AezpzA+Mu5wN0MHKiLBR8vXI7IxNvyh6+KarlP5rr+nfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BL2NAM02FT048.eop-nam02.prod.protection.outlook.com
 (10.152.76.56) by BL2NAM02HT159.eop-nam02.prod.protection.outlook.com
 (10.152.76.165) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Sat, 13 Jun
 2020 18:45:10 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:7e46::4a) by BL2NAM02FT048.mail.protection.outlook.com
 (2a01:111:e400:7e46::109) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18 via Frontend
 Transport; Sat, 13 Jun 2020 18:45:10 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:81909DD91A124551B6F3A5C934F8A1FFBFF35ECFBCB5488D6CAC2B0DF9ABB496;
 UpperCasedChecksum:40F606CB59A2CC265E455992DC82BA9A985A790B6EE1E1F124840D1FE2FC3043;
 SizeAsReceived:7760; Count:49
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::b9c3:9bff:541d:f383]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::b9c3:9bff:541d:f383%9]) with mapi id 15.20.3088.026; Sat, 13 Jun 2020
 18:45:10 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] ARM: dts: s5pv210: Add support for GP2A light sensor on
 Aries
Date: Sat, 13 Jun 2020 11:44:25 -0700
Message-ID: <BN6PR04MB06602B216C5A1AA43E945CB6A39E0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200613184427.23394-1-xc-racer2@live.ca>
References: <20200613184427.23394-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR07CA0022.namprd07.prod.outlook.com
 (2603:10b6:300:116::32) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200613184427.23394-4-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb68:9c00:8067:f823:1e15:7520) by
 MWHPR07CA0022.namprd07.prod.outlook.com (2603:10b6:300:116::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18 via Frontend
 Transport; Sat, 13 Jun 2020 18:45:09 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200613184427.23394-4-xc-racer2@live.ca>
X-TMN: [auD5zsh+km3+wiZ5YA5nm0/ObBGK7MDtIZ+uBXWXBl9UORvQab2ctCBnF3A0oA5K]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 49
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: d6cb9b12-1faf-4121-4a69-08d80fc9e687
X-MS-TrafficTypeDiagnostic: BL2NAM02HT159:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gIq6PW2/IkMEdjEf2+BJ2qJdPrMpevBTfADPcPQIP4mBIBD3wBWlhG+4GPnGEqR9TwwSbe84ghWJ7xsQPRX/y4g5SF3slLLvxF39rNuLAvFq15X62mEuiYYXgjwKsr8kSwMQrk7YoVgouDQugyhRRmRwPerhIue9ione1YdxVGFj0Lkgip758yZnH9GzBD3GsXlio0lFDcSxGSGDVqailg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: HGkomBur/rGwcrrQVXalMKnIucVweivQeaPGW4LUz5ZKbr7QcxbCc+9ATZqoZz+wMWd3QNrhZ6VsvQsa4jwrsLafhEx4L3h6gGHy0Kml5hO2cpk8j8qiZZWMsARC6ttQGBj66VGAUBdbs9ugnuMhKyRMQT384nLPP2B+2IV4aooCDJdhql+wJGe008fTU2H7HVHcu7puQZ/1NSoO4m+1ig==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6cb9b12-1faf-4121-4a69-08d80fc9e687
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2020 18:45:10.6882 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2NAM02HT159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_114514_564078_AEEDB88D 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.4.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.4.15 listed in wl.mailspike.net]
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Jonathan Bakker <xc-racer2@live.ca>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Aries boards have a GP2A light/proximity sensor attached over i2c-gpio.
As the chip outputs a current and the board has no current ADC, a
current shunt resistor and a voltage ADC are used.

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 arch/arm/boot/dts/s5pv210-aries.dtsi | 50 ++++++++++++++++++++++++++--
 1 file changed, 48 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/s5pv210-aries.dtsi b/arch/arm/boot/dts/s5pv210-aries.dtsi
index d3aeafc0f650..b27d7c2e6dca 100644
--- a/arch/arm/boot/dts/s5pv210-aries.dtsi
+++ b/arch/arm/boot/dts/s5pv210-aries.dtsi
@@ -69,6 +69,18 @@
 		pinctrl-0 = <&touchkey_vdd_ena>;
 	};
 
+	gp2a_vled: regulator-fixed-2 {
+		compatible = "regulator-fixed";
+		regulator-name = "VLED";
+		enable-active-high;
+		gpio = <&gpj1 4 GPIO_ACTIVE_HIGH>;
+		regulator-min-microvolt = <2800000>;
+		regulator-max-microvolt = <2800000>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&gp2a_power>;
+	};
+
 	wifi_pwrseq: wifi-pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		reset-gpios = <&gpg1 2 GPIO_ACTIVE_LOW>;
@@ -468,9 +480,21 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&prox_i2c_pins>;
 
-		status = "disabled";
+		light-sensor@44 {
+			compatible = "sharp,gp2ap002a00f";
+			reg = <0x44>;
+			interrupt-parent = <&gph0>;
+			interrupts = <2 IRQ_TYPE_EDGE_FALLING>;
+			vdd-supply = <&gp2a_vled>;
+			vio-supply = <&gp2a_vled>;
+			io-channels = <&gp2a_shunt>;
+			io-channel-names = "alsout";
+			sharp,proximity-far-hysteresis = /bits/ 8 <0x40>;
+			sharp,proximity-close-hysteresis = /bits/ 8 <0x20>;
 
-		/* Sharp gp2a prox/light sensor, incomplete mainline binding */
+			pinctrl-names = "default";
+			pinctrl-0 = <&gp2a_irq>;
+		};
 	};
 
 	i2c_magnetometer: i2c-gpio-7 {
@@ -543,6 +567,14 @@
 	vdd-supply = <&ldo4_reg>;
 
 	status = "okay";
+
+	gp2a_shunt: current-sense-shunt {
+		compatible = "current-sense-shunt";
+		io-channels = <&adc 9>;
+		shunt-resistor-micro-ohms = <47000000>; /* 47 ohms */
+		#io-channel-cells = <0>;
+		io-channel-ranges;
+	};
 };
 
 &fimd {
@@ -618,6 +650,13 @@
 		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
 	};
 
+	gp2a_irq: gp2a-irq {
+		samsung,pins = "gph0-2";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_F>;
+		samsung,pin-pud = <S3C64XX_PIN_PULL_DOWN>;
+		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
+	};
+
 	pmic_dvs_pins: pmic-dvs-pins {
 		samsung,pins = "gph0-3", "gph0-4", "gph0-5";
 		samsung,pin-function = <EXYNOS_PIN_FUNC_OUTPUT>;
@@ -686,6 +725,13 @@
 		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
 	};
 
+	gp2a_power: gp2a-power {
+		samsung,pins = "gpj1-4";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_OUTPUT>;
+		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
+	};
+
 	touchkey_i2c_pins: touchkey-i2c-pins {
 		samsung,pins = "gpj3-0", "gpj3-1";
 		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
