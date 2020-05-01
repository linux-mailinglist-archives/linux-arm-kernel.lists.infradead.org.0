Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B0D1C216C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 01:53:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXbXYxCkVuJHFVdhsHYSELx9wwPDOFPd6Q46O5ggcKs=; b=STKRpf/okH099i
	imqSsk/Gqd30vipNNvvid+QJY6dJFxc/MsZj2kps53ANdzFbkrQSIGUodXsxgQt0lJ+J076gXJUtR
	FEoHn9wd44ei0pqfnDgK9Z5dsAWmCRh4qMddCNwlRK/Yp16yL32eVwkdmg+FvoC6FwFsnSS4e3iZA
	NzSEh87eZSjh7CDyDxKF+PUmrzLfG+NFqyYMmkwG6PRZnQB0oTEvlHHQ7BWL8UU7N65IByIsGEP7T
	hzcLXnC+FsNu9JcUI8dPvj0JCUxvY0fE+e1v5RwSMIEbrw2RYJuiAhLDxpj6VkVfHqehQTU1MCYuD
	iz1q0M8Y80HY0W8egoWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUfTU-0000y8-RP; Fri, 01 May 2020 23:53:44 +0000
Received: from mail-dm6nam12olkn2088.outbound.protection.outlook.com
 ([40.92.22.88] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUfRF-0007F5-A0
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 23:51:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iWBOBaperJTsezjdIiEUHixiX5EA2KjzKDF2rfHZuhRJ70qw3xcRRxVgGCm24aM2UtYSMmB5GeT6cQJGwRKiPTm4nAK79wB2QTV/ivo/h0GKl/k6mWjp9c3i2vYkgMkXjOkCncvc4E2W6uH6EU3HbdwHEzX3w2MeRrfVwN9uGyTO3szxiOhakRGFBRwhkp2XXGRAYyAw3+VfaasroAp+huKZu6+6Hi6kGajzUs6XFpVc+SSatsyObKVOPrWskepmWtSbK9ciEU+dmHtm+NVrRJqkA5SUYCs3VrJIOgLsV7m1bTzTTjnyMKBOmSeFHfHjiwEqKoSI+4srRIlJB/tZwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oZ8C6E3N5ce/4sn4hZuwIMmz9/7ENd8oYkbhGl+3RLw=;
 b=WnmmDl2lPIFFjsEZWcGM59thxrvseI1uSbqk/SIIF8Tv4i3YkrSS88d7ddwViO83pUTaa0WDntT4zrv7hQzo6CcoiA+onXMZNTdY6Qy3eO7/nXLSsuERau9cQSsq4pHaRwXgdkSddGan5o0zUpgbRdd1+pRAkTN3EWHbDNfHoz4AaI7hyLyEipJXrakUL3EXWon+Qy8+TttA7ippavPOTr63IQVTZsFSXrWXeVX1kFDalxl+gvu2yoPRjYXBCB5fW2sWZ+ifBrJqCl7dOA33emoExIb9vDnz27zZtT2955EiFCjBasUe2RNAFYhSYWM+WHueLoWPI66t4FCD+ytkXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM12FT056.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc64::51) by
 DM6NAM12HT013.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc64::69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12; Fri, 1 May
 2020 23:51:23 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc64::46) by DM6NAM12FT056.mail.protection.outlook.com
 (2a01:111:e400:fc64::460) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12 via Frontend
 Transport; Fri, 1 May 2020 23:51:22 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:E2F6808C37FCC28E24AD5451F2C4763B3733B5A583175E2CB465DCBC8C7365E2;
 UpperCasedChecksum:4CD190FFF4EEF569928E21B7C16FFC61D2519F25133E5958CBD45DC88A2F3FA5;
 SizeAsReceived:7859; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2958.027; Fri, 1 May 2020
 23:51:22 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 07/18] ARM: dts: s5pv210: Add FSA9480 support to Aries
 boards
Date: Fri,  1 May 2020 16:50:08 -0700
Message-ID: <BN6PR04MB066052C8CB383D45123DA48DA3AB0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501235019.24022-1-xc-racer2@live.ca>
References: <20200426183604.28494-1-xc-racer2@live.ca>
 <20200501235019.24022-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR17CA0058.namprd17.prod.outlook.com
 (2603:10b6:300:93::20) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200501235019.24022-8-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb68:9c00:8067:f823:1e15:7520) by
 MWHPR17CA0058.namprd17.prod.outlook.com (2603:10b6:300:93::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20 via Frontend Transport; Fri, 1 May 2020 23:51:21 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200501235019.24022-8-xc-racer2@live.ca>
X-TMN: [Ne+LP0yBqlESQ8WM4Q8Jx1rLd5uh+HpuzBzj5cXnYPtT15yBImUY86HNyFxq+qxe]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: a3118125-3c6e-46c0-b098-08d7ee2a8d70
X-MS-TrafficTypeDiagnostic: DM6NAM12HT013:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CdRR3wGxa7yb/LljF/RNGsCqP1GFFhZyfWvxj0sINl4ycj+NUm/ha7g2v8bO5oGKDk0EYet+rrBZ8O6l/1k1x2upGIcWHbnT6P+NP18EdCV6oiTuC2wHvOF/UTDCya8ucqO51Fa0eoe2fgETgeG3KMedrdDJaXBn2yazHw0cR0TbA+FjoEYwxHkwyF02FiMDPbz3nQl4pHmhgDPyo92low==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: aEagzuxzJpldCwtIYEBNTfH8+ZBC3kSxaFPvf7RnaptUVdmzVlLFXTu0fEIKAxpQHtZsR0ztTce0WQ6y42vb6e93QhkIT3KNn9kyEgUGxkCNTusFH3eWi8qqKHKQnhyyOdyEOYlXg5tA7qFiq2xBS90TmMai2Ddo6jopiR3CAgOn4tb4/bCg94k3YjpHnemwBr59IwGMSs3FEVTwbN2Xzw==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3118125-3c6e-46c0-b098-08d7ee2a8d70
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2020 23:51:22.8992 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_165125_352213_09461271 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.22.88 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.22.88 listed in wl.mailspike.net]
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

The Fairchild FSA9480 is a USB mux connected over i2c-gpio.

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 arch/arm/boot/dts/s5pv210-aries.dtsi | 36 ++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm/boot/dts/s5pv210-aries.dtsi b/arch/arm/boot/dts/s5pv210-aries.dtsi
index 7d001c22c532..6233884713cb 100644
--- a/arch/arm/boot/dts/s5pv210-aries.dtsi
+++ b/arch/arm/boot/dts/s5pv210-aries.dtsi
@@ -14,6 +14,7 @@
 	aliases {
 		i2c4 = &i2c_sound;
 		i2c6 = &i2c_pmic;
+		i2c7 = &i2c_musb;
 		i2c9 = &i2c_fuel;
 	};
 
@@ -358,6 +359,28 @@
 		};
 	};
 
+	i2c_musb: i2c-gpio-3 {
+		compatible = "i2c-gpio";
+		sda-gpios = <&gpj3 4 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		scl-gpios = <&gpj3 5 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		i2c-gpio,delay-us = <2>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&musb_i2c_pins>;
+
+		fsa9480: musb@25 {
+			compatible = "fcs,fsa9480";
+			reg = <0x25>;
+			interrupt-parent = <&gph2>;
+			interrupts = <7 IRQ_TYPE_EDGE_FALLING>;
+
+			pinctrl-names = "default";
+			pinctrl-0 = <&musb_irq>;
+		};
+	};
+
 	i2c_fuel: i2c-gpio-4 {
 		compatible = "i2c-gpio";
 		sda-gpios = <&mp05 1 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
@@ -480,6 +503,13 @@
 		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
 	};
 
+	musb_irq: musq-irq {
+		samsung,pins = "gph2-7";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_INPUT>;
+		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
+	};
+
 	tf_detect: tf-detect {
 		samsung,pins = "gph3-4";
 		samsung,pin-function = <EXYNOS_PIN_FUNC_INPUT>;
@@ -500,6 +530,12 @@
 		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
 	};
 
+	musb_i2c_pins: musb-i2c-pins {
+		samsung,pins = "gpj3-4", "gpj3-5";
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
