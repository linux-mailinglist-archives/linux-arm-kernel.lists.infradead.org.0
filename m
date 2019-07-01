Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1995B437
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 07:34:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JPSBsEtTXNzJN3Z4mczYcpX/Aj6hi/TTN1QlrdKssbA=; b=dbbFZ1FnM0mBOx
	pLkuUCK1Bfcm21APKw3ZGD3/Ce9hdfqNEm+HSG/PjSpoli5d7ad5OL6b/CiHzOFjgmMK7BKCNB6eF
	0GCqQEV8VnHGqWFuggL/BIWxafrWv9ucTnIBuZtVgtkcQoeihnpRpss37ob0rwM4EwOzlk6ZGZT1+
	Lq09zIv0hX8Jv4VaIDLGMoC3F5RplpZsRA7ZMJms1aCF8UCMQxYETjmHOS91duqLCH5auOg4tEexw
	lUiKSxDrFkIvrWcr9gMkAMsgC8w4qa0iDjHKxS6P1okpPmGB42/WXG1G1IV5SUcuB0akQt4Z1Bpnu
	51sEKzGnns2xZ5A1bfOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhoxX-0002FQ-JH; Mon, 01 Jul 2019 05:34:35 +0000
Received: from mail-eopbgr810088.outbound.protection.outlook.com
 ([40.107.81.88] helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhotL-0007LJ-85; Mon, 01 Jul 2019 05:30:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SFHTLeHuK318EaTUgjBJUU/s3/x/ymnBh8YX7NBuHlc=;
 b=n8aVhIPoxdaiBWKDTabPY6as6Q9O1RxwnlZ48ie+mVvlDr0MfRVaztuYNuyQm9FqtM9rdyYFFr1IKZA1LYDH9EKZwnpIO0LlzwSQ7ZtO633jabzyvpcYr4NmglhnPrunww1pMxFbzfYfpvKdUU25ytHd077RmbW+5KnkIPfAMhA=
Received: from SN4PR0201CA0015.namprd02.prod.outlook.com
 (2603:10b6:803:2b::25) by BYAPR02MB5238.namprd02.prod.outlook.com
 (2603:10b6:a03:68::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2032.20; Mon, 1 Jul
 2019 05:30:07 +0000
Received: from BL2NAM02FT055.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::206) by SN4PR0201CA0015.outlook.office365.com
 (2603:10b6:803:2b::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2032.20 via Frontend
 Transport; Mon, 1 Jul 2019 05:30:07 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
 BL2NAM02FT055.mail.protection.outlook.com (10.152.77.126) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2032.15
 via Frontend Transport; Mon, 1 Jul 2019 05:30:06 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:35925
 helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1hhotC-0006Tf-1G; Sun, 30 Jun 2019 22:30:06 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1hhot6-0003EO-To; Sun, 30 Jun 2019 22:30:00 -0700
Received: from xsj-pvapsmtp01 (smtp3.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x615Tu2M008188; 
 Sun, 30 Jun 2019 22:29:56 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1hhot2-0003Cb-4O; Sun, 30 Jun 2019 22:29:56 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 53D1D12174C; Mon,  1 Jul 2019 10:59:54 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 heiko@sntech.de, michal.simek@xilinx.com, adrian.hunter@intel.com,
 christoph.muellner@theobroma-systems.com,
 philipp.tomsich@theobroma-systems.com, viresh.kumar@linaro.org,
 scott.branden@broadcom.com, ayaka@soulik.info, kernel@esmil.dk,
 tony.xie@rock-chips.com, rajan.vaja@xilinx.com, jolly.shah@xilinx.com,
 nava.manne@xilinx.com, mdf@kernel.org, manish.narani@xilinx.com,
 olof@lixom.net
Subject: [PATCH v2 08/11] mmc: sdhci-of-arasan: Add support to set clock phase
 delays for SD
Date: Mon,  1 Jul 2019 10:59:48 +0530
Message-Id: <1561958991-21935-9-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
References: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(39860400002)(136003)(396003)(2980300002)(189003)(199004)(8676002)(186003)(2906002)(14444005)(336012)(70586007)(356004)(52956003)(70206006)(44832011)(50466002)(36386004)(486006)(48376002)(81156014)(11346002)(47776003)(305945005)(4326008)(16586007)(81166006)(446003)(103686004)(6266002)(26005)(6666004)(2616005)(36756003)(7416002)(63266004)(426003)(476003)(5660300002)(126002)(478600001)(8936002)(72206003)(42186006)(316002)(50226002)(106002)(76176011)(51416003)(921003)(1121003)(5001870100001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB5238; H:xsj-pvapsmtpgw02; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-100.xilinx.com,xapps1.xilinx.com; MX:1; A:1;
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 556ee824-2d45-44f8-e92e-08d6fde52d49
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:BYAPR02MB5238; 
X-MS-TrafficTypeDiagnostic: BYAPR02MB5238:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <BYAPR02MB52388A978CB4284290DEA17BC1F90@BYAPR02MB5238.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 00851CA28B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 3ownFba+ATxmANaOZ1BIg51Z9KnyWqxyv77/HUWXaqD8zvmtyXZvlcMSX74WKVgD4cRv8uhF6xFqI2s8w/5EKIWVDyUJhbzSCuvDPWNH5FkTUjH1V5sM8kdHxpklGrqzaKyF3C1AShcSVCqweudex8idho5y1rLgxN6le8QGno/Ts7tqSUERcDHmz+nVRMVg803KHxL33U3Yve2BJbHKG8CXb1jbuOGsbNG88HJaINq/3P7BjYmhZplyooC9E8OozWUQlKdZAqO3JYD/7yKF4sNuo00jOsd311TcfUgUosed9cCk0EkLXcUIS6PgcM6Qp1n1wiP95Nw28G2u6k8VNTTzAm+4UPQiGAwbhF/EtzDmlnmFePzkZKVZ4VXECK4bL+KSJmnJN1PASv1II9jGJalWtnAt6B1SzLBcUjkdVWQ=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2019 05:30:06.6288 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 556ee824-2d45-44f8-e92e-08d6fde52d49
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.100];
 Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5238
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_223015_328819_29DDDAD1 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.81.88 listed in list.dnswl.org]
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

Add support to read Clock Phase Delays from the DT and set it via
clk_set_phase() API from clock framework. Some of the controllers might
have their own handling of setting clock delays, for this keep the
set_clk_delays as function pointer which can be assigned controller
specific handling of the same.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
 drivers/mmc/host/sdhci-of-arasan.c | 91 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 91 insertions(+)

diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index 9513813..a545221 100644
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
@@ -180,6 +186,7 @@ static void sdhci_arasan_set_clock(struct sdhci_host *host, unsigned int clock)
 {
 	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 	struct sdhci_arasan_data *sdhci_arasan = sdhci_pltfm_priv(pltfm_host);
+	struct sdhci_arasan_clk_data *clk_data = &sdhci_arasan->clk_data;
 	bool ctrl_phy = false;
 
 	if (!IS_ERR(sdhci_arasan->phy)) {
@@ -221,6 +228,10 @@ static void sdhci_arasan_set_clock(struct sdhci_host *host, unsigned int clock)
 		sdhci_arasan->is_phy_on = false;
 	}
 
+	/* Set the Input and Output Clock Phase Delays */
+	if (clk_data->set_clk_delays)
+		clk_data->set_clk_delays(host);
+
 	sdhci_set_clock(host, clock);
 
 	if (sdhci_arasan->quirks & SDHCI_ARASAN_QUIRK_CLOCK_UNSTABLE)
@@ -635,6 +646,84 @@ static void sdhci_arasan_update_baseclkfreq(struct sdhci_host *host)
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
+	    2, 0)) {
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
+				      struct sdhci_arasan_clk_data *clk_data)
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
@@ -923,6 +1012,8 @@ static int sdhci_arasan_probe(struct platform_device *pdev)
 	if (ret)
 		goto unreg_clk;
 
+	arasan_dt_parse_clk_phases(&pdev->dev, &sdhci_arasan->clk_data);
+
 	ret = mmc_of_parse(host->mmc);
 	if (ret) {
 		if (ret != -EPROBE_DEFER)
-- 
2.1.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
