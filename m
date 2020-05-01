Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2AB1C2195
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 01:54:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zTEvhYWNDf0s9Ha3JAy5sWM1m59IoS9awGasJlU8sHY=; b=j+A4z7FSbmlEkq
	MG03tBQUIGgPlbVM3sNJ7EMIJ8R4qVzntFcXobDtGVj54EVy/jpf3FhXn64KV1pQWk++a7a2Zfd05
	O2FLFfee/1RRY5DiHuJQvwPEizceCZn+Lct74fE4HICXYosKMiVJ5dF2g5UmkOhKDmVcr/mb8O72d
	HRU/umogJ8sbU43F1C4mHhAFD9c6xU5kQtvBjxukYcc2pQcC6slmTnqs6HvQTrYDZ863AIngSSqlv
	tkGnRVJIk/36q1Zv9x0gXZ5w5rGOtkRy4XseStYPyJ0Wb+yC5/JrzD0yyeHaHpQqRvWSXIu6qjgCl
	1S6ZyWOOz9mTVbXhKnMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUfTn-0001Di-SJ; Fri, 01 May 2020 23:54:03 +0000
Received: from mail-dm6nam12olkn2022.outbound.protection.outlook.com
 ([40.92.22.22] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUfRJ-0007RW-Ut
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 23:51:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lMB9AyTJVYlZZwXN1BCn1Bdx5mvBUdZKoLA/LwEGXB5MicmbAzMHw9IlXPjX/pG2hcNa0rEkkNvVTioHEInyZUTLXQsz8erlVRgJoevOZHXHLQTvopQClk/bAcSHynw+Q5QCaGgN4ldyJaL39i6pUpLJwYygTTQkzfRm6GfaitSq+978HqTAKG3noUM7OaA6X3gnOgGRWG2Ed7GOCFbXAYoTitV0kxUzAgSnEjo1SVUwICUK1FjX3UkoaEjsi5PgSxJL75Kryy7vfJ0zj8gy70dt0kI42KnrKVrialuiBvU/QEW/V/RWOZHMVTwvoRTuH5/6GH9aMnHUznJvSWig+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3MDUkQ2dTjod1xk/8rLC43jTcn9lJdoxoad9bhahzOw=;
 b=dO8l+87pRbo3jh1/MuGYaNNj4EI3BXVCj6kPTpVud8Q1FdSUN5wjUefTu1aIOgnbkSMiz4mbTh7sOF7h1KYy7pk/L2W5VBRuYToWMJharGW/mKUQVsg3BGYV1PSOW3D4UmCxdec8jJ6C51pIb1Cb1VEDduev7jMmxCrANbksCQF0zNDCDaryoezZ7gmqYmQl57SfwCQMcmSS7Cop58TXMj0Ghj0jA3mqY1945O8LsR9S+YmWTUJKmd4cPr8R8+QzFTWD/VwPRcGL3tjUDLZik4xk+l/kyR1213t1+M8fq2WqYdZg/5Hc4oZyXvsUi3LjZwOODtLYTmgC9XKmBKD1zQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM12FT056.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc64::46) by
 DM6NAM12HT200.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc64::74)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12; Fri, 1 May
 2020 23:51:27 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc64::46) by DM6NAM12FT056.mail.protection.outlook.com
 (2a01:111:e400:fc64::460) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12 via Frontend
 Transport; Fri, 1 May 2020 23:51:27 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:7B8FB2A95B641A94B2893361021141BA26A1A074922B8EF1389B40ED794C0699;
 UpperCasedChecksum:9CFC7257941493FD6A1F2557DC4F7F6BD660A071B6583183981E4773F8BA7602;
 SizeAsReceived:7866; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2958.027; Fri, 1 May 2020
 23:51:27 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 10/18] ARM: dts: s5pv210: Add remaining i2c-gpio adapters
 to aries
Date: Fri,  1 May 2020 16:50:11 -0700
Message-ID: <BN6PR04MB0660BC97F0946E50B75309E7A3AB0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501235019.24022-1-xc-racer2@live.ca>
References: <20200426183604.28494-1-xc-racer2@live.ca>
 <20200501235019.24022-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR17CA0058.namprd17.prod.outlook.com
 (2603:10b6:300:93::20) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200501235019.24022-11-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb68:9c00:8067:f823:1e15:7520) by
 MWHPR17CA0058.namprd17.prod.outlook.com (2603:10b6:300:93::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20 via Frontend Transport; Fri, 1 May 2020 23:51:26 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200501235019.24022-11-xc-racer2@live.ca>
X-TMN: [WIqVT9i6m7B9rblWchqbVR9EmRyruzCkXD2rRB2oEDeEFSqI29EzXZYx8WLqsbUj]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 597a8baa-984a-4610-6a67-08d7ee2a9034
X-MS-TrafficTypeDiagnostic: DM6NAM12HT200:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: o9xYEOsxatyo7CuQMQP57iwnEaaJpsk4k3h2hV3c77Y1FKOZKSGxIdD7mc6wMdPekrRLaQDJM+JlAuj6tahb93oSt2PlnsQeQZqvEFwmILPEHVX7FK9IdEZ26rQCTkCF8KBSr4SAhzHPbY3/H1SJSH/xUwQxOyJIW9nEiyMO/d0l2b4LflTzHBKm8VlagpGQLETLYuKDL5O1VFKyGsVnWg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: RFo0M/d/YpnhJGZiSbymtdxVy7w+aTYtInu/6WrTrNr83o/La3vAkZM6cW1ICakYWe+IDrB9WRT+3FI2VNXKB8fvlZ9sjGhag9Yl9OmuUn7iXrOcdbn5Md+VlRnq6PmuPm7/OSzqr292KdE1CmeBEclTlFKf2OhgDtHOyBKrKa5Hb+5zZvESvqULuj5SuL28kz3B8BbpD1lhIYJxyi3t1Q==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 597a8baa-984a-4610-6a67-08d7ee2a9034
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2020 23:51:27.6633 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_165130_101267_674DE940 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.22.22 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.22.22 listed in wl.mailspike.net]
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

The remaining i2c-gpio adapters that are common to all aries boards
have devices without mainline bindings attachted to them.  Add them
here for documentation.

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 arch/arm/boot/dts/s5pv210-aries.dtsi | 69 ++++++++++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/arch/arm/boot/dts/s5pv210-aries.dtsi b/arch/arm/boot/dts/s5pv210-aries.dtsi
index 046366d58aa0..a3748705dce8 100644
--- a/arch/arm/boot/dts/s5pv210-aries.dtsi
+++ b/arch/arm/boot/dts/s5pv210-aries.dtsi
@@ -13,10 +13,13 @@
 
 	aliases {
 		i2c4 = &i2c_sound;
+		i2c5 = &i2c_accel;
 		i2c6 = &i2c_pmic;
 		i2c7 = &i2c_musb;
 		i2c9 = &i2c_fuel;
 		i2c10 = &i2c_touchkey;
+		i2c11 = &i2c_prox;
+		i2c12 = &i2c_magnetometer;
 	};
 
 	memory@30000000 {
@@ -120,6 +123,22 @@
 		};
 	};
 
+	i2c_accel: i2c-gpio-1 {
+		compatible = "i2c-gpio";
+		sda-gpios = <&gpj3 6 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		scl-gpios = <&gpj3 7 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		i2c-gpio,delay-us = <2>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&accel_i2c_pins>;
+
+		status = "disabled";
+
+		/* bma023 accelerometer, no mainline binding */
+	};
+
 	i2c_pmic: i2c-gpio-2 {
 		compatible = "i2c-gpio";
 		sda-gpios = <&gpj4 0 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
@@ -435,6 +454,38 @@
 		};
 	};
 
+	i2c_prox: i2c-gpio-6 {
+		compatible = "i2c-gpio";
+		sda-gpios = <&gpg2 2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		scl-gpios = <&gpg0 2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		i2c-gpio,delay-us = <2>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&prox_i2c_pins>;
+
+		status = "disabled";
+
+		/* Sharp gp2a prox/light sensor, incomplete mainline binding */
+	};
+
+	i2c_magnetometer: i2c-gpio-7 {
+		compatible = "i2c-gpio";
+		sda-gpios = <&gpj0 1 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		scl-gpios = <&gpj0 0 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		i2c-gpio,delay-us = <2>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&magnetometer_i2c_pins>;
+
+		status = "disabled";
+
+		/* Yamaha yas529 magnetometer, no mainline binding */
+	};
+
 	vibrator: pwm-vibrator {
 		compatible = "pwm-vibrator";
 		pwms = <&pwm 1 44642 0>;
@@ -546,6 +597,12 @@
 		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
 	};
 
+	prox_i2c_pins: gp2a-i2c-pins {
+		samsung,pins = "gpg0-2", "gpg2-2";
+		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
+	};
+
 	wlan_gpio_rst: wlan-gpio-rst {
 		samsung,pins = "gpg1-2";
 		samsung,pin-function = <EXYNOS_PIN_FUNC_OUTPUT>;
@@ -586,6 +643,12 @@
 		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
 	};
 
+	magnetometer_i2c_pins: yas529-i2c-pins {
+		samsung,pins = "gpj0-0", "gpj0-1";
+		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
+	};
+
 	ts_irq: ts-irq {
 		samsung,pins = "gpj0-5";
 		samsung,pin-function = <EXYNOS_PIN_FUNC_INPUT>;
@@ -611,6 +674,12 @@
 		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
 	};
 
+	accel_i2c_pins: accel-i2c-pins {
+		samsung,pins = "gpj3-6", "gpj3-7";
+		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
+	};
+
 	pmic_i2c_pins: pmic-i2c-pins {
 		samsung,pins = "gpj4-0", "gpj4-3";
 		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
