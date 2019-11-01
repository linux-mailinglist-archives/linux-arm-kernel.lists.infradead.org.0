Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B446DEBD95
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 07:08:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=juUkjxa1L3qA50nm73R9jEIoKYsH0KIagLIfB1vIxvo=; b=i0vbyxmM6e0lC/
	oOnY3IyxzRSIQCCV7369IZIAk/F6OOOLxH2LQ2qekEApcsAFeXBW9R+PEv1+FuqzCo0CDoRhRUKHx
	QB+RhqQhrSO8pkJhvwZP1RRqRkds3Smd8lPh+h7Yu3qtBawpGaXVebjeXy5S/yqceBUvn4tqLrdLl
	YAOe48ORXBEMC0hmh3I3RwMsGEhTRsaG684exypRwmuY0YL9yR+G6FNLe61lz0dEyb/2esG85r/9d
	J6aDfiWpWaZj1A+8XWCxRhjG5ktZ4rvoG2SdBP11FcSGYmXAlz6WhiXULpVyqN7G7zIxh+iEofVe2
	TtAhu3uo7G9LMeS2cmQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQQ6K-00039G-OO; Fri, 01 Nov 2019 06:08:00 +0000
Received: from mail-eopbgr680087.outbound.protection.outlook.com
 ([40.107.68.87] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQQ4d-0001wR-Dk
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 06:06:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d5QXGx8pSq1eFTcV+4L5mSJTcE1MWDhoXqw8r6hRFCU+luDmX7I8W4PgBeXLhkKzttkdazdJ+qtXz2ndXM2jGeHKLuQCjRP/IQQ3TMArYkuxqkh+B1CQ4lWSdOf2zI1Z92Ur42FyIimLO67yIVbQoAK5mjtCnvCxUzLUtjxbqL6CbHEbaDhwE2DUZWl1p9lsqtospqQXH68p2uzqe5gRGqEXl2EBIVTdNpffnPiclQ8+Qx5lxPh56Fw6t3bllhaqYE+9alM0pHZqtJTnUa+xDXrSsrUHLwW71xBpovPirYjSy1hQw2ryhZ9wHYGp/i9bBL3GnEScaBqD+eGXh64EhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m5S1KA31oH+mkM7DanXAs+YE4sBunEXs4vCCSxmISw8=;
 b=Y+lxbsXnBH5343nZ5K/tHRjBrtWlqqFQGjbMqmgdO75N5lXvojG2K5VbS7C0YFXFyAVDPGV/2tcYxF16zEaKM6X1kPBiUeOoJ97VB48YJzSURw+Rj70wB4/a+H9zMirWI7A6n9RMXXX03OR+rSPtC7tD7ezM5+K0bZkzZN+KwSYKc8YdlRayf2ZuFm1V128jt2vqFsOpWwDDTEZJhvXxI/ExzeU6mlnYhlDNfJyTPY7nC6Ze9kXSfGXCsFTl/TnNyc7mED0RTO3N1bWF5C5D9e5mMlMFw29yi9m5x9OGts5XyR1XCe00PK2LbFmoaL78l/zc2zkqZp8xQLXyVTZFAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m5S1KA31oH+mkM7DanXAs+YE4sBunEXs4vCCSxmISw8=;
 b=N8F4RSPH/wf2KRz0MEUzIhxbV50aLLoxeCDT/DaJXX0cbdZiPig0uNr5bJVG2ZQf36M+KhBi2FrG7Dz48liU7B6D8BKA3/vGra0P7b0SS1kUEdeYPouLn5BZcOBrnOWAj6BmhPrNPxwsj+BiThWOfEP/LfXtkGeMxnkh+eCcmxw=
Received: from BYAPR02CA0030.namprd02.prod.outlook.com (2603:10b6:a02:ee::43)
 by SN4PR0201MB3551.namprd02.prod.outlook.com (2603:10b6:803:4c::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2387.24; Fri, 1 Nov
 2019 06:06:11 +0000
Received: from SN1NAM02FT062.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::207) by BYAPR02CA0030.outlook.office365.com
 (2603:10b6:a02:ee::43) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2408.19 via Frontend
 Transport; Fri, 1 Nov 2019 06:06:11 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT062.mail.protection.outlook.com (10.152.72.208) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2367.14
 via Frontend Transport; Fri, 1 Nov 2019 06:06:10 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iQQ4Y-0005mc-7Q; Thu, 31 Oct 2019 23:06:10 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iQQ4T-0007dN-2p; Thu, 31 Oct 2019 23:06:05 -0700
Received: from xsj-pvapsmtp01 (mail.xilinx.com [149.199.38.66] (may be forged))
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xA165xhi005683; 
 Thu, 31 Oct 2019 23:05:59 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iQQ4M-0007aL-Pm; Thu, 31 Oct 2019 23:05:59 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 03029121386; Fri,  1 Nov 2019 11:35:57 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com,
 jolly.shah@xilinx.com, nava.manne@xilinx.com, rajan.vaja@xilinx.com,
 manish.narani@xilinx.com
Subject: [PATCH v5 5/8] mmc: sdhci-of-arasan: Add support to set clock phase
 delays for SD
Date: Fri,  1 Nov 2019 11:35:50 +0530
Message-Id: <1572588353-110682-6-git-send-email-manish.narani@xilinx.com>
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
 SFS:(10009020)(4636009)(136003)(346002)(376002)(396003)(39860400002)(189003)(199004)(478600001)(2906002)(5660300002)(70586007)(70206006)(103686004)(107886003)(8936002)(336012)(50226002)(426003)(126002)(476003)(36756003)(50466002)(48376002)(2616005)(51416003)(14444005)(6666004)(44832011)(486006)(356004)(76176011)(8676002)(81166006)(81156014)(4326008)(42186006)(316002)(26005)(186003)(305945005)(6266002)(11346002)(446003)(36386004)(16586007)(106002)(47776003)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN4PR0201MB3551; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cf48439f-2e49-4b22-70b1-08d75e9197fb
X-MS-TrafficTypeDiagnostic: SN4PR0201MB3551:
X-Microsoft-Antispam-PRVS: <SN4PR0201MB355115367473AF9BC7EEC99BC1620@SN4PR0201MB3551.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 020877E0CB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: X/iIuO8ojDVe45XT32MBpm14XBa/VMN3w5sQCaWOgbaBD/dbl/hLR/HYkg66IVvXjwswjiAEQblvbnVqxR3SxrVzzwn/JuC/S7P7+LN+PU5oFY1H3cF6dr84fFGc+cyDZjeNP5yxT/XHEm587ErpbgvPAfruMv3mf37kobYpX8uyXk8/P4tOwm9r9C6K4Ax8IDgcJq9/g2ScQpPe89aKYHh6/N64Vgw0err0CNq8aGlTWmhfHxjecM7xaFOmuihXgj8NSUdWj1P9ozyl7xUem4PuuWBZ7kspzois2KvFHo1rUOQr13++7PCvpU+I+hr11afWHqrj1NqbRbaqeuLTLXN9Y0/WBi1KDSeYHr8wqC0sUlzQndpmeKviVMi4dSMwDq73rR77KNihkYP5tvjLW4zFPNVKOr566ycDqZ420ifOtzhVigZKKrbgnfMfxaUn
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Nov 2019 06:06:10.7419 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: cf48439f-2e49-4b22-70b1-08d75e9197fb
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR0201MB3551
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_230615_481372_F68C6A48 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.87 listed in list.dnswl.org]
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

Add support to read Clock Phase Delays from the DT and set it via
clk_set_phase() API from clock framework. Some of the controllers might
have their own handling of setting clock delays, for this keep the
set_clk_delays as function pointer which can be assigned controller
specific handling of the same.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
 drivers/mmc/host/sdhci-of-arasan.c | 92 ++++++++++++++++++++++++++++++
 1 file changed, 92 insertions(+)

diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index b75ba780f902..9452ae01f6fa 100644
--- a/drivers/mmc/host/sdhci-of-arasan.c
+++ b/drivers/mmc/host/sdhci-of-arasan.c
@@ -77,12 +77,18 @@ struct sdhci_arasan_soc_ctl_map {
  * @sdcardclk:		Pointer to normal 'struct clock' for sdcardclk_hw.
  * @sampleclk_hw:	Struct for the clock we might provide to a PHY.
  * @sampleclk:		Pointer to normal 'struct clock' for sampleclk_hw.
+ * @clk_phase_in:	Array of Input Clock Phase Delays for all speed modes
+ * @clk_phase_out:	Array of Output Clock Phase Delays for all speed modes
+ * @set_clk_delays:	Function pointer for setting Clock Delays
  */
 struct sdhci_arasan_clk_data {
 	struct clk_hw	sdcardclk_hw;
 	struct clk      *sdcardclk;
 	struct clk_hw	sampleclk_hw;
 	struct clk      *sampleclk;
+	int		clk_phase_in[MMC_TIMING_MMC_HS400 + 1];
+	int		clk_phase_out[MMC_TIMING_MMC_HS400 + 1];
+	void		(*set_clk_delays)(struct sdhci_host *host);
 };
 
 /**
@@ -186,6 +192,7 @@ static void sdhci_arasan_set_clock(struct sdhci_host *host, unsigned int clock)
 {
 	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 	struct sdhci_arasan_data *sdhci_arasan = sdhci_pltfm_priv(pltfm_host);
+	struct sdhci_arasan_clk_data *clk_data = &sdhci_arasan->clk_data;
 	bool ctrl_phy = false;
 
 	if (!IS_ERR(sdhci_arasan->phy)) {
@@ -227,6 +234,10 @@ static void sdhci_arasan_set_clock(struct sdhci_host *host, unsigned int clock)
 		sdhci_arasan->is_phy_on = false;
 	}
 
+	/* Set the Input and Output Clock Phase Delays */
+	if (clk_data->set_clk_delays)
+		clk_data->set_clk_delays(host);
+
 	sdhci_set_clock(host, clock);
 
 	if (sdhci_arasan->quirks & SDHCI_ARASAN_QUIRK_CLOCK_UNSTABLE)
@@ -650,6 +661,85 @@ static void sdhci_arasan_update_baseclkfreq(struct sdhci_host *host)
 	sdhci_arasan_syscon_write(host, &soc_ctl_map->baseclkfreq, mhz);
 }
 
+static void sdhci_arasan_set_clk_delays(struct sdhci_host *host)
+{
+	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
+	struct sdhci_arasan_data *sdhci_arasan = sdhci_pltfm_priv(pltfm_host);
+	struct sdhci_arasan_clk_data *clk_data = &sdhci_arasan->clk_data;
+
+	clk_set_phase(clk_data->sampleclk,
+		      clk_data->clk_phase_in[host->timing]);
+	clk_set_phase(clk_data->sdcardclk,
+		      clk_data->clk_phase_out[host->timing]);
+}
+
+static void arasan_dt_read_clk_phase(struct device *dev,
+				     struct sdhci_arasan_clk_data *clk_data,
+				     unsigned int timing, const char *prop)
+{
+	struct device_node *np = dev->of_node;
+
+	int clk_phase[2] = {0};
+
+	/*
+	 * Read Tap Delay values from DT, if the DT does not contain the
+	 * Tap Values then use the pre-defined values.
+	 */
+	if (of_property_read_variable_u32_array(np, prop, &clk_phase[0],
+						2, 0)) {
+		dev_dbg(dev, "Using predefined clock phase for %s = %d %d\n",
+			prop, clk_data->clk_phase_in[timing],
+			clk_data->clk_phase_out[timing]);
+		return;
+	}
+
+	/* The values read are Input and Output Clock Delays in order */
+	clk_data->clk_phase_in[timing] = clk_phase[0];
+	clk_data->clk_phase_out[timing] = clk_phase[1];
+}
+
+/**
+ * arasan_dt_parse_clk_phases - Read Clock Delay values from DT
+ *
+ * Called at initialization to parse the values of Clock Delays.
+ *
+ * @dev:		Pointer to our struct device.
+ * @clk_data:		Pointer to the Clock Data structure
+ */
+static void arasan_dt_parse_clk_phases(struct device *dev,
+				       struct sdhci_arasan_clk_data *clk_data)
+{
+	/*
+	 * This has been kept as a pointer and is assigned a function here.
+	 * So that different controller variants can assign their own handling
+	 * function.
+	 */
+	clk_data->set_clk_delays = sdhci_arasan_set_clk_delays;
+
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_LEGACY,
+				 "clk-phase-legacy");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_MMC_HS,
+				 "clk-phase-mmc-hs");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_SD_HS,
+				 "clk-phase-sd-hs");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_UHS_SDR12,
+				 "clk-phase-uhs-sdr12");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_UHS_SDR25,
+				 "clk-phase-uhs-sdr25");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_UHS_SDR50,
+				 "clk-phase-uhs-sdr50");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_UHS_SDR104,
+				 "clk-phase-uhs-sdr104");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_UHS_DDR50,
+				 "clk-phase-uhs-ddr50");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_MMC_DDR52,
+				 "clk-phase-mmc-ddr52");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_MMC_HS200,
+				 "clk-phase-mmc-hs200");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_MMC_HS400,
+				 "clk-phase-mmc-hs400");
+}
+
 /**
  * sdhci_arasan_register_sdcardclk - Register the sdcardclk for a PHY to use
  *
@@ -942,6 +1032,8 @@ static int sdhci_arasan_probe(struct platform_device *pdev)
 	if (ret)
 		goto clk_disable_all;
 
+	arasan_dt_parse_clk_phases(&pdev->dev, &sdhci_arasan->clk_data);
+
 	ret = mmc_of_parse(host->mmc);
 	if (ret) {
 		if (ret != -EPROBE_DEFER)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
