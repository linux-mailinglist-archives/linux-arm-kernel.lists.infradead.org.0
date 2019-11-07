Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0ACF2B1A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 10:45:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ie6INiYGUkoI8dWJxX6awU/01VWpXyTpTAHm/fGV91M=; b=e6vanKx9rqhyc3
	4wzXolZAWW3Yb/vuGlKLxL8JZ3ThpfZPXSbTcMhsQzinUrWq7RMw7Gi+j2sgilxxKqeTwVrXl6Ltr
	uIdSQ3SrgnMXlXgvFIzxOeftuOVpGn8fxsab+TBR2f6hvGjPG1ooyt130R2W2GkltDQhlA0PaZDxI
	gL14QhcLwY/xvIHRUNwrxIgNuaB0/e5YorFbKUCTDa8dOM6vnVpWo9lNlEAroyB8NM6Vk4j8kTiBt
	DlIH6Ug2H4Dmk6g9+dnLW2LOJaLKk1k1kPxp/Iq4hQ23tTAqvf4dZ3qamUHuhnXrHhs4H//2j62qo
	f6aEAVU358aFoeLh7Lbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSeMS-0007pR-K8; Thu, 07 Nov 2019 09:45:52 +0000
Received: from mail-eopbgr700079.outbound.protection.outlook.com
 ([40.107.70.79] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSeLg-0006A2-It
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 09:45:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lEkpiYrGhlhold6F3vcVd7VjkY8X53eE/8Ve08fKY+lzEzm7ZAtAtaLzsHFMXzCybbdk30ZxeKDp5AR6XiRxzA7ugptTnPuCItAJuaZ4IxDrKIJgkb5lsgn4EvGSLE5+9xcR1ybuSq25FMY7K3Sv4BJmETGS1alwwaVcovHkBB7sDriRjq/vwP0W7RA6qCWzy003zfW8alluWfGK1xbf9PHEJGrajrSn0OISIp/mhCd3wiwWJ1Mneac9gYzLMdWYtMrTCgRg2O8fXWv7OYl3iiFyrXop8NHM//syNFLvjBMV6K6KAvt9ELglnyLPzlfVMAmT6cZsz9W+Xtr+CCJxhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=70XN+HW2tOs+lMgwysC8NdDOrLly9+dbxuxZUme1AR8=;
 b=QLPKoUwAyg0lq0ghGgixcsI5E29P5VpMGZrefFx/CHQCQxxxE5jteT5fMQg0Y7lsj4ugu2/YllYdX0IGfidci1BDJOS3u47bfluXy3cb6ky1wAqGEfnxrGqNg7dEWVx80BN8w3Teh00J/CHxAD1HtCUualvrs8f/ZiW2EOmUPDtUWeKrXNas2xP9onzgTLSfyao47IWfYTlyTG1x+1WoE7B7WoIqWxIYvZVJg16web6oqH5W7znAu23XlK9RXUoJyNuDblZrEnC0NBmpcZ3PBOkvLOLLWVpm0mMcjpOU8YK4cT9khPcYSCqdlIYV8vlXM9x5aVZl75SaBJtrT+t/9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=70XN+HW2tOs+lMgwysC8NdDOrLly9+dbxuxZUme1AR8=;
 b=aBuk0ZW1RCFniY8nt8a/u/+5Ls8TVMHra/Zgiuhm4Pax9ttL5haAzgYdMPcbyEsLNGJRmtm/9otHbDbqay7+i5lz30BxgvmFTvWgl6qS6HQupHuSWqjTiNJinDKDFLCsR8V2StWL0RWr18S1cEB+MOF5vXACYEu+VOwNaSlKPAg=
Received: from MN2PR02CA0007.namprd02.prod.outlook.com (2603:10b6:208:fc::20)
 by BL0PR02MB6467.namprd02.prod.outlook.com (2603:10b6:208:1c5::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.20; Thu, 7 Nov
 2019 09:45:00 +0000
Received: from SN1NAM02FT027.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::206) by MN2PR02CA0007.outlook.office365.com
 (2603:10b6:208:fc::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.20 via Frontend
 Transport; Thu, 7 Nov 2019 09:45:00 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT027.mail.protection.outlook.com (10.152.72.99) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2430.20
 via Frontend Transport; Thu, 7 Nov 2019 09:44:59 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSeLb-0002kG-DO; Thu, 07 Nov 2019 01:44:59 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSeLW-00006a-AP; Thu, 07 Nov 2019 01:44:54 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xA79iox9004141; 
 Thu, 7 Nov 2019 01:44:51 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSeLS-00005Y-Oq; Thu, 07 Nov 2019 01:44:50 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, michal.simek@xilinx.com,
 harini.katakam@xilinx.com, jan.kiszka@siemens.com,
 ulf.hansson@linaro.org, xuwei5@hisilicon.com, mripard@kernel.org,
 heiko@sntech.de
Subject: [PATCH 2/3] arm64: dts: xilinx: Remove dtsi for fixed clock
Date: Thu,  7 Nov 2019 01:44:15 -0800
Message-Id: <1573119856-13548-3-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573119856-13548-1-git-send-email-rajan.vaja@xilinx.com>
References: <1573119856-13548-1-git-send-email-rajan.vaja@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(396003)(136003)(346002)(199004)(189003)(51416003)(7696005)(6666004)(305945005)(7416002)(76176011)(107886003)(14444005)(356004)(446003)(70586007)(70206006)(4326008)(5660300002)(36386004)(50466002)(16586007)(36756003)(81156014)(8676002)(2906002)(50226002)(81166006)(9786002)(106002)(486006)(126002)(336012)(2616005)(476003)(44832011)(11346002)(186003)(48376002)(478600001)(47776003)(26005)(316002)(426003)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB6467; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d6a85ec6-43c7-4a7e-94b1-08d7636727ff
X-MS-TrafficTypeDiagnostic: BL0PR02MB6467:
X-Microsoft-Antispam-PRVS: <BL0PR02MB646742EA69B52584D2C069C3B7780@BL0PR02MB6467.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:1468;
X-Forefront-PRVS: 0214EB3F68
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qDFT1bs6pKz1MSgHjnKn928v1hyrZUa+izHVctNPxs6ilJphH4x6yDw25q11Q8b3RUrMCDd06fZGjRMaYBw7CO5eET3SwNyEkfukvHkdD+61claarbsNWsNY7W99U3ZPlfPV0i4Q2Rw4qq+ILX/Ag6H/ub3QtaZwGMSHv/oHlAVD246v/KiGL8X11xwvRAgWZzYt2QMJE6kq7HsD2VqSOIXIHx9gxI4QQa5xtILtvjm5YbzEeoNTNUhwqw7BxRGdOxs4vvD25jIYrOIHR9vql0pENbbAAlwh8hXfEa4OZ7yk+JLLsPN88uASrcZI+QhovUJMhihXx/ubzrdeIa7eV6j1EIpZcHCoDq7IL4zIzgKWGSPa/+8SEKkjLFadEGGrsHj193fOrdkTG3g9XH8QXjPBbO7Trif1gmocclIjNgJEC7ikUb7Cnq4I+23YmL0u
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2019 09:44:59.8575 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d6a85ec6-43c7-4a7e-94b1-08d7636727ff
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB6467
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_014504_700713_62024260 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently CCF clocks sre used in zynqmp dts. So there is no use of
dtsi for fixed clock. Remove dtsi for fixed clock.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
---
 arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi | 213 -----------------------------
 1 file changed, 213 deletions(-)
 delete mode 100644 arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi
deleted file mode 100644
index 306ad21..0000000
--- a/arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi
+++ /dev/null
@@ -1,213 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0+
-/*
- * Clock specification for Xilinx ZynqMP
- *
- * (C) Copyright 2015 - 2018, Xilinx, Inc.
- *
- * Michal Simek <michal.simek@xilinx.com>
- */
-
-/ {
-	clk100: clk100 {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <100000000>;
-	};
-
-	clk125: clk125 {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <125000000>;
-	};
-
-	clk200: clk200 {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <200000000>;
-	};
-
-	clk250: clk250 {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <250000000>;
-	};
-
-	clk300: clk300 {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <300000000>;
-	};
-
-	clk600: clk600 {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <600000000>;
-	};
-
-	dp_aclk: clock0 {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <100000000>;
-		clock-accuracy = <100>;
-	};
-
-	dp_aud_clk: clock1 {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <24576000>;
-		clock-accuracy = <100>;
-	};
-
-	dpdma_clk: dpdma-clk {
-		compatible = "fixed-clock";
-		#clock-cells = <0x0>;
-		clock-frequency = <533000000>;
-	};
-
-	drm_clock: drm-clock {
-		compatible = "fixed-clock";
-		#clock-cells = <0x0>;
-		clock-frequency = <262750000>;
-		clock-accuracy = <0x64>;
-	};
-};
-
-&can0 {
-	clocks = <&clk100 &clk100>;
-};
-
-&can1 {
-	clocks = <&clk100 &clk100>;
-};
-
-&fpd_dma_chan1 {
-	clocks = <&clk600>, <&clk100>;
-};
-
-&fpd_dma_chan2 {
-	clocks = <&clk600>, <&clk100>;
-};
-
-&fpd_dma_chan3 {
-	clocks = <&clk600>, <&clk100>;
-};
-
-&fpd_dma_chan4 {
-	clocks = <&clk600>, <&clk100>;
-};
-
-&fpd_dma_chan5 {
-	clocks = <&clk600>, <&clk100>;
-};
-
-&fpd_dma_chan6 {
-	clocks = <&clk600>, <&clk100>;
-};
-
-&fpd_dma_chan7 {
-	clocks = <&clk600>, <&clk100>;
-};
-
-&fpd_dma_chan8 {
-	clocks = <&clk600>, <&clk100>;
-};
-
-&lpd_dma_chan1 {
-	clocks = <&clk600>, <&clk100>;
-};
-
-&lpd_dma_chan2 {
-	clocks = <&clk600>, <&clk100>;
-};
-
-&lpd_dma_chan3 {
-	clocks = <&clk600>, <&clk100>;
-};
-
-&lpd_dma_chan4 {
-	clocks = <&clk600>, <&clk100>;
-};
-
-&lpd_dma_chan5 {
-	clocks = <&clk600>, <&clk100>;
-};
-
-&lpd_dma_chan6 {
-	clocks = <&clk600>, <&clk100>;
-};
-
-&lpd_dma_chan7 {
-	clocks = <&clk600>, <&clk100>;
-};
-
-&lpd_dma_chan8 {
-	clocks = <&clk600>, <&clk100>;
-};
-
-&gem0 {
-	clocks = <&clk125>, <&clk125>, <&clk125>;
-};
-
-&gem1 {
-	clocks = <&clk125>, <&clk125>, <&clk125>;
-};
-
-&gem2 {
-	clocks = <&clk125>, <&clk125>, <&clk125>;
-};
-
-&gem3 {
-	clocks = <&clk125>, <&clk125>, <&clk125>;
-};
-
-&gpio {
-	clocks = <&clk100>;
-};
-
-&i2c0 {
-	clocks = <&clk100>;
-};
-
-&i2c1 {
-	clocks = <&clk100>;
-};
-
-&sata {
-	clocks = <&clk250>;
-};
-
-&sdhci0 {
-	clocks = <&clk200 &clk200>;
-};
-
-&sdhci1 {
-	clocks = <&clk200 &clk200>;
-};
-
-&spi0 {
-	clocks = <&clk200 &clk200>;
-};
-
-&spi1 {
-	clocks = <&clk200 &clk200>;
-};
-
-&uart0 {
-	clocks = <&clk100 &clk100>;
-};
-
-&uart1 {
-	clocks = <&clk100 &clk100>;
-};
-
-&usb0 {
-	clocks = <&clk250>, <&clk250>;
-};
-
-&usb1 {
-	clocks = <&clk250>, <&clk250>;
-};
-
-&watchdog0 {
-	clocks = <&clk250>;
-};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
