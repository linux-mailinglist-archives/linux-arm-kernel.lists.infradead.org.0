Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA991C2169
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 01:53:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KTD+wHJF/1rKUnink6irLHDRmXRmZcbwjA5O5VPaszo=; b=iKTThfP7JNwkEE
	Pi3PHIYFC71SFR2BRTSWLOq4MtPyk4Bxc+WuIgFYi4byU1oRlNMhlxfluB/i6h2j3F6YeN1ca+0ON
	R2AopJUNqZC8yCpyJZ5udNPiKX92w9y8CTQaDvcpAYoHApN2KIV/Zb7wuqZcYp0+HwX1WeM7W+u9d
	VBE7XaUqAztkVEqXt5DrNtFLEWmM+WxwGoITr24fZwCMEge3jT/0KEwY/PEYg+4Kv30LY9iStZ7op
	eDYoDtAiMqFJsZCPtTbMbGEjmLOUQ5afPvLY0xvggFdWi2qzn3zMefaIsAUHcqVRW9Fa3WuCOSlJz
	lgKsTUp44khE9cekeO3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUfSe-0000A9-9D; Fri, 01 May 2020 23:52:52 +0000
Received: from mail-bn8nam12olkn2014.outbound.protection.outlook.com
 ([40.92.21.14] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUfRE-0007EJ-5L
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 23:51:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M1ZYDIydMVI2xQ9IJWid5GUlaJbyU+VSnx3ZxreOoPZ1pzTiFTF2FtrfdpqdEXno49A9r8s9OALiWlk9wWInzziSSWfyo3k3ptKXoVyKKpqtpmmS91MK4Lxis3S+zLIg5lU/tsrI+zn2mz0fNegaSiNKQD9ZUqLES0kMxh/6WVtr57MNIchmq7ABbDl8U6RYl41VlEaOKL81LlaOaAkhdDd+nkdReZzbfIxfy4pD4wjr8x2UpuJ5/MGLb0qaJm/WcPbM4+cODBIKL288dWdE0B6/bVzVF8qPxPy+L2cc4d+wKqHK5snTslM71P1le3LHA3qsGRlrMGGLF0xwfNdLQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i1dzlwIs1QzTTlD619/F600hg/8wDSMzpOvDUEO9w+g=;
 b=ExuhM/Ewu6Ul85CmsTaxBBOoRzLCV0KVaWuXcr80juRBxWmFHHiy3mGdAv4q89jJpulALV1xUg4gXsKceu2u/ejm5Uo72L3+B7QsIQGTB5g8YTbq6N5hnGbpoOScImtY34aEsfHi5HvjcavUQrEFltnTTAzYp6f3q/58X76KhH5E3kXy8xVpTTiGd2evVf8kxKRt5vyWc8KNAuiJpLItK8HDFiuenVFBKkXaQgmhTNTkox1x42Cv41npUsekpRV5uhTW6N6RR+7TnQSBcCkSseaR3PRivZny51J+ALoVeJF83+CCaKDbzs/Ttq0ISgbXGZLmb2X7Vo5EaceZB3E3sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM12FT056.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc64::4b) by
 DM6NAM12HT076.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc64::378)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12; Fri, 1 May
 2020 23:51:21 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc64::46) by DM6NAM12FT056.mail.protection.outlook.com
 (2a01:111:e400:fc64::460) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12 via Frontend
 Transport; Fri, 1 May 2020 23:51:21 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:E4A12D889E69E6B3B3485A71B85225F936B013B9FBEE1E6E6201DE06FC69E851;
 UpperCasedChecksum:623104346D341BD64854B43E4624D2F889E71F553DEACCF7580080CDB15C75FB;
 SizeAsReceived:7858; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2958.027; Fri, 1 May 2020
 23:51:21 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 06/18] ARM: dts: s5pv210: Add WM8994 support to aries boards
Date: Fri,  1 May 2020 16:50:07 -0700
Message-ID: <BN6PR04MB06607A609490BB94EE442E82A3AB0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501235019.24022-1-xc-racer2@live.ca>
References: <20200426183604.28494-1-xc-racer2@live.ca>
 <20200501235019.24022-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR17CA0058.namprd17.prod.outlook.com
 (2603:10b6:300:93::20) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200501235019.24022-7-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb68:9c00:8067:f823:1e15:7520) by
 MWHPR17CA0058.namprd17.prod.outlook.com (2603:10b6:300:93::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20 via Frontend Transport; Fri, 1 May 2020 23:51:19 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200501235019.24022-7-xc-racer2@live.ca>
X-TMN: [NgxhM1/p+XrQQltqpjli7rKBtYGzBhIeLgU6qsv5muIoHSMXBt6rxZtuFGfdX+hr]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: f5ada9d0-1954-45f3-d161-08d7ee2a8c68
X-MS-TrafficTypeDiagnostic: DM6NAM12HT076:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PYN2C1iyGLJcCi2N0EQCDSCuqIWdKz5x9VAO9lea0v6/jUUhlzibGOfJp8V9GTKtA8hKB45z2g9rYRJ8e7bmDegY2uLsNeCHDTG2sreEb6Bn8+8HqoPkeBFmqTxgfBU/SQf053zFwjvnjp1zYW5lZv7nDcsZHKutWuvhA/QKenGt/zRavSkTA0yPCmlFtqazYR/uC9DMwbw+KKGNLn4OLA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: He1yNK/+9IyE9aZXvOEgD/Vwf7dUZPBUgjlTGSxh+hA+GPBtGSKZ05kAAg3k6j2ShzKH2mNtbB0JcXs44wP2psPXeHWPGm448/4JAWe64CLZki0KA4vkkdHQZKW7YTAcBZGUjEbFyify0E9e8X1yROhvqr8MULPhIO2aVJ89EqFF4dCcnmt0j5W2Te+cE3kWNTsx/OAFgO+EwTGJ3QIl3g==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5ada9d0-1954-45f3-d161-08d7ee2a8c68
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2020 23:51:21.2459 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_165124_200822_00AD1803 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.21.14 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.21.14 listed in wl.mailspike.net]
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

Aries boards have a Wolfson WM8994 sound card attached over gpio-i2c.

There is currently no ASoC Machine Driver.

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 arch/arm/boot/dts/s5pv210-aries.dtsi      | 65 ++++++++++++++++++++++-
 arch/arm/boot/dts/s5pv210-fascinate4g.dts |  6 +++
 2 files changed, 69 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/s5pv210-aries.dtsi b/arch/arm/boot/dts/s5pv210-aries.dtsi
index f83df426f2b6..7d001c22c532 100644
--- a/arch/arm/boot/dts/s5pv210-aries.dtsi
+++ b/arch/arm/boot/dts/s5pv210-aries.dtsi
@@ -12,6 +12,7 @@
 	compatible = "samsung,aries", "samsung,s5pv210";
 
 	aliases {
+		i2c4 = &i2c_sound;
 		i2c6 = &i2c_pmic;
 		i2c9 = &i2c_fuel;
 	};
@@ -57,7 +58,55 @@
 		power-off-delay-us = <500>;
 	};
 
-	i2c_pmic: i2c-gpio-0 {
+	i2c_sound: i2c-gpio-0 {
+		compatible = "i2c-gpio";
+		sda-gpios = <&mp05 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		scl-gpios = <&mp05 2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		i2c-gpio,delay-us = <2>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&sound_i2c_pins>;
+
+		wm8994: wm8994@1a {
+			compatible = "wlf,wm8994";
+			reg = <0x1a>;
+
+			#sound-dai-cells = <0>;
+
+			gpio-controller;
+			#gpio-cells = <2>;
+
+			clocks = <&clocks MOUT_CLKOUT>;
+			clock-names = "MCLK1";
+
+			AVDD2-supply = <&buck3_reg>;
+			DBVDD-supply = <&buck3_reg>;
+			CPVDD-supply = <&buck3_reg>;
+			SPKVDD1-supply = <&buck3_reg>;
+			SPKVDD2-supply = <&buck3_reg>;
+
+			wlf,gpio-cfg = <0xa101 0x8100 0x0100 0x0100 0x8100
+					0xa101 0x0100 0x8100 0x0100 0x0100
+					0x0100>;
+
+			wlf,ldo1ena = <&gpf3 4 GPIO_ACTIVE_HIGH>;
+			wlf,ldo2ena = <&gpf3 4 GPIO_ACTIVE_HIGH>;
+
+			wlf,lineout1-se;
+			wlf,lineout2-se;
+
+			assigned-clocks = <&clocks MOUT_CLKOUT>;
+			assigned-clock-rates = <0>;
+			assigned-clock-parents = <&xusbxti>;
+
+			pinctrl-names = "default";
+			pinctrl-0 = <&codec_ldo>;
+		};
+	};
+
+	i2c_pmic: i2c-gpio-2 {
 		compatible = "i2c-gpio";
 		sda-gpios = <&gpj4 0 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 		scl-gpios = <&gpj4 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
@@ -309,7 +358,7 @@
 		};
 	};
 
-	i2c_fuel: i2c-gpio-1 {
+	i2c_fuel: i2c-gpio-4 {
 		compatible = "i2c-gpio";
 		sda-gpios = <&mp05 1 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 		scl-gpios = <&mp05 0 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
@@ -405,6 +454,12 @@
 		samsung,pin-val = <1>;
 	};
 
+	codec_ldo: codec-ldo {
+		samsung,pins = "gpf3-4";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_OUTPUT>;
+		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
+	};
+
 	wlan_gpio_rst: wlan-gpio-rst {
 		samsung,pins = "gpg1-2";
 		samsung,pin-function = <EXYNOS_PIN_FUNC_OUTPUT>;
@@ -456,6 +511,12 @@
 		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
 		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
 	};
+
+	sound_i2c_pins: sound-i2c-pins {
+		samsung,pins = "mp05-2", "mp05-3";
+		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
+	};
 };
 
 &pwm {
diff --git a/arch/arm/boot/dts/s5pv210-fascinate4g.dts b/arch/arm/boot/dts/s5pv210-fascinate4g.dts
index 65f589e2b72a..5e1b81823a8d 100644
--- a/arch/arm/boot/dts/s5pv210-fascinate4g.dts
+++ b/arch/arm/boot/dts/s5pv210-fascinate4g.dts
@@ -279,3 +279,9 @@
 		PIN_SLP(mp07-7, INPUT, DOWN);
 	};
 };
+
+&wm8994 {
+	/* GPIO3 (BCLK2) and GPIO4 (LRCLK2) as outputs */
+	wlf,gpio-cfg = <0xa101 0x8100 0x8100 0x8100 0x8100 0xa101
+			0x0100 0x8100 0x0100 0x0100 0x0100>;
+};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
