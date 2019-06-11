Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DF73C7E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 11:58:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ito6Rde7A1Rx0yZp0RtiMamYSNDS2s3YASNmIvJp09k=; b=bLYTNckqWmV4xP
	c0oSlNIlA8N0jQspbLrXm1qy+oajEhNxC+GycxHO1XjkDJlrKgRtD886lX/uwQgVoCpBMKV+/BKwm
	nq0+QQdzMmsHjEbc0zbp1NY/DLZauoMUdVkjdoLCN6fzfMiGqD3Nrq/HaRyHpLOd5Y8oJhCqKKzhc
	LfDw6ijdkHI1/+yxgg67bToy7xBEUsV7qHCdEwE49b317JeVnYuHFy77smgn1SmYPlEJpK1VGskcb
	gs5RCC9Kv3rYOD5NU9oJvt5jdfcYryHR8BxpeKFjodFdDjjgYTkHOLX8haMJUDX8uR+OSNn89Qb7e
	fltKQlz4qnztt//2/GNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadY0-0005dN-8i; Tue, 11 Jun 2019 09:58:32 +0000
Received: from mail-eopbgr680060.outbound.protection.outlook.com
 ([40.107.68.60] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadWq-0004kD-8g
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 09:57:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HN7suMNXQ5BPxJt5bOqZDCQpoA4tMdZyDFGnBer3wZY=;
 b=yJAoZbbkNweMClqdlbXYPXUp5mJlN+8A+4EmJ84yB/GLhJ2SXQdrzmADXbwZFSLk+JHfQIxcO6vM4HZoCbexAGe0f7lzO01d0VTKxht95erLuvj4Cg7gMbTMILwVw/v3FxDJwHxgLNrycW9AdHXPCnLp8Lwz5yjwJjyRBxOvxmc=
Received: from MWHPR0201CA0072.namprd02.prod.outlook.com
 (2603:10b6:301:73::49) by BL0PR02MB4931.namprd02.prod.outlook.com
 (2603:10b6:208:53::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.17; Tue, 11 Jun
 2019 09:57:16 +0000
Received: from CY1NAM02FT039.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::206) by MWHPR0201CA0072.outlook.office365.com
 (2603:10b6:301:73::49) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.15 via Frontend
 Transport; Tue, 11 Jun 2019 09:57:15 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT039.mail.protection.outlook.com (10.152.75.140) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1965.12
 via Frontend Transport; Tue, 11 Jun 2019 09:57:14 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1hadWk-0005Gr-AR; Tue, 11 Jun 2019 02:57:14 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1hadWf-0002WX-6c; Tue, 11 Jun 2019 02:57:09 -0700
Received: from xsj-pvapsmtp01 (mailman.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x5B9v2Ko016724; 
 Tue, 11 Jun 2019 02:57:02 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1hadWY-0002TF-1c; Tue, 11 Jun 2019 02:57:02 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 3FE5212174A; Tue, 11 Jun 2019 15:27:01 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 michal.simek@xilinx.com, adrian.hunter@intel.com,
 rajan.vaja@xilinx.com, jolly.shah@xilinx.com, nava.manne@xilinx.com,
 manish.narani@xilinx.com, olof@lixom.net
Subject: [PATCH 3/3] mmc: sdhci-of-arasan: Add support for ZynqMP Platform Tap
 Delays Setup
Date: Tue, 11 Jun 2019 15:26:51 +0530
Message-Id: <1560247011-26369-4-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1560247011-26369-1-git-send-email-manish.narani@xilinx.com>
References: <1560247011-26369-1-git-send-email-manish.narani@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(396003)(346002)(39860400002)(136003)(376002)(2980300002)(189003)(199004)(26005)(16586007)(476003)(36756003)(76176011)(51416003)(305945005)(5660300002)(316002)(186003)(103686004)(81166006)(8676002)(2616005)(81156014)(356004)(6666004)(11346002)(4326008)(36386004)(336012)(47776003)(42186006)(446003)(72206003)(426003)(14444005)(478600001)(70586007)(486006)(106002)(70206006)(8936002)(2906002)(48376002)(50226002)(63266004)(126002)(6266002)(44832011)(52956003)(50466002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB4931; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fcc0657c-4252-426a-5482-08d6ee532ec6
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:BL0PR02MB4931; 
X-MS-TrafficTypeDiagnostic: BL0PR02MB4931:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <BL0PR02MB49310251D62A338D88EC3696C1ED0@BL0PR02MB4931.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-Forefront-PRVS: 006546F32A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: TciCagJheeLfL8idlhtlJa9aoWcPSqJIhREVYRjGvdEq661GANxATGLIyzvPtt+Z5LsNpjgdHKr6cgZ58kLdxHQxOvNc6vhEW6OODK3WwX51P53YOxwpS/IX/UhTXhGeNfnd65suZFJ+3ppysNSZ6trOVEU9s0BG+0+rq/mjzUu9KMofXWhp+bPvigXry2Kyt1u8ufC5UnQz9YSDekPrGf86dFpaMGPBYG8JJX41JHnRgtK9PT0QbhLueHZdRp0CkxG9wTJb8U4qimLd2zBw+epc3dAAXO25mnp2rThRpuUwbrVst1WF937XQ+ICUW49f+1s/Zk/ocTD8oX+Pc6gJSFTCp5m45+ISHrOYXmbU0JlyA198VyLCLPtztJk+53kpQzz8gcWpMuhMdDhvCSvB6R8fee6EvwADUY+zhBbK9w=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2019 09:57:14.7774 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fcc0657c-4252-426a-5482-08d6ee532ec6
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB4931
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_025720_484270_4976D528 
X-CRM114-Status: GOOD (  22.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.60 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Apart from taps set by auto tuning, ZynqMP platform has feature to set
the tap values manually. Add support to read tap delay values from
DT and set the same in HW via ZynqMP SoC framework. Reading Tap
Delays from DT is optional, if the property is not available in DT the
driver will use the pre-defined Tap Delay Values.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
 drivers/mmc/host/sdhci-of-arasan.c | 173 ++++++++++++++++++++++++++++++++++++-
 1 file changed, 172 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index b12abf9..7af6cec 100644
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
 
+/* Default settings for ZynqMP Tap Delays */
+#define ZYNQMP_ITAP_DELAYS {0, 0x15, 0x15, 0, 0x15, 0, 0, 0x3D, 0x12, 0, 0}
+#define ZYNQMP_OTAP_DELAYS {0, 0x5, 0x6, 0, 0x5, 0x3, 0x3, 0x4, 0x6, 0x3, 0}
+
 /*
  * On some SoCs the syscon area has a feature where the upper 16-bits of
  * each 32-bit register act as a write mask for the lower 16-bits.  This allows
@@ -81,6 +86,7 @@ struct sdhci_arasan_soc_ctl_map {
  * @sdcardclk:		Pointer to normal 'struct clock' for sdcardclk_hw.
  * @soc_ctl_base:	Pointer to regmap for syscon for soc_ctl registers.
  * @soc_ctl_map:	Map to get offsets into soc_ctl registers.
+ * @of_data:		Platform specific runtime data storage pointer
  */
 struct sdhci_arasan_data {
 	struct sdhci_host *host;
@@ -101,6 +107,15 @@ struct sdhci_arasan_data {
 /* Controller immediately reports SDHCI_CLOCK_INT_STABLE after enabling the
  * internal clock even when the clock isn't stable */
 #define SDHCI_ARASAN_QUIRK_CLOCK_UNSTABLE BIT(1)
+
+	void *of_data;
+};
+
+struct sdhci_arasan_zynqmp_data {
+	void (*set_tap_delay)(struct sdhci_host *host);
+	const struct zynqmp_eemi_ops *eemi_ops;
+	u8 tapdly[MMC_TIMING_MMC_HS400 + 1][2]; /* [0] for input delay, */
+						/* [1] for output delay */
 };
 
 struct sdhci_arasan_of_data {
@@ -209,6 +224,16 @@ static void sdhci_arasan_set_clock(struct sdhci_host *host, unsigned int clock)
 		sdhci_arasan->is_phy_on = false;
 	}
 
+	/* Set the Input and Output Tap Delays */
+	if (host->version >= SDHCI_SPEC_300 &&
+	    host->timing != MMC_TIMING_LEGACY &&
+	    host->timing != MMC_TIMING_UHS_SDR12) {
+		struct sdhci_arasan_zynqmp_data *zynqmp_data =
+			sdhci_arasan->of_data;
+		if (zynqmp_data && zynqmp_data->set_tap_delay)
+			zynqmp_data->set_tap_delay(host);
+	}
+
 	sdhci_set_clock(host, clock);
 
 	if (sdhci_arasan->quirks & SDHCI_ARASAN_QUIRK_CLOCK_UNSTABLE)
@@ -487,6 +512,10 @@ static const struct of_device_id sdhci_arasan_of_match[] = {
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
@@ -517,6 +546,37 @@ static const struct clk_ops arasan_sdcardclk_ops = {
 };
 
 /**
+ * sdhci_zynqmp_sdcardclk_set_phase - Set the SD Clock Tap Delays
+ *
+ * Set the SD Clock Tap Delays for Input and Output paths
+ *
+ * @hw:			Pointer to the hardware clock structure.
+ * @degrees		The clock phase shift between 0 - 359.
+ * Return: 0 on success and error value on error
+ */
+static int sdhci_zynqmp_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
+
+{
+	struct sdhci_arasan_data *sdhci_arasan =
+		container_of(hw, struct sdhci_arasan_data, sdcardclk_hw);
+	struct sdhci_arasan_zynqmp_data *zynqmp_data = sdhci_arasan->of_data;
+	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_data->eemi_ops;
+	const char *clk_name = clk_hw_get_name(hw);
+	u32 device_id = !strcmp(clk_name, "clk_sd0") ? 0 : 1;
+
+	if (!eemi_ops->sdio_setphase)
+		return -ENODEV;
+
+	/* Set the Clock Phase */
+	return eemi_ops->sdio_setphase(device_id, degrees);
+}
+
+static const struct clk_ops zynqmp_sdcardclk_ops = {
+	.recalc_rate = sdhci_arasan_sdcardclk_recalc_rate,
+	.set_phase = sdhci_zynqmp_sdcardclk_set_phase,
+};
+
+/**
  * sdhci_arasan_update_clockmultiplier - Set corecfg_clockmultiplier
  *
  * The corecfg_clockmultiplier is supposed to contain clock multiplier
@@ -638,7 +698,10 @@ static int sdhci_arasan_register_sdclk(struct sdhci_arasan_data *sdhci_arasan,
 	sdcardclk_init.parent_names = &parent_clk_name;
 	sdcardclk_init.num_parents = 1;
 	sdcardclk_init.flags = CLK_GET_RATE_NOCACHE;
-	sdcardclk_init.ops = &arasan_sdcardclk_ops;
+	if (of_device_is_compatible(np, "xlnx,zynqmp-8.9a"))
+		sdcardclk_init.ops = &zynqmp_sdcardclk_ops;
+	else
+		sdcardclk_init.ops = &arasan_sdcardclk_ops;
 
 	sdhci_arasan->sdcardclk_hw.init = &sdcardclk_init;
 	sdhci_arasan->sdcardclk =
@@ -714,6 +777,108 @@ static int sdhci_arasan_add_host(struct sdhci_arasan_data *sdhci_arasan)
 	return ret;
 }
 
+static void sdhci_arasan_zynqmp_set_tap_delay(struct sdhci_host *host)
+{
+	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
+	struct sdhci_arasan_data *sdhci_arasan = sdhci_pltfm_priv(pltfm_host);
+	struct sdhci_arasan_zynqmp_data *zynqmp_data = sdhci_arasan->of_data;
+
+	clk_set_phase(sdhci_arasan->sdcardclk,
+		      (int)zynqmp_data->tapdly[host->timing][0]);
+	clk_set_phase(sdhci_arasan->sdcardclk,
+		      (int)zynqmp_data->tapdly[host->timing][1] +
+		      INPUT_TAP_BOUNDARY);
+}
+
+static void arasan_dt_read_tap_delay(struct device *dev, u8 *tapdly,
+				     const char *prop, u8 itap_def, u8 otap_def)
+{
+	struct device_node *np = dev->of_node;
+
+	tapdly[0] = itap_def;
+	tapdly[1] = otap_def;
+
+	/*
+	 * Read Tap Delay values from DT, if the DT does not contain the
+	 * Tap Values then use the pre-defined values.
+	 */
+	if (of_property_read_variable_u8_array(np, prop, &tapdly[0], 2, 0)) {
+		dev_dbg(dev, "Using predefined tapdly for %s = %d %d\n",
+			prop, tapdly[0], tapdly[1]);
+	}
+}
+
+/**
+ * arasan_dt_parse_tap_delays - Read Tap Delay values from DT
+ *
+ * Called at initialization to parse the values of Tap Delays.
+ *
+ * @dev:		Pointer to our struct device.
+ */
+static int arasan_dt_parse_tap_delays(struct device *dev)
+{
+	struct platform_device *pdev = to_platform_device(dev);
+	struct sdhci_host *host = platform_get_drvdata(pdev);
+	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
+	struct sdhci_arasan_data *sdhci_arasan = sdhci_pltfm_priv(pltfm_host);
+	struct sdhci_arasan_zynqmp_data zynqmp_data;
+	const struct zynqmp_eemi_ops *eemi_ops;
+	u8 *itapdly, *otapdly;
+	u32 mio_bank = 0;
+
+	eemi_ops = zynqmp_pm_get_eemi_ops();
+	if (IS_ERR(eemi_ops))
+		return PTR_ERR(eemi_ops);
+
+	itapdly = (u8 [MMC_TIMING_MMC_HS400 + 1]) ZYNQMP_ITAP_DELAYS;
+	otapdly = (u8 [MMC_TIMING_MMC_HS400 + 1]) ZYNQMP_OTAP_DELAYS;
+
+	of_property_read_u32(pdev->dev.of_node, "xlnx,mio-bank", &mio_bank);
+	if (mio_bank == 2) {
+		otapdly[MMC_TIMING_UHS_SDR104] = 0x2;
+		otapdly[MMC_TIMING_MMC_HS200] = 0x2;
+	}
+
+	arasan_dt_read_tap_delay(dev, zynqmp_data.tapdly[MMC_TIMING_MMC_HS],
+				 "xlnx,tap-delay-mmc-hsd",
+				 itapdly[MMC_TIMING_MMC_HS],
+				 otapdly[MMC_TIMING_MMC_HS]);
+	arasan_dt_read_tap_delay(dev, zynqmp_data.tapdly[MMC_TIMING_SD_HS],
+				 "xlnx,tap-delay-sd-hsd",
+				 itapdly[MMC_TIMING_SD_HS],
+				 otapdly[MMC_TIMING_SD_HS]);
+	arasan_dt_read_tap_delay(dev, zynqmp_data.tapdly[MMC_TIMING_UHS_SDR25],
+				 "xlnx,tap-delay-sdr25",
+				 itapdly[MMC_TIMING_UHS_SDR25],
+				 otapdly[MMC_TIMING_UHS_SDR25]);
+	arasan_dt_read_tap_delay(dev, zynqmp_data.tapdly[MMC_TIMING_UHS_SDR50],
+				 "xlnx,tap-delay-sdr50",
+				 itapdly[MMC_TIMING_UHS_SDR50],
+				 otapdly[MMC_TIMING_UHS_SDR50]);
+	arasan_dt_read_tap_delay(dev, zynqmp_data.tapdly[MMC_TIMING_UHS_SDR104],
+				 "xlnx,tap-delay-sdr104",
+				 itapdly[MMC_TIMING_UHS_SDR104],
+				 otapdly[MMC_TIMING_UHS_SDR104]);
+	arasan_dt_read_tap_delay(dev, zynqmp_data.tapdly[MMC_TIMING_UHS_DDR50],
+				 "xlnx,tap-delay-sd-ddr50",
+				 itapdly[MMC_TIMING_UHS_DDR50],
+				 otapdly[MMC_TIMING_UHS_DDR50]);
+	arasan_dt_read_tap_delay(dev, zynqmp_data.tapdly[MMC_TIMING_MMC_DDR52],
+				 "xlnx,tap-delay-mmc-ddr52",
+				 itapdly[MMC_TIMING_MMC_DDR52],
+				 otapdly[MMC_TIMING_MMC_DDR52]);
+	arasan_dt_read_tap_delay(dev, zynqmp_data.tapdly[MMC_TIMING_MMC_HS200],
+				 "xlnx,tap-delay-mmc-hs200",
+				 itapdly[MMC_TIMING_MMC_HS200],
+				 otapdly[MMC_TIMING_MMC_HS200]);
+
+	zynqmp_data.set_tap_delay = sdhci_arasan_zynqmp_set_tap_delay;
+	zynqmp_data.eemi_ops = eemi_ops;
+	sdhci_arasan->of_data = &zynqmp_data;
+
+	return 0;
+}
+
 static int sdhci_arasan_probe(struct platform_device *pdev)
 {
 	int ret;
@@ -806,6 +971,12 @@ static int sdhci_arasan_probe(struct platform_device *pdev)
 		goto unreg_clk;
 	}
 
+	if (of_device_is_compatible(pdev->dev.of_node, "xlnx,zynqmp-8.9a")) {
+		ret = arasan_dt_parse_tap_delays(&pdev->dev);
+		if (ret)
+			goto unreg_clk;
+	}
+
 	sdhci_arasan->phy = ERR_PTR(-ENODEV);
 	if (of_device_is_compatible(pdev->dev.of_node,
 				    "arasan,sdhci-5.1")) {
-- 
2.1.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
