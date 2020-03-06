Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 413A217C92F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 00:54:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+gLFWNzJ98aJr1t8S8o9GgWaSuB3KjUNGxF58x9Qrps=; b=M2ZKnCoYGeryRj
	vw1DXPlZsh5yG/RIDlF13TlPSz2qoDtEm5yDdkfTvBVepSRmXq+/+3zy5qoKtyOCeNFFl20FWM1J2
	cT1KlVGAEVeTlWF2+KM/q2oh83VqXXQ3PQ3iGzrZU7HJVVjjAdGwhdrTJ7IeReZd5z4hkXWZD/ydk
	h9Y/CE+kGDkYiWEL8LH9vf2x8Pi2oXNehWDCMN3bh/NlmuJcW4BKEt+N7c9wFcODb3p1GThzrM+kM
	y25+My9xXbbtdAdZuNKd+GNiCxuDYVMVPUAVLroFVzdMBOU24DlmUhroteNAbw1bwqw4Kvy+a6zxx
	wQNyy9fBmVBLko3ZwDSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAMnc-0003tw-Kn; Fri, 06 Mar 2020 23:54:36 +0000
Received: from mail-co1nam11on2045.outbound.protection.outlook.com
 ([40.107.220.45] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAMhG-000624-Rf
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 23:48:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fwjAg1x67MqOrjr+snw0kcrd5UryN3Kfw/PSBXE2mtIz4eI1LVW6AmKvqQFRa6bu9JcLAMYcFhcJtBBB3GJTsFkS3apRFi2dyAALP9jUapV8kYgKeRokN2C7iMbukGta/KTkWJ0fWEfC0q57AlQc9ThrTF4ULh3lp3SG9QCx5gzEDgcgvXiCHgG9rYiWGYPQzksTFubusEwv5SNJqdcSxIKUAk7uMygRCQKvw0YELqJo/ez/c8Y3+SnpOCkF0W3JYsPAOswRFNR18MSDSUgVbTY8RIzyMVrLIAbDi10uf3iov0uL7gDUAjcXUl8KFD6tbP9+lMOdAocDMxWazr1jlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=szzjsTBXNOMXo/rAUkGcBUBt841Fl3wbgmX4xWQLpzk=;
 b=Utq/JztfNDDybfTa4VvJSA+wstq1nDKksMTksnMXVCZ8wGa4aKvSd3pdBC4bT/VOHj/NqFlrV2BliK4w2V76AXezrg5xXblpZRFNAzQOqJwHAsKz4/4hiT2vPlFZshRlkUqp+ePtQZ7feB7W8R1QALzkSjpwqLRCHY7GToqs7uHWZuUHrB+/U/O3Dh5ZJHdQGv2vpBOCoefL41TSBGK9wSPhLH0pASaVcKzthh9I2WqkTRk7L0i9xnYP/9+8ZmNhj1k9lPbKBZKDs43Vsm3I6veLz+yxWPqZEZJjD70Jt/+sznTH0OG2pQ7S788ggfVMQAtDoMV0jUXQlqkp2/gntg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=szzjsTBXNOMXo/rAUkGcBUBt841Fl3wbgmX4xWQLpzk=;
 b=Rq8jiMhJ52g/P57vjO6uBwOWFs25tLH0SO+xCT/5gmB4rsvdMat1+ZNyL92WvaPOv2p+VLYiLeW2gUnD4Uqhs7cclFdDNr+ibH2YymZY8E0X8QBwiWv7dCPv13Kd3DyjD3C6wlMH1Wr5i4A3JGWjPBPHAiW6wU08HaNvRstIOOE=
Received: from MN2PR19CA0005.namprd19.prod.outlook.com (2603:10b6:208:178::18)
 by CH2PR02MB6087.namprd02.prod.outlook.com (2603:10b6:610:4::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.18; Fri, 6 Mar
 2020 23:47:58 +0000
Received: from BL2NAM02FT029.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:178:cafe::b1) by MN2PR19CA0005.outlook.office365.com
 (2603:10b6:208:178::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.11 via Frontend
 Transport; Fri, 6 Mar 2020 23:47:58 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT029.mail.protection.outlook.com (10.152.77.100) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2793.11
 via Frontend Transport; Fri, 6 Mar 2020 23:47:58 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMhB-0003Q7-Jl; Fri, 06 Mar 2020 15:47:57 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh6-0002g8-Gl; Fri, 06 Mar 2020 15:47:52 -0800
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 026Nlk4f001009; 
 Fri, 6 Mar 2020 15:47:46 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh0-0002eg-9o; Fri, 06 Mar 2020 15:47:46 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v3 12/24] firmware: xilinx: Remove eemi ops for reset_assert
Date: Fri,  6 Mar 2020 15:47:20 -0800
Message-Id: <1583538452-1992-13-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
References: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(136003)(39860400002)(189003)(199004)(26005)(54906003)(6666004)(186003)(7696005)(2906002)(70206006)(70586007)(5660300002)(4326008)(7416002)(356004)(316002)(478600001)(107886003)(9786002)(336012)(6636002)(44832011)(36756003)(426003)(81156014)(8676002)(81166006)(8936002)(2616005)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6087; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ea0ffce6-d1f1-4d08-b76a-08d7c228cca8
X-MS-TrafficTypeDiagnostic: CH2PR02MB6087:
X-Microsoft-Antispam-PRVS: <CH2PR02MB60873C41DC7FF47ACF353B71B8E30@CH2PR02MB6087.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:612;
X-Forefront-PRVS: 0334223192
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oWYrGIXCZUbKl6cD0V1vcNfZ955A+hL6Id+t1/fhkuGszM/L0/ItsrJhHEOuL3qJMmtwA/nKzXw5yFnTUxnWRUzCUVoyHj5AZuQr6lq+51/Z1dIm4ohSuPS+ww9iBiqFc2d22Gx1KziqlJXc1AJdsqRTseWzXFmRrcSFIXuGwL8FKW7YyOkSBbGShIt+OS+hE6aM5rCR84KiIBS6txByE5yW49tBFZ+ESmU43xeXJgTCvRJ1hLmyhgATnN+qzYqUpBFzUyer8p8Hx0UwDO9tL0qDWDxAsZ2YDbwzlZLHaRhzmHzvPZgypRfveVvhlPB3UCy1Jj9p80TPeaINpfYYwSsZqYDQTKc55rLqyo6+gsNNg2mnuopWvmh6mji6BSExoAjNOvdY0fsEJO7oqaNz8mA6skV9KSHxek0/3xy6JRq0QT/7A/CtyUKWbtiBpWTtLV9hnBo+qNGS2adK0/bvtlWMGDexxLf3AfPe4vL0mwL5Zp3aFiwCB58lOw8I9tnk
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2020 23:47:58.1912 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ea0ffce6-d1f1-4d08-b76a-08d7c228cca8
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_154802_929367_7699BFEE 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.45 listed in list.dnswl.org]
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
 include/linux/firmware/xlnx-zynqmp.h |  4 ++--
 3 files changed, 11 insertions(+), 17 deletions(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 3f0ee1a..1fa52e6 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -610,12 +610,13 @@ EXPORT_SYMBOL_GPL(zynqmp_pm_set_sd_tapdelay);
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
@@ -766,7 +767,6 @@ static int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
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
index 0fde06f..f882895 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -288,8 +288,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*reset_assert)(const enum zynqmp_pm_reset reset,
-			    const enum zynqmp_pm_reset_action assert_flag);
 	int (*reset_get_status)(const enum zynqmp_pm_reset reset, u32 *status);
 	int (*init_finalize)(void);
 	int (*set_suspend_mode)(u32 mode);
@@ -321,6 +319,8 @@ int zynqmp_pm_get_pll_frac_mode(u32 clk_id, u32 *mode);
 int zynqmp_pm_set_pll_frac_data(u32 clk_id, u32 data);
 int zynqmp_pm_get_pll_frac_data(u32 clk_id, u32 *data);
 int zynqmp_pm_set_sd_tapdelay(u32 node_id, u32 type, u32 value);
+int zynqmp_pm_reset_assert(const enum zynqmp_pm_reset reset,
+			   const enum zynqmp_pm_reset_action assert_flag);
 int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
 			u32 arg2, u32 arg3, u32 *ret_payload);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
