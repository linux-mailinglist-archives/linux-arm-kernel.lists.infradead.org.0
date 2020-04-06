Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC8E19FBF8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 19:46:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xHEDnzXQmHAD2u2UZa3LC2ttM5Lv9680B6l2Eij1tDk=; b=I+KuOZCKNglSMF
	ntzwnRv6bC40w83R+9BN6/sUQT4feNPKdPr3lob4FiQZKSh8lTqQNDvtlQyCj0SFhzC1zKhePSmbq
	+psVd7x5z28FH9hCyoBdeymFroAUAvObR5CBklgNtLQ0aqxXVGJujPOwDZ7GaWYuOB775fE0xvPUc
	ukM8Anw26PO0Gy2TvXkVPXuII5Gv49B7CwN1/1QVw5hltqRtEcn0KgLvLZSsn/Xw8+vr0qP1rf5HZ
	++zP3C79f7qZgr7uX2o7d7NxTSTGYsMsr0Fj64uYAWPDbL5vUF1x82X4COZdOsmK3O8cYwHqeKjsE
	J7ImLpN5f3klT62snUVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLVpD-0004qB-AV; Mon, 06 Apr 2020 17:46:19 +0000
Received: from mail-co1nam11on2083.outbound.protection.outlook.com
 ([40.107.220.83] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLVo5-0002LB-GB
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 17:45:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ASfTq4s0XdNfhQXAjf9Sc4sjBd7QbcdTYaS2FYQVlIUy3PwwDCztYugtjbabhLNXzl6sKOEeEhZgJ+o6hAGSFqHpm/CjW1mwAEnlZxj5X4OyunSdHXCM908M1gLJl3vy/SZ/lMYLOodLMWUk31iM9R+gbGOI8oHSrsTb5oDDYjDnWJWYoLJAVBLCFqzqhRSfXhWKkzNsE09suPZ6DSV90TBi+iO8Wg2qgg48ib2sBtWZfUNntTC6eXvze011EPUVL+ZjUa259f72WwDwYxBLbwatVR7CQhrjQtrzr97czo3hjYtDf7NM2yaoyEk5S6TM3rekBKVkdAoGrYJX0v7+ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EDaLu0IzBcfyiee4i2kAmt4pxjYS2L+l8XoNSo7GIxU=;
 b=dPQKmBlGUxd37J3jGKNtodjKMI7KSWea+xp2LKRu5UZdjyABSuAd7+lTvQk5Xw/juOTCw0YIDt6ejfsdCvpMYM7RVGQnXQSSnrnJwhhY7j/kZp/qVCOFpVRFIbCfx4cih/S1I2uECBWd3XNX2atLGDZ/remzYB9qAROorMQh+TvZbmPFowPXOOm35BnOJXR5sK+fKMiToBnJZCdrvKtXM389ISBe42yPjUUoQ7bV4YGOBMtStpYU62RWsC0cUKRbDvOqsYEkVy2B9WfuL7HJAZWI+RJQAOe2aL3PVN/crxOIUPYx92XhRHr35IVN67ENn/OLzQemxQWrnc2pKyKgRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EDaLu0IzBcfyiee4i2kAmt4pxjYS2L+l8XoNSo7GIxU=;
 b=cDqR4kMJhphNs7XFFknORgdFdAZ4irK9Dut2qyZn83N5xm0LQo5MUVFvdb7LuOkx6nFH/XTa96qv8xsbsnDW7A0Jw8/U6kLtKPlfjk8R03wl1QNJ1pUmy5fWE4WFKMJbJA+5SxITOhlCsj09ZNJsdZYmUJs1lHrfKU+2+Lcu2x0=
Received: from CY4PR22CA0042.namprd22.prod.outlook.com (2603:10b6:903:ed::28)
 by DM6PR02MB5241.namprd02.prod.outlook.com (2603:10b6:5:51::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Mon, 6 Apr
 2020 17:45:06 +0000
Received: from CY1NAM02FT052.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:ed:cafe::ba) by CY4PR22CA0042.outlook.office365.com
 (2603:10b6:903:ed::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.17 via Frontend
 Transport; Mon, 6 Apr 2020 17:45:05 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT052.mail.protection.outlook.com (10.152.74.123) with Microsoft SMTP
 Server id 15.20.2878.15 via Frontend Transport; Mon, 6 Apr 2020 17:45:05
 +0000
Received: from [149.199.38.66] (port=47206 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <manish.narani@xilinx.com>)
 id 1jLVnj-0007bZ-GK; Mon, 06 Apr 2020 10:44:47 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1jLVo1-0001vY-2Q; Mon, 06 Apr 2020 10:45:05 -0700
Received: from xsj-pvapsmtp01 (maildrop.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 036Hj0Yw018226; 
 Mon, 6 Apr 2020 10:45:01 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1jLVnw-0001mB-Da; Mon, 06 Apr 2020 10:45:00 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 426D1121267; Mon,  6 Apr 2020 23:13:39 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com
Subject: [PATCH v3 6/6] mmc: sdhci-of-arasan: Fix kernel-doc warnings
Date: Mon,  6 Apr 2020 23:13:35 +0530
Message-Id: <1586195015-128992-7-git-send-email-manish.narani@xilinx.com>
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
 SFS:(10009020)(4636009)(346002)(136003)(396003)(39860400002)(376002)(46966005)(44832011)(81166006)(426003)(356004)(2616005)(30864003)(8676002)(47076004)(336012)(107886003)(42186006)(36756003)(6266002)(186003)(478600001)(2906002)(316002)(4326008)(82740400003)(6666004)(81156014)(5660300002)(6636002)(26005)(8936002)(70586007)(70206006);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 93f633d9-f9db-4cc7-578a-08d7da523db8
X-MS-TrafficTypeDiagnostic: DM6PR02MB5241:
X-Microsoft-Antispam-PRVS: <DM6PR02MB524188E4960CB65068CBE61CC1C20@DM6PR02MB5241.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0365C0E14B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IPpQ5UhCx/cHwr4BYeFdBNmgCDQWrgeQRjMuS1MhFAzrRRLAA1Xb1ZAuRMrx9LrbRux3gfE3qk57XDbHFzXOhdiD5ZmwiCIhbufWj3kw730nixBOuyD/87KqZ4p9xGQpTudO7nGtHbx6XiO8BKjLiWs/ll7ql+egkcu9XWvMvym4dsY1HYlgE7vZeg5sPmtg4lQl7wvuuMizwnXuWDvi+2VTmIYjibL86rMxVfZCnMNt+NQ/jxaEXUC0CoRUtNvBeLfurWeuwCiq6fEeZ7dLnF/4BrUN1eZR+UKqGbBrsRU1ZFJc3ye1PZbiUbUjI5ztUAO0mGomgefIbY1iPJ9vqgH5yMqe1Sp8tvqpiea/PUtEvYgE9YsemXjvfqM0XkpHvbj9M3lDCvNBrmdCGdiN2aajrUxwQeSrSzhwcq9rWLe1SFZaiOhkaVQ2CFNRATHoRIflohxSeoiNGN8n9ClXvgWFu763vzsugBiF3kWY47Yh4/z/ljBBuiLt/1o1PLqZ+QqLbFuhSXn1OZ75A95soQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2020 17:45:05.3759 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 93f633d9-f9db-4cc7-578a-08d7da523db8
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5241
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_104509_645078_E17E07AA 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.83 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.83 listed in wl.mailspike.net]
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

Modify code to fix the warnings reported by kernel-doc for better
documentation.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
 drivers/mmc/host/sdhci-of-arasan.c | 114 +++++++++++++++++++++----------------
 1 file changed, 64 insertions(+), 50 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index 60ad159..206d1fd 100644
--- a/drivers/mmc/host/sdhci-of-arasan.c
+++ b/drivers/mmc/host/sdhci-of-arasan.c
@@ -73,13 +73,13 @@ struct sdhci_arasan_soc_ctl_field {
 /**
  * struct sdhci_arasan_soc_ctl_map - Map in syscon to corecfg registers
  *
- * It's up to the licensee of the Arsan IP block to make these available
- * somewhere if needed.  Presumably these will be scattered somewhere that's
- * accessible via the syscon API.
- *
  * @baseclkfreq:	Where to find corecfg_baseclkfreq
  * @clockmultiplier:	Where to find corecfg_clockmultiplier
  * @hiword_update:	If true, use HIWORD_UPDATE to access the syscon
+ *
+ * It's up to the licensee of the Arsan IP block to make these available
+ * somewhere if needed.  Presumably these will be scattered somewhere that's
+ * accessible via the syscon API.
  */
 struct sdhci_arasan_soc_ctl_map {
 	struct sdhci_arasan_soc_ctl_field	baseclkfreq;
@@ -99,7 +99,8 @@ struct sdhci_arasan_clk_ops {
 };
 
 /**
- * struct sdhci_arasan_clk_data
+ * struct sdhci_arasan_clk_data - Arasan Controller Clock Data.
+ *
  * @sdcardclk_hw:	Struct for the clock we might provide to a PHY.
  * @sdcardclk:		Pointer to normal 'struct clock' for sdcardclk_hw.
  * @sampleclk_hw:	Struct for the clock we might provide to a PHY.
@@ -125,15 +126,18 @@ struct sdhci_arasan_zynqmp_clk_data {
 };
 
 /**
- * struct sdhci_arasan_data
+ * struct sdhci_arasan_data - Arasan Controller Data
+ *
  * @host:		Pointer to the main SDHCI host structure.
  * @clk_ahb:		Pointer to the AHB clock
  * @phy:		Pointer to the generic phy
  * @is_phy_on:		True if the PHY is on; false if not.
+ * @has_cqe:		True if controller has command queuing engine.
  * @clk_data:		Struct for the Arasan Controller Clock Data.
  * @clk_ops:		Struct for the Arasan Controller Clock Operations.
  * @soc_ctl_base:	Pointer to regmap for syscon for soc_ctl registers.
  * @soc_ctl_map:	Map to get offsets into soc_ctl registers.
+ * @quirks:		Arasan deviations from spec.
  */
 struct sdhci_arasan_data {
 	struct sdhci_host *host;
@@ -147,7 +151,7 @@ struct sdhci_arasan_data {
 
 	struct regmap	*soc_ctl_base;
 	const struct sdhci_arasan_soc_ctl_map *soc_ctl_map;
-	unsigned int	quirks; /* Arasan deviations from spec */
+	unsigned int	quirks;
 
 /* Controller does not have CD wired and will not function normally without */
 #define SDHCI_ARASAN_QUIRK_FORCE_CDTEST	BIT(0)
@@ -183,14 +187,16 @@ static const struct sdhci_arasan_soc_ctl_map intel_lgm_sdxc_soc_ctl_map = {
 /**
  * sdhci_arasan_syscon_write - Write to a field in soc_ctl registers
  *
+ * @host:	The sdhci_host
+ * @fld:	The field to write to
+ * @val:	The value to write
+ *
  * This function allows writing to fields in sdhci_arasan_soc_ctl_map.
  * Note that if a field is specified as not available (shift < 0) then
  * this function will silently return an error code.  It will be noisy
  * and print errors for any other (unexpected) errors.
  *
- * @host:	The sdhci_host
- * @fld:	The field to write to
- * @val:	The value to write
+ * Return: 0 on success and error value on error
  */
 static int sdhci_arasan_syscon_write(struct sdhci_host *host,
 				   const struct sdhci_arasan_soc_ctl_field *fld,
@@ -431,9 +437,10 @@ static const struct sdhci_pltfm_data sdhci_arasan_cqe_pdata = {
 /**
  * sdhci_arasan_suspend - Suspend method for the driver
  * @dev:	Address of the device structure
- * Returns 0 on success and error value on error
  *
  * Put the device in a low power state.
+ *
+ * Return: 0 on success and error value on error
  */
 static int sdhci_arasan_suspend(struct device *dev)
 {
@@ -474,9 +481,10 @@ static int sdhci_arasan_suspend(struct device *dev)
 /**
  * sdhci_arasan_resume - Resume method for the driver
  * @dev:	Address of the device structure
- * Returns 0 on success and error value on error
  *
  * Resume operation after suspend
+ *
+ * Return: 0 on success and error value on error
  */
 static int sdhci_arasan_resume(struct device *dev)
 {
@@ -525,16 +533,16 @@ static SIMPLE_DEV_PM_OPS(sdhci_arasan_dev_pm_ops, sdhci_arasan_suspend,
 /**
  * sdhci_arasan_sdcardclk_recalc_rate - Return the card clock rate
  *
+ * @hw:			Pointer to the hardware clock structure.
+ * @parent_rate:		The parent rate (should be rate of clk_xin).
+ *
  * Return the current actual rate of the SD card clock.  This can be used
  * to communicate with out PHY.
  *
- * @hw:			Pointer to the hardware clock structure.
- * @parent_rate		The parent rate (should be rate of clk_xin).
- * Returns the card clock rate.
+ * Return: The card clock rate.
  */
 static unsigned long sdhci_arasan_sdcardclk_recalc_rate(struct clk_hw *hw,
 						      unsigned long parent_rate)
-
 {
 	struct sdhci_arasan_clk_data *clk_data =
 		container_of(hw, struct sdhci_arasan_clk_data, sdcardclk_hw);
@@ -552,16 +560,16 @@ static const struct clk_ops arasan_sdcardclk_ops = {
 /**
  * sdhci_arasan_sampleclk_recalc_rate - Return the sampling clock rate
  *
+ * @hw:			Pointer to the hardware clock structure.
+ * @parent_rate:		The parent rate (should be rate of clk_xin).
+ *
  * Return the current actual rate of the sampling clock.  This can be used
  * to communicate with out PHY.
  *
- * @hw:			Pointer to the hardware clock structure.
- * @parent_rate		The parent rate (should be rate of clk_xin).
- * Returns the sample clock rate.
+ * Return: The sample clock rate.
  */
 static unsigned long sdhci_arasan_sampleclk_recalc_rate(struct clk_hw *hw,
 						      unsigned long parent_rate)
-
 {
 	struct sdhci_arasan_clk_data *clk_data =
 		container_of(hw, struct sdhci_arasan_clk_data, sampleclk_hw);
@@ -579,14 +587,14 @@ static const struct clk_ops arasan_sampleclk_ops = {
 /**
  * sdhci_zynqmp_sdcardclk_set_phase - Set the SD Output Clock Tap Delays
  *
+ * @hw:			Pointer to the hardware clock structure.
+ * @degrees:		The clock phase shift between 0 - 359.
+ *
  * Set the SD Output Clock Tap Delays for Output path
  *
- * @hw:			Pointer to the hardware clock structure.
- * @degrees		The clock phase shift between 0 - 359.
  * Return: 0 on success and error value on error
  */
 static int sdhci_zynqmp_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
-
 {
 	struct sdhci_arasan_clk_data *clk_data =
 		container_of(hw, struct sdhci_arasan_clk_data, sdcardclk_hw);
@@ -651,14 +659,14 @@ static const struct clk_ops zynqmp_sdcardclk_ops = {
 /**
  * sdhci_zynqmp_sampleclk_set_phase - Set the SD Input Clock Tap Delays
  *
+ * @hw:			Pointer to the hardware clock structure.
+ * @degrees:		The clock phase shift between 0 - 359.
+ *
  * Set the SD Input Clock Tap Delays for Input path
  *
- * @hw:			Pointer to the hardware clock structure.
- * @degrees		The clock phase shift between 0 - 359.
  * Return: 0 on success and error value on error
  */
 static int sdhci_zynqmp_sampleclk_set_phase(struct clk_hw *hw, int degrees)
-
 {
 	struct sdhci_arasan_clk_data *clk_data =
 		container_of(hw, struct sdhci_arasan_clk_data, sampleclk_hw);
@@ -723,10 +731,11 @@ static const struct clk_ops zynqmp_sampleclk_ops = {
 /**
  * sdhci_versal_sdcardclk_set_phase - Set the SD Output Clock Tap Delays
  *
+ * @hw:			Pointer to the hardware clock structure.
+ * @degrees:		The clock phase shift between 0 - 359.
+ *
  * Set the SD Output Clock Tap Delays for Output path
  *
- * @hw:			Pointer to the hardware clock structure.
- * @degrees		The clock phase shift between 0 - 359.
  * Return: 0 on success and error value on error
  */
 static int sdhci_versal_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
@@ -794,10 +803,11 @@ static const struct clk_ops versal_sdcardclk_ops = {
 /**
  * sdhci_versal_sampleclk_set_phase - Set the SD Input Clock Tap Delays
  *
+ * @hw:			Pointer to the hardware clock structure.
+ * @degrees:		The clock phase shift between 0 - 359.
+ *
  * Set the SD Input Clock Tap Delays for Input path
  *
- * @hw:			Pointer to the hardware clock structure.
- * @degrees		The clock phase shift between 0 - 359.
  * Return: 0 on success and error value on error
  */
 static int sdhci_versal_sampleclk_set_phase(struct clk_hw *hw, int degrees)
@@ -913,6 +923,9 @@ static int arasan_zynqmp_execute_tuning(struct mmc_host *mmc, u32 opcode)
 /**
  * sdhci_arasan_update_clockmultiplier - Set corecfg_clockmultiplier
  *
+ * @host:		The sdhci_host
+ * @value:		The value to write
+ *
  * The corecfg_clockmultiplier is supposed to contain clock multiplier
  * value of programmable clock generator.
  *
@@ -924,8 +937,6 @@ static int arasan_zynqmp_execute_tuning(struct mmc_host *mmc, u32 opcode)
  * - The value of corecfg_clockmultiplier should sync with that of corresponding
  *   value reading from sdhci_capability_register. So this function is called
  *   once at probe time and never called again.
- *
- * @host:		The sdhci_host
  */
 static void sdhci_arasan_update_clockmultiplier(struct sdhci_host *host,
 						u32 value)
@@ -952,6 +963,8 @@ static void sdhci_arasan_update_clockmultiplier(struct sdhci_host *host,
 /**
  * sdhci_arasan_update_baseclkfreq - Set corecfg_baseclkfreq
  *
+ * @host:		The sdhci_host
+ *
  * The corecfg_baseclkfreq is supposed to contain the MHz of clk_xin.  This
  * function can be used to make that happen.
  *
@@ -963,8 +976,6 @@ static void sdhci_arasan_update_clockmultiplier(struct sdhci_host *host,
  * - It's assumed that clk_xin is not dynamic and that we use the SDHCI divider
  *   to achieve lower clock rates.  That means that this function is called once
  *   at probe time and never called again.
- *
- * @host:		The sdhci_host
  */
 static void sdhci_arasan_update_baseclkfreq(struct sdhci_host *host)
 {
@@ -1028,10 +1039,10 @@ static void arasan_dt_read_clk_phase(struct device *dev,
 /**
  * arasan_dt_parse_clk_phases - Read Clock Delay values from DT
  *
- * Called at initialization to parse the values of Clock Delays.
- *
  * @dev:		Pointer to our struct device.
  * @clk_data:		Pointer to the Clock Data structure
+ *
+ * Called at initialization to parse the values of Clock Delays.
  */
 static void arasan_dt_parse_clk_phases(struct device *dev,
 				       struct sdhci_arasan_clk_data *clk_data)
@@ -1202,14 +1213,15 @@ MODULE_DEVICE_TABLE(of, sdhci_arasan_of_match);
 /**
  * sdhci_arasan_register_sdcardclk - Register the sdcardclk for a PHY to use
  *
+ * @sdhci_arasan:	Our private data structure.
+ * @clk_xin:		Pointer to the functional clock
+ * @dev:		Pointer to our struct device.
+ *
  * Some PHY devices need to know what the actual card clock is.  In order for
  * them to find out, we'll provide a clock through the common clock framework
  * for them to query.
  *
- * @sdhci_arasan:	Our private data structure.
- * @clk_xin:		Pointer to the functional clock
- * @dev:		Pointer to our struct device.
- * Returns 0 on success and error value on error
+ * Return: 0 on success and error value on error
  */
 static int
 sdhci_arasan_register_sdcardclk(struct sdhci_arasan_data *sdhci_arasan,
@@ -1251,14 +1263,15 @@ sdhci_arasan_register_sdcardclk(struct sdhci_arasan_data *sdhci_arasan,
 /**
  * sdhci_arasan_register_sampleclk - Register the sampleclk for a PHY to use
  *
+ * @sdhci_arasan:	Our private data structure.
+ * @clk_xin:		Pointer to the functional clock
+ * @dev:		Pointer to our struct device.
+ *
  * Some PHY devices need to know what the actual card clock is.  In order for
  * them to find out, we'll provide a clock through the common clock framework
  * for them to query.
  *
- * @sdhci_arasan:	Our private data structure.
- * @clk_xin:		Pointer to the functional clock
- * @dev:		Pointer to our struct device.
- * Returns 0 on success and error value on error
+ * Return: 0 on success and error value on error
  */
 static int
 sdhci_arasan_register_sampleclk(struct sdhci_arasan_data *sdhci_arasan,
@@ -1300,10 +1313,10 @@ sdhci_arasan_register_sampleclk(struct sdhci_arasan_data *sdhci_arasan,
 /**
  * sdhci_arasan_unregister_sdclk - Undoes sdhci_arasan_register_sdclk()
  *
+ * @dev:		Pointer to our struct device.
+ *
  * Should be called any time we're exiting and sdhci_arasan_register_sdclk()
  * returned success.
- *
- * @dev:		Pointer to our struct device.
  */
 static void sdhci_arasan_unregister_sdclk(struct device *dev)
 {
@@ -1318,6 +1331,10 @@ static void sdhci_arasan_unregister_sdclk(struct device *dev)
 /**
  * sdhci_arasan_register_sdclk - Register the sdcardclk for a PHY to use
  *
+ * @sdhci_arasan:	Our private data structure.
+ * @clk_xin:		Pointer to the functional clock
+ * @dev:		Pointer to our struct device.
+ *
  * Some PHY devices need to know what the actual card clock is.  In order for
  * them to find out, we'll provide a clock through the common clock framework
  * for them to query.
@@ -1330,10 +1347,7 @@ static void sdhci_arasan_unregister_sdclk(struct device *dev)
  * to create nice clean device tree bindings and later (if needed) we can try
  * re-architecting SDHCI if we see some benefit to it.
  *
- * @sdhci_arasan:	Our private data structure.
- * @clk_xin:		Pointer to the functional clock
- * @dev:		Pointer to our struct device.
- * Returns 0 on success and error value on error
+ * Return: 0 on success and error value on error
  */
 static int sdhci_arasan_register_sdclk(struct sdhci_arasan_data *sdhci_arasan,
 				       struct clk *clk_xin,
-- 
2.1.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
