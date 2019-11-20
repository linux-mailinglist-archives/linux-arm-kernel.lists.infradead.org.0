Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B43103495
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 07:50:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=juUkjxa1L3qA50nm73R9jEIoKYsH0KIagLIfB1vIxvo=; b=pQQZjeWGgQ18Ni
	3B07ufgImN9oxPo9zBnUvg/U5vkKF4ouEpo8YcQlT6Rm0wg9vgZjSL5mWmrGM2oYqZDTS5L4EoZeI
	B0+2FIUIkAFCLZv3K1D8vf2mT9k+FATrLoCo2xpsoFk4FiGl1+MlUAFXhuJGrgvYN78WvOeyJxhB0
	lbHkQYQ/E4f5vwCp+5pivaBCauAkzwc4Rtm3x1hrTS3BGwYYWA3Jrr3yCE/Mk3F9qOzw8wm/uyMWF
	6A64a8H+Z8V0RdVZ/RnwC3Z54fOx8iG2/rj88hj+vgOOaV+Q81+r9IAzeZ8owwI/nVa7SJ0MpuLVn
	fLqPLSvp/H8BX0Fe7flQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXJoi-0008QA-7U; Wed, 20 Nov 2019 06:50:20 +0000
Received: from mail-eopbgr770072.outbound.protection.outlook.com
 ([40.107.77.72] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXJmL-0006I7-AH
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 06:47:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mv0ND3iplT7Agjj7ZPN/2dtdF1Gd+dlPsEFd70Uj4NW9+9OC4yQS/sjjgFm6bC1mZvSSl/8ku5siILCtqyOy7iRB2WF7cgHP/6FfK0lgPgIMmZnzLCPNZu3q5DuF6/4OKI1IKAeD9B27Cqx37T74yajyprzHZV2w8OShYmupGDNSiblobvb3U5wcXE7/Nd7Qy2Ko6Ljr5pfesrrJdRxMRIyH9O+4+JREM7EiK7xU4o5L/00AxIIAMg8bnAfr8EgyB4cCZsmfHlbXqFfNnOHd9/7g3VmwtHj+MqStzh4urufOVmVPcu4ibK00lLsh5mtOQMJZJkuOFRMyEsKMseHALg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m5S1KA31oH+mkM7DanXAs+YE4sBunEXs4vCCSxmISw8=;
 b=UxmNnc1da6OxFbNy9JWoPwSCMjLUaWo6HOr1wuh0JqhsgoqkTywUd2nbXT9qy4ocObHo+0nWn2QDIqgfQbOmfR0/nCTqAMCIbaVJWd5mm9GNtCKOMPFl7EPZV8fQxehGxckLkL4e8OVakpb01WkqLS9nzXuUH/C/Gh2aKRtUrizGdRMGEGQFk9tydVjFmg/xHIWTrmST8azGSVKFpYp7oc7NGBRKUM/ZQkg8PSByr7rDz502GXxZn5eBEKbmEnm8i6QXrgIhkY8JXO0Nof0eJ7VwQd3i1JPc7J5SdWMJ91FO3WgKGX+0smxS0GX0fIs/JQKv+FYi7ktSaau6z0gbVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m5S1KA31oH+mkM7DanXAs+YE4sBunEXs4vCCSxmISw8=;
 b=CXO5IdzMwC/EBOB5LTJiWSiDtjUi6BU8AhmDg1h5g0K0sOa3NHqCOezhKW+qw3fDFxkjMoBUGSSh3it7vDY3677z8yWAKzZmwcWcGVYrbdPiu3w19y4CVpgHEzr8AMe9uE7AN7LvATdnORCG/dTcj3uiLjwnqpUrHsoxlXbOLB0=
Received: from BYAPR02CA0034.namprd02.prod.outlook.com (2603:10b6:a02:ee::47)
 by BN7PR02MB4113.namprd02.prod.outlook.com (2603:10b6:406:ff::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.23; Wed, 20 Nov
 2019 06:47:49 +0000
Received: from SN1NAM02FT051.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::208) by BYAPR02CA0034.outlook.office365.com
 (2603:10b6:a02:ee::47) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.29 via Frontend
 Transport; Wed, 20 Nov 2019 06:47:48 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT051.mail.protection.outlook.com (10.152.73.103) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Wed, 20 Nov 2019 06:47:48 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iXJmF-000618-KM; Tue, 19 Nov 2019 22:47:47 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iXJmA-00049o-GS; Tue, 19 Nov 2019 22:47:42 -0800
Received: from xsj-pvapsmtp01 (mail.xilinx.com [149.199.38.66] (may be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xAK6lcbT001813; 
 Tue, 19 Nov 2019 22:47:38 -0800
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iXJm5-00049F-Mr; Tue, 19 Nov 2019 22:47:38 -0800
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id EA7DA12138F; Wed, 20 Nov 2019 12:17:35 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com,
 jolly.shah@xilinx.com, rajan.vaja@xilinx.com, nava.manne@xilinx.com,
 mdf@kernel.org, manish.narani@xilinx.com
Subject: [PATCH v6 5/8] mmc: sdhci-of-arasan: Add support to set clock phase
 delays for SD
Date: Wed, 20 Nov 2019 12:17:26 +0530
Message-Id: <1574232449-13570-6-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1574232449-13570-1-git-send-email-manish.narani@xilinx.com>
References: <1574232449-13570-1-git-send-email-manish.narani@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(39860400002)(396003)(346002)(199004)(189003)(6266002)(70206006)(16586007)(42186006)(106002)(356004)(48376002)(50226002)(47776003)(36386004)(26005)(316002)(8676002)(51416003)(81156014)(81166006)(2906002)(8936002)(4326008)(50466002)(70586007)(6666004)(2616005)(476003)(486006)(426003)(11346002)(446003)(126002)(186003)(336012)(103686004)(44832011)(5660300002)(14444005)(305945005)(107886003)(76176011)(36756003)(478600001)(42866002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR02MB4113; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9a86418e-b2a8-4d8e-720c-08d76d858e5b
X-MS-TrafficTypeDiagnostic: BN7PR02MB4113:
X-Microsoft-Antispam-PRVS: <BN7PR02MB411381769256F59E1E4A3CDAC14F0@BN7PR02MB4113.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 02272225C5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: B8AGlPq9Nh+rd9SwNEinMPx7iyZvXe4ZLuT9F92Cm9+0+YDTSgvwXbhPjQA0wW0JwUAXMx0mE4oFicV7byjHncCntuaDHvUzubz17z+HIgvpZKX1zL8dHRuSu/skKAGhVJ0i0x1qMX4YUIqTLqi9JgytoqXDenCk16GWjZgyY2N964FJdWA86IIWOx4yP8JPGLI73zCy3T/xm8pZqkOTWtxR7neSUwgQ0AKbM/N8Jsy6bRyt4XPA54FpaZKVz+IM5Qa/MbGPrpVgwe/B25k8nLELarC4nEUzP0dibZA6Qu3UX/DsHtrkMxR3qawYEVvH8Z4fu+Bqv+MGesSSlrhNUtSPLCpDGDx4WGDqpXC/OV2UxTuig0AIiI26WEk2s+oSg8h7PX2UB8XLrHlYSdJ1ZqDR66f8dTjE20QKkxUBmWDWxuvdY3hoB39muK0Ptkl5
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2019 06:47:48.0918 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a86418e-b2a8-4d8e-720c-08d76d858e5b
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR02MB4113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_224753_375999_8F6D51F1 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.72 listed in list.dnswl.org]
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
