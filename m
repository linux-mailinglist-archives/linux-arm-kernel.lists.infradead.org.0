Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EF21D98E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 16:06:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gH4JuR+5q8XoGk7sia+IGeAddN69IztbUY2xyb9D1bg=; b=GEvWbGPc23JYel
	Yj6sBNuLennajpy2LDgx5OB0pSMHv/Y2VMHZwWX+CMcveglpHcEdYGOoFCiX8PdpZnNoTMN1A0KT8
	k7iqhj8iZBP/RgvlJ0X/ASXBAqtsT5agDmWAruFZzZYKFoVXD8R8RZD/4axD95D2Nj03hzwQgM+f7
	LSSTJvvz+QrjiEvM9TUDnEGXwdjE8qNyMF04D2Xkpl6rp8IsbiAis+wlzFbRRVtwtpOZfannhqX6w
	1xGKkixsuBfIStdOhmgIvJmjWRYixtAcDXfYvrNLcgweW018Za5C9ArLQk1Odr2huX1wdafUKOxhQ
	I93mmUGNCnRKYt8XD6jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb2sk-0001B3-5O; Tue, 19 May 2020 14:06:10 +0000
Received: from mail-db8eur05on2082.outbound.protection.outlook.com
 ([40.107.20.82] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2rd-0006bv-6y
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 14:05:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PmhCRquuX3ktV9DIyD1Iky70rNsraSB4qx3eoEZrVaAh+/a6c6i6rCu9M3PG13027aDqHOnzc2V+8LQ9/hA8vpv/RSVN8ytZdlNTQ7pbqXMUb0oFs23RG+8uSzTUz3jZNAPqI2ygxuOKmX3U4KifWKOP1Amlv9hUcG6/LJoqgcCRXesJVolVFNUk1Dg5cj5KeXz36nztehaeYWmkh3K+bFAoYRd4izTk5GfC5UYOai1eajwlQde776P1exnn8gdBl0I8EGA69j5D9DdDzdRJ8APjRsoAQCmSMEOxUVBBvtlLpOTqS2JSHCnvQX5v8y5EQ1eO9xf1uVVZWzHVINpQ9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LU3HOonPFW03LpdtWfjDvYKUozaaKvRwmMxDOeBtCuQ=;
 b=YIbZsZ08gVtHiV8uaxFrWHSbyc4ObNBfT3NPbvl4kjX7Ox+P9HbDIgWdADdMg/1ojKji97fQEKP1AK+HMMjYiuc5SOmr4gpJC0/VNdLa04eZIlTCYUTmP0pXh7YHVKBOPstAmJzmLSpMVLMuQjy2tHgz038QbEdbkj9uyl82mwbeldaf5ZEYfFI2VoW5yl/mK/MHW7MuqI248/fn5nYT7ZB5ZCvMarPmE+GGP3vzLkZ7MB1+gVyJ7YstxyEHeQBol1gLnJFspW6F9qQQPk9JKl1zsmOQ9EmkgJbQPG/rlW5PQ5AjLavGJfPBqJXfA5dYczfM3sLm0kpntnGaa8svGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LU3HOonPFW03LpdtWfjDvYKUozaaKvRwmMxDOeBtCuQ=;
 b=SplUf1ruAXVNIucLHtJhLaagw+35qquAjjcAZLHagyIjapJcHNalcq43XDbSod6oET0WMnqoRWS+rrjYN2wZG8shOzrCprdQblE5EhE1zc+kx4rdLqSXxzWkNzMOk7vrSDwzivm+I+4sCFvfuDgwLHcKSkhF+mqHqyyA+hyb++o=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6429.eurprd04.prod.outlook.com (2603:10a6:803:11a::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Tue, 19 May
 2020 14:04:54 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa%4]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 14:04:54 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, shawnguo@kernel.org,
 anson.huang@nxp.com, festevam@gmail.com, s.hauer@pengutronix.de,
 john.lee@nxp.com
Subject: [PATCH v1 3/4] arm64: dts: imx8mn-evk: add pca9450 for i.mx8mn-evk
 board
Date: Wed, 20 May 2020 06:05:06 +0800
Message-Id: <1589925907-9195-4-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589925907-9195-1-git-send-email-yibin.gong@nxp.com>
References: <1589925907-9195-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR03CA0128.apcprd03.prod.outlook.com
 (2603:1096:4:91::32) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR03CA0128.apcprd03.prod.outlook.com (2603:1096:4:91::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3021.12 via Frontend Transport; Tue, 19 May 2020 14:04:50 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 0c4fb5f0-64a5-4a6d-5b4d-08d7fbfd9b1e
X-MS-TrafficTypeDiagnostic: VE1PR04MB6429:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB64290B08719C5616A298AC3489B90@VE1PR04MB6429.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:949;
X-Forefront-PRVS: 040866B734
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2Ytc4wgCUa+oUHdONMU9RG0PQrG8MMb6wXF2T9UG+NaJ30OWPoMoDIRMjFb0oh6xmp9iFh91UOYMVVoBAXGvqjjdqdV3XnbdqTM2iU7TVl69zmoam8+q55AQliLRmGXYFK1HpyNZ2p/WUQc7PPioX96We4EM/YEcNwuAKUUCQOWuUkw0YGDRLMaFGGbt+XqqvEAHheLR3nDikLvGKWjGF97KW0YF4/jEkCX2OoiqZcfexGALlbU8xUysa0kRfR3bealCGb49p/Hb67YUqfHkRamJCnetGI5pic6U2j4aEKrW0nCGfXoCOLQxMrTnhITYMRag44TfMmhh/OnZfj+fY8Zs0GKTAC1op17gs57TOZ57hpgXBIh3gWlUwaYGMyV66phOyQdI4BYACsX6QduFZMnClZzfLPZituqhxOX/ncs6x4kLt1r6hieLSf0wL/jntf0Xc1+davIpSM4XOw9ueoBmHuEztwlqPKxdUrp+Rl7uaIPL8t4XX0ijcUUzpcW4
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(498600001)(6506007)(6486002)(5660300002)(4326008)(186003)(2906002)(2616005)(6636002)(956004)(16526019)(86362001)(52116002)(6512007)(26005)(8676002)(36756003)(6666004)(7416002)(8936002)(66476007)(66556008)(66946007)(32563001)(921003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: Y/8L0qjUjzIM6wqGoozrHVSS0TqrilUIlkNunsPTVq22gjJrKUYG2Ei//2Qjpk6zLe6k4Bd2+jl7UeSRQo2wDSF3NRX06SCWcCJXWPfk/jo/LZsAzAtbypqLYgkoAeJASR6AZl0HON+v3Jmfe64n0zHvSri0gGtzAQSgJpUd/UZqIbEHtRABJ6cP917WqeyoXGlZBMHBI0/fZQAlGJx/ZeheGmuPYhmGvD8KKmfV9nmVt75Wycs7Td40V+Gg7XMyV/n+umR6YvtCzySTwvXtLH1fOvzsm42RpqKpDCMEFisQHaCU3bzkgarixyqEDbD9Vq5OzvyUZj/rkPB8jXWTQdU/d19rYRpY3CVotxKcL8kAsgQWS6rviNbkQurc8aAH1jJRoVkQQi4u/G6dcrJ9lVB5TJJZhg6k3w/OMulFXOAZhDCkgh7K1Wov2cHv3WBQQurOagQHCp4OgAgaEkmERpM+2vgGugOekNLmfpzykxg=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c4fb5f0-64a5-4a6d-5b4d-08d7fbfd9b1e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2020 14:04:54.6418 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MAKy9vRu3NkTgtc9UXMpvjVhsNvqxdkX6UxDW5rM01ofaRcSYmZkCCEEriWgA0i0NwoVpqylXM7MWaZXFyYVJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6429
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_070501_267814_DECE1FC8 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.82 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.82 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel@pengutronix.de, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add pca9450 pmic driver for i.mx8mn-evk board.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mn-evk.dts  | 96 +++++++++++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi |  6 ++
 2 files changed, 102 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-evk.dts b/arch/arm64/boot/dts/freescale/imx8mn-evk.dts
index 61f3519..b846526 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-evk.dts
@@ -13,6 +13,102 @@
 	compatible = "fsl,imx8mn-evk", "fsl,imx8mn";
 };
 
+&i2c1 {
+	pmic: pmic@25 {
+		compatible = "nxp,pca9450b";
+		reg = <0x25>;
+		pinctrl-0 = <&pinctrl_pmic>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <3 GPIO_ACTIVE_LOW>;
+
+		regulators {
+			buck1: BUCK1{
+				regulator-name = "BUCK1";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <2187500>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <3125>;
+			};
+
+			buck2: BUCK2 {
+				regulator-name = "BUCK2";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <2187500>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <3125>;
+				nxp,dvs-run-voltage = <950000>;
+				nxp,dvs-standby-voltage = <850000>;
+			};
+
+			buck4: BUCK4{
+				regulator-name = "BUCK4";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck5: BUCK5{
+				regulator-name = "BUCK5";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck6: BUCK6 {
+				regulator-name = "BUCK6";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo1: LDO1 {
+				regulator-name = "LDO1";
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo2: LDO2 {
+				regulator-name = "LDO2";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1150000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo3: LDO3 {
+				regulator-name = "LDO3";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo4: LDO4 {
+				regulator-name = "LDO4";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo5: LDO5 {
+				regulator-name = "LDO5";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+};
+
 &A53_0 {
 	/delete-property/operating-points-v2;
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
index 85fc0aa..98f5324 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
@@ -223,6 +223,12 @@
 		>;
 	};
 
+	pinctrl_pmic: pmicirq {
+		fsl,pins = <
+			MX8MN_IOMUXC_GPIO1_IO03_GPIO1_IO3	0x41
+		>;
+	};
+
 	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmc {
 		fsl,pins = <
 			MX8MN_IOMUXC_SD2_RESET_B_GPIO2_IO19	0x41
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
