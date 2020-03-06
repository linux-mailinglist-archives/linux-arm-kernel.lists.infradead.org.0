Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 572AE17C95F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 01:04:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I0xEoimkX2UGMG2gEUayibS4FdOxIgprIjdNtJEdJBI=; b=PTlrGWc1z0JY4O
	bVCdvvg25HhQ9Ba5cL0NT9Q93/U678Hfy4al5X+xD5VHMmR9DO5Zv1deud5qgK3BziQLGROlWD6kN
	ioUlQKY0kSEDZlRxmLdMRfqyFDGJkNb3LYaoQnqzTrI6WNPoW4lgIAj07+3zDj/FqJnNhMvdJZUnr
	BSoyyBcMBUSbRM5w6SbyANwWWgRt7vRL0LCwbogLpSIjRdlDF2jzUOSec4b5P+6C2q+w4/0Y6wlg+
	QIUqp+16qhFZ3gix0y0DYtDMYj+nRQun1Vy2BvpUQ24gu196kTGJundw7chKa7rPtoB6Y2ZgoHIMy
	r6XpBB7tJhFlosmyyQAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAMxC-0000nC-JN; Sat, 07 Mar 2020 00:04:30 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAMwo-0008RG-FA
 for linux-arm-kernel@bombadil.infradead.org; Sat, 07 Mar 2020 00:04:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=I+ScBMBhsGnY/yUTCLQqXP9AduipKfNSXCxGd8xC7Do=; b=qU/YYAX4/VqJjltlEgCxDcmEaW
 Ge/HHbHcvYu0YcolTLSjvM4IsveUGDOQCDornJwFEFbUoqMiqRhWOA2kTRE0N3sqr27Ki88CeBk4i
 zZ4dtTOaSHRTvLWbK+upjFAHxRpLucAhH/Wk9p6EjVHUhFbyP/nmgq7cleXI9DgKQZ7peMWApl0N0
 gavPxlS7RmZdzCB6mGCo3WXgJAYb6D4ENF5tK8kAXOfbwxOM9wxXCfSlWGKiS0G22Lsyd6Vvd5ilZ
 fea1pNJirq/jZTv8sD3kTXpfg33oQ6vH7hh4eEVwKfwwy1e88p+mi87Lgb1+R5VO+m7yradxpgHaC
 UpwjAFHQ==;
Received: from mail-bn8nam12on2045.outbound.protection.outlook.com
 ([40.107.237.45] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAMhI-0004bL-DJ
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 23:48:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YcKx1/DO28lcFLA4u/gv2Al/+NRhP13/s4+BZ7vdoXSXToiX1ezmgHIjsJbQASj9gApdm3iqN0UUzHqb62EMY8wmApwiUeLwWoqFDeFbSuOjbSobLOvmZ45Zs3fXnFEhWsZvZpIAU9gIs1Tl+Ew1E25kPo0zQgNpAshseopK622xpxbDZqEIJP/ydxCZJcz2LLs+Cf1w3t3KJErYNQ3U1TxJnthB+Or9Zvinx7QI/L+I4sbEIhprK7fa62eJdCGc0ZJusUNnxzbmCO5DAkfjwDLxpI6WaTkQXMM7QpAqshS0uZFvz/VwxQAwhQ81SiEiDBl/ZTZCLE37acL/iYKFkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I+ScBMBhsGnY/yUTCLQqXP9AduipKfNSXCxGd8xC7Do=;
 b=JoX5Arrd/7Eu7N6v2UGsUBNwU7JdM34xigG9KlBtpsGfGtyhRXE64yd0kPgBeAINQtYd6zqqbQdU72LXIc07uZQNWlF5JvpZkmuPQgOPuAyyejy2fjnyxtbof4h3A4nqCDlUQYcivfI9Gjs8rj4WefY/2gZJlnm7uh+K3K5J/miDJYkhl5Rclfqja5fZoJMcHJ+NoVxKgqSOmpsPhOjnvPhD/HT0+u4hTeFsMKx5korldtlMHVlG18SWvIQThppBufz7LHZO+LJs9EZL4vrTEqK/U34oX2c2nCbTASv8llt76ZDcBntH5p4L0+lPtFvTYX92B7UJ0wCByYbE+p/AUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I+ScBMBhsGnY/yUTCLQqXP9AduipKfNSXCxGd8xC7Do=;
 b=rYo0GEwlx9LPhKUlDgVhHdPiixbcNMpQOpbx1yaeXjCIdodo+teXY17Mt5URoti77GHIuxW9V0zhOzQQwY5uTWud6gZmRAupxFvfrCa44gJUXDcZrdoLjNsHEPc4rG/Ym6XMHa/RMPznkB21bYXRFgKYV9gcL14YXxuoSlxho2s=
Received: from MN2PR10CA0012.namprd10.prod.outlook.com (2603:10b6:208:120::25)
 by DM6PR02MB4074.namprd02.prod.outlook.com (2603:10b6:5:96::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.18; Fri, 6 Mar
 2020 23:47:59 +0000
Received: from BL2NAM02FT022.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:120:cafe::23) by MN2PR10CA0012.outlook.office365.com
 (2603:10b6:208:120::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.11 via Frontend
 Transport; Fri, 6 Mar 2020 23:47:59 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT022.mail.protection.outlook.com (10.152.77.153) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2793.11
 via Frontend Transport; Fri, 6 Mar 2020 23:47:59 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMhC-0003QK-QY; Fri, 06 Mar 2020 15:47:58 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh7-0002g8-NP; Fri, 06 Mar 2020 15:47:53 -0800
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 026NlkRQ002398; 
 Fri, 6 Mar 2020 15:47:46 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh0-0002eg-2n; Fri, 06 Mar 2020 15:47:46 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v3 08/24] firmware: xilinx: Remove eemi ops for
 clock_getdivider
Date: Fri,  6 Mar 2020 15:47:16 -0800
Message-Id: <1583538452-1992-9-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(396003)(136003)(189003)(199004)(70586007)(336012)(8936002)(26005)(107886003)(44832011)(54906003)(6636002)(186003)(4326008)(7416002)(70206006)(5660300002)(7696005)(81166006)(81156014)(2906002)(9786002)(2616005)(36756003)(478600001)(8676002)(316002)(6666004)(356004)(426003)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4074; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5fbcfae6-734f-469f-9cf5-08d7c228cd5e
X-MS-TrafficTypeDiagnostic: DM6PR02MB4074:
X-Microsoft-Antispam-PRVS: <DM6PR02MB40747271871A0F61D5510C7BB8E30@DM6PR02MB4074.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:229;
X-Forefront-PRVS: 0334223192
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y/q0xPfZrXBnL/UrZDXUf12ukXWFMw3+MV/ZXAYhiP07mIcBUUBWsLpv+Gwmcu/A/YCVNw7kI7x8nQaOgbdDpJz+q0YhMTj9a2gcG7c+lT2pTqF4k0dDAZ/Sqeij3HpgVppd9zxjwYAdKdIOS4dBIt0gJg8yV4NudSPVzNsyj1HQf9J6nCXJc+ECFsDYMozRC3ZO8b5U+q1QE0ZmN5ktTs7ws2fZo2PCjGPq+0ya0wX8+N1DLCKDZsekUArLKYz2j5eEWtqWobNXStJketH0jA7rehYo8mQpnhDoAyHeHZZ+mAB7OQpcF6GLMY+/zWfCEYoxj9gRpTBDLc84L9aDFZnaUZEQVl+2+zjjgMgiMZrrBf9tmLikQTKzjxL3wRGJB46HqaWG8mX4eBTKIcOXHSJ+tFHPVNOKO1P4JigDK0f45deA8ZsguKeo4psMNhiOEAQjqZjDYTq5Oa63ZCktopJGNNH+5HFMInk8kwQeB/yuUqB0EU02tgnCI2ki0uPa
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2020 23:47:59.3837 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fbcfae6-734f-469f-9cf5-08d7c228cd5e
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4074
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.45 listed in list.dnswl.org]
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
clock_getdivider.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/clk/zynqmp/divider.c         | 6 ++----
 drivers/clk/zynqmp/pll.c             | 2 +-
 drivers/firmware/xilinx/zynqmp.c     | 4 ++--
 include/linux/firmware/xlnx-zynqmp.h | 2 +-
 4 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
index 13041cd..8eed715 100644
--- a/drivers/clk/zynqmp/divider.c
+++ b/drivers/clk/zynqmp/divider.c
@@ -83,9 +83,8 @@ static unsigned long zynqmp_clk_divider_recalc_rate(struct clk_hw *hw,
 	u32 div_type = divider->div_type;
 	u32 div, value;
 	int ret;
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 
-	ret = eemi_ops->clock_getdivider(clk_id, &div);
+	ret = zynqmp_pm_clock_getdivider(clk_id, &div);
 
 	if (ret)
 		pr_warn_once("%s() get divider failed for %s, ret = %d\n",
@@ -163,11 +162,10 @@ static long zynqmp_clk_divider_round_rate(struct clk_hw *hw,
 	u32 div_type = divider->div_type;
 	u32 bestdiv;
 	int ret;
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 
 	/* if read only, just return current value */
 	if (divider->flags & CLK_DIVIDER_READ_ONLY) {
-		ret = eemi_ops->clock_getdivider(clk_id, &bestdiv);
+		ret = zynqmp_pm_clock_getdivider(clk_id, &bestdiv);
 
 		if (ret)
 			pr_warn_once("%s() get divider failed for %s, ret = %d\n",
diff --git a/drivers/clk/zynqmp/pll.c b/drivers/clk/zynqmp/pll.c
index 95fad06..73fb5bb 100644
--- a/drivers/clk/zynqmp/pll.c
+++ b/drivers/clk/zynqmp/pll.c
@@ -141,7 +141,7 @@ static unsigned long zynqmp_pll_recalc_rate(struct clk_hw *hw,
 	int ret;
 	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 
-	ret = eemi_ops->clock_getdivider(clk_id, &fbdiv);
+	ret = zynqmp_pm_clock_getdivider(clk_id, &fbdiv);
 	if (ret)
 		pr_warn_once("%s() get divider failed for %s, ret = %d\n",
 			     __func__, clk_name, ret);
diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index eb39735..2fc6e17 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -422,7 +422,7 @@ EXPORT_SYMBOL_GPL(zynqmp_pm_clock_setdivider);
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_clock_getdivider(u32 clock_id, u32 *divider)
+int zynqmp_pm_clock_getdivider(u32 clock_id, u32 *divider)
 {
 	u32 ret_payload[PAYLOAD_ARG_CNT];
 	int ret;
@@ -433,6 +433,7 @@ static int zynqmp_pm_clock_getdivider(u32 clock_id, u32 *divider)
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_clock_getdivider);
 
 /**
  * zynqmp_pm_clock_setrate() - Set the clock rate for given id
@@ -715,7 +716,6 @@ static int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.clock_getdivider = zynqmp_pm_clock_getdivider,
 	.clock_setrate = zynqmp_pm_clock_setrate,
 	.clock_getrate = zynqmp_pm_clock_getrate,
 	.clock_setparent = zynqmp_pm_clock_setparent,
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 412b32f..b55232e 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -288,7 +288,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*clock_getdivider)(u32 clock_id, u32 *divider);
 	int (*clock_setrate)(u32 clock_id, u64 rate);
 	int (*clock_getrate)(u32 clock_id, u64 *rate);
 	int (*clock_setparent)(u32 clock_id, u32 parent_id);
@@ -317,6 +316,7 @@ int zynqmp_pm_clock_enable(u32 clock_id);
 int zynqmp_pm_clock_disable(u32 clock_id);
 int zynqmp_pm_clock_getstate(u32 clock_id, u32 *state);
 int zynqmp_pm_clock_setdivider(u32 clock_id, u32 divider);
+int zynqmp_pm_clock_getdivider(u32 clock_id, u32 *divider);
 int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
 			u32 arg2, u32 arg3, u32 *ret_payload);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
