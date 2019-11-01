Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1ECEBD96
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 07:08:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lcDfgFayfwiRQ+OXf+olK4BEudWXfrHnEdQIPsWEIew=; b=KQbeAND0e3CShw
	vdtR9EetAeZjgXQVC1g/VU+YqgENPvqeMlbMHRBCbEfxX2p2xyJ/StsoPrW5dnFEqZM2O/yjJDc3G
	7epmjgDlv5CjN3EMsx1sKKxlik9VUzYdl8IoA6Xke5GtaAcptdmxGZ0IzNYECmwrElVlnNnkO2kYr
	7LuzE/D2iZ4sW1FnEICurnLwpInE3Dxyr+8M7M37z1XX2PGxHCdhSAL4g2Me1UsN47igVnD5L/7OR
	B7LN4zdUEY/oVpVjRlayj9h1BAmo47Xd+dpgs7iovV8qB3gPeqAGSrT/TwWPghsnaTFZeB09rcx+P
	IaEhyVc9+fNuVRclmskg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQQ6Z-0003MQ-LK; Fri, 01 Nov 2019 06:08:15 +0000
Received: from mail-eopbgr750084.outbound.protection.outlook.com
 ([40.107.75.84] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQQ4b-0001up-6j
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 06:06:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SdwbWVS05Bb4E+0LLjunCnO+EKYcbRs5McMUjWAiLUeiixQYV6sM4Da94ZcDHzYP4OehOVYg1fkuMfCF0OUT7US95DyXkcTY6OGYwdIpLW01Ey2YMzM6ybQ8SlGrDWyxXD9utHLGNFYmXoWqLDFmklqsGbEO27XPG3kEj7bz2JDsyuUq3Yf6EembFEV9MNsalXpYSDDtUA0upvTjJT3ENPhezvnhscADsALe6qFFOl6Eat3eX9ENLYJZBQNOzfLcZk3GXgDrC9zFnYP4I6X5twzXfrPlIISxxrWootJJSeCyBaH2IuSMGbSz7qYN0OA4sMk7+EIiAg6WfHrAxffgMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QyNuoP16Z/YOfgx2/n//zWRR2NSkAP2xIdiXXSSl73g=;
 b=aWEu3B+N24dC23GF+5zK6qJ9jXSQUQsxRuoHPcU/1uhq9FML+HgAupVoLR2rlRlQH3ICKAwBxq914CgFPE1ae6b50pDDz6oTXHYkxv0cS7tjc36ZKKdKVVuHblIpsQnRU2d9vEPly4IL4GTQqOJCkjacJ0Y5z1+XvTdHwxo+jfd04zVYB1Xu7/zFRJdl5nZpj+/73sc0L1n7SQD7xne9JkB+644EWyEARBW1QpjSp1TMIpQiGlBg60xHcdvYxTmE3izvS2i5uvwfbmR0Wdh+iBTGgLYwUunUQVORKmhwf8TiKelfgIcjqP9Chlltb3QtDOF9LT1TbcD/gylQFuFTsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QyNuoP16Z/YOfgx2/n//zWRR2NSkAP2xIdiXXSSl73g=;
 b=tWlmSLPWBROeW7nOTALJGLbFttkL3vzyw4pSjbmalkB5vKBWl7eoT5fyyVq/p9u6WXilePM4ZVEJ/c+NcB6SH2R8siiL7+RlHiEy1NJYEJKPgAiDhaNiDltQFg+UEe+vhU/0xOpC9sCqm/KZxFOjeFbVHlbk7LAaH/trX477AWI=
Received: from BL0PR02CA0136.namprd02.prod.outlook.com (2603:10b6:208:35::41)
 by DM6PR02MB4172.namprd02.prod.outlook.com (2603:10b6:5:97::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2387.20; Fri, 1 Nov
 2019 06:06:10 +0000
Received: from BL2NAM02FT013.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::206) by BL0PR02CA0136.outlook.office365.com
 (2603:10b6:208:35::41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2408.19 via Frontend
 Transport; Fri, 1 Nov 2019 06:06:10 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT013.mail.protection.outlook.com (10.152.77.19) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2387.20
 via Frontend Transport; Fri, 1 Nov 2019 06:06:10 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iQQ4X-0005mQ-FV; Thu, 31 Oct 2019 23:06:09 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iQQ4S-0007dN-BF; Thu, 31 Oct 2019 23:06:04 -0700
Received: from xsj-pvapsmtp01 (smtp3.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xA165x3M005685; 
 Thu, 31 Oct 2019 23:05:59 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iQQ4M-0007aO-Pp; Thu, 31 Oct 2019 23:05:59 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 13A71121389; Fri,  1 Nov 2019 11:35:57 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com,
 jolly.shah@xilinx.com, nava.manne@xilinx.com, rajan.vaja@xilinx.com,
 manish.narani@xilinx.com
Subject: [PATCH v5 8/8] mmc: sdhci-of-arasan: Add support for ZynqMP Platform
 Tap Delays Setup
Date: Fri,  1 Nov 2019 11:35:53 +0530
Message-Id: <1572588353-110682-9-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1572588353-110682-1-git-send-email-manish.narani@xilinx.com>
References: <1572588353-110682-1-git-send-email-manish.narani@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(136003)(39860400002)(396003)(189003)(199004)(486006)(336012)(6266002)(70586007)(8676002)(305945005)(70206006)(50466002)(16586007)(107886003)(5660300002)(42186006)(51416003)(76176011)(186003)(26005)(356004)(81156014)(6666004)(81166006)(478600001)(316002)(103686004)(446003)(48376002)(36386004)(126002)(106002)(11346002)(426003)(44832011)(4326008)(2906002)(50226002)(14444005)(8936002)(476003)(2616005)(47776003)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4172; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e862721b-e1b5-4b77-681e-08d75e9197a4
X-MS-TrafficTypeDiagnostic: DM6PR02MB4172:
X-Microsoft-Antispam-PRVS: <DM6PR02MB4172D64B00709CCDEF81FFA5C1620@DM6PR02MB4172.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-Forefront-PRVS: 020877E0CB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JdKvJRUtC+oNWzwo5dW1QhmleAKKM/FNpOuNWUlnwW79M+5wmK9UGso2jf7hbpVcb/sKsNryqHNvU4JVgaV72wmuaRdNBMFkMYpgPrxNUSEIxp1h+23J6qP2S2UjP58BDgUzoQmuJiGBsNq7aR/dvVChh8t4H4qpKh0GAI9aZsb891GFdoFWet2qIzqY4LR4hzsRAag4UcC4XbmvKwvdE+c/GLMqulPqhgd8f6eo0kb+yq9CIX17jtDuLCdyo2tmcGPa/YknKzD5nD4NvvaOzSSWEEbLlLv92G6kQhdePkP6sY4J2XguN8lfysf3++XDGP+8339azIM7rmYbbLDyYOIjsedMOKt3aEopEG8LkDCld5NEkP6k+bfTozlY8jELBespBA80o2TiVqgIPhYvl+Y4BZ28LiWj3BkyUdgT2DeSyDTLPDQQah+cimAcKHZB
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Nov 2019 06:06:10.0405 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e862721b-e1b5-4b77-681e-08d75e9197a4
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_230613_319542_48A9A0C1 
X-CRM114-Status: GOOD (  19.97  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Apart from taps set by auto tuning, ZynqMP platform has feature to set
the tap values manually. Add support to set tap delay values in HW via
ZynqMP SoC framework.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
 drivers/mmc/host/sdhci-of-arasan.c | 206 ++++++++++++++++++++++++++++-
 1 file changed, 204 insertions(+), 2 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index 9452ae01f6fa..228dbeef74a8 100644
--- a/drivers/mmc/host/sdhci-of-arasan.c
+++ b/drivers/mmc/host/sdhci-of-arasan.c
@@ -22,6 +22,7 @@
 #include <linux/phy/phy.h>
 #include <linux/regmap.h>
 #include <linux/of.h>
+#include <linux/firmware/xlnx-zynqmp.h>
 
 #include "cqhci.h"
 #include "sdhci-pltfm.h"
@@ -32,6 +33,10 @@
 
 #define PHY_CLK_TOO_SLOW_HZ		400000
 
+/* Default settings for ZynqMP Clock Phases */
+#define ZYNQMP_ICLK_PHASE {0, 63, 63, 0, 63,  0,   0, 183, 54,  0, 0}
+#define ZYNQMP_OCLK_PHASE {0, 72, 60, 0, 60, 72, 135, 48, 72, 135, 0}
+
 /*
  * On some SoCs the syscon area has a feature where the upper 16-bits of
  * each 32-bit register act as a write mask for the lower 16-bits.  This allows
@@ -80,6 +85,7 @@ struct sdhci_arasan_soc_ctl_map {
  * @clk_phase_in:	Array of Input Clock Phase Delays for all speed modes
  * @clk_phase_out:	Array of Output Clock Phase Delays for all speed modes
  * @set_clk_delays:	Function pointer for setting Clock Delays
+ * @clk_of_data:	Platform specific runtime clock data storage pointer
  */
 struct sdhci_arasan_clk_data {
 	struct clk_hw	sdcardclk_hw;
@@ -89,6 +95,11 @@ struct sdhci_arasan_clk_data {
 	int		clk_phase_in[MMC_TIMING_MMC_HS400 + 1];
 	int		clk_phase_out[MMC_TIMING_MMC_HS400 + 1];
 	void		(*set_clk_delays)(struct sdhci_host *host);
+	void		*clk_of_data;
+};
+
+struct sdhci_arasan_zynqmp_clk_data {
+	const struct zynqmp_eemi_ops *eemi_ops;
 };
 
 /**
@@ -525,6 +536,10 @@ static const struct of_device_id sdhci_arasan_of_match[] = {
 		.compatible = "arasan,sdhci-4.9a",
 		.data = &sdhci_arasan_data,
 	},
+	{
+		.compatible = "xlnx,zynqmp-8.9a",
+		.data = &sdhci_arasan_data,
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, sdhci_arasan_of_match);
@@ -583,6 +598,150 @@ static const struct clk_ops arasan_sampleclk_ops = {
 	.recalc_rate = sdhci_arasan_sampleclk_recalc_rate,
 };
 
+/**
+ * sdhci_zynqmp_sdcardclk_set_phase - Set the SD Output Clock Tap Delays
+ *
+ * Set the SD Output Clock Tap Delays for Output path
+ *
+ * @hw:			Pointer to the hardware clock structure.
+ * @degrees		The clock phase shift between 0 - 359.
+ * Return: 0 on success and error value on error
+ */
+static int sdhci_zynqmp_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
+
+{
+	struct sdhci_arasan_clk_data *clk_data =
+		container_of(hw, struct sdhci_arasan_clk_data, sdcardclk_hw);
+	struct sdhci_arasan_data *sdhci_arasan =
+		container_of(clk_data, struct sdhci_arasan_data, clk_data);
+	struct sdhci_host *host = sdhci_arasan->host;
+	struct sdhci_arasan_zynqmp_clk_data *zynqmp_clk_data =
+		clk_data->clk_of_data;
+	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_clk_data->eemi_ops;
+	const char *clk_name = clk_hw_get_name(hw);
+	u32 node_id = !strcmp(clk_name, "clk_out_sd0") ? NODE_SD_0 : NODE_SD_1;
+	u8 tap_delay, tap_max = 0;
+	int ret;
+
+	/*
+	 * This is applicable for SDHCI_SPEC_300 and above
+	 * ZynqMP does not set phase for <=25MHz clock.
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
+	ret = eemi_ops->ioctl(node_id, IOCTL_SET_SD_TAPDELAY,
+			      PM_TAPDELAY_OUTPUT, tap_delay, NULL);
+	if (ret)
+		pr_err("Error setting Output Tap Delay\n");
+
+	return ret;
+}
+
+static const struct clk_ops zynqmp_sdcardclk_ops = {
+	.recalc_rate = sdhci_arasan_sdcardclk_recalc_rate,
+	.set_phase = sdhci_zynqmp_sdcardclk_set_phase,
+};
+
+/**
+ * sdhci_zynqmp_sampleclk_set_phase - Set the SD Input Clock Tap Delays
+ *
+ * Set the SD Input Clock Tap Delays for Input path
+ *
+ * @hw:			Pointer to the hardware clock structure.
+ * @degrees		The clock phase shift between 0 - 359.
+ * Return: 0 on success and error value on error
+ */
+static int sdhci_zynqmp_sampleclk_set_phase(struct clk_hw *hw, int degrees)
+
+{
+	struct sdhci_arasan_clk_data *clk_data =
+		container_of(hw, struct sdhci_arasan_clk_data, sampleclk_hw);
+	struct sdhci_arasan_data *sdhci_arasan =
+		container_of(clk_data, struct sdhci_arasan_data, clk_data);
+	struct sdhci_host *host = sdhci_arasan->host;
+	struct sdhci_arasan_zynqmp_clk_data *zynqmp_clk_data =
+		clk_data->clk_of_data;
+	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_clk_data->eemi_ops;
+	const char *clk_name = clk_hw_get_name(hw);
+	u32 node_id = !strcmp(clk_name, "clk_in_sd0") ? NODE_SD_0 : NODE_SD_1;
+	u8 tap_delay, tap_max = 0;
+	int ret;
+
+	/*
+	 * This is applicable for SDHCI_SPEC_300 and above
+	 * ZynqMP does not set phase for <=25MHz clock.
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
+	ret = eemi_ops->ioctl(node_id, IOCTL_SET_SD_TAPDELAY,
+			      PM_TAPDELAY_INPUT, tap_delay, NULL);
+	if (ret)
+		pr_err("Error setting Input Tap Delay\n");
+
+	return ret;
+}
+
+static const struct clk_ops zynqmp_sampleclk_ops = {
+	.recalc_rate = sdhci_arasan_sampleclk_recalc_rate,
+	.set_phase = sdhci_zynqmp_sampleclk_set_phase,
+};
+
 /**
  * sdhci_arasan_update_clockmultiplier - Set corecfg_clockmultiplier
  *
@@ -709,6 +868,10 @@ static void arasan_dt_read_clk_phase(struct device *dev,
 static void arasan_dt_parse_clk_phases(struct device *dev,
 				       struct sdhci_arasan_clk_data *clk_data)
 {
+	int *iclk_phase, *oclk_phase;
+	u32 mio_bank = 0;
+	int i;
+
 	/*
 	 * This has been kept as a pointer and is assigned a function here.
 	 * So that different controller variants can assign their own handling
@@ -716,6 +879,22 @@ static void arasan_dt_parse_clk_phases(struct device *dev,
 	 */
 	clk_data->set_clk_delays = sdhci_arasan_set_clk_delays;
 
+	if (of_device_is_compatible(dev->of_node, "xlnx,zynqmp-8.9a")) {
+		iclk_phase = (int [MMC_TIMING_MMC_HS400 + 1]) ZYNQMP_ICLK_PHASE;
+		oclk_phase = (int [MMC_TIMING_MMC_HS400 + 1]) ZYNQMP_OCLK_PHASE;
+
+		of_property_read_u32(dev->of_node, "xlnx,mio-bank", &mio_bank);
+		if (mio_bank == 2) {
+			oclk_phase[MMC_TIMING_UHS_SDR104] = 90;
+			oclk_phase[MMC_TIMING_MMC_HS200] = 90;
+		}
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
@@ -774,7 +953,10 @@ sdhci_arasan_register_sdcardclk(struct sdhci_arasan_data *sdhci_arasan,
 	sdcardclk_init.parent_names = &parent_clk_name;
 	sdcardclk_init.num_parents = 1;
 	sdcardclk_init.flags = CLK_GET_RATE_NOCACHE;
-	sdcardclk_init.ops = &arasan_sdcardclk_ops;
+	if (of_device_is_compatible(np, "xlnx,zynqmp-8.9a"))
+		sdcardclk_init.ops = &zynqmp_sdcardclk_ops;
+	else
+		sdcardclk_init.ops = &arasan_sdcardclk_ops;
 
 	clk_data->sdcardclk_hw.init = &sdcardclk_init;
 	clk_data->sdcardclk =
@@ -823,7 +1005,10 @@ sdhci_arasan_register_sampleclk(struct sdhci_arasan_data *sdhci_arasan,
 	sampleclk_init.parent_names = &parent_clk_name;
 	sampleclk_init.num_parents = 1;
 	sampleclk_init.flags = CLK_GET_RATE_NOCACHE;
-	sampleclk_init.ops = &arasan_sampleclk_ops;
+	if (of_device_is_compatible(np, "xlnx,zynqmp-8.9a"))
+		sampleclk_init.ops = &zynqmp_sampleclk_ops;
+	else
+		sampleclk_init.ops = &arasan_sampleclk_ops;
 
 	clk_data->sampleclk_hw.init = &sampleclk_init;
 	clk_data->sampleclk =
@@ -1032,6 +1217,23 @@ static int sdhci_arasan_probe(struct platform_device *pdev)
 	if (ret)
 		goto clk_disable_all;
 
+	if (of_device_is_compatible(np, "xlnx,zynqmp-8.9a")) {
+		struct sdhci_arasan_zynqmp_clk_data *zynqmp_clk_data;
+		const struct zynqmp_eemi_ops *eemi_ops;
+
+		zynqmp_clk_data = devm_kzalloc(&pdev->dev,
+					       sizeof(*zynqmp_clk_data),
+					       GFP_KERNEL);
+		eemi_ops = zynqmp_pm_get_eemi_ops();
+		if (IS_ERR(eemi_ops)) {
+			ret = PTR_ERR(eemi_ops);
+			goto unreg_clk;
+		}
+
+		zynqmp_clk_data->eemi_ops = eemi_ops;
+		sdhci_arasan->clk_data.clk_of_data = zynqmp_clk_data;
+	}
+
 	arasan_dt_parse_clk_phases(&pdev->dev, &sdhci_arasan->clk_data);
 
 	ret = mmc_of_parse(host->mmc);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
