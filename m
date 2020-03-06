Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C29D117C912
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 00:52:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E5Nc5r+awPmdKco162Njtva9gO5iWQKca/vT2nxEqp0=; b=leBTDBnOBb2K7P
	ip4Nfux2v/62qi9sx2nrOGy9thAm5cay/vYxUzyJfibHcrjsz48ruKvvh+uaJ7kY46b54obP4gFn5
	aY3TVeOTH9e9DhHwwkzTlVJbeO6Q+Gxxb5gcW448STca0r9Y2OxDnFqnu2E3SkaXxTlZx+dcaV3Yv
	Z9Gb39pa1bxmgOf+uWNhVScHa44qvukYAHfzKahDGxRG89FGfYad4GyvEJOS0gKd1eBk4Epk8Fsp1
	K5uq/TxEJSmgy5blyhmegsMbuKIx1CCWTV/nfC4ZHtzd+Kxbp1wth0nbLiPE5dlUfEt9TBIkIjVXx
	DxLZ+FiXDsU6O3DEgavA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAMlh-0002Cm-5M; Fri, 06 Mar 2020 23:52:37 +0000
Received: from mail-bn8nam12on2072.outbound.protection.outlook.com
 ([40.107.237.72] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAMhG-00060i-8X
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 23:48:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TMqvF8GmvcoFWMNRYVWcMe11WYJgVZsIPFuyr2kziFUsHbAyA9Ix/BPqNdjTH31/7sOqjLzHacV2powZexQ80jh9H70NSFX/ubYKRlzw9FwecYmROoown5oWi/Oy/+AGFHxOf+2KPrVCDV5+mqeOc4bJaVb5g1d6ushaT1STburMdg+xbpJwje7SQ+arEYs9TYufrzomQc26H8cpX5/ZEPHwzSx5SYMwpVX8swP0iL27coq016UY/iEs35I1TYUGr+lYUovlphPYijUScSoIHUQ1o25TOzAofjlxTlKy44PheaeNvn3Jzt656ygOXiaenQ051CaVAqbfr21MDFlT6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WLEAeyI+3oHi4tbKbUDvf4scnaRmOZx6yvHP+DrCo3g=;
 b=n9YCWyDagFCZXSioK82wK1Sfu4FFiHm2O9xYDf5bbXK4SMsHmF/q4Wr9BSt9FzQlqO+1ds/VFFTNdJgjoiXiEClhWdrsGvTd42JfKK7k/iHRGnW6B686/8+/vIUQdeNnsfpJuGsGvhErm2+UfdBNPKUv6eUCigyqN0gC6C7BYoPEphb6twpYx3Yj0gweBTzqn969fKV9gpbi8str+forzJl3SmIcViOXuoW61IQGWyLPQx6YA0+3/c9OQYUcHfCXN4XOKPPhJhA7OgVmqYxhZniwl9Hf5lxjtgoqJXz3e2ltV5aPQ8Y+aVrrFwWYYWC/syt0YsPbvzBYLYsSVF4FaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WLEAeyI+3oHi4tbKbUDvf4scnaRmOZx6yvHP+DrCo3g=;
 b=cSRFqadFFbEvnozSgbmn5G5MZRlo95N5lLOPerySa3y6trsWD/r7sI5gU1DIugEd/cnoiXCaW50ZOYnQ45cm9dGccnBchslpEtFe6YV4WuEFeWypVMZotYNo67Rf9/UzeMg3ciOe5jIJ0Hw/CWMTebe+gZC3vBrCETJlVUqIo5Q=
Received: from SN4PR0701CA0015.namprd07.prod.outlook.com
 (2603:10b6:803:28::25) by CY4PR02MB2855.namprd02.prod.outlook.com
 (2603:10b6:903:11f::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.15; Fri, 6 Mar
 2020 23:47:59 +0000
Received: from SN1NAM02FT012.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:28:cafe::21) by SN4PR0701CA0015.outlook.office365.com
 (2603:10b6:803:28::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.16 via Frontend
 Transport; Fri, 6 Mar 2020 23:47:59 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT012.mail.protection.outlook.com (10.152.72.95) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2793.11
 via Frontend Transport; Fri, 6 Mar 2020 23:47:58 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMhC-0003QH-HX; Fri, 06 Mar 2020 15:47:58 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh7-0002g8-ET; Fri, 06 Mar 2020 15:47:53 -0800
Received: from xsj-pvapsmtp01 (xsj-pvapsmtp01.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 026Nlk9w001005; 
 Fri, 6 Mar 2020 15:47:46 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh0-0002eg-25; Fri, 06 Mar 2020 15:47:46 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v3 07/24] firmware: xilinx: Remove eemi ops for
 clock_setdivider
Date: Fri,  6 Mar 2020 15:47:15 -0800
Message-Id: <1583538452-1992-8-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(346002)(136003)(39860400002)(376002)(396003)(189003)(199004)(2906002)(8676002)(81156014)(81166006)(7416002)(9786002)(6636002)(7696005)(478600001)(8936002)(36756003)(336012)(54906003)(426003)(26005)(5660300002)(70586007)(186003)(70206006)(356004)(44832011)(107886003)(316002)(4326008)(6666004)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR02MB2855; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d234a217-a76c-4054-447d-08d7c228cd14
X-MS-TrafficTypeDiagnostic: CY4PR02MB2855:
X-Microsoft-Antispam-PRVS: <CY4PR02MB285506D25F2D1AD9A3EFEAC7B8E30@CY4PR02MB2855.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:60;
X-Forefront-PRVS: 0334223192
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cGMT3Cjf/4XdVNroF2AAvplymVyfwoIT+miFTRk171Avft2HasTiRwAi8QV59VV83S5WId3EDR3bqidWQe1YJLC7myKFXCNeSGmizvRgiSIERJUOKhlD5ry/broLe+Xb5ms1nYhi5xNoTRhPPw289M0//pYiNagUSpg/9bn+NTXqqbZLTopTJW1lx7lO1DAoPOJHDz6BZrRofiigkw6VkUbzx1N1oIFft1bYXqVyOU35NXfgaBGATo21skjah3ZmtztyGDpvvbc2n+hn0oqKn08BEn05UcFhSmXUhzua8HFz8LYuz9cl81SIys5XhMBpXeCvk7gns58TaDPOYTqbuQcqnWODJoUKxXC3OihNL4rKuswQ6tTetrkK+rdP5aSKXOdWhfQjG3d4yBHG2hWQChXkuTgTkmQTnc8HZtXZkYSyBJeuxrjFZJ09MEyhFOBs
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2020 23:47:58.9621 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d234a217-a76c-4054-447d-08d7c228cd14
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB2855
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_154802_347861_C7C33133 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.72 listed in list.dnswl.org]
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
clock_setdivider.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/clk/zynqmp/divider.c         | 3 +--
 drivers/clk/zynqmp/pll.c             | 4 ++--
 drivers/firmware/xilinx/zynqmp.c     | 4 ++--
 include/linux/firmware/xlnx-zynqmp.h | 2 +-
 4 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
index e21f4ea..13041cd 100644
--- a/drivers/clk/zynqmp/divider.c
+++ b/drivers/clk/zynqmp/divider.c
@@ -219,7 +219,6 @@ static int zynqmp_clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
 	u32 div_type = divider->div_type;
 	u32 value, div;
 	int ret;
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 
 	value = zynqmp_divider_get_val(parent_rate, rate, divider->flags);
 	if (div_type == TYPE_DIV1) {
@@ -233,7 +232,7 @@ static int zynqmp_clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
 	if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
 		div = __ffs(div);
 
-	ret = eemi_ops->clock_setdivider(clk_id, div);
+	ret = zynqmp_pm_clock_setdivider(clk_id, div);
 
 	if (ret)
 		pr_warn_once("%s() set divider failed for %s, ret = %d\n",
diff --git a/drivers/clk/zynqmp/pll.c b/drivers/clk/zynqmp/pll.c
index 41f376a..95fad06 100644
--- a/drivers/clk/zynqmp/pll.c
+++ b/drivers/clk/zynqmp/pll.c
@@ -187,7 +187,7 @@ static int zynqmp_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 		rate = parent_rate * m;
 		frac = (parent_rate * f) / FRAC_DIV;
 
-		ret = eemi_ops->clock_setdivider(clk_id, m);
+		ret = zynqmp_pm_clock_setdivider(clk_id, m);
 		if (ret == -EUSERS)
 			WARN(1, "More than allowed devices are using the %s, which is forbidden\n",
 			     clk_name);
@@ -201,7 +201,7 @@ static int zynqmp_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 
 	fbdiv = DIV_ROUND_CLOSEST(rate, parent_rate);
 	fbdiv = clamp_t(u32, fbdiv, PLL_FBDIV_MIN, PLL_FBDIV_MAX);
-	ret = eemi_ops->clock_setdivider(clk_id, fbdiv);
+	ret = zynqmp_pm_clock_setdivider(clk_id, fbdiv);
 	if (ret)
 		pr_warn_once("%s() set divider failed for %s, ret = %d\n",
 			     __func__, clk_name, ret);
diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 8a0d5af..eb39735 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -405,11 +405,12 @@ EXPORT_SYMBOL_GPL(zynqmp_pm_clock_getstate);
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_clock_setdivider(u32 clock_id, u32 divider)
+int zynqmp_pm_clock_setdivider(u32 clock_id, u32 divider)
 {
 	return zynqmp_pm_invoke_fn(PM_CLOCK_SETDIVIDER, clock_id, divider,
 				   0, 0, NULL);
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_clock_setdivider);
 
 /**
  * zynqmp_pm_clock_getdivider() - Get the clock divider for given id
@@ -714,7 +715,6 @@ static int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.clock_setdivider = zynqmp_pm_clock_setdivider,
 	.clock_getdivider = zynqmp_pm_clock_getdivider,
 	.clock_setrate = zynqmp_pm_clock_setrate,
 	.clock_getrate = zynqmp_pm_clock_getrate,
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 44c6702..412b32f 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -288,7 +288,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*clock_setdivider)(u32 clock_id, u32 divider);
 	int (*clock_getdivider)(u32 clock_id, u32 *divider);
 	int (*clock_setrate)(u32 clock_id, u64 rate);
 	int (*clock_getrate)(u32 clock_id, u64 *rate);
@@ -317,6 +316,7 @@ int zynqmp_pm_query_data(struct zynqmp_pm_query_data qdata, u32 *out);
 int zynqmp_pm_clock_enable(u32 clock_id);
 int zynqmp_pm_clock_disable(u32 clock_id);
 int zynqmp_pm_clock_getstate(u32 clock_id, u32 *state);
+int zynqmp_pm_clock_setdivider(u32 clock_id, u32 divider);
 int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
 			u32 arg2, u32 arg3, u32 *ret_payload);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
