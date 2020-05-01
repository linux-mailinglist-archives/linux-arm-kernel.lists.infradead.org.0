Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C0F1C216A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 01:53:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GozeQjSz2W81d+7b7bisPbPe2oJ4Z9JgOljfCf8FyGY=; b=PWFLLoxTaV79l0
	VlM0KBHK56RxWRulZ/4djQbV36Y28S8ZSfY7W+W+/hpsJMWwYx/5POGqOd6LrRvLAQF8le5BXRx01
	OhJeHY9WMEDqfPYDJKNZj+BwTsvn6H36L+RKpy9TBq7lGGVxZ1blHbdnISV+MZ+LVR+x3sAAH3aeL
	l8P29tVN4gNytWWbUn/qRO2pijL2tPY9b5mGe162Ex4+4PP/Y1FjTHbabqpqy9tZ1f8F4QctJkP51
	SD/Ore4Hb2WcumgeAwyHAPeTmscBuoOQnzyBjzC7qn3wxwEjicnHGMoUBfCWBah/21nPlGSdGv64A
	lLTSjcJDlnZeHRClsvoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUfSt-0000Q7-FZ; Fri, 01 May 2020 23:53:07 +0000
Received: from mail-mw2nam12olkn2038.outbound.protection.outlook.com
 ([40.92.23.38] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUfRG-0007Lk-HF
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 23:51:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hAemi7xATwcP7GwmcMpMsmciuWNQO8IpeN8ni2Z+tqn1wJDG8/lEnHXllNVzSSBqHzaRGUythhzAn0P4f3kE96SFer61cjbNiX6fn/P3nmLc5/ca+2/8I3J0jUFojNbuuJKqxeSVcdZvyYG3WCRUXA8DhkBbklnQ++BB18La1GcD6EGJ3l9pisPfg7gyqrpx75pOjw+Iq1aNoRXt+2uCvmjq+qiW16N2Ur7ZX1mH65HKqPXiRxVP6D6ocIRn+YneITgsDQFh25cTxW7+kPf9UGUUgXILq1/bBWcHs5gpu8riMbni5v3Eb/EYOBzMNS1qcZ+/XdIFFjPmH0prbo9fvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SxpWgWtP/l5rmRtu7uCyejrd9MWRGHUAqBMQTjS3bVg=;
 b=QWe1GzGv+SIVmRuYKNIusf9jSYMLYirjqq8dMkWq8Oo47BeL8P3fWkJowCxlcIdUEuct32IHA5Cz2X5948Ei+3qE4WmjDk7/z7HBvmXvxJvTBTAeEGShvp7w4em/tkltBrfbvnaLna/NfNd5tjtnHihtZL+PhxUYgcMpu8qgY+Vs10bmQliZSyl3asXqRBeuZREjipyhKdqRIarD1yAXPqg8FIU78lK8TAldHUqPrb3bediJifCdBFi+ed8B9bGdioaxr0oJ2CygSqq0KICVwbElwF7x0ES6jdMFng74fCpmiSITH2FUUOEQxbFHdSGEXNiD2BoQyeKBfIwArVM9BA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM12FT056.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc64::4d) by
 DM6NAM12HT211.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc64::135)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12; Fri, 1 May
 2020 23:51:24 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc64::46) by DM6NAM12FT056.mail.protection.outlook.com
 (2a01:111:e400:fc64::460) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12 via Frontend
 Transport; Fri, 1 May 2020 23:51:24 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:597DBC0180A059FEF1534CE60FE7E634A2198817852BCB12EB354427A22A1220;
 UpperCasedChecksum:A5F54951A09E0934E405B9875D86F075F52E370F5823DE24759FA06FC0DA3742;
 SizeAsReceived:7852; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2958.027; Fri, 1 May 2020
 23:51:24 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 08/18] ARM: dts: s5pv210: Add touchkey support to aries
 boards
Date: Fri,  1 May 2020 16:50:09 -0700
Message-ID: <BN6PR04MB066049CF813A339C7AFA8FB7A3AB0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501235019.24022-1-xc-racer2@live.ca>
References: <20200426183604.28494-1-xc-racer2@live.ca>
 <20200501235019.24022-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR17CA0058.namprd17.prod.outlook.com
 (2603:10b6:300:93::20) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200501235019.24022-9-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb68:9c00:8067:f823:1e15:7520) by
 MWHPR17CA0058.namprd17.prod.outlook.com (2603:10b6:300:93::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20 via Frontend Transport; Fri, 1 May 2020 23:51:23 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200501235019.24022-9-xc-racer2@live.ca>
X-TMN: [ny516Qwj0ZOek+J83bW7WdIB+N3Ubq7afhh8SsVWMqjtKnKcznsPvruc31dy97Hs]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 64a105bc-805d-4747-7276-08d7ee2a8e50
X-MS-TrafficTypeDiagnostic: DM6NAM12HT211:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uMLBYx5RyvlbgGWjB7WptvxZwfnjWwbsd4dnBnaBtkJ32/1a7sm3dvTa9c9pmgaeReDLL49LdCqPZLP4HnczYDdqM8NkwMP4H0LIwUl2sKCrLqWZsWBtdo/b7p57zxbCGZWHehH4cbhxAX+7IBG58+vUxplPgemgh1yw6VKws8+1e1umMbOsQtjJ1NNPVEHIPKV/DEq6lNWhhP0EBhm7fg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: i1H8Lht2FlMHsZwGyY/VWkx521KLAZZY6jp+Ix73Gc0gNVYBuPACs8k9Ti00hSLqDiGOqGig8jkQW6J1KHYoKMbEbkIyY9KqgGbAWFilOGk3Q3H57RznzdBm8sa+cMqdLLgk7YhF5TiafBdGj1uXYRUWtak4zfbR15WNMqlEiqRtdVoPU8Yhx7iad1CtsNdmrBN6QtOxr1YJR39x4EnVAQ==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64a105bc-805d-4747-7276-08d7ee2a8e50
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2020 23:51:24.3866 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT211
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_165126_576982_251139AD 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.23.38 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.23.38 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Aries boards have soft touchkeys, manufactured by Cypress,
attached over i2c-gpio.

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 arch/arm/boot/dts/s5pv210-aries.dtsi | 58 ++++++++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/arch/arm/boot/dts/s5pv210-aries.dtsi b/arch/arm/boot/dts/s5pv210-aries.dtsi
index 6233884713cb..6683ecec905a 100644
--- a/arch/arm/boot/dts/s5pv210-aries.dtsi
+++ b/arch/arm/boot/dts/s5pv210-aries.dtsi
@@ -16,6 +16,7 @@
 		i2c6 = &i2c_pmic;
 		i2c7 = &i2c_musb;
 		i2c9 = &i2c_fuel;
+		i2c10 = &i2c_touchkey;
 	};
 
 	memory@30000000 {
@@ -50,6 +51,18 @@
 		gpio = <&gpj1 1 GPIO_ACTIVE_HIGH>;
 	};
 
+	touchkey_vdd: regulator-fixed-1 {
+		compatible = "regulator-fixed";
+		regulator-name = "VTOUCH_3.3V";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpio = <&gpj3 2 GPIO_ACTIVE_HIGH>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&touchkey_vdd_ena>;
+	};
+
 	wifi_pwrseq: wifi-pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		reset-gpios = <&gpg1 2 GPIO_ACTIVE_LOW>;
@@ -400,6 +413,32 @@
 		};
 	};
 
+	i2c_touchkey: i2c-gpio-5 {
+		compatible = "i2c-gpio";
+		sda-gpios = <&gpj3 0 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		scl-gpios = <&gpj3 1 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		i2c-gpio,delay-us = <2>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&touchkey_i2c_pins>;
+
+		touchkey@20 {
+			compatible = "cypress,aries-touchkey";
+			reg = <0x20>;
+			vdd-supply = <&touchkey_vdd>;
+			vcc-supply = <&buck3_reg>;
+			linux,keycodes = <KEY_MENU KEY_BACK
+					  KEY_HOMEPAGE KEY_SEARCH>;
+			interrupt-parent = <&gpj4>;
+			interrupts = <1 IRQ_TYPE_LEVEL_LOW>;
+
+			pinctrl-names = "default";
+			pinctrl-0 = <&touchkey_irq>;
+		};
+	};
+
 	vibrator: pwm-vibrator {
 		compatible = "pwm-vibrator";
 		pwms = <&pwm 1 44642 0>;
@@ -530,6 +569,18 @@
 		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
 	};
 
+	touchkey_i2c_pins: touchkey-i2c-pins {
+		samsung,pins = "gpj3-0", "gpj3-1";
+		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
+	};
+
+	touchkey_vdd_ena: touchkey-vdd-ena {
+		samsung,pins = "gpj3-2";
+		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
+	};
+
 	musb_i2c_pins: musb-i2c-pins {
 		samsung,pins = "gpj3-4", "gpj3-5";
 		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
@@ -542,6 +593,13 @@
 		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
 	};
 
+	touchkey_irq: touchkey-irq {
+		samsung,pins = "gpj4-1";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_INPUT>;
+		samsung,pin-pud = <S3C64XX_PIN_PULL_UP>;
+		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
+	};
+
 	fg_i2c_pins: fg-i2c-pins {
 		samsung,pins = "mp05-0", "mp05-1";
 		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
