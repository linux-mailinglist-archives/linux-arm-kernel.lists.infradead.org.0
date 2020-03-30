Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02475197402
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 07:42:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UJolpZAGwmhxctaX0fkJrdbawSusA4+lrltt2LAegV0=; b=rxrHTrKZbgqu4S
	eSP/4KN3/aievFKBOrazm2w+4HncLGM1fjoFCMhmyQKIBDS8VSR5lGz4vekAOsrqQiPSbUw3/3Du/
	EdTSsm4txPPJZAJjEtL4Kmxof5Hd4PAvnA/7/PvBWSRqHGWxw3rUwMPD+leCSxTUMFkNHstxG0Nr9
	xlQEA5N8w1MK4R5HGm7FHcVxh1mxMFF1ez3u25GqO6oSYrrL2YtK2UFPgx0iS2/Ll3F+PhWbLr6VW
	x0I5hBZVquM9UCZdrS1Ti1ViZYvKxxFiRi7Qvt5S43cA1Wj1JVakT5cD+aI13msf+/eDSyicZidWN
	PGyHbSKLAvMJSW1yHOXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jInBz-0002uf-Nw; Mon, 30 Mar 2020 05:42:35 +0000
Received: from mail-bn8nam12on2046.outbound.protection.outlook.com
 ([40.107.237.46] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jInBT-0002ez-Qm
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 05:42:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UGopo3jBneQh2IaXnfzyAevWVzOEqlRe00XhvoDLx0swmRh5unkPhSoIMqOsnttDUYUceH0NAq9zPCC9GO9hrS+Tk1qHowliUVeSFxWvKs4bYYz9iHV4+uhZlJo9AyMEGEJ62j0XuUf8b2i3hhhdSpKlgAP/u2EAHHu+nT9MSmTijZ2AKiOS7B+nxFU/sWtaavoNlt9yhwz/kpryGxh3p5pS/hqH2mJf7WuBQGztQCywpSNyJl9jNCmuuSyqKyppqKtZTnPcJiHr7owdYvhoPRnIvLlPKQ6wrc9Nz6cVNffNPAiHZgsCStuIBn1SInI2bNWCpLorYBDhb/JMewA+Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DylZXazgPqDxB52Z1Naq4ufd3qcneyR0XlQfxCyFE9g=;
 b=cjMuGg+Oow/kSCzLRK8jI5e0rRaAn+TSP+5F1Sk+0UkMW2LHzX7tJ1OFxxo06qHiXdxe5i+KyCOOvS+Gzh/fJVf5HRzy4YfJu1PE0k8RvSDXCHhVPnGAjGc8+q4nigH937CPamOlWzPy7/xsEimToMgHUEDNitNlzQoC/O+kyIjJLgDl9yaEfMhIryK8vPSvme9sHB0Gh2CEykEBirjoYWi+t6RJo/SO0Rz9m4CKVUqA6j4yR5OpOTMZ02cr9eccYCP+NYeIN0nK/b9erz5zzHWL2Asu0cLbFyj+C0wEsq3BdeXDz48XorymDxP7u5QjxtOVcibNUobE0sezaVTIWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=arm.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DylZXazgPqDxB52Z1Naq4ufd3qcneyR0XlQfxCyFE9g=;
 b=Ij0fhxETmXcr449YJBXtLze7D7BwbrVvsnhtlfOAts3BGBAR3ujawnLKcCgbExCfRc4xbcsMb4/VJjleVwB/7RRF0hdhtrakvZ4koTex6t7CdK+TQpprRhanCSjicK57ZSJXbYiFC78WhipX27pxgDX8ZwLPMKqj/ZUc5UWFA9A=
Received: from DM6PR08CA0043.namprd08.prod.outlook.com (2603:10b6:5:1e0::17)
 by SN6PR02MB4527.namprd02.prod.outlook.com (2603:10b6:805:a5::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.18; Mon, 30 Mar
 2020 05:41:59 +0000
Received: from CY1NAM02FT051.eop-nam02.prod.protection.outlook.com
 (2603:10b6:5:1e0:cafe::d8) by DM6PR08CA0043.outlook.office365.com
 (2603:10b6:5:1e0::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20 via Frontend
 Transport; Mon, 30 Mar 2020 05:41:59 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT051.mail.protection.outlook.com (10.152.74.148) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2856.17
 via Frontend Transport; Mon, 30 Mar 2020 05:41:59 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1jInBO-0005hB-Su; Sun, 29 Mar 2020 22:41:58 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1jInBJ-0003Jr-Pg; Sun, 29 Mar 2020 22:41:53 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1jInBF-0003Ih-8x; Sun, 29 Mar 2020 22:41:49 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 7147212126B; Mon, 30 Mar 2020 11:11:25 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com
Subject: [PATCH v2 2/4] sdhci: arasan: Add support for Versal Tap Delays
Date: Mon, 30 Mar 2020 11:11:17 +0530
Message-Id: <1585546879-91037-3-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1585546879-91037-1-git-send-email-manish.narani@xilinx.com>
References: <1585546879-91037-1-git-send-email-manish.narani@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(136003)(39860400002)(396003)(346002)(376002)(46966005)(6636002)(107886003)(44832011)(26005)(5660300002)(81166006)(2906002)(478600001)(42186006)(36756003)(186003)(2616005)(316002)(336012)(8936002)(8676002)(81156014)(6266002)(356004)(70586007)(426003)(6666004)(82740400003)(47076004)(70206006)(4326008);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 281788d1-b481-46c1-20e2-08d7d46d10d7
X-MS-TrafficTypeDiagnostic: SN6PR02MB4527:
X-Microsoft-Antispam-PRVS: <SN6PR02MB4527EA0168685437E70C0F49C1CB0@SN6PR02MB4527.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-Forefront-PRVS: 0358535363
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RQu07ETnufG20k+Ic7nZKP9AC/G7QIrvqrft1Wc/z8eEOupuakAI5XBO1WuALSWY8AB05OwVrvMluUroWFdvg65frFj3uDa+Imj+uBGZetGrfUPOi1fMuFnOoDclfQf76d1cYUomb1VLhGrjHz3x3cOGTGlOZ1qxM4redKam02ccz5TEWie+M7IATelLVBdJqpSTfuL3AFVobQ9dSLCTPS/93zF0YNcq4szgYnl3BAfmSA2Qpnl1p/cnhzUzoq0e1uvqgIlYbq33RBLj3lW/VwMn4DSvP1F3/A8qI6uSISP1EV6P8Z4XSerQxKFzHkuUhGbKevZqtNbas4PQCTr7wS+hGNpkqJOwRnNG7pS0YrQcIJqwcaGCx7WyQhrKaAnxoU9V12KuaWDBV+CWgGGDJG+ViKgHtegyYqNg8etekKs3ewoPH+zM2pTk8MsmryYH+2+cIsTR+Z/mL18qo2WcvKTqwFBUtjf3Lzai5Q0ZSpPijcijKqfQVmv83UgLlAT7eyFm+ximcnpofXr+dKhzjA==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2020 05:41:59.3143 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 281788d1-b481-46c1-20e2-08d7d46d10d7
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4527
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_224203_882820_EBFA5D76 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.46 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Manish Narani <manish.narani@xilinx.com>,
 git@xilinx.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support to set tap delays for Xilinx Versal SD controller. The tap
delay registers have moved to SD controller space in Versal. Make the
changes accordingly.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
 drivers/mmc/host/sdhci-of-arasan.c | 175 +++++++++++++++++++++++++++++
 1 file changed, 175 insertions(+)

diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index 0146d7dd315b..34403b2cac97 100644
--- a/drivers/mmc/host/sdhci-of-arasan.c
+++ b/drivers/mmc/host/sdhci-of-arasan.c
@@ -28,15 +28,26 @@
 #include "sdhci-pltfm.h"
 
 #define SDHCI_ARASAN_VENDOR_REGISTER	0x78
+
+#define SDHCI_ARASAN_ITAPDLY_REGISTER	0xF0F8
+#define SDHCI_ARASAN_OTAPDLY_REGISTER	0xF0FC
+
 #define SDHCI_ARASAN_CQE_BASE_ADDR	0x200
 #define VENDOR_ENHANCED_STROBE		BIT(0)
 
 #define PHY_CLK_TOO_SLOW_HZ		400000
 
+#define SDHCI_ITAPDLY_CHGWIN		0x200
+#define SDHCI_ITAPDLY_ENABLE		0x100
+#define SDHCI_OTAPDLY_ENABLE		0x40
+
 /* Default settings for ZynqMP Clock Phases */
 #define ZYNQMP_ICLK_PHASE {0, 63, 63, 0, 63,  0,   0, 183, 54,  0, 0}
 #define ZYNQMP_OCLK_PHASE {0, 72, 60, 0, 60, 72, 135, 48, 72, 135, 0}
 
+#define VERSAL_ICLK_PHASE {0, 132, 132, 0, 132, 0, 0, 162, 90, 0, 0}
+#define VERSAL_OCLK_PHASE {0,  60, 48, 0, 48, 72, 90, 36, 60, 90, 0}
+
 /*
  * On some SoCs the syscon area has a feature where the upper 16-bits of
  * each 32-bit register act as a write mask for the lower 16-bits.  This allows
@@ -566,6 +577,10 @@ static const struct of_device_id sdhci_arasan_of_match[] = {
 		.compatible = "xlnx,zynqmp-8.9a",
 		.data = &sdhci_arasan_zynqmp_data,
 	},
+	{
+		.compatible = "xlnx,versal-8.9a",
+		.data = &sdhci_arasan_zynqmp_data,
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, sdhci_arasan_of_match);
@@ -768,6 +783,152 @@ static const struct clk_ops zynqmp_sampleclk_ops = {
 	.set_phase = sdhci_zynqmp_sampleclk_set_phase,
 };
 
+/**
+ * sdhci_versal_sdcardclk_set_phase - Set the SD Output Clock Tap Delays
+ *
+ * Set the SD Output Clock Tap Delays for Output path
+ *
+ * @hw:			Pointer to the hardware clock structure.
+ * @degrees		The clock phase shift between 0 - 359.
+ * Return: 0 on success and error value on error
+ */
+static int sdhci_versal_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
+{
+	struct sdhci_arasan_clk_data *clk_data =
+		container_of(hw, struct sdhci_arasan_clk_data, sdcardclk_hw);
+	struct sdhci_arasan_data *sdhci_arasan =
+		container_of(clk_data, struct sdhci_arasan_data, clk_data);
+	struct sdhci_host *host = sdhci_arasan->host;
+	u8 tap_delay, tap_max = 0;
+	int ret;
+
+	/*
+	 * This is applicable for SDHCI_SPEC_300 and above
+	 * Versal does not set phase for <=25MHz clock.
+	 * If degrees is zero, no need to do anything.
+	 */
+	if (host->version < SDHCI_SPEC_300 ||
+	    host->timing == MMC_TIMING_LEGACY ||
+	    host->timing == MMC_TIMING_UHS_SDR12 || !degrees)
+		return 0;
+
+	switch (host->timing) {
+	case MMC_TIMING_MMC_HS:
+	case MMC_TIMING_SD_HS:
+	case MMC_TIMING_UHS_SDR25:
+	case MMC_TIMING_UHS_DDR50:
+	case MMC_TIMING_MMC_DDR52:
+		/* For 50MHz clock, 30 Taps are available */
+		tap_max = 30;
+		break;
+	case MMC_TIMING_UHS_SDR50:
+		/* For 100MHz clock, 15 Taps are available */
+		tap_max = 15;
+		break;
+	case MMC_TIMING_UHS_SDR104:
+	case MMC_TIMING_MMC_HS200:
+		/* For 200MHz clock, 8 Taps are available */
+		tap_max = 8;
+	default:
+		break;
+	}
+
+	tap_delay = (degrees * tap_max) / 360;
+
+	/* Set the Clock Phase */
+	if (tap_delay) {
+		u32 regval;
+
+		regval = sdhci_readl(host, SDHCI_ARASAN_OTAPDLY_REGISTER);
+		regval |= SDHCI_OTAPDLY_ENABLE;
+		sdhci_writel(host, regval, SDHCI_ARASAN_OTAPDLY_REGISTER);
+		regval |= tap_delay;
+		sdhci_writel(host, regval, SDHCI_ARASAN_OTAPDLY_REGISTER);
+	}
+
+	return ret;
+}
+
+static const struct clk_ops versal_sdcardclk_ops = {
+	.recalc_rate = sdhci_arasan_sdcardclk_recalc_rate,
+	.set_phase = sdhci_versal_sdcardclk_set_phase,
+};
+
+/**
+ * sdhci_versal_sampleclk_set_phase - Set the SD Input Clock Tap Delays
+ *
+ * Set the SD Input Clock Tap Delays for Input path
+ *
+ * @hw:			Pointer to the hardware clock structure.
+ * @degrees		The clock phase shift between 0 - 359.
+ * Return: 0 on success and error value on error
+ */
+static int sdhci_versal_sampleclk_set_phase(struct clk_hw *hw, int degrees)
+{
+	struct sdhci_arasan_clk_data *clk_data =
+		container_of(hw, struct sdhci_arasan_clk_data, sampleclk_hw);
+	struct sdhci_arasan_data *sdhci_arasan =
+		container_of(clk_data, struct sdhci_arasan_data, clk_data);
+	struct sdhci_host *host = sdhci_arasan->host;
+	u8 tap_delay, tap_max = 0;
+	int ret;
+
+	/*
+	 * This is applicable for SDHCI_SPEC_300 and above
+	 * Versal does not set phase for <=25MHz clock.
+	 * If degrees is zero, no need to do anything.
+	 */
+	if (host->version < SDHCI_SPEC_300 ||
+	    host->timing == MMC_TIMING_LEGACY ||
+	    host->timing == MMC_TIMING_UHS_SDR12 || !degrees)
+		return 0;
+
+	switch (host->timing) {
+	case MMC_TIMING_MMC_HS:
+	case MMC_TIMING_SD_HS:
+	case MMC_TIMING_UHS_SDR25:
+	case MMC_TIMING_UHS_DDR50:
+	case MMC_TIMING_MMC_DDR52:
+		/* For 50MHz clock, 120 Taps are available */
+		tap_max = 120;
+		break;
+	case MMC_TIMING_UHS_SDR50:
+		/* For 100MHz clock, 60 Taps are available */
+		tap_max = 60;
+		break;
+	case MMC_TIMING_UHS_SDR104:
+	case MMC_TIMING_MMC_HS200:
+		/* For 200MHz clock, 30 Taps are available */
+		tap_max = 30;
+	default:
+		break;
+	}
+
+	tap_delay = (degrees * tap_max) / 360;
+
+	/* Set the Clock Phase */
+	if (tap_delay) {
+		u32 regval;
+
+		regval = sdhci_readl(host, SDHCI_ARASAN_ITAPDLY_REGISTER);
+		regval |= SDHCI_ITAPDLY_CHGWIN;
+		sdhci_writel(host, regval, SDHCI_ARASAN_ITAPDLY_REGISTER);
+		regval |= SDHCI_ITAPDLY_ENABLE;
+		sdhci_writel(host, regval, SDHCI_ARASAN_ITAPDLY_REGISTER);
+		regval |= tap_delay;
+		sdhci_writel(host, regval, SDHCI_ARASAN_ITAPDLY_REGISTER);
+		regval &= ~SDHCI_ITAPDLY_CHGWIN;
+		sdhci_writel(host, regval, SDHCI_ARASAN_ITAPDLY_REGISTER);
+	}
+
+	return ret;
+}
+
+static const struct clk_ops versal_sampleclk_ops = {
+	.recalc_rate = sdhci_arasan_sampleclk_recalc_rate,
+	.set_phase = sdhci_versal_sampleclk_set_phase,
+};
+
 static void arasan_zynqmp_dll_reset(struct sdhci_host *host, u32 deviceid)
 {
 	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
@@ -965,6 +1126,16 @@ static void arasan_dt_parse_clk_phases(struct device *dev,
 		}
 	}
 
+	if (of_device_is_compatible(dev->of_node, "xlnx,versal-8.9a")) {
+		iclk_phase = (int [MMC_TIMING_MMC_HS400 + 1]) VERSAL_ICLK_PHASE;
+		oclk_phase = (int [MMC_TIMING_MMC_HS400 + 1]) VERSAL_OCLK_PHASE;
+
+		for (i = 0; i <= MMC_TIMING_MMC_HS400; i++) {
+			clk_data->clk_phase_in[i] = iclk_phase[i];
+			clk_data->clk_phase_out[i] = oclk_phase[i];
+		}
+	}
+
 	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_LEGACY,
 				 "clk-phase-legacy");
 	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_MMC_HS,
@@ -1025,6 +1196,8 @@ sdhci_arasan_register_sdcardclk(struct sdhci_arasan_data *sdhci_arasan,
 	sdcardclk_init.flags = CLK_GET_RATE_NOCACHE;
 	if (of_device_is_compatible(np, "xlnx,zynqmp-8.9a"))
 		sdcardclk_init.ops = &zynqmp_sdcardclk_ops;
+	else if (of_device_is_compatible(np, "xlnx,versal-8.9a"))
+		sdcardclk_init.ops = &versal_sdcardclk_ops;
 	else
 		sdcardclk_init.ops = &arasan_sdcardclk_ops;
 
@@ -1077,6 +1250,8 @@ sdhci_arasan_register_sampleclk(struct sdhci_arasan_data *sdhci_arasan,
 	sampleclk_init.flags = CLK_GET_RATE_NOCACHE;
 	if (of_device_is_compatible(np, "xlnx,zynqmp-8.9a"))
 		sampleclk_init.ops = &zynqmp_sampleclk_ops;
+	else if (of_device_is_compatible(np, "xlnx,versal-8.9a"))
+		sampleclk_init.ops = &versal_sampleclk_ops;
 	else
 		sampleclk_init.ops = &arasan_sampleclk_ops;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
