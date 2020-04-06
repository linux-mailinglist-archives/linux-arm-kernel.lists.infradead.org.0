Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70BDA19FBF4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 19:45:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QAPo3wH5SOpdwGSeqGz1xUvJ6kfPacekinUaKt5bFvQ=; b=K5xK2yp5GhP/fB
	gquK0sGA24l7VF5aXWg02x6tn0uhEDPurJ7TsRp4jaFdiNGVPHBqUPNjXZFP/sBEr1+Ei/FdT5p2O
	iZusvwdN7M/xq2coASfeUQYKhIPI2XnTX3DOp5QJ9grERIKeIc6LR80n8voHwhmrHrSC++Fl7NqIk
	ATK5MkZf3ZonD9tAP4JCzWUoxHqMlQPlVG26MZsH9+e0aO2NFKI8aKvCs6cIO9+hJ79MdaYCA27dF
	jhwuKXhVGQieURsRqMeAaoGR0LDUS4JvWqv6zRQHj8RKgHZuQYyMBh5iZllB7ydESDZZC9qX6Sdbu
	y+YaZGfF3dcPzybRWMAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLVod-0004Kx-7E; Mon, 06 Apr 2020 17:45:43 +0000
Received: from mail-dm6nam12on2056.outbound.protection.outlook.com
 ([40.107.243.56] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLVnl-0001Lk-JT
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 17:44:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d8iFNybzGONSoiKKjQiTQdBKdixZd9v4jv4xeY4dotfKObz8gqioz2JSxBoN0J8S7fiE3qq/ulomNQ+39SdTxgVt1MkY2m3x19l2qfqO0aQMUmHcYhnXfXNxrg9YUmHykQsZB8pZe1NTmlMqe3mPDjPmiOjEXyNwqiHsgcRmq75N4tnoZSHc7w+FysAukR4fUu5as91agP2lI2on+vOaDNtv6FC88tCLnLSKpputoX7scbgajONu8V5oUs7bsV/jLuzt0Ki/DeZT6SoUBtU6dHhcEFf8Tfdbdppi7kuf3rjLbELDUMc8MrkNBBalZ140qQgUN6OufSuEzHODt7Roiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MnvUnlGESzpccOv2++1kW6+V57l3CI+sdKUmDoF9GJQ=;
 b=PJWUH02tLZpKPaqtnEXa7w35oSANZ+sULqVh+EOHZlaCu5+RT+zQ0un93oS8LEUFUEnzKt5i9NTfu3vbHNpjhpX4M29swYXwaOVcPGnS0Mw3DWGHd5JJC7K+zxzhAXglDjDq05j+ZeSk7EznVqXV9MHT9J1tIbStktknvEBkI0uS7r3X8HPJ26Rl+JaQ+jIKwS/cUVQrY/FomSOwguq9wyfN+4YHdfRgZqyvyJK6yuP/R1o2KYSFfeOUIgJq1KooPCIWTLgHqfPXEJaEpsOHnXtsUu5BZMuijiyerDHis3YKVPiW9AqYFl3wb1J3Xm414E2Qx1YAdd0gfGR8ZMTk9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MnvUnlGESzpccOv2++1kW6+V57l3CI+sdKUmDoF9GJQ=;
 b=rBH7qXRHcavsaHsdSYWc7WQ6EcEvr21emayjQCW7dEZIwGbU0Js6vyBIPwF3Xas19XnE++SEicZRjdo7Tykxw4R/VKIDL5FgeyfBNpPVcNyDsc46NYDEaRFzs6SvmaYy1mx5LKX8zoKmbb/EPUt3J2+eGAImBzAUVFVyk+UrRHM=
Received: from BL0PR0102CA0063.prod.exchangelabs.com (2603:10b6:208:25::40) by
 BN7PR02MB4098.namprd02.prod.outlook.com (2603:10b6:406:fd::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.20; Mon, 6 Apr 2020 17:44:45 +0000
Received: from BL2NAM02FT040.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:25:cafe::58) by BL0PR0102CA0063.outlook.office365.com
 (2603:10b6:208:25::40) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15 via Frontend
 Transport; Mon, 6 Apr 2020 17:44:45 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT040.mail.protection.outlook.com (10.152.77.193) with Microsoft SMTP
 Server id 15.20.2878.15 via Frontend Transport; Mon, 6 Apr 2020 17:44:45
 +0000
Received: from [149.199.38.66] (port=46333 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <manish.narani@xilinx.com>)
 id 1jLVnP-0007b6-4S; Mon, 06 Apr 2020 10:44:27 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1jLVng-0001k7-Mn; Mon, 06 Apr 2020 10:44:44 -0700
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 036HiXH9018058; 
 Mon, 6 Apr 2020 10:44:34 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1jLVnV-0001iS-DB; Mon, 06 Apr 2020 10:44:33 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 337AA12124E; Mon,  6 Apr 2020 23:13:39 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com
Subject: [PATCH v3 4/6] mmc: sdhci-of-arasan: Rearrange the platform data
 structs for modularity
Date: Mon,  6 Apr 2020 23:13:33 +0530
Message-Id: <1586195015-128992-5-git-send-email-manish.narani@xilinx.com>
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
 SFS:(10009020)(4636009)(136003)(39860400002)(396003)(346002)(376002)(46966005)(82740400003)(4326008)(426003)(107886003)(5660300002)(8936002)(2616005)(6266002)(478600001)(44832011)(2906002)(186003)(81166006)(8676002)(356004)(36756003)(70586007)(6666004)(6636002)(70206006)(336012)(42186006)(26005)(81156014)(47076004)(316002);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5077451f-c785-4234-8c7e-08d7da5231a0
X-MS-TrafficTypeDiagnostic: BN7PR02MB4098:
X-Microsoft-Antispam-PRVS: <BN7PR02MB4098D60392CFCD39FB11AF99C1C20@BN7PR02MB4098.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:2449;
X-Forefront-PRVS: 0365C0E14B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tABiabFkUEbHO7skUQpsKy6mlhv9y67y0gJg7VVDBXlB1Mnkl3gSKRNmxqoSChFVl0nyhf2q0VS77uoKgmOHnuAjGz/3lESJY6Jm0Hvfr+dytqxrQjPtx+YhMUf00QII0Yyc+cWte8P/0hBBezajlUknHKR4DMBtJN+/W5yHwsUVblfkg7nqTy2Hlb4DJaadiOS1YTuv+4jPsp3Npg0etHvuAGYgKm3KToBnycW1nj4HKZCqDRahesUVgJ+STyfub4xn2YdrQbTLNGXzCd9QrpdAL6WvfV1S7oJ22olnuiz2bh+oxxJ8pH8/RJtBGjW0oa9XmNAdrp0YeA5vBZ/JjHAxMEizYotghW39hd0IIBecaeC63IWmn+vp/laNV7enSLtDej5nMuoViXe9BPgwceDQBz7SGH3ZIgpiSKYZ3RtVA6Vff9sMF3y1AswArxOTn9PbANQIK+pX+DiGarbFYnHtkMg06piHyLgJA1o09jiKpM9Kdj347Fz8hXbNk3/TAEnDCa0iUHz8n1TZ9GhPtA==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2020 17:44:45.0863 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5077451f-c785-4234-8c7e-08d7da5231a0
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR02MB4098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_104449_772890_10BFC9E4 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.56 listed in list.dnswl.org]
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

Existing driver code has the platform specific structures scattered
throughout the driver code. Rearrange the platform specific data
structures for more modularity and readability. This will help in adding
new static functions with more ease.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
 drivers/mmc/host/sdhci-of-arasan.c | 158 +++++++++++++++++++------------------
 1 file changed, 81 insertions(+), 77 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index 72f5d83..bff726a 100644
--- a/drivers/mmc/host/sdhci-of-arasan.c
+++ b/drivers/mmc/host/sdhci-of-arasan.c
@@ -357,29 +357,6 @@ static const struct sdhci_ops sdhci_arasan_ops = {
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
-static struct sdhci_arasan_of_data sdhci_arasan_generic_data = {
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
@@ -436,21 +413,6 @@ static const struct sdhci_pltfm_data sdhci_arasan_cqe_pdata = {
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
@@ -546,45 +508,6 @@ static int sdhci_arasan_resume(struct device *dev)
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
-		.data = &sdhci_arasan_generic_data,
-	},
-	{
-		.compatible = "arasan,sdhci-5.1",
-		.data = &sdhci_arasan_generic_data,
-	},
-	{
-		.compatible = "arasan,sdhci-4.9a",
-		.data = &sdhci_arasan_generic_data,
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
@@ -1160,6 +1083,87 @@ static void arasan_dt_parse_clk_phases(struct device *dev,
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
+static struct sdhci_arasan_of_data sdhci_arasan_generic_data = {
+	.pdata = &sdhci_arasan_pdata,
+};
+
+static struct sdhci_arasan_of_data sdhci_arasan_rk3399_data = {
+	.soc_ctl_map = &rk3399_soc_ctl_map,
+	.pdata = &sdhci_arasan_cqe_pdata,
+};
+
+static struct sdhci_arasan_of_data intel_lgm_emmc_data = {
+	.soc_ctl_map = &intel_lgm_emmc_soc_ctl_map,
+	.pdata = &sdhci_arasan_cqe_pdata,
+};
+
+static struct sdhci_arasan_of_data intel_lgm_sdxc_data = {
+	.soc_ctl_map = &intel_lgm_sdxc_soc_ctl_map,
+	.pdata = &sdhci_arasan_cqe_pdata,
+};
+
+static const struct sdhci_pltfm_data sdhci_arasan_zynqmp_pdata = {
+	.ops = &sdhci_arasan_ops,
+	.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
+			SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN |
+			SDHCI_QUIRK2_STOP_WITH_TC,
+};
+
+static struct sdhci_arasan_of_data sdhci_arasan_zynqmp_data = {
+	.pdata = &sdhci_arasan_zynqmp_pdata,
+};
+
+static struct sdhci_arasan_of_data sdhci_arasan_versal_data = {
+	.pdata = &sdhci_arasan_zynqmp_pdata,
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
+		.data = &sdhci_arasan_generic_data,
+	},
+	{
+		.compatible = "arasan,sdhci-5.1",
+		.data = &sdhci_arasan_generic_data,
+	},
+	{
+		.compatible = "arasan,sdhci-4.9a",
+		.data = &sdhci_arasan_generic_data,
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
-- 
2.1.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
