Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08303E85C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 11:33:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0WxvziuTVjfiWdeICV+fG3KtewV76ONjHcFoCy7YLzI=; b=QNV8fA4q4miMmv
	avb015xqw6VffYzH8kmUAf32aR4B37kWc7hXoyrQiMe+MJSmU3D87P0rQJoHc6RUhVw16mV5XWQiH
	lOojHbcvjqZgDmyIc25LfLn4if92m63tlmlK83Bet38+4ekqAHs3HkJXA0dtJKEkUMqWB4guvgTKd
	Ewt0cMQmCCw4j4tDJA6KKaA5hLKNYhZ9FhCd42aoKzDU2QwVdcr2Y3RM6ztMEmLQ49CZKwEJSCXG9
	RPv0rl9B9tCCSaPlJTSKv3ajfc6VM7R7NYvDQ2a5GXunt5+Ia38NU1XRSwPeWYaY+QLV5rM0teM7T
	/e0Cj4IdpZu9qEvHJ/SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPOoS-0001SI-Is; Tue, 29 Oct 2019 10:33:20 +0000
Received: from mail-eopbgr720067.outbound.protection.outlook.com
 ([40.107.72.67] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPOmJ-00085z-Sc
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 10:31:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ftK7Rsr9FfbDm847vpTY1r/8F/N9R1eYXxWB8Ok47kxpYX5Mko7uZkcfUfq0ONBf3g2LJfRoeTGP3q9mNbL9Elimyw4bYsBKZu6cDFPT5PoQmXzJqdN4+S+zuiKagLubtS2G9VgPrxlSXhF1bApf34x64L58n/1qWS7KF4nLF6Y4ffrjR+/85jFiKj808ykxbOY+K07uXaKEqUs/PytBRNyM+JJRvi2ytXIPvRuxZMk5zjnTa11sXhg2XDVK1qa/AlWDkr22cGlFK0uKDh7dpaZ6TaNIQyKZ+b8ngQHVMySACSyE6W6X5CVX9Stb83AvSn1LUCwDRx/Xdye4Qzc1fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4Jpv8x0Gj1iN24hL3z141clTVaNWOvhUUIFpm6OnhNI=;
 b=Y+RmZ+4Dd5G9vesN9kKAXohFe9cixUFSbjzce2QShZO90kHA8ttN9iv1RibffQELCiN97CbgfD75lP66hQBw8vJH5djzcbte9/enWLzexs1NIQG4KhQ32f4VRZU6YQ1avOXXenuMoRSziCd89OXS/ehS82azI0FuClRtXaV5JezanRx9zLo2dJDIFW/jt03tGCM+yIhhHvWtmD2mTt60vGzTF3Cwfya5doWijdp6oURtW4Xej9dTXSWDQ3Jubr3DCmLi63ouyprpXedNwA0arSFLawaUiDajL/Shdb2kk/5N3HlM77oZlE31PHpnyMGdQwyFu9Vb3d8v+d8i4lmxXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=arm.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4Jpv8x0Gj1iN24hL3z141clTVaNWOvhUUIFpm6OnhNI=;
 b=a6QQhsu5Y+YHgyJ00uEAclnDQNqNhCbvhiUGCsn1PTr2xVDLM2e1mwPkDrh1Gx255zWXL8dc/zvvIf79rRwSdY9JfIKiXIKbqkkTl4m01Eo1PiIxNYUpWvF80jmPO/bmcEGqdLrLF/hDjxkUAktYtRwnTf1PrmySemrKnyJ062g=
Received: from CY4PR02CA0003.namprd02.prod.outlook.com (2603:10b6:903:18::13)
 by MWHPR02MB2622.namprd02.prod.outlook.com (2603:10b6:300:46::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2387.23; Tue, 29 Oct
 2019 10:31:03 +0000
Received: from SN1NAM02FT063.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::206) by CY4PR02CA0003.outlook.office365.com
 (2603:10b6:903:18::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2387.22 via Frontend
 Transport; Tue, 29 Oct 2019 10:31:03 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT063.mail.protection.outlook.com (10.152.72.213) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2367.14
 via Frontend Transport; Tue, 29 Oct 2019 10:31:02 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iPOmD-0002u2-TS; Tue, 29 Oct 2019 03:31:01 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iPOm8-0005qH-O0; Tue, 29 Oct 2019 03:30:56 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iPOlx-0005kc-5e; Tue, 29 Oct 2019 03:30:45 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 73EC71217EB; Tue, 29 Oct 2019 16:00:44 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com, jolly.shah@xilinx.com,
 nava.manne@xilinx.com, rajan.vaja@xilinx.com, manish.narani@xilinx.com
Subject: [PATCH v4 5/8] mmc: sdhci-of-arasan: Add support to set clock phase
 delays for SD
Date: Tue, 29 Oct 2019 16:00:39 +0530
Message-Id: <1572345042-101207-5-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1572345042-101207-1-git-send-email-manish.narani@xilinx.com>
References: <1572345042-101207-1-git-send-email-manish.narani@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(396003)(136003)(199004)(189003)(356004)(70586007)(476003)(76176011)(48376002)(51416003)(50226002)(50466002)(36756003)(486006)(2616005)(336012)(11346002)(126002)(26005)(6666004)(107886003)(70206006)(186003)(5660300002)(446003)(14444005)(305945005)(36386004)(44832011)(2906002)(81156014)(316002)(8936002)(81166006)(16586007)(4326008)(8676002)(42186006)(6266002)(47776003)(103686004)(426003)(106002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR02MB2622; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 801ee0b6-2f14-4fcc-0644-08d75c5b18da
X-MS-TrafficTypeDiagnostic: MWHPR02MB2622:
X-Microsoft-Antispam-PRVS: <MWHPR02MB2622A2B715A9624E8A03DD09C1610@MWHPR02MB2622.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0205EDCD76
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yowUzrDYA/Vie5hcwmweBMK3kpZlj/+tOuk+7Eh6qcBiw426VPqua/rAebMlVhDXjZMmxr3ht/605IJYKdQRuQr8XCxMW59JZROwXQX1a2IK+r3ArDC7sjjQa3nfU/gwvfHiT9WYB8t/PSm5aASk80nHNEnGBzsFgQBKqxEr/HT5goxLJGNnWJTsU5X8+d0Yl3s74TJ1pdYRVNfRqErwmYWp4io9yFvHuFPV7qSvXsiZCKgnt/72M6mfQovUe9sxqm6lRS/4D6BgWN1zq0s4wQn4/hmJCkjJ0HzW1fET0xVdVVvZDgV7nJacvI1M7/iuC8+p2zIz70NAxDobA1PrSWPHIVaOVklmcLRJYp2dapl1kckm6gdjXzEaD0cI0HeQX4SOw6RYKqqDkUIDsU5+BCWE9i7AGa9rNA79b2IATVKq4u3gEpRcmQOfx2xBiyip
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2019 10:31:02.3434 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 801ee0b6-2f14-4fcc-0644-08d75c5b18da
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB2622
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_033107_993892_15E5CA35 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.72.67 listed in list.dnswl.org]
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
 drivers/mmc/host/sdhci-of-arasan.c | 91 ++++++++++++++++++++++++++++++
 1 file changed, 91 insertions(+)

diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index b75ba780f902..18eb6cffd269 100644
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
@@ -650,6 +661,84 @@ static void sdhci_arasan_update_baseclkfreq(struct sdhci_host *host)
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
+				 "arasan-clk-phase-legacy");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_MMC_HS,
+				 "arasan-clk-phase-mmc-hs");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_SD_HS,
+				 "arasan-clk-phase-sd-hs");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_UHS_SDR12,
+				 "arasan-clk-phase-uhs-sdr12");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_UHS_SDR25,
+				 "arasan-clk-phase-uhs-sdr25");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_UHS_SDR50,
+				 "arasan-clk-phase-uhs-sdr50");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_UHS_SDR104,
+				 "arasan-clk-phase-uhs-sdr104");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_UHS_DDR50,
+				 "arasan-clk-phase-uhs-ddr50");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_MMC_DDR52,
+				 "arasan-clk-phase-mmc-ddr52");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_MMC_HS200,
+				 "arasan-clk-phase-mmc-hs200");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_MMC_HS400,
+				 "arasan-clk-phase-mmc-hs400");
+}
+
 /**
  * sdhci_arasan_register_sdcardclk - Register the sdcardclk for a PHY to use
  *
@@ -942,6 +1031,8 @@ static int sdhci_arasan_probe(struct platform_device *pdev)
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
