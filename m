Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6C019FBEA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 19:45:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8qzEc19e9Ivsy6pDboCCklBrlALVgbjSPVWpYgShl4Y=; b=pTLnFhXm2jkJ4r
	Ghw9MMEViFhnlxxJ/LtveD1J11aatssWz8YJkYHvMu035cpUk9TRiO50iPVvwqlucwgsnqr5lX2Vg
	/RiVDTYkpPGhCCqALMy/74GY4+lmuI00Kagvuw3yVAIr+rYmHdbmIvRxs06cGxMeX84D5v2M4XSVp
	mjaTODlRxmrMqrqH8jN7x+8Rtp/fbclcmMTtd5n6p/4SJaxPDb9Kp2WNqvrxydRM8XbuBdY7C3xLc
	0Jur49nkPbcweoG4NOeeQXyP4sLz+gdsXeRqMyFTHIqKDnvJx7TLFCef1c8WbrwT1fad/UrYEcof3
	YOiYcFbmXcBJvjkENInA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLVno-0001Bi-F6; Mon, 06 Apr 2020 17:44:52 +0000
Received: from mail-co1nam11on2051.outbound.protection.outlook.com
 ([40.107.220.51] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLVnH-0000qw-AJ
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 17:44:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UpfmQ4YaZ7McRPwWqnsR4ogvRYeJK8mvburMnWi+TjJFE43yfg5dsAA4UsqhOP8l8CSLGrq40Xsae/8cGi29b2IW0jHAEKolSRvPKVtzsBVsQnUpemwL3Go53dQ4FkUaBoohP/vIYtr72C3s8e84UEkd52aFXdiVNqZxE48ps923RtkDcL9vAMs1z2P3euD4Y3HauuEF6cw/6RjfszLWALLvRd3rbPiKPjmnoKPKH25oxwNmE321gPOF+0oGklkshJrhC8hIY3BoHIVjshhls29ztjgMviv79mCzH0yOcM+oS/c5K2bcpDuQXfSTAS9zdLdoAghXL4IMEq/9nhguwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QHWIGgk52dWvOu4Mbls2nAWBeeF49PT8EJ03qQrPZz0=;
 b=Xk2PGwcPv/pCevb4co0aw9P0wxbaUHbdeWukmGImHy1NWvziA+ulBOBlboSvV8roWblh2Kitr0VJ9JiO6mh4vHkKrTED5PNVYt7O3VPYoymWXxDN/8GfxFTakOYaUmIDP6Ok0u9V8OklT4mlNe6M2tAWmlvh0X/TxGHLxS4IZ0Kc+p3DR6FLKs/zPm9Z6w4M53JLtf7Zii5M0NuyzEDqEtEDRwJ4KcuK6yeBWYhr3/Aa09DF9qrI9uFUAa6FmJ4nb1o3OeG+FQAMSzGkHi6GYYCa8q52VCNMzio8CUVia8sEgcrq9cyn7TcXlImBSsLuS90qygB4YSmkJEvzI+F3Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QHWIGgk52dWvOu4Mbls2nAWBeeF49PT8EJ03qQrPZz0=;
 b=cBtZw+9AYDdF9CozaBEmGdNHaCaHm3Q4sow5V2SrXhszxeJUYb/ahFcXEwzmuP56Ds7sF1BkjmpWQHwh1D5/m3ahEYE18kIz8m2li7iyBEu9Nv/2XOaPdNNkd088vDRJUrXaBOuvOwLVcbUnS6do4gdS8BciYP//j50rWI12PLI=
Received: from MN2PR20CA0013.namprd20.prod.outlook.com (2603:10b6:208:e8::26)
 by BYAPR02MB4808.namprd02.prod.outlook.com (2603:10b6:a03:52::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Mon, 6 Apr
 2020 17:44:15 +0000
Received: from BL2NAM02FT033.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:e8:cafe::63) by MN2PR20CA0013.outlook.office365.com
 (2603:10b6:208:e8::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.17 via Frontend
 Transport; Mon, 6 Apr 2020 17:44:15 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT033.mail.protection.outlook.com (10.152.77.163) with Microsoft SMTP
 Server id 15.20.2878.15 via Frontend Transport; Mon, 6 Apr 2020 17:44:14
 +0000
Received: from [149.199.38.66] (port=45918 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <manish.narani@xilinx.com>)
 id 1jLVmu-0007aW-PZ; Mon, 06 Apr 2020 10:43:56 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1jLVnC-0001ez-BZ; Mon, 06 Apr 2020 10:44:14 -0700
Received: from xsj-pvapsmtp01 (mail.xilinx.com [149.199.38.66] (may be forged))
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 036Hi7Kp017855; 
 Mon, 6 Apr 2020 10:44:09 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1jLVn4-0001au-Io; Mon, 06 Apr 2020 10:44:07 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 2707312123F; Mon,  6 Apr 2020 23:13:39 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com
Subject: [PATCH v3 2/6] sdhci: arasan: Add support for Versal Tap Delays
Date: Mon,  6 Apr 2020 23:13:31 +0530
Message-Id: <1586195015-128992-3-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1586195015-128992-1-git-send-email-manish.narani@xilinx.com>
References: <1586195015-128992-1-git-send-email-manish.narani@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(39860400002)(396003)(136003)(376002)(46966005)(44832011)(2616005)(316002)(356004)(2906002)(42186006)(70586007)(6666004)(70206006)(4326008)(186003)(478600001)(82740400003)(6636002)(81166006)(81156014)(8936002)(47076004)(336012)(426003)(36756003)(107886003)(8676002)(5660300002)(6266002)(26005)(42866002);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a53354ba-5b23-4d0a-d343-08d7da521f92
X-MS-TrafficTypeDiagnostic: BYAPR02MB4808:
X-Microsoft-Antispam-PRVS: <BYAPR02MB48086E707793F8E7B5AB98D4C1C20@BYAPR02MB4808.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-Forefront-PRVS: 0365C0E14B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ThNelxeW+rkpG4CyIugneiDWbsmoNN1XPljUt30NpS8tqinLGBaLPW99S5+AiCQrRZR4mqajhFx8+pCSZw+MqV5oizusFG/Ui/L1LCfRPEr6fsyC75uG2IBzRg8gqBSP3nuaEzxWE6izXVz5azsiYA4UKYH2OMHt0HwwpuQtAdJnOXkNBxXFZr/gUxWsPQ0EjpClvqe5S8fK3DvWwkgIfvbkoBY+Vc+T+jAdaVyJOB9DPR/r4SOtnRpI7cTfhQftiFK2RnRrj02eXub5I8hXJakAa8++xvnxVdL53it1/kH6fV5HPBEiEos4Fzems1DgI8egPVVFkZR3qxRQsKqyGOaS4FWIoOqSLChlUjJLZwNxqglBaknV8me4IqC7jbhlLs9WjldaErTdqlVLf4WfNviXUXe8AxfzGX0F0UxsMteflEyj+QSCz9kkrUfhTfTUNGBNWeYueUJB4T0p5OBfWO8hydhTzxJZN9RGun11LnPxbN2pT0LL3rjFtIyBLlS1EuEdzYo8a2xx+8nCDfZnQLdVt0S9hjXDqTPDNusrldE=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2020 17:44:14.7974 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a53354ba-5b23-4d0a-d343-08d7da521f92
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4808
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_104419_434349_EA4BAA1E 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.51 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.51 listed in wl.mailspike.net]
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
Acked-by: Adrian Hunter <adrian.hunter@intel.com>
---
 drivers/mmc/host/sdhci-of-arasan.c | 175 +++++++++++++++++++++++++++++++++++++
 1 file changed, 175 insertions(+)

diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index 0146d7d..34403b2 100644
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
2.1.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
