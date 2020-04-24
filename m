Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB0C1B814E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 22:58:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xEK44z/RbeX43M+KxoLlKC5lqfx8iUOgX93GLW+PG6M=; b=Hh4xzAFmkLf9sx
	oY2TsrzA6VV742O+aPKBtg2mfv/sbWRBTnBlnqho9mcVL3NC9YWp9Y7I6/iaGN5BgsEpWZwA5saG9
	l6lnV5ldKVsH+CivBZKOdYVM+RpeRvVb8aJRtW3e7yhoAXddYL/7+5oUjLPXEcuTuN/Wq8UWlIU6i
	wa2I4r3ZJLmILiZWlr/psBm3ZYkfQfUtbYRDAdp8CMarSTsm+MN3yyi7Fe5axzzN9xKd8Q1ciWeFa
	mUGw922JrNafWAplki45uUfyuKnPuGWfptDVd0NyZ7LvVM9aFidwA55AqWUmYW9jl/UBY5LHLFkQ3
	mrJksyPCMasQr/WdnHug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS5PI-0006MK-Ex; Fri, 24 Apr 2020 20:58:44 +0000
Received: from mail-mw2nam10on2062.outbound.protection.outlook.com
 ([40.107.94.62] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS5Oy-0006J5-RH
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:58:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Erc+Wz9+hHNXZFLodpfy8pIZU/GGwJcikPTktCykpC+exR1A409vIpKEY0Zas6SjNCaOIEza0LWOq9IMRYjUmBZPUdNd9VKyGmfu1sX8aee2ck8mVVuB5gIwP37jBqpX4WNK5yfW/D3218Ei1w7TRlOGOvvnC1+QoP8n+0RMCcEHe8pCYWIAdPBwNdk3SQtN9B8evYTwbFUWOMraKQlGVH/3nnAPLj1hNbC4svDQ42VjqiIkTbWUIR5/4sssBB0DL0ZAPo1ixr7HSu9dDtrhdE51bfDYVBiZwzJSd3zv4lgpWBBPr0gLgpLLPzLg3TmwcbiPGJZpODocx+WNVZSI/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lAl5DV4g6pOCd56rFXeJcxsQII7ho7EKejt8SioNjd4=;
 b=YagWgLhTbSkGE578cZDn76oGdNGOMGzmDRQCmGreqnvzkeB5+IUh13j7P2UFWla2PBYpC4hZmPwlq5sRZhyrKL3NYrAQDmgv/xNp6/xflpd/JEq6MgJzsKN5+OVaL12866ixkNr6I8EWiMg7WiHxqsXqrysPDlkK2s8smOG1ctdwC1HyztrRDhLk6UO/MX2QaWt6uQHGZUCyzEZEQh0JxfvCU8erm178OCE+C8aD9NJdfM7tYft98+F9Q6ymJHtHmY+JFcao1s93Bgcv6rMJ4wvu+WJzVck57SG5LxRs2gd00bi1atckq2DxqMkenzuaVONlZm+8K8iH/4b1N6nBmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lAl5DV4g6pOCd56rFXeJcxsQII7ho7EKejt8SioNjd4=;
 b=CZso5aMvF34pJGnn0C5HJ+MTLPcsuIdK0GKZUBJE6wmqQGxfjJoSvW9XSSCOC48vI6jZRDglIcVGB0Zb14DJBjizdeamv6kkswtbD9yCyOJmX9ezLsUU1XqC60gmg1oK6cPslvfsA10qnKMWU1aofDzItU8pZ/G9QGSZuueXF4c=
Received: from MN2PR20CA0009.namprd20.prod.outlook.com (2603:10b6:208:e8::22)
 by DM6PR02MB4155.namprd02.prod.outlook.com (2603:10b6:5:97::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Fri, 24 Apr
 2020 20:58:22 +0000
Received: from BL2NAM02FT056.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:e8:cafe::a7) by MN2PR20CA0009.outlook.office365.com
 (2603:10b6:208:e8::22) with Microsoft SMTP Server (version=TLS1_2,
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
 BL2NAM02FT056.mail.protection.outlook.com (10.152.77.221) with Microsoft SMTP
 Server id 15.20.2937.19 via Frontend Transport; Fri, 24 Apr 2020 20:58:21
 +0000
Received: from [149.199.38.66] (port=33263 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Nm-0002Co-6i; Fri, 24 Apr 2020 13:57:10 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Ov-0007N4-5y; Fri, 24 Apr 2020 13:58:21 -0700
Received: from xsj-pvapsmtp01 (maildrop.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03OKwJSn026315; 
 Fri, 24 Apr 2020 13:58:19 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Os-0007Lo-Uw; Fri, 24 Apr 2020 13:58:18 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v5 05/25] firmware: xilinx: Remove eemi ops for clock_disable
Date: Fri, 24 Apr 2020 13:57:47 -0700
Message-Id: <1587761887-4279-6-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(4636009)(346002)(136003)(39860400002)(396003)(376002)(46966005)(5660300002)(7696005)(54906003)(186003)(2616005)(9786002)(36756003)(82740400003)(47076004)(426003)(44832011)(478600001)(7416002)(8676002)(107886003)(6636002)(8936002)(4326008)(81156014)(316002)(6666004)(70586007)(26005)(81166007)(2906002)(356005)(82310400002)(70206006)(336012);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 76603057-084b-42f0-47c5-08d7e8923903
X-MS-TrafficTypeDiagnostic: DM6PR02MB4155:
X-Microsoft-Antispam-PRVS: <DM6PR02MB4155C1E9E106459AACB703F3B8D00@DM6PR02MB4155.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:107;
X-Forefront-PRVS: 03838E948C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sFnsmmkfDzNwyYeW1ad0EVgLGBqvyobpqZIOgQPSD2hnvkKxKmJZcfU5U8SQ3TArzMQQZ+SlMOkLc4SvoXgRxir0YT+di/CEC7x3KBNjRDV5KgcoqGF+THe3aNY4F0kOFlfQAZx/KAQW7g3r9ami07q30Yln/3C9nYge0u8BwSIt1fUidLMpFaJ/0HN+FJIyVAw0fXpytn0Zcnv64XcvzzZnw3HNS51nKHUVDYY/akdRKtF+ZsJF4/7WSOwZDPGk0ya7R3gzRQf9jpvMr8ytJwokAsISKRL7hSD6S51l2n7wtwB4oivKQRddarfSOw7eLjttvi8AJUzHe/NYP/YbQy9wA+fGhkGqg4SLs3hc3Ot6arJGSTfXQ/TDgZTP7yiUQntb8ChURpkqxJt4Fas3X4opZGzA6qkw1hCT7ZOqkgCNWvkJn3wjhPMDi8Ka+hLM0HGyxe+bxoK4hlPBZ29ZdvDFXYspN4mpsgAY3X/GW2kMj4/A92Q6946xcs0vDx11tmSHjfKlXUTkN3uFfjMrjQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 20:58:21.5470 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 76603057-084b-42f0-47c5-08d7e8923903
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_135824_883545_D291069B 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.62 listed in list.dnswl.org]
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

Use direct function call for clock_disable instead using of eemi ops.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/clk/zynqmp/clk-gate-zynqmp.c | 4 +---
 drivers/clk/zynqmp/pll.c             | 3 +--
 drivers/firmware/xilinx/zynqmp.c     | 4 ++--
 include/linux/firmware/xlnx-zynqmp.h | 6 +++++-
 4 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/zynqmp/clk-gate-zynqmp.c b/drivers/clk/zynqmp/clk-gate-zynqmp.c
index 437b921..11f1b97 100644
--- a/drivers/clk/zynqmp/clk-gate-zynqmp.c
+++ b/drivers/clk/zynqmp/clk-gate-zynqmp.c
@@ -37,7 +37,6 @@ static int zynqmp_clk_gate_enable(struct clk_hw *hw)
 	const char *clk_name = clk_hw_get_name(hw);
 	u32 clk_id = gate->clk_id;
 	int ret;
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 
 	ret = zynqmp_pm_clock_enable(clk_id);
 
@@ -58,9 +57,8 @@ static void zynqmp_clk_gate_disable(struct clk_hw *hw)
 	const char *clk_name = clk_hw_get_name(hw);
 	u32 clk_id = gate->clk_id;
 	int ret;
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 
-	ret = eemi_ops->clock_disable(clk_id);
+	ret = zynqmp_pm_clock_disable(clk_id);
 
 	if (ret)
 		pr_warn_once("%s() clock disable failed for %s, ret = %d\n",
diff --git a/drivers/clk/zynqmp/pll.c b/drivers/clk/zynqmp/pll.c
index 153aa67..38b8dbc 100644
--- a/drivers/clk/zynqmp/pll.c
+++ b/drivers/clk/zynqmp/pll.c
@@ -268,12 +268,11 @@ static void zynqmp_pll_disable(struct clk_hw *hw)
 	const char *clk_name = clk_hw_get_name(hw);
 	u32 clk_id = clk->clk_id;
 	int ret;
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 
 	if (!zynqmp_pll_is_enabled(hw))
 		return;
 
-	ret = eemi_ops->clock_disable(clk_id);
+	ret = zynqmp_pm_clock_disable(clk_id);
 	if (ret)
 		pr_warn_once("%s() clock disable failed for %s, ret = %d\n",
 			     __func__, clk_name, ret);
diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index da13627..d884805 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -366,10 +366,11 @@ EXPORT_SYMBOL_GPL(zynqmp_pm_clock_enable);
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_clock_disable(u32 clock_id)
+int zynqmp_pm_clock_disable(u32 clock_id)
 {
 	return zynqmp_pm_invoke_fn(PM_CLOCK_DISABLE, clock_id, 0, 0, 0, NULL);
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_clock_disable);
 
 /**
  * zynqmp_pm_clock_getstate() - Get the clock state for given id
@@ -738,7 +739,6 @@ static int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.clock_disable = zynqmp_pm_clock_disable,
 	.clock_getstate = zynqmp_pm_clock_getstate,
 	.clock_setdivider = zynqmp_pm_clock_setdivider,
 	.clock_getdivider = zynqmp_pm_clock_getdivider,
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 77365d1..f9a84d9 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -296,7 +296,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*clock_disable)(u32 clock_id);
 	int (*clock_getstate)(u32 clock_id, u32 *state);
 	int (*clock_setdivider)(u32 clock_id, u32 divider);
 	int (*clock_getdivider)(u32 clock_id, u32 *divider);
@@ -331,6 +330,7 @@ int zynqmp_pm_get_api_version(u32 *version);
 int zynqmp_pm_get_chipid(u32 *idcode, u32 *version);
 int zynqmp_pm_query_data(struct zynqmp_pm_query_data qdata, u32 *out);
 int zynqmp_pm_clock_enable(u32 clock_id);
+int zynqmp_pm_clock_disable(u32 clock_id);
 #else
 static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 {
@@ -353,6 +353,10 @@ static inline int zynqmp_pm_clock_enable(u32 clock_id)
 {
 	return -ENODEV;
 }
+static inline int zynqmp_pm_clock_disable(u32 clock_id)
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
