Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F215B422
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 07:33:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ZCw1o0h4NjmGtfIiE/2yWWv+EaVLFu/rX7PsQB7fug=; b=oBh1wAi2KuV2JC
	7dSIXsB48I37Ny+/wYxAyZmh8p1nX1MdNPy9vnidWv+KAq9ZLlrszKyJSJ2durcBcPISM8Wbep7pI
	YZ7GMQmqCGyLLjONPzFigPOvkO9xlyxycO0sVQWCqnVSUQCSge+IKUTlOukYbzoMSwIj0dkwwgXw3
	g5JcDFNquz+eXdLsCXGWF+zTgtArlvSGj4Vi7Kw51FosJh5BGJG4xJEDUVb/Srsjro8PmNeG+UH8A
	xcs62hf0fBLhfEJcxlqFDqJ+BXIY9B2bT8p/b4qlk2DpJfWr2PF9oEwZQheeUWMAlo2iP7CyimG0C
	oK7n44XPFAwHXMdlgrPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhow7-000153-TW; Mon, 01 Jul 2019 05:33:08 +0000
Received: from mail-eopbgr760082.outbound.protection.outlook.com
 ([40.107.76.82] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhotH-0007LE-Kx; Mon, 01 Jul 2019 05:30:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dUA72EvoKP7jjMM7blwJWBJAdFDGoEeg8uvtkSuLNgI=;
 b=BRZoW+paXVC+RBh3Z5h8+1DQODcrAeRs+J9eND3eCLLZ55chm1I9nox8WEhSFZI+0iCViO0PX0tQ0EltjJ4MfbNhU3xVqtzO4enjqt01S38qgk8OZiX405+XDVvPdJLRkYjGqeubAkEGyNxg47YhXWPyG4zdrArYnaKIOjSYUA8=
Received: from SN4PR0201CA0012.namprd02.prod.outlook.com
 (2603:10b6:803:2b::22) by DM6PR02MB5244.namprd02.prod.outlook.com
 (2603:10b6:5:48::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2032.20; Mon, 1 Jul
 2019 05:30:07 +0000
Received: from BL2NAM02FT008.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::209) by SN4PR0201CA0012.outlook.office365.com
 (2603:10b6:803:2b::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2032.20 via Frontend
 Transport; Mon, 1 Jul 2019 05:30:07 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT008.mail.protection.outlook.com (10.152.76.162) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2032.15
 via Frontend Transport; Mon, 1 Jul 2019 05:30:07 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1hhotC-0002rn-Dt; Sun, 30 Jun 2019 22:30:06 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1hhot7-0003EO-8P; Sun, 30 Jun 2019 22:30:01 -0700
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x615TuGY008189; 
 Sun, 30 Jun 2019 22:29:56 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1hhot2-0003Cg-4i; Sun, 30 Jun 2019 22:29:56 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 667AD12175A; Mon,  1 Jul 2019 10:59:54 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 heiko@sntech.de, michal.simek@xilinx.com, adrian.hunter@intel.com,
 christoph.muellner@theobroma-systems.com,
 philipp.tomsich@theobroma-systems.com, viresh.kumar@linaro.org,
 scott.branden@broadcom.com, ayaka@soulik.info, kernel@esmil.dk,
 tony.xie@rock-chips.com, rajan.vaja@xilinx.com, jolly.shah@xilinx.com,
 nava.manne@xilinx.com, mdf@kernel.org, manish.narani@xilinx.com,
 olof@lixom.net
Subject: [PATCH v2 11/11] mmc: sdhci-of-arasan: Add support for ZynqMP
 Platform Tap Delays Setup
Date: Mon,  1 Jul 2019 10:59:51 +0530
Message-Id: <1561958991-21935-12-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
References: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(376002)(396003)(39860400002)(2980300002)(189003)(199004)(336012)(4326008)(6266002)(5660300002)(426003)(52956003)(106002)(103686004)(42186006)(478600001)(72206003)(50226002)(2906002)(63266004)(7416002)(51416003)(36756003)(476003)(70206006)(81166006)(126002)(8936002)(50466002)(26005)(356004)(76176011)(186003)(6666004)(48376002)(47776003)(81156014)(446003)(2616005)(8676002)(36386004)(11346002)(305945005)(14444005)(316002)(486006)(44832011)(16586007)(70586007)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB5244; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5df68a71-4728-4b1e-a9a7-08d6fde52d8f
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:DM6PR02MB5244; 
X-MS-TrafficTypeDiagnostic: DM6PR02MB5244:
X-Microsoft-Antispam-PRVS: <DM6PR02MB52447D04F942CAE9FC95AABDC1F90@DM6PR02MB5244.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-Forefront-PRVS: 00851CA28B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: wi9ef65SqQ7ogaew/4nrVOKx4WSEBFtIWgNVujDO+GDF/0VWYa7Pds8zABf43HcXtXJDXTvJjPZcref0pZYG0o9KV6DMWzJUEn2A73Jt7lEecxwZYECb/BjNOZqSroHHmKSrY2VjrBjtkTu0zOq6YLeLl1y6q9WOmXeCOGL3yQA0sQGzsmPppCaNMt00StqMbjTQV22DwQpF+MFnXh9LwrHBAs2Xq0BcOZCP602M8ZbKaeq5TUQI1UgC6T9/X+BhbsWWhOPqKC7Av/qHvL1GoCgYNnPG+zyRZ4jI8k4wknU49wtspwZb6i/G3TGIYDxcpXeZthZjZCI0Yx0AElYuqW9Ty81eH50eH4q9BxHwfD1LVJl+N6LmZLSZPkE+KkEHD4jf/vV07FJVTHH0ObKCRYQv06MhiBy++SlxZfe0SJU=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2019 05:30:07.0219 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5df68a71-4728-4b1e-a9a7-08d6fde52d8f
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5244
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_223011_744839_1BCD57F8 
X-CRM114-Status: GOOD (  18.93  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.82 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Apart from taps set by auto tuning, ZynqMP platform has feature to set
the tap values manually. Add support to set tap delay values in HW via
ZynqMP SoC framework.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
 drivers/mmc/host/sdhci-of-arasan.c | 200 ++++++++++++++++++++++++++++++++++++-
 1 file changed, 198 insertions(+), 2 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index a545221..508d942 100644
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
+#define ZYNQMP_OCLK_PHASE {0, 60, 72, 0, 60, 72, 135, 180, 72, 36, 0}
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
 	void 		(*set_clk_delays)(struct sdhci_host *host);
+	void		*clk_of_data;
+};
+
+struct sdhci_arasan_zynqmp_clk_data {
+	const struct zynqmp_eemi_ops *eemi_ops;
 };
 
 /**
@@ -510,6 +521,10 @@ static const struct of_device_id sdhci_arasan_of_match[] = {
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
@@ -569,6 +584,144 @@ static const struct clk_ops arasan_sampleclk_ops = {
 };
 
 /**
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
+	u32 device_id = !strcmp(clk_name, "clk_out_sd0") ? 0 : 1;
+	u8 tap_delay, tap_max = 0;
+
+	if (!eemi_ops->sdio_out_setphase)
+		return -ENODEV;
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
+	return eemi_ops->sdio_out_setphase(device_id, tap_delay);
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
+	u32 device_id = !strcmp(clk_name, "clk_in_sd0") ? 0 : 1;
+	u8 tap_delay, tap_max = 0;
+
+	if (!eemi_ops->sdio_in_setphase)
+		return -ENODEV;
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
+	return eemi_ops->sdio_in_setphase(device_id, tap_delay);
+}
+
+static const struct clk_ops zynqmp_sampleclk_ops = {
+	.recalc_rate = sdhci_arasan_sampleclk_recalc_rate,
+	.set_phase = sdhci_zynqmp_sampleclk_set_phase,
+};
+
+/**
  * sdhci_arasan_update_clockmultiplier - Set corecfg_clockmultiplier
  *
  * The corecfg_clockmultiplier is supposed to contain clock multiplier
@@ -693,6 +846,10 @@ static void arasan_dt_read_clk_phase(struct device *dev,
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
@@ -700,6 +857,22 @@ static void arasan_dt_parse_clk_phases(struct device *dev,
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
@@ -770,7 +943,10 @@ sdhci_arasan_register_sdcardclk(struct sdhci_arasan_data *sdhci_arasan,
 	sdcardclk_init.parent_names = &parent_clk_name;
 	sdcardclk_init.num_parents = 1;
 	sdcardclk_init.flags = CLK_GET_RATE_NOCACHE;
-	sdcardclk_init.ops = &arasan_sdcardclk_ops;
+	if (of_device_is_compatible(np, "xlnx,zynqmp-8.9a"))
+		sdcardclk_init.ops = &zynqmp_sdcardclk_ops;
+	else
+		sdcardclk_init.ops = &arasan_sdcardclk_ops;
 
 	clk_data->sdcardclk_hw.init = &sdcardclk_init;
 	ret = devm_clk_hw_register(dev, &clk_data->sdcardclk_hw);
@@ -834,7 +1010,10 @@ sdhci_arasan_register_sampleclk(struct sdhci_arasan_data *sdhci_arasan,
 	sampleclk_init.parent_names = &parent_clk_name;
 	sampleclk_init.num_parents = 1;
 	sampleclk_init.flags = CLK_GET_RATE_NOCACHE;
-	sampleclk_init.ops = &arasan_sampleclk_ops;
+	if (of_device_is_compatible(np, "xlnx,zynqmp-8.9a"))
+		sampleclk_init.ops = &zynqmp_sampleclk_ops;
+	else
+		sampleclk_init.ops = &arasan_sampleclk_ops;
 
 	clk_data->sampleclk_hw.init = &sampleclk_init;
 	ret = devm_clk_hw_register(dev, &clk_data->sampleclk_hw);
@@ -1012,6 +1191,23 @@ static int sdhci_arasan_probe(struct platform_device *pdev)
 	if (ret)
 		goto unreg_clk;
 
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
2.1.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
