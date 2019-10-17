Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDC9DA591
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 08:25:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yD+VYaIXz57e1+E0gLE/XJgZqQo5xcOIRUf19A+Fh80=; b=CcwPH18RYPRBtj
	/0vXUUI6LqNj0jyJ9BC1VeD5Q9P0FQ5BVVRvsM4IFlHub/9wlKt/Ss/Sj78bEgKtD2j0B7KGOeSpM
	4p2vZQWSNT7vv0Y7RNMI708V9c9r9a4LGSu9cwSdn8CdTPSfhHKbFvVA777WZRlzIsA2nibgNcOgd
	RlQ/KBwo/umXJF0TJSQUU+n/CWmrVF8ki9dRlEazE3HBo5Pb3EWnSBnW3qeSeJkC6ByrBp+SxS+HO
	DWdrY/xxxz1k7sd5BfPPH6q9KV84onrbKkauhijUk0cwogCikUhHRRGK5OV7j+U0RrgVQLSnWuMAi
	oQm20+pGS1HTkiv2xlNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKzDO-00061N-RC; Thu, 17 Oct 2019 06:24:50 +0000
Received: from mail-eopbgr690082.outbound.protection.outlook.com
 ([40.107.69.82] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKzAx-0004Gj-AS
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 06:22:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TiV0Mc3BadiENrREs27Kr7JaSlMAXJyAPI/bXM8z9dsKeW6aWJAuFoyRFVJFuZ+4vsHap1Vd7NWIkT/2eNMf5gOXO8I9ZH1uhwCPirKVFGqp8sJ/Nt9qBgIeatdrRAGc+A8Bj98f1v2KUj+CX3u4M4I0xp3sQf4pnPrRmNmG6ZD81+m/ipcUAIoT4O/CJMXg/7iA2LKHY15teuY8VQtJ79p2gIR9C5S+TEdy8U2YwXiRd2fmr+wMxD3iAg3ZVzYT3f+X28m1WyCpj6VvR8XBLaH2l9aaWeWDJd3vr3xUAtJvHx6I/0oFqkDfJNioaZngAyO+OYhTqUJ55/OsvHJ42A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8qDw/n6pYbuVj7aNkz/HCp/vJho35whuwLxPQziceMA=;
 b=fi39lm9vhQmJm5earmIVAbL6xGmKdSsdFqGcSWLWXAziVmrvrabaR/H8cZcQhoTwAoxNZ/k2oEBlDR5hv7UPKLcfBrZqvVlVdOg3w7pLWD9b1s4shAnjBU+aXY9o2n0VEJeZUEBKIw4s/3M1cdWXc70K99Lm2k4qS9X17Ci/C0yfyFFi9w3KbeLJjY+nvlY479jCB7qESd6ajFFMHpRfQnI4vEECjYSRU5O1AV14MEnKncHXqv2uTul4dE1ORHxfURpMmD3GByJg+s495ASHa6Oxf8ZZ137nDFN+KB6nrQFNHwBKucr+ZCM3GdIjliiD4+HnlXgXiu1FjoqEoO3F7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=arm.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8qDw/n6pYbuVj7aNkz/HCp/vJho35whuwLxPQziceMA=;
 b=dNA1nOe1nu+zrzCjYFvC3G78rCxDvazGuIRgjcL+tEM8GLifHQEHWJc6khT6iGKUUge6YD37DdDVTPm1JoMI71QtCN1+AKNpmqCKdfqzcwCkb5ZQR7S5mb0pcAcMLRb1+TqG6p2Z8SDuC62W+LafRVJ5ICn7IDiFileavP1Nmtc=
Received: from BN6PR02CA0037.namprd02.prod.outlook.com (2603:10b6:404:5f::23)
 by DM5PR02MB2860.namprd02.prod.outlook.com (2603:10b6:3:113::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.18; Thu, 17 Oct
 2019 06:22:15 +0000
Received: from CY1NAM02FT013.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::207) by BN6PR02CA0037.outlook.office365.com
 (2603:10b6:404:5f::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16 via Frontend
 Transport; Thu, 17 Oct 2019 06:22:15 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT013.mail.protection.outlook.com (10.152.75.162) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2367.14
 via Frontend Transport; Thu, 17 Oct 2019 06:22:14 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iKzAs-0004bV-C5; Wed, 16 Oct 2019 23:22:14 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iKzAn-0003mX-8e; Wed, 16 Oct 2019 23:22:09 -0700
Received: from [172.23.64.104] (helo=xhdvnc123.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iKzAd-0003fw-TR; Wed, 16 Oct 2019 23:22:00 -0700
Received: by xhdvnc123.xilinx.com (Postfix, from userid 16987)
 id 22F5E43A9C; Thu, 17 Oct 2019 11:51:59 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com, jolly.shah@xilinx.com,
 rajan.vaja@xilinx.com, nava.manne@xilinx.com, mdf@kernel.org,
 manish.narani@xilinx.com
Subject: [PATCH v3 5/8] mmc: sdhci-of-arasan: Add support to set clock phase
 delays for SD
Date: Thu, 17 Oct 2019 11:51:47 +0530
Message-Id: <1571293310-92563-6-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1571293310-92563-1-git-send-email-manish.narani@xilinx.com>
References: <1571293310-92563-1-git-send-email-manish.narani@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(136003)(346002)(396003)(189003)(199004)(2616005)(26005)(70206006)(476003)(126002)(81166006)(106002)(486006)(50226002)(426003)(5660300002)(8936002)(48376002)(16586007)(8676002)(478600001)(81156014)(44832011)(336012)(70586007)(186003)(305945005)(51416003)(446003)(11346002)(76176011)(14444005)(6666004)(4326008)(36386004)(36756003)(356004)(103686004)(50466002)(2906002)(6266002)(107886003)(47776003)(316002)(42186006)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR02MB2860; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 947197bb-cc99-48c5-1c0b-08d752ca5a76
X-MS-TrafficTypeDiagnostic: DM5PR02MB2860:
X-Microsoft-Antispam-PRVS: <DM5PR02MB2860060DEE930935630FA3CEC16D0@DM5PR02MB2860.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 01930B2BA8
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: a7dOOgmQWzoZOFmQEG2yGOBHxepaK+yjVf7sA7Sr9Lw3TGurUObzhX+dJyBnj7ZbUqLbZCzrpE+L8iBDgK5/hwdE85Ix6JJl8OvjYdk2GDyGZBQ7k2FZRnPLhuu35jHFbfSmvTxsl8dvOrhY6B8goJkNkt+9I1t/pshemTvifK56N5AcVvtFKyvbuY/HJnJ/TCzscy2vHQIqfngUVazu2BKHyliU0WIDsTzIJ+D73qblczCkazYtXRHqPq+hNBa68IRNcEbk7Jnn16LsCZ+0VdTlwte/q6zaA7jHTvyklJd+deVETd+mI87flj9Ar+Cbr2oL7ulunMcl5TiaOVESIP1hxbDWdtyalT/yYv9vYzLTzmBa6JUUE798lmAFFI0VXgWv8hTGfFglTNUO2Le4HkvQ+pFP6KxNzbcNKOJFqoY=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2019 06:22:14.8854 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 947197bb-cc99-48c5-1c0b-08d752ca5a76
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB2860
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_232219_817142_EF9448FC 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.82 listed in list.dnswl.org]
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
index f77f884f44a4..9b2b7b6399b3 100644
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
