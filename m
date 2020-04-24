Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B28D1B817D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 23:04:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=40iMphXgLQHY2J+rHD3cgumzi//2UelLvaDmoAasres=; b=t2B5+FGxmkNRej
	BSclauHkJTgbla4bn1dM3nWziS//Ug/MaHrv6ztymYi0yO2Y/DEnSBfPlojIAGnbvJq1i6YtFAiOR
	XWzg1unFS3/O8Av1IHx2cDpjCBMl9uolj/rspjPUzU2eaW3c+07m1s9wZthseux7AlD7Uiwvjna/q
	fC/1nwjo3QPUrl8KMrNM0+ZdyoXZmCZX1Bk1otMvlvcZ+Mp30TIfP+ZnLcKWCA9uWAGcb0nzVpLc4
	y84+ueU3rLqsHso0mr6qUsBLgh6JFrJqVzkXegcRw0g3U43DSn2aA0wCdHAXmAgeE5zruuaGc/WSg
	s+7XDvyrd5lgZ3jWZSXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS5Uv-0004w4-AG; Fri, 24 Apr 2020 21:04:33 +0000
Received: from mail-bn7nam10on2048.outbound.protection.outlook.com
 ([40.107.92.48] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS5P9-0006S6-BY
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:58:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AOowrsm+ro+sLv9ZuKCSmB+khiyi1yAEQUKMKtxlIyMDQSiMixsi2maKKSth5jK8ofncma7boIX1c8Q4tbjc/FAxeWjUZ8f2xsygN6oIalPlnvCQ60vdkDG0PN1OCOmhgUEgeElF8+kAMZSw38ooaePx2rAMjx8NE6KDZO1rH/+nOXLJaHt93NKFodCmJJBLPZvE1PIeZ3HicvBdaSLwNTgwZvQsqXmKmZFQ8rlGrip0VUN6pe/GthSBK6jroZxkityoSoOW/gDKbICBMbyXPkv7CBN8I9KYahqYIFvuQOGJq9+T4/FDw/PEPa6qbuOOZK0NtIWZ1QVIuwQgOaJLHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2zYd+PdfJZ+DlAsLw2nYnCZox51wYur3HUdv1Q+qJEc=;
 b=YpHDrY1ePRz/zhLlENoYlic8PgMhX2w2WQKg84ZMyqIrmzzvPRa/qy3nQ36xj8OeuNoXKV8zaN/6zoNYmBqqRVsVlVC/9q1KGWEcMXs5FZa4GYWKGe4Vwi1OPgkAFwFpu/rTtlSZgfzrvpWO2swhFbj7trE2CnliJpFftfiLTPhle4JdeRLt/2bnRneSwdaPzsGK8EQe83XBHKq2LNL3GK5s6VGNSqkj1cbthVRt2eVUSnKrFYSK+cKZEu3tx35JIR/db6MYuzFq6HYQJ/gOEJaS2wl9P1EcK7rKM/spofwxyp4Ov/WHH3NfNZZ4QI+HauOEZWbCsfXoTOCt6Wh12g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2zYd+PdfJZ+DlAsLw2nYnCZox51wYur3HUdv1Q+qJEc=;
 b=pJFpZ3CIv5Vf2L2+gSAa2xEETfERPzu0rwlgVmZQiw274Iozl40XicMP8tQS4pgQIcA6SSXsmS8exdfgIgZrgWcDn3HhrrLNiGrq3MTqj2R3VOtL6PnaVBnb/d2RztsESmo6TskawRbM+v/7jceRkKsk2U3GaY6gLMkierKg+jQ=
Received: from CY4PR20CA0019.namprd20.prod.outlook.com (2603:10b6:903:98::29)
 by MN2PR02MB5887.namprd02.prod.outlook.com (2603:10b6:208:116::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Fri, 24 Apr
 2020 20:58:32 +0000
Received: from CY1NAM02FT015.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:98:cafe::f5) by CY4PR20CA0019.outlook.office365.com
 (2603:10b6:903:98::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13 via Frontend
 Transport; Fri, 24 Apr 2020 20:58:32 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT015.mail.protection.outlook.com (10.152.75.146) with Microsoft SMTP
 Server id 15.20.2937.19 via Frontend Transport; Fri, 24 Apr 2020 20:58:32
 +0000
Received: from [149.199.38.66] (port=33386 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Nw-0002DL-Vx; Fri, 24 Apr 2020 13:57:20 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5P5-0007Pe-V6; Fri, 24 Apr 2020 13:58:32 -0700
Received: from xsj-pvapsmtp01 (xsj-smtp1.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03OKwJMI030395; 
 Fri, 24 Apr 2020 13:58:19 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Ot-0007Lo-JD; Fri, 24 Apr 2020 13:58:19 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v5 15/25] firmware: xilinx: Remove eemi ops for
 set_suspend_mode
Date: Fri, 24 Apr 2020 13:57:57 -0700
Message-Id: <1587761887-4279-16-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(4636009)(136003)(39860400002)(396003)(376002)(346002)(46966005)(7696005)(478600001)(54906003)(186003)(2616005)(82740400003)(426003)(44832011)(47076004)(7416002)(9786002)(36756003)(336012)(107886003)(6636002)(8676002)(8936002)(4326008)(316002)(6666004)(81156014)(82310400002)(26005)(81166007)(2906002)(356005)(70586007)(5660300002)(70206006);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 85dadf57-cfdc-4c71-0ed9-08d7e8923f6b
X-MS-TrafficTypeDiagnostic: MN2PR02MB5887:
X-Microsoft-Antispam-PRVS: <MN2PR02MB58876C42751492E2E33ED955B8D00@MN2PR02MB5887.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:923;
X-Forefront-PRVS: 03838E948C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5CNOeXgqn1zHfCe0xwSSVEsjDZ/uu1Y79ZKp2HwDjPN/nGeH5ktm3PpzlcIYgSCrk27Vuh28evT1y0qaOdaeOXchF2LF64KULdajXgai5hamym0Y10Fkht2q4mMzqW51gCEDRXpa0hkiSSBgHlYTdGa5SeG1vSGj/mrehc+/B3xXEMEKcDrIYidS8OUCx+QkrMvXkt0dbTAgRxyNj+BeWJQzlDeN8y4dSaLc5OklDIOB6zht+sl8tNR8C9QlK8fb8SmBq18Yp9hmqpc9X9fLPAAMPkxO0lMmJW7NsKRyzrWNVjq8B9PXgZOiQXpu04J+DlqhNMxP7z0ipDIYSWUNJ6JU3zQ7Vvkupf15MHyHhoCJhMlLQop9MsMzrq7RdodTjkPZ/xv7riRhYXW3utTeORkfvyNo6tShp7LFi589G4eRfRHlLzAHaN+10wKfarTld0prCMfcFqQJ7qFmEn1v7RHGrykD1xk5FWiOi9zxvr2TsR6ORcrh27LB4/FDZfpVtR5F1LjYU2yNmM0RBLrMnw==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 20:58:32.2914 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 85dadf57-cfdc-4c71-0ed9-08d7e8923f6b
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB5887
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_135835_415046_901AD08F 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.92.48 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.92.48 listed in wl.mailspike.net]
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

Use direct function call instead of eemi ops for set_suspend_mode.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c     | 4 ++--
 drivers/soc/xilinx/zynqmp_power.c    | 6 +-----
 include/linux/firmware/xlnx-zynqmp.h | 6 +++++-
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 869366f..cc74165 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -724,10 +724,11 @@ EXPORT_SYMBOL_GPL(zynqmp_pm_init_finalize);
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_set_suspend_mode(u32 mode)
+int zynqmp_pm_set_suspend_mode(u32 mode)
 {
 	return zynqmp_pm_invoke_fn(PM_SET_SUSPEND_MODE, mode, 0, 0, 0, NULL);
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_set_suspend_mode);
 
 /**
  * zynqmp_pm_request_node() - Request a node with specific capabilities
@@ -809,7 +810,6 @@ static int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.set_suspend_mode = zynqmp_pm_set_suspend_mode,
 	.request_node = zynqmp_pm_request_node,
 	.release_node = zynqmp_pm_release_node,
 	.set_requirement = zynqmp_pm_set_requirement,
diff --git a/drivers/soc/xilinx/zynqmp_power.c b/drivers/soc/xilinx/zynqmp_power.c
index f4a9371..31ff49f 100644
--- a/drivers/soc/xilinx/zynqmp_power.c
+++ b/drivers/soc/xilinx/zynqmp_power.c
@@ -30,7 +30,6 @@ struct zynqmp_pm_work_struct {
 
 static struct zynqmp_pm_work_struct *zynqmp_pm_init_suspend_work;
 static struct mbox_chan *rx_chan;
-static const struct zynqmp_eemi_ops *eemi_ops;
 
 enum pm_suspend_mode {
 	PM_SUSPEND_MODE_FIRST = 0,
@@ -155,9 +154,6 @@ static ssize_t suspend_mode_store(struct device *dev,
 {
 	int md, ret = -EINVAL;
 
-	if (!eemi_ops->set_suspend_mode)
-		return ret;
-
 	for (md = PM_SUSPEND_MODE_FIRST; md < ARRAY_SIZE(suspend_modes); md++)
 		if (suspend_modes[md] &&
 		    sysfs_streq(suspend_modes[md], buf)) {
@@ -166,7 +162,7 @@ static ssize_t suspend_mode_store(struct device *dev,
 		}
 
 	if (!ret && md != suspend_mode) {
-		ret = eemi_ops->set_suspend_mode(md);
+		ret = zynqmp_pm_set_suspend_mode(md);
 		if (likely(!ret))
 			suspend_mode = md;
 	}
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 9aa5fe8..761caed 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -296,7 +296,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*set_suspend_mode)(u32 mode);
 	int (*request_node)(const u32 node,
 			    const u32 capabilities,
 			    const u32 qos,
@@ -336,6 +335,7 @@ int zynqmp_pm_reset_assert(const enum zynqmp_pm_reset reset,
 			   const enum zynqmp_pm_reset_action assert_flag);
 int zynqmp_pm_reset_get_status(const enum zynqmp_pm_reset reset, u32 *status);
 int zynqmp_pm_init_finalize(void);
+int zynqmp_pm_set_suspend_mode(u32 mode);
 #else
 static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 {
@@ -428,6 +428,10 @@ static inline int zynqmp_pm_init_finalize(void)
 {
 	return -ENODEV;
 }
+static inline int zynqmp_pm_set_suspend_mode(u32 mode)
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
