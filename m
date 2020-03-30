Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA9E197403
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 07:43:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=68NYgeMcnvidMfuXt88ScixXFmykk3rLu/wv7QiSNtU=; b=T4/YG4l2v7cp8T
	02C1aG/yVkrV/2BEmy7uOmKvYF0OGuPCXW49rkRzKRc6R/TPVdpxqJkw6fCKxCDw0fCEOBOt0FedD
	o+qCExXFW9MwWFvBS0a3iuSCbiiN/mCB1I0TBWeu29GFP29YRL0wMzuevJcXYL359onFjkqS+Eopc
	Zzb4waWreJG5egzs9MwQ9BRxu9uwVIeBfeU3pgkCIbGp88gUg478pyN4SFufm88ErZOzm1NdlZ5Ai
	UtR7ZP+h/prsCXEdOefis/uwRMruk9g4Vg8jvkyW1Qtp0kuXNYgq+USO39iHubE400fqpfL9JjiWr
	qHK95VZrF3IUp9MiSQTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jInCJ-0003AE-GF; Mon, 30 Mar 2020 05:42:55 +0000
Received: from mail-dm6nam10on20609.outbound.protection.outlook.com
 ([2a01:111:f400:7e88::609]
 helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jInBj-0002q2-6G
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 05:42:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lSm9CZaRYqAkgoVrvXS1075Yi3tnbxGcLqyGrD1mszkUm7CJE8qSlBa6MRhmq04Ufvwk+XgLHJptfe2G+PXH+Jzlm77dGvtVs790fbTQlTuHZK9zcQHEC1ZM8UD14K0lYU5GHbu41RCOLqhPuroxoRTqvsCFqpMbVXaOsByKby6jmXN38LnqztclJGE5HNpsqYdOB+j/c13F9khEDZgk5ID3LsJlvh7+MeH9y6XIHBRP9x7tZhSlr4d1+nKBMUzhWxeCf1qf1fDFBTVLg0Ek7CVrbG70HeKKoXRKIBV2ebagP2ozHMDXjfyMkFfT4QrvzKYoIPMZxB8f6lmdyrr9WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U+416JeHB2eRa4cs4oxKhn+9DSK+mmAXoyRh/2WOKRQ=;
 b=mXZCtjn2bLExK2v3siPImyWrDhFycYzYDtbjcEzvA12LCOtneF6zizpsgdzcZWmKzFQ8k74kdxhhQKGZga/Mmi5DFKhENz8KczFtFH7ki9EKel8P73IemR5K0XFltjoNwrRAx9jjPCLIyXiWfxgsu/InxGBPLwxektTBXcRktaVDg5FiH9DjpwphuL71GDyTSvAg/SurOrpHnXCTi0SZyRapbqLhS46ugR+ukbyQIUvteyMph9YwzfOq0Blei2iiovjMGA9fmB/gRbPora8e8GJOfCtUNpwD9J0Cl/bljVPUAaLPY0hkTcCuvOwV9KLuOFGPAhf3ubMQo+VRmAVPWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=arm.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U+416JeHB2eRa4cs4oxKhn+9DSK+mmAXoyRh/2WOKRQ=;
 b=PMVaPNkxy+gYHRoegDjs+1rumLJW2GWltqQruI/4A6ukYZxQgo25wLk3OlRx0bXeg7A+PzKfiUias7PC5sZpuOkc5lHw3h5SeHPqHDVx0N8L8mdvwrWf3OtbyLVUG3AWEr5/QnQwxS1mHWdvIHqmClaqh2mzUIPwLlK2MeQQjrw=
Received: from SN2PR01CA0042.prod.exchangelabs.com (2603:10b6:804:2::52) by
 BL0PR02MB4803.namprd02.prod.outlook.com (2603:10b6:208:5d::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.19; Mon, 30 Mar 2020 05:42:09 +0000
Received: from SN1NAM02FT020.eop-nam02.prod.protection.outlook.com
 (2603:10b6:804:2:cafe::db) by SN2PR01CA0042.outlook.office365.com
 (2603:10b6:804:2::52) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20 via Frontend
 Transport; Mon, 30 Mar 2020 05:42:09 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT020.mail.protection.outlook.com (10.152.72.139) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2856.17
 via Frontend Transport; Mon, 30 Mar 2020 05:42:09 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1jInBZ-0005hN-0J; Sun, 29 Mar 2020 22:42:09 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1jInBT-0003Mh-T5; Sun, 29 Mar 2020 22:42:03 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1jInBS-0003Ll-J6; Sun, 29 Mar 2020 22:42:03 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id EEB761212BD; Mon, 30 Mar 2020 11:11:25 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com
Subject: [PATCH v2 3/4] mmc: sdhci-of-arasan: Modify clock operations handling
Date: Mon, 30 Mar 2020 11:11:18 +0530
Message-Id: <1585546879-91037-4-git-send-email-manish.narani@xilinx.com>
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
 SFS:(10009020)(4636009)(396003)(376002)(39850400004)(346002)(136003)(46966005)(44832011)(81156014)(6666004)(2616005)(81166006)(426003)(478600001)(8936002)(356004)(107886003)(6266002)(186003)(8676002)(26005)(336012)(47076004)(36756003)(82740400003)(316002)(70586007)(70206006)(5660300002)(4326008)(42186006)(2906002)(6636002);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d36d68f8-348a-4463-75ce-08d7d46d16d2
X-MS-TrafficTypeDiagnostic: BL0PR02MB4803:
X-Microsoft-Antispam-PRVS: <BL0PR02MB4803F5181E65DC516D40875CC1CB0@BL0PR02MB4803.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-Forefront-PRVS: 0358535363
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MkYA58iijx6F3PoiG8hOC5XG9k/qcWJ+JBk828CBaoFyLUptiz/DrlDYWz1EBv0glGvjzKGwIbbeIUDvH39A0Ks53TytKHUqTV4bAYelmfz+YXYTx0NLBvoCKW4cWdV0qEuBgC8xghq7B6dEjolulfGaE7yiE5wVQnDJ7fAg5LCRH7kNht/IkYQctns6eiPOtQmubQYO7hjgDdjdvmNoJck2Su1xecl8OQU7jLjvLVd2mCshWhKT34yV2DoM2bixQ3Vj29b9CilaXLAtnJq4bHx3Na/1zfA/ZENfkLMPpdoex5Lo9OTTi4i/7jrOKeVxer796kcKCcMwemtBbf+zSfsNniUn3BIhmDAjwSZJ9LogpBn9QzhAfar6oIClVlnqG0RvnFQhNRX54B6unrlCh+QXsX3M0fCrwSj0nHq76ONwBNMRiZFapNahq7iWjOyo09iahkpFbHrJRLoAVwb3s+8AIoQ9hT+MQpztW8QuGV8SkAZXWOB6qLhyZi66fJNYpltWAdu6rSw+9pHfcJtZDQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2020 05:42:09.3800 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d36d68f8-348a-4463-75ce-08d7d46d16d2
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB4803
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_224219_296449_4E27C288 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

The SDHCI clock operations are platform specific. So it better to define
them separately for particular platform. This will prevent multiple
if..else conditions and will make it easy for user to add their own
clock operations handlers.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
 drivers/mmc/host/sdhci-of-arasan.c | 208 +++++++++++++++++------------
 1 file changed, 119 insertions(+), 89 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index 34403b2cac97..89dbd1e9a830 100644
--- a/drivers/mmc/host/sdhci-of-arasan.c
+++ b/drivers/mmc/host/sdhci-of-arasan.c
@@ -87,6 +87,17 @@ struct sdhci_arasan_soc_ctl_map {
 	bool					hiword_update;
 };
 
+/**
+ * struct sdhci_arasan_clk_ops - Clock Operations for Arasan SD controller
+ *
+ * @sdcardclk_ops:	The output clock related operations
+ * @sampleclk_ops:	The sample clock related operations
+ */
+struct sdhci_arasan_clk_ops {
+	const struct clk_ops *sdcardclk_ops;
+	const struct clk_ops *sampleclk_ops;
+};
+
 /**
  * struct sdhci_arasan_clk_data
  * @sdcardclk_hw:	Struct for the clock we might provide to a PHY.
@@ -120,6 +131,7 @@ struct sdhci_arasan_zynqmp_clk_data {
  * @phy:		Pointer to the generic phy
  * @is_phy_on:		True if the PHY is on; false if not.
  * @clk_data:		Struct for the Arasan Controller Clock Data.
+ * @clk_ops:		Struct for the Arasan Controller Clock Operations.
  * @soc_ctl_base:	Pointer to regmap for syscon for soc_ctl registers.
  * @soc_ctl_map:	Map to get offsets into soc_ctl registers.
  */
@@ -131,6 +143,7 @@ struct sdhci_arasan_data {
 
 	bool		has_cqe;
 	struct sdhci_arasan_clk_data clk_data;
+	const struct sdhci_arasan_clk_ops *clk_ops;
 
 	struct regmap	*soc_ctl_base;
 	const struct sdhci_arasan_soc_ctl_map *soc_ctl_map;
@@ -146,6 +159,7 @@ struct sdhci_arasan_data {
 struct sdhci_arasan_of_data {
 	const struct sdhci_arasan_soc_ctl_map *soc_ctl_map;
 	const struct sdhci_pltfm_data *pdata;
+	const struct sdhci_arasan_clk_ops *clk_ops;
 };
 
 static const struct sdhci_arasan_soc_ctl_map rk3399_soc_ctl_map = {
@@ -357,29 +371,6 @@ static const struct sdhci_ops sdhci_arasan_ops = {
 	.set_power = sdhci_arasan_set_power,
 };
 
-static const struct sdhci_pltfm_data sdhci_arasan_pdata = {
-	.ops = &sdhci_arasan_ops,
-	.quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN,
-	.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
-			SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN |
-			SDHCI_QUIRK2_STOP_WITH_TC,
-};
-
-static struct sdhci_arasan_of_data sdhci_arasan_data = {
-	.pdata = &sdhci_arasan_pdata,
-};
-
-static const struct sdhci_pltfm_data sdhci_arasan_zynqmp_pdata = {
-	.ops = &sdhci_arasan_ops,
-	.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
-			SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN |
-			SDHCI_QUIRK2_STOP_WITH_TC,
-};
-
-static struct sdhci_arasan_of_data sdhci_arasan_zynqmp_data = {
-	.pdata = &sdhci_arasan_zynqmp_pdata,
-};
-
 static u32 sdhci_arasan_cqhci_irq(struct sdhci_host *host, u32 intmask)
 {
 	int cmd_error = 0;
@@ -436,21 +427,6 @@ static const struct sdhci_pltfm_data sdhci_arasan_cqe_pdata = {
 			SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
 };
 
-static struct sdhci_arasan_of_data sdhci_arasan_rk3399_data = {
-	.soc_ctl_map = &rk3399_soc_ctl_map,
-	.pdata = &sdhci_arasan_cqe_pdata,
-};
-
-static struct sdhci_arasan_of_data intel_lgm_emmc_data = {
-	.soc_ctl_map = &intel_lgm_emmc_soc_ctl_map,
-	.pdata = &sdhci_arasan_cqe_pdata,
-};
-
-static struct sdhci_arasan_of_data intel_lgm_sdxc_data = {
-	.soc_ctl_map = &intel_lgm_sdxc_soc_ctl_map,
-	.pdata = &sdhci_arasan_cqe_pdata,
-};
-
 #ifdef CONFIG_PM_SLEEP
 /**
  * sdhci_arasan_suspend - Suspend method for the driver
@@ -546,45 +522,6 @@ static int sdhci_arasan_resume(struct device *dev)
 static SIMPLE_DEV_PM_OPS(sdhci_arasan_dev_pm_ops, sdhci_arasan_suspend,
 			 sdhci_arasan_resume);
 
-static const struct of_device_id sdhci_arasan_of_match[] = {
-	/* SoC-specific compatible strings w/ soc_ctl_map */
-	{
-		.compatible = "rockchip,rk3399-sdhci-5.1",
-		.data = &sdhci_arasan_rk3399_data,
-	},
-	{
-		.compatible = "intel,lgm-sdhci-5.1-emmc",
-		.data = &intel_lgm_emmc_data,
-	},
-	{
-		.compatible = "intel,lgm-sdhci-5.1-sdxc",
-		.data = &intel_lgm_sdxc_data,
-	},
-	/* Generic compatible below here */
-	{
-		.compatible = "arasan,sdhci-8.9a",
-		.data = &sdhci_arasan_data,
-	},
-	{
-		.compatible = "arasan,sdhci-5.1",
-		.data = &sdhci_arasan_data,
-	},
-	{
-		.compatible = "arasan,sdhci-4.9a",
-		.data = &sdhci_arasan_data,
-	},
-	{
-		.compatible = "xlnx,zynqmp-8.9a",
-		.data = &sdhci_arasan_zynqmp_data,
-	},
-	{
-		.compatible = "xlnx,versal-8.9a",
-		.data = &sdhci_arasan_zynqmp_data,
-	},
-	{ /* sentinel */ }
-};
-MODULE_DEVICE_TABLE(of, sdhci_arasan_of_match);
-
 /**
  * sdhci_arasan_sdcardclk_recalc_rate - Return the card clock rate
  *
@@ -1160,6 +1097,108 @@ static void arasan_dt_parse_clk_phases(struct device *dev,
 				 "clk-phase-mmc-hs400");
 }
 
+static const struct sdhci_pltfm_data sdhci_arasan_pdata = {
+	.ops = &sdhci_arasan_ops,
+	.quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN,
+	.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
+			SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN |
+			SDHCI_QUIRK2_STOP_WITH_TC,
+};
+
+static const struct sdhci_arasan_clk_ops arasan_clk_ops = {
+	.sdcardclk_ops = &arasan_sdcardclk_ops,
+	.sampleclk_ops = &arasan_sampleclk_ops,
+};
+
+static struct sdhci_arasan_of_data sdhci_arasan_data = {
+	.pdata = &sdhci_arasan_pdata,
+	.clk_ops = &arasan_clk_ops,
+};
+
+static struct sdhci_arasan_of_data sdhci_arasan_rk3399_data = {
+	.soc_ctl_map = &rk3399_soc_ctl_map,
+	.pdata = &sdhci_arasan_cqe_pdata,
+	.clk_ops = &arasan_clk_ops,
+};
+
+static struct sdhci_arasan_of_data intel_lgm_emmc_data = {
+	.soc_ctl_map = &intel_lgm_emmc_soc_ctl_map,
+	.pdata = &sdhci_arasan_cqe_pdata,
+	.clk_ops = &arasan_clk_ops,
+};
+
+static struct sdhci_arasan_of_data intel_lgm_sdxc_data = {
+	.soc_ctl_map = &intel_lgm_sdxc_soc_ctl_map,
+	.pdata = &sdhci_arasan_cqe_pdata,
+	.clk_ops = &arasan_clk_ops,
+};
+
+static const struct sdhci_pltfm_data sdhci_arasan_zynqmp_pdata = {
+	.ops = &sdhci_arasan_ops,
+	.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
+			SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN |
+			SDHCI_QUIRK2_STOP_WITH_TC,
+};
+
+static const struct sdhci_arasan_clk_ops zynqmp_clk_ops = {
+	.sdcardclk_ops = &zynqmp_sdcardclk_ops,
+	.sampleclk_ops = &zynqmp_sampleclk_ops,
+};
+
+static struct sdhci_arasan_of_data sdhci_arasan_zynqmp_data = {
+	.pdata = &sdhci_arasan_zynqmp_pdata,
+	.clk_ops = &zynqmp_clk_ops,
+};
+
+static const struct sdhci_arasan_clk_ops versal_clk_ops = {
+	.sdcardclk_ops = &versal_sdcardclk_ops,
+	.sampleclk_ops = &versal_sampleclk_ops,
+};
+
+static struct sdhci_arasan_of_data sdhci_arasan_versal_data = {
+	.pdata = &sdhci_arasan_zynqmp_pdata,
+	.clk_ops = &versal_clk_ops,
+};
+
+static const struct of_device_id sdhci_arasan_of_match[] = {
+	/* SoC-specific compatible strings w/ soc_ctl_map */
+	{
+		.compatible = "rockchip,rk3399-sdhci-5.1",
+		.data = &sdhci_arasan_rk3399_data,
+	},
+	{
+		.compatible = "intel,lgm-sdhci-5.1-emmc",
+		.data = &intel_lgm_emmc_data,
+	},
+	{
+		.compatible = "intel,lgm-sdhci-5.1-sdxc",
+		.data = &intel_lgm_sdxc_data,
+	},
+	/* Generic compatible below here */
+	{
+		.compatible = "arasan,sdhci-8.9a",
+		.data = &sdhci_arasan_data,
+	},
+	{
+		.compatible = "arasan,sdhci-5.1",
+		.data = &sdhci_arasan_data,
+	},
+	{
+		.compatible = "arasan,sdhci-4.9a",
+		.data = &sdhci_arasan_data,
+	},
+	{
+		.compatible = "xlnx,zynqmp-8.9a",
+		.data = &sdhci_arasan_zynqmp_data,
+	},
+	{
+		.compatible = "xlnx,versal-8.9a",
+		.data = &sdhci_arasan_versal_data,
+	},
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, sdhci_arasan_of_match);
+
 /**
  * sdhci_arasan_register_sdcardclk - Register the sdcardclk for a PHY to use
  *
@@ -1194,12 +1233,7 @@ sdhci_arasan_register_sdcardclk(struct sdhci_arasan_data *sdhci_arasan,
 	sdcardclk_init.parent_names = &parent_clk_name;
 	sdcardclk_init.num_parents = 1;
 	sdcardclk_init.flags = CLK_GET_RATE_NOCACHE;
-	if (of_device_is_compatible(np, "xlnx,zynqmp-8.9a"))
-		sdcardclk_init.ops = &zynqmp_sdcardclk_ops;
-	else if (of_device_is_compatible(np, "xlnx,versal-8.9a"))
-		sdcardclk_init.ops = &versal_sdcardclk_ops;
-	else
-		sdcardclk_init.ops = &arasan_sdcardclk_ops;
+	sdcardclk_init.ops = sdhci_arasan->clk_ops->sdcardclk_ops;
 
 	clk_data->sdcardclk_hw.init = &sdcardclk_init;
 	clk_data->sdcardclk =
@@ -1248,12 +1282,7 @@ sdhci_arasan_register_sampleclk(struct sdhci_arasan_data *sdhci_arasan,
 	sampleclk_init.parent_names = &parent_clk_name;
 	sampleclk_init.num_parents = 1;
 	sampleclk_init.flags = CLK_GET_RATE_NOCACHE;
-	if (of_device_is_compatible(np, "xlnx,zynqmp-8.9a"))
-		sampleclk_init.ops = &zynqmp_sampleclk_ops;
-	else if (of_device_is_compatible(np, "xlnx,versal-8.9a"))
-		sampleclk_init.ops = &versal_sampleclk_ops;
-	else
-		sampleclk_init.ops = &arasan_sampleclk_ops;
+	sampleclk_init.ops = sdhci_arasan->clk_ops->sampleclk_ops;
 
 	clk_data->sampleclk_hw.init = &sampleclk_init;
 	clk_data->sampleclk =
@@ -1401,6 +1430,7 @@ static int sdhci_arasan_probe(struct platform_device *pdev)
 	sdhci_arasan->host = host;
 
 	sdhci_arasan->soc_ctl_map = data->soc_ctl_map;
+	sdhci_arasan->clk_ops = data->clk_ops;
 
 	node = of_parse_phandle(pdev->dev.of_node, "arasan,soc-ctl-syscon", 0);
 	if (node) {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
