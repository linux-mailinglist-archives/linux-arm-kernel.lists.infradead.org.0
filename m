Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32AD81A3A72
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 21:19:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X/2+VxxbsAfbrIbGRqj4XGniJ7pS0D4+BHESv5FiFpc=; b=K0MIv8mTZU2EJ1
	TSP0Jy93E/rAWjDovKDKElmoqz48jW7TWNzYHm+Dh/8bKIVB0ZyRObCRcSb7Z9AWoa6z/4pUKFK9k
	iSrfyX/vUgnzO2EPfTsKbwEAM16gKiGZNIjjGThWEobn/xcQh43mHbd38bUJWADpPgX3/OjLVpjL5
	+CMm3buJS8OHESmnHmUwiqC7vLrhur3otb2nS+RXDHszqzXmrlKgvyoWHk5ufa9DuYyaK5kYCNkMc
	whKnJ3TRrjW5mG0BbJIaNn1wAx1k1Ey1ZU9P3apHXmQPhHcVS88rw62xh4tPJY38ITv0PHLGMnwkn
	RODPphOHJ75mpPi2DjTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMchY-0006db-H1; Thu, 09 Apr 2020 19:19:00 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMcbv-0007Yx-0i
 for linux-arm-kernel@bombadil.infradead.org; Thu, 09 Apr 2020 19:13:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=yTMAvD5IyJaFssNJx7zMyBTmn1sGBgNjbcebgA75PlE=; b=bnwU6MrGIwPvbIKs5tZ4HlukW3
 StDn5pxp0DOmoDRtzWPr38nLGE2RePIw17hLTSnJllFtctUtYc4BU/PAh6rwikZE51vf4b553W3Dw
 2SEIvru9R3VG38q7iyh5+TOrhlSFHRZCk9OGDh44j06vGoYTRljAXz8tGaf2TuWp+Z/1xG3xiv5mz
 pvuei/r5GxQpxIXu16VAjxE/kTIl/gjauPN2nEuIf21TavE/ESG66hV4QkUuh7kBeXBLq2a2rXYmR
 Y+DOxpeLWGCAjdM93BT7w2FXxnLL77VQqlj9Ududv35BvWQUQt8iBfhd8xE5WWZmOSMVmEtFfv7rq
 4t2SVmaA==;
Received: from mail-eopbgr750082.outbound.protection.outlook.com
 ([40.107.75.82] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMcbm-0003HT-2w
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 19:13:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bez90T6EfcdTJ7Fh1NKfQkaCEg2D/Rawa+4hTpI4nztnlBrM/F/K5GnN0xoPgLAkN8zCYe4KydoZX+DWcgekwiKbR4Z5MGHxuB1Y/s/2RMICOSuh/jzGN0fHOMk23tV2gNWaz1f9LZsQbUY9K28j1z1cg9QZVmJR0R+s6JJSaNFTQ8sOqaWMRIXWbQp/w8WIXqXrjhLlYnNkEfi6WQLT8ODjJP4xbPJRiAezqxA8RwkClqZmYZ4QL+eW034wQB2ew9k+zamN1/8fklAm/j/KY+Bo74fpecYcA/BZEwip6fJ6xe8rgcWazUNOMsUNj+Fzyv7peE4g5MxCFEsf8DeRQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yTMAvD5IyJaFssNJx7zMyBTmn1sGBgNjbcebgA75PlE=;
 b=kfZddZ1thF9yCdiEMsJF1Vfn3qOhxsAfLjc3F/tU2unkWhln11ewfqRwJQakv8b3OBN2f1D1QUat6u+6Wg6vkl7mV/7Al0SucJnqh7KF7LvFixrdQ18WsfQzrVtHAjdVJdGXxuF4vy+Z8zkISvAQZC2UH9EyMeCCQCTDZbjcwEM/xUPk2wsNZEaF/GN9/UHo10VlOJ0rGiPMF8d/ADhXmbRJqWJiK3r00waE3G2P5eS4ezbhvJ7rsc3CfSJeyQ8z+eUGhLo6RvAyiJQDti9dREUacHMWRrDo39vdc8PUohLoWbF2Zy8IeHEIWwcFAYBpQhghviXwzJj5Z0pmyW0ZkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yTMAvD5IyJaFssNJx7zMyBTmn1sGBgNjbcebgA75PlE=;
 b=LUXCrnOcRH7n6c/VPsdYAF3MxjUpfxOV9ngJ7/DN/gnMvReCMKAUdDIRX0D5acLXo4Kpa+KJafxnd0mDRQhKdGmBNYlGFpaUNVIAf4f/FH9F4Rid++QgvmFiFBwbA1g6AOXyjK1XzX8U+viezG7aPFW7Xs5M8qJwyK5BA4DYkbU=
Received: from MN2PR05CA0008.namprd05.prod.outlook.com (2603:10b6:208:c0::21)
 by DM6PR02MB4057.namprd02.prod.outlook.com (2603:10b6:5:9d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Thu, 9 Apr
 2020 19:12:52 +0000
Received: from BL2NAM02FT061.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:c0:cafe::a5) by MN2PR05CA0008.outlook.office365.com
 (2603:10b6:208:c0::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12 via Frontend
 Transport; Thu, 9 Apr 2020 19:12:51 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT061.mail.protection.outlook.com (10.152.77.7) with Microsoft SMTP
 Server id 15.20.2900.18 via Frontend Transport; Thu, 9 Apr 2020 19:12:51
 +0000
Received: from [149.199.38.66] (port=44415 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbA-00060z-Ll; Thu, 09 Apr 2020 12:12:24 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbb-0007NV-3v; Thu, 09 Apr 2020 12:12:51 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbS-0007La-EF; Thu, 09 Apr 2020 12:12:42 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v4 12/25] firmware: xilinx: Remove eemi ops for reset_assert
Date: Thu,  9 Apr 2020 12:12:01 -0700
Message-Id: <1586459534-8997-13-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586459534-8997-1-git-send-email-jolly.shah@xilinx.com>
References: <1586459534-8997-1-git-send-email-jolly.shah@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(396003)(376002)(136003)(346002)(46966005)(478600001)(6636002)(2906002)(54906003)(7416002)(82740400003)(7696005)(316002)(8676002)(81156014)(5660300002)(9786002)(47076004)(8936002)(70206006)(336012)(426003)(6666004)(186003)(356004)(2616005)(44832011)(26005)(4326008)(81166007)(36756003)(107886003)(70586007);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c9af6053-bca4-46ad-ee18-08d7dcb9ffd7
X-MS-TrafficTypeDiagnostic: DM6PR02MB4057:
X-Microsoft-Antispam-PRVS: <DM6PR02MB4057AAF5FC3BB794F647E697B8C10@DM6PR02MB4057.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:612;
X-Forefront-PRVS: 0368E78B5B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DHP1iBqTzd45K1dox3coIbHTmiR/cFLW9SMXnzCDQuqVihhXSosN0NMUXgASQXIxM8jmTk+VF+a7NlEpMjRsdqvQZmZM1wrEC8SdfPPYT+zK8C8dw9Xnv/C6i589SV2K4LXFCsGEWZJVKF2ysBWjXjgOblm9nGQpyrqPj1fA2GohhYUzrGYUzrwO3K1Aoe4+KdMJBv33rkTIKzhA9E4YMNaUeA8DA3ebJy3PCJ92yujWIvxTA+FqjcefnZ4y/AR05nZFlqE8YnQ39hROLltYrMnEfg9IXuKaLKoxBBCkUQkFvwCDhfdsTNv4a+oVqduimT8PTnxjbKT7FunUdeIbZt+YLv5nI9/gLaY4X/6CbIRmwIog0036gofqyE2GVhrpLQ7FgiqQv+RJa2N4k9lsEspHPfWMiDElyf8jthwEp4r5RCiIcxUTRInaKblgpntm+8w9wePLZDfECZOJL4GXVGRWdnyJY0pAPdQbk5uZCANKn/3zjUvK3tXkogobnc3qsw8ifh6yUhKWhi6fLeOO8w==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2020 19:12:51.5466 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c9af6053-bca4-46ad-ee18-08d7dcb9ffd7
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_201303_863745_D3C6B1D6 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.82 listed in list.dnswl.org]
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
Cc: Jolly Shah <jolly.shah@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 rajanv@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rajan Vaja <rajan.vaja@xilinx.com>

Use direct function call instead of using eemi ops for
reset_assert.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c     |  6 +++---
 drivers/reset/reset-zynqmp.c         | 18 ++++++------------
 include/linux/firmware/xlnx-zynqmp.h |  9 +++++++--
 3 files changed, 16 insertions(+), 17 deletions(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 94fd755..2a79091 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -627,12 +627,13 @@ EXPORT_SYMBOL_GPL(zynqmp_pm_sd_dll_reset);
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_reset_assert(const enum zynqmp_pm_reset reset,
-				  const enum zynqmp_pm_reset_action assert_flag)
+int zynqmp_pm_reset_assert(const enum zynqmp_pm_reset reset,
+			   const enum zynqmp_pm_reset_action assert_flag)
 {
 	return zynqmp_pm_invoke_fn(PM_RESET_ASSERT, reset, assert_flag,
 				   0, 0, NULL);
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_reset_assert);
 
 /**
  * zynqmp_pm_reset_get_status - Get status of the reset
@@ -807,7 +808,6 @@ static int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.reset_assert = zynqmp_pm_reset_assert,
 	.reset_get_status = zynqmp_pm_reset_get_status,
 	.init_finalize = zynqmp_pm_init_finalize,
 	.set_suspend_mode = zynqmp_pm_set_suspend_mode,
diff --git a/drivers/reset/reset-zynqmp.c b/drivers/reset/reset-zynqmp.c
index 0144075..4a01b7e 100644
--- a/drivers/reset/reset-zynqmp.c
+++ b/drivers/reset/reset-zynqmp.c
@@ -27,19 +27,15 @@ to_zynqmp_reset_data(struct reset_controller_dev *rcdev)
 static int zynqmp_reset_assert(struct reset_controller_dev *rcdev,
 			       unsigned long id)
 {
-	struct zynqmp_reset_data *priv = to_zynqmp_reset_data(rcdev);
-
-	return priv->eemi_ops->reset_assert(ZYNQMP_RESET_ID + id,
-					    PM_RESET_ACTION_ASSERT);
+	return zynqmp_pm_reset_assert(ZYNQMP_RESET_ID + id,
+				      PM_RESET_ACTION_ASSERT);
 }
 
 static int zynqmp_reset_deassert(struct reset_controller_dev *rcdev,
 				 unsigned long id)
 {
-	struct zynqmp_reset_data *priv = to_zynqmp_reset_data(rcdev);
-
-	return priv->eemi_ops->reset_assert(ZYNQMP_RESET_ID + id,
-					    PM_RESET_ACTION_RELEASE);
+	return zynqmp_pm_reset_assert(ZYNQMP_RESET_ID + id,
+				      PM_RESET_ACTION_RELEASE);
 }
 
 static int zynqmp_reset_status(struct reset_controller_dev *rcdev,
@@ -58,10 +54,8 @@ static int zynqmp_reset_status(struct reset_controller_dev *rcdev,
 static int zynqmp_reset_reset(struct reset_controller_dev *rcdev,
 			      unsigned long id)
 {
-	struct zynqmp_reset_data *priv = to_zynqmp_reset_data(rcdev);
-
-	return priv->eemi_ops->reset_assert(ZYNQMP_RESET_ID + id,
-					    PM_RESET_ACTION_PULSE);
+	return zynqmp_pm_reset_assert(ZYNQMP_RESET_ID + id,
+				      PM_RESET_ACTION_PULSE);
 }
 
 static const struct reset_control_ops zynqmp_reset_ops = {
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 5aff896..22b2bbe 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -296,8 +296,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*reset_assert)(const enum zynqmp_pm_reset reset,
-			    const enum zynqmp_pm_reset_action assert_flag);
 	int (*reset_get_status)(const enum zynqmp_pm_reset reset, u32 *status);
 	int (*init_finalize)(void);
 	int (*set_suspend_mode)(u32 mode);
@@ -336,6 +334,8 @@ int zynqmp_pm_set_pll_frac_data(u32 clk_id, u32 data);
 int zynqmp_pm_get_pll_frac_data(u32 clk_id, u32 *data);
 int zynqmp_pm_set_sd_tapdelay(u32 node_id, u32 type, u32 value);
 int zynqmp_pm_sd_dll_reset(u32 node_id, u32 type);
+int zynqmp_pm_reset_assert(const enum zynqmp_pm_reset reset,
+			   const enum zynqmp_pm_reset_action assert_flag);
 #else
 static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 {
@@ -414,6 +414,11 @@ static inline int zynqmp_pm_sd_dll_reset(u32 node_id, u32 type)
 {
 	return -ENODEV;
 }
+static inline int zynqmp_pm_reset_assert(const enum zynqmp_pm_reset reset,
+			   const enum zynqmp_pm_reset_action assert_flag)
+{
+	return -ENODEV;
+}
 #endif
 
 #endif /* __FIRMWARE_ZYNQMP_H__ */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
