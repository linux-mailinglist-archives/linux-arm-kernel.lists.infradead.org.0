Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C04E41B930F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 20:41:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aHesKKukXa22T6FfT8saxTSalwECuuiG0La7mYkO2cU=; b=abm3gnMsMjEj2n
	CQ0upg8UPtHX+PFOnBBQShdMizGR2q8nZx0HyMC1STf6CI4UpLRlrPcDW/TRJswXM9hdQwN+pBsIC
	5x48MfH+DfBNTnvA8/pEXNNOwyzmO+aNxTTUQwGWIePki9Ja2zOPC/PWhA2Wz54JSoqT8g7h3eG36
	oB7tlaOCY+ZvSTXQjJk1IEvu9kQ7Y6SF3aTVKzu1F8znqnPNrw01LXTfHbMPrng8Cl2seQYRfrNu9
	hdZ5wI3umwYCv3AOeyXZy1iHYHcKlRz/rMnd0144FMFTXBPfMX95ie1bE6/vREP0N+S3bVVA05RpS
	5EyigdGsXmYRy1HVfnZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSmDH-0003Th-DG; Sun, 26 Apr 2020 18:41:11 +0000
Received: from mail-co1nam11olkn2020.outbound.protection.outlook.com
 ([40.92.18.20] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSm94-0006By-7R
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 18:36:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ezxdUwS3p3CknL/pHTj5WiDxztZ3U4VFHeMGh7K7qVGIJM9zthTPJKBy72WqXyHWBOuRY2AOZpJk8JkNBQGEcrvvB2WckbS7CaDI2EE+bUpdaj/7+dKIJjvM2AD5k5/ZXKpTuZ2zE3pGMUyXV7r2tNW9/eqwmk9DOMsg39Y0DTXT1P6MQ5rnUGu4ngzupjRBEtM25VcdzDAesbT7n2YQwvyCD3fVvCavZoBK7yTsBnT9W9EO9wgpv8TLeYeKKGbbsBtrKJQJp5rdKEA9EeCBCvJrFMeOlSc2v/DNNgMEtDfHfPqNNRue4KfhQ2kjQAM98N/g5eUKBdTLNlkkZwOZzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zOSeV4eT86/g0Brn0wyPQFC8hKAx7Ey9Mne0kgl0nFs=;
 b=Z//uwF4O8nGkBFmeyH4kpBwhRVOMjY8Em/a8udUubh0SD1JRahnCyQPR9L2I7kfgk9YIgKVg20bj22l3ymMXjLucgXS2jBKr5DVI8XnuuFARd22pPOrH63P8KJEoquG+UKDRRtjAiuLYj08TiliagVp1d6ZzSYFHM5Sm6POBziW2z9EnE1Dfu0cpUoti9deLWKSK17zcGL3RD/2OGx5F080PZ6GUAc1k3PfOezjfGbUZYrT01Gp56Vg2XSd+PuIuDzANAPSiDR0+aEevcwWBZWkES7w9lxsvY2K3q9ScoVUdJclIMnG+rnfX1RHslZ+76sJPMTyH8gOP3pni7zRXwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from CO1NAM11FT036.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:3861::53) by
 CO1NAM11HT190.eop-nam11.prod.protection.outlook.com (2a01:111:e400:3861::184)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Sun, 26 Apr
 2020 18:36:48 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:3861::41) by CO1NAM11FT036.mail.protection.outlook.com
 (2a01:111:e400:3861::124) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15 via Frontend
 Transport; Sun, 26 Apr 2020 18:36:48 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:0BFDB984871B69F4CDF82D49C2AC4A9C2E9268B8CEFDF7733D362178511C9931;
 UpperCasedChecksum:CDCBC175BA55E477A2F1205A4514F52F58F2568F9F7E2BFD62093E07E9208B65;
 SizeAsReceived:7807; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 18:36:48 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 13/13] arm: dts: s5pv210: aries: Set MAX8998 GPIO pulls
Date: Sun, 26 Apr 2020 11:36:04 -0700
Message-ID: <BN6PR04MB06605CBCAA817375BE008EB7A3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426183604.28494-1-xc-racer2@live.ca>
References: <20200426183604.28494-1-xc-racer2@live.ca>
X-ClientProxiedBy: CO2PR05CA0096.namprd05.prod.outlook.com
 (2603:10b6:104:1::22) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200426183604.28494-14-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 CO2PR05CA0096.namprd05.prod.outlook.com (2603:10b6:104:1::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.7 via Frontend Transport; Sun, 26 Apr 2020 18:36:47 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200426183604.28494-14-xc-racer2@live.ca>
X-TMN: [uKUguzY0MMM+H2cjqLqU88q9ORfdnLMUmXkPEF7Abtk4e/C94NGkf/O3ufpo6leo]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 62b06bdd-f1a1-4f1c-03ca-08d7ea10c75a
X-MS-TrafficTypeDiagnostic: CO1NAM11HT190:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vh13DoDW7bqfIIJgOK07C8B1uEm4nxSrNEWfLyy3uBfmufbgJ18hQUCYWYd/j/FWjIPhksL5LiAZjm6mxh17jiwtCReq1VLByBuyTgtqN8U+xBW18ZJnSwMIyRDF+0ZSsrm9y+ZPU5ZfEahcb75O9dC0AnEA3eKEhwcXtSTzKHs+dKGrMpVbVXPLp3S95R0ndi0TeYrNLoou39uo4KevAA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: Do2ZAQQZeArxM6o08J6Mmz10+tpqMuYMMfnItVzF5HCNxPF5R2NoW641SP5ZVpFntF6vwfK9BV0ve52Lkne5Mm8oxjf+igQXVoFLLNSOQ8mOWjANFzXdvrDf+wjMRywPDEOoa3sJiBJp2f0ZwDttzUfIbPNhcBOIsMu+T7l5g3U6Dll9vMJliZq1wTrKf9xDsOAYciib7qfxGaOkFwlrMg==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62b06bdd-f1a1-4f1c-03ca-08d7ea10c75a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2020 18:36:48.4534 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM11HT190
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_113650_287385_A4A5261F 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.18.20 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
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

Make sure that the GPIOs are configured correctly
for the interrupt (otherwise it won't fire) and disable the
pulls on the DVS GPIOs which are outputs.

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 arch/arm/boot/dts/s5pv210-aries.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/boot/dts/s5pv210-aries.dtsi b/arch/arm/boot/dts/s5pv210-aries.dtsi
index 7e113d750b97..000f582e9a0b 100644
--- a/arch/arm/boot/dts/s5pv210-aries.dtsi
+++ b/arch/arm/boot/dts/s5pv210-aries.dtsi
@@ -167,6 +167,9 @@
 			max8998,pmic-buck2-dvs-gpio = <&gph0 5 GPIO_ACTIVE_HIGH>;
 			max8998,pmic-buck2-dvs-voltage = <1100000>, <1000000>;
 
+			pinctrl-names = "default";
+			pinctrl-0 = <&pmic_dvs_pins &pmic_irq>;
+
 			regulators {
 				ldo2_reg: LDO2 {
 					regulator-name = "VALIVE_1.2V";
@@ -605,6 +608,21 @@
 		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
 	};
 
+	pmic_dvs_pins: pmic-dvs-pins {
+		samsung,pins = "gph0-3", "gph0-4", "gph0-5";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_OUTPUT>;
+		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
+		samsung,pin-val = <0>;
+	};
+
+	pmic_irq: pmic-irq {
+		samsung,pins = "gph0-7";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_F>;
+		samsung,pin-pud = <S3C64XX_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV1>;
+	};
+
 	wifi_host_wake: wifi-host-wake {
 		samsung,pins = "gph2-4";
 		samsung,pin-function = <EXYNOS_PIN_FUNC_INPUT>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
