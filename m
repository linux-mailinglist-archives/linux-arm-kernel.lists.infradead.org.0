Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F6A1B8150
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 22:59:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X/2+VxxbsAfbrIbGRqj4XGniJ7pS0D4+BHESv5FiFpc=; b=im4SlG4k76SfY6
	qd7NNNcMEztsVwDemdc8HrwcJLUmr2lyT+/Z4o2RspiGXWRF1mjTI2yeiUiNkZV7dopWiazXHKQUz
	7Meqw/zAgcF84kmQygg3nHbe2dZ1p9hVziKSHgU0b5+x69TdJKJgnGdojk0OHzStJFvkEZ3yrRN+R
	jS6UXmbKBBa6ypSigZX3tscf6zBFYk5XWgVDY+vYkYTMvHFJ84rmJPmaofZtsxonUqIT909Z5bYkF
	n5TUdJn7jGpvwoYBg71uJZ326vmxar5mB7znjLDrggRipSGdLI8fJHSbtNjJub1CTGnM4HiL47nMg
	qPb85cp3VZAmGUcRn0iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS5QE-00072b-D5; Fri, 24 Apr 2020 20:59:42 +0000
Received: from mail-bn7nam10on2072.outbound.protection.outlook.com
 ([40.107.92.72] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS5Oz-0006J3-BA
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:58:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cL0P63QaO5ubhRgidOWVZ+yo6VgNyjKcJvjLzN1EODdh6rwwR2zpNz3++3A6LH2rIXkVykXyQw/CUsxfhpuSAybmEj1EBuChyJKzhRqj8p/Ch+hs2ZK3uaaerh6QTdSLjOmqJpAurfEOxyaJaIOZnZlxc9cisuXRxIah/lCp3aA/lTLuM5T8Kr6gobjL/ziaoZsN3vd5lGF2mobYbU73dhSSVrRxtlUAnvvwjWowQ8VOdAqxdPsNzmNHVCqGVSt4kqVSILNVoI7bALl2WHC5jEb9BurY5p/+UzMMesLrBi3r04XTdzmHaGxPc/UN0nRQuB17ALXdwMoq9GrjIWxi0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yTMAvD5IyJaFssNJx7zMyBTmn1sGBgNjbcebgA75PlE=;
 b=Zdgqlr5xv9iRkjZhY562hRgCJRQPxxGx70UDfTS1vjpC4n/+UXK/14ALOymT83RhzV+C3eiqZgQfWCwQ2hnSeGqQbH3WMksbaX2ErBm7LI9XYyvAiuejPN0rhCpEl3wiol3DIJBprn0YAK7DGhexk/38AifPPnxROVnYwVp65g5xHuSLmc7oZdrmXFoCoIyX6vqAWQCJzTXoi8slU6eEKemg6VVQyMUtOIyQUPTtryJsuKRGBDFojil8Fn11NnhTqKuQZtx6q93VTpzkQu3DVOCJ+p/FbC7rHn5pvnWlgl5/DglAyuF2xCKdDiWwt1uGA9qNa4Wc6rib3ThzKFm3gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yTMAvD5IyJaFssNJx7zMyBTmn1sGBgNjbcebgA75PlE=;
 b=ILnF+m0dBS6XmS5CMGx8tM/W03kOYPw+HLFa30VDV73n1V+Kth7HqS9CnbbeW1QLLJkC00XrkDTZzroIPAdGvKlT8TOpj8bI/qoYnaKV1thzRClaN6SazoAQElD/39AwjVuRJkVL1f7mJ+O9PLGhDA4cSIy/O0bLKjG0TztflZY=
Received: from MN2PR19CA0016.namprd19.prod.outlook.com (2603:10b6:208:178::29)
 by CY4PR0201MB3524.namprd02.prod.outlook.com (2603:10b6:910:95::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Fri, 24 Apr
 2020 20:58:22 +0000
Received: from BL2NAM02FT040.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:178:cafe::18) by MN2PR19CA0016.outlook.office365.com
 (2603:10b6:208:178::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13 via Frontend
 Transport; Fri, 24 Apr 2020 20:58:22 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT040.mail.protection.outlook.com (10.152.77.193) with Microsoft SMTP
 Server id 15.20.2937.19 via Frontend Transport; Fri, 24 Apr 2020 20:58:22
 +0000
Received: from [149.199.38.66] (port=33301 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Nm-0002D5-MP; Fri, 24 Apr 2020 13:57:10 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Ov-0007N4-LV; Fri, 24 Apr 2020 13:58:21 -0700
Received: from xsj-pvapsmtp01 (smtp2.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03OKwJck030385; 
 Fri, 24 Apr 2020 13:58:19 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Ot-0007Lo-Cr; Fri, 24 Apr 2020 13:58:19 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v5 12/25] firmware: xilinx: Remove eemi ops for reset_assert
Date: Fri, 24 Apr 2020 13:57:54 -0700
Message-Id: <1587761887-4279-13-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587761887-4279-1-git-send-email-jolly.shah@xilinx.com>
References: <1587761887-4279-1-git-send-email-jolly.shah@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(396003)(39860400002)(376002)(136003)(46966005)(70206006)(70586007)(2616005)(2906002)(107886003)(36756003)(186003)(9786002)(7416002)(8936002)(336012)(478600001)(426003)(6636002)(4326008)(81156014)(44832011)(26005)(82310400002)(81166007)(356005)(7696005)(6666004)(82740400003)(316002)(5660300002)(47076004)(54906003)(8676002);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 904cec81-87ae-4c73-e608-08d7e8923956
X-MS-TrafficTypeDiagnostic: CY4PR0201MB3524:
X-Microsoft-Antispam-PRVS: <CY4PR0201MB3524C69D437A9D4C617D8BB7B8D00@CY4PR0201MB3524.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:612;
X-Forefront-PRVS: 03838E948C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dc8q8+28P9nikI2cAuTnhe7915d3yDiPfOar/WPJCcguod6pX8SCruXwc97obVkLsdupqu5TlHe7H0RkQSYc5TgyhJN9QqFedzcA+a0noHyGNZydhjPouPWXwdUd29FpWek7hdQaUPQNEsCDUt0rVBDbJJSYSEZLQbiPpMuf8ParRYUrBVbXbD69cr/98gNJh0zHmS+7xNb4TXW5c1eabeFPcXRacfs8H3hf88ak8hbKNWIJsIrb9E0nE/+wcI5BjInLFQI6ZVT6sUIrA9Q94ar0Pm58ygotKy+zfGJETi2E8kfh3ORyK+iAAmvvzhyfEubRP3TkigBXvo490iORRSuNVK/CxvZ8V/iCDYbAZZJxWY2Ol5lsEiWU0vHfYR70mRtIt/8UNUd4d267BXUsPfCA9Cvex7ybhP6kz5ryqu+asluHAoB/jhw/FJ2UVsEodcayvPR31XtvDEfhWfkyi1CGiPhM16Pntls6t+sNto9r6pwTGdoXyJvTkPg+tr88BHcBf9Z7DWPohMa2TiGbSQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 20:58:22.0930 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 904cec81-87ae-4c73-e608-08d7e8923956
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR0201MB3524
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_135825_381525_BD058EA5 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.92.72 listed in list.dnswl.org]
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
