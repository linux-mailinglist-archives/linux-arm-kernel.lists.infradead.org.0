Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E8417C92A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 00:54:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fkk6Zl9O14Ow4NmNEh/IEqdl13gb4MK4M/MlXeQS5Sc=; b=uoKVBjDtFN4emS
	dGYslQXEifeo23/L5r37ss5Yp4O0TZMuQyNpTHz10m+VbC3DuOGF7i1siBLKgOk8+UJqZntvu+KoU
	tHEBqj6w80hMfRHHHR4kNdemDQveZOVNjDECHIg3sIxlIYgQOZhsDEgHUrAMG/PLQuYoGVU3FRZML
	UEkuXLxAg6LA3QaPTEKK5q1q2kZ6GvBQbm17ozJ0un3AiJz+4wBWBGb2yJKpo3kH7iy1Z5ISd2M+b
	sllNaID6PTh/UKiifCAwNGS9c6/DQEzmD5akVkl51hdsHUmHGctnejtTE8qrv6rBif9ml4CfVrBe4
	VmEZUNmm2EB2nEOKTZMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAMmq-00037X-KI; Fri, 06 Mar 2020 23:53:48 +0000
Received: from mail-dm6nam12on2065.outbound.protection.outlook.com
 ([40.107.243.65] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAMhG-00060k-6M
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 23:48:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NEJrVigc5J9FQCNEN2E6IGPzTieb8NpTtYIHfU/1vtAvxsa4ehs/Ex1dsI/CHBtlN7mP4VfXtWHXNY2vUI5Epr6nNqZSkdxCttaeD8wgF2yK62NTM0PHufC3N5CY/qVwKZHqro0rYEPLD6F8n/OtAgU0z5Ys6E+B7QypIAyeeK6O1oWsIUbW88iHSqwA0Gt2IYuBDGJxqdmSJhjTq0QzYZef9YBrPtEsg+LPiur4+8DY5f0W/jONpy354lTddbb6A5+IFATJouoUWeXfGLsuWzCFuGNWa3KLvH1dTxLyIwfVpoCYPnleCyKmtyVV+E1SRvTud7mBzx2VXrDr6ttAPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UIFPMQjWcfvn/E6eg5DJRyTxjVI4gzGYoKnBjIGBdYg=;
 b=X+/mY22UJIbXpmd6r1pM59gae0rh+XEqLbBS3IwbtArqYqRtGIlDERsmSdBf2OXzZ0hjH2qOEL26dA7sFEzRlgwQ7lni0DS/3XL+FgILNFDrGPy2MsgywYaFUPTVt30bu1bdF0PX3WnxdLL2qbNpP8CWVMndeZg4nbfyYYKpkvB5CN3yIG+/vX6TBk576pdYShJ3FJrvK93/db5bdwlwcIaYOEzq2GbS3FzXMDfAYMCTYopwzJDJnXNTlKNajf4O98CaCx9vWf8vEAFACDDccnKUmUkImGDQecIjE1Mn7PIEkQ8fTCJxq9gSR7KorlcvS1azQl+vHmBLm2rakklBMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UIFPMQjWcfvn/E6eg5DJRyTxjVI4gzGYoKnBjIGBdYg=;
 b=hsGEmySHoTjDp49GYmQsnVLGRrItsZVn8wAH+HmBqr0D4xkKjm1tJcDsCejwmXDorER8X8gI9de4y4QzrMxQo7YpdsMdgE5N7BOpz5L+hWrZH2aCg0YOFWjvr7662E+zlrXsnPDlwuFpMPvYvy/+MbLPEVtNhLpyN/Z0KTBffFc=
Received: from BL0PR01CA0033.prod.exchangelabs.com (2603:10b6:208:71::46) by
 DM6PR02MB4602.namprd02.prod.outlook.com (2603:10b6:5:2e::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.18; Fri, 6 Mar 2020 23:48:00 +0000
Received: from BL2NAM02FT003.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:71:cafe::66) by BL0PR01CA0033.outlook.office365.com
 (2603:10b6:208:71::46) with Microsoft SMTP Server (version=TLS1_2,
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
 BL2NAM02FT003.mail.protection.outlook.com (10.152.76.204) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2793.11
 via Frontend Transport; Fri, 6 Mar 2020 23:47:59 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMhD-0003QN-0G; Fri, 06 Mar 2020 15:47:59 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh7-0002g8-TV; Fri, 06 Mar 2020 15:47:53 -0800
Received: from xsj-pvapsmtp01 (smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 026NljcM002392; 
 Fri, 6 Mar 2020 15:47:46 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMgz-0002eg-QD; Fri, 06 Mar 2020 15:47:45 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v3 03/24] firmware: xilinx: Remove eemi ops for query_data
Date: Fri,  6 Mar 2020 15:47:11 -0800
Message-Id: <1583538452-1992-4-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(396003)(136003)(376002)(346002)(39860400002)(199004)(189003)(7696005)(8936002)(70206006)(5660300002)(6636002)(7416002)(8676002)(81156014)(81166006)(426003)(336012)(70586007)(6666004)(26005)(36756003)(478600001)(2906002)(54906003)(4326008)(356004)(316002)(2616005)(107886003)(186003)(9786002)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4602; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b1f80db3-db45-42e8-e533-08d7c228cd87
X-MS-TrafficTypeDiagnostic: DM6PR02MB4602:
X-Microsoft-Antispam-PRVS: <DM6PR02MB46021B0399B709632B9D40DDB8E30@DM6PR02MB4602.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:276;
X-Forefront-PRVS: 0334223192
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6DhAxtfXExbchhmE8r0PIPtkV9st/aTyR/KVv/P2MK3nO4/aFXGMhOnrQoFyTYcxxixrJe+Mz48suA/3hTydyKN95bw0lRRlEtzSB8kTvqMS1U97Uoe9v6+m+lHLibAtYC5s41kWWZRSFFQvadCevzatnnYMLrNscBYwZO0dwVh9b+zr4r75jcCzcbPH9uZ1smWwLoZnriDYI447ohomZID69ql5qf/IFOfAavoFsNVDoc5MHElsZ6zJ+sXV1Cc+CMO4TEpWCPUAVgMeNOIaQT+AAq+HjEq6UUWGvyKG7nDU36NTz+pGthQC8EHsj/0pAIcoK8JPZl6LyEwm3BQf1fN9YthB9FByxtXhqkENvyoGR8IC8VuylYtYbWWanjisuM7MbqyApPz58Ay6cQL2oax/kum0piZ7iCuYfhQ/Z3OQTy+HlEilk+L4nJy+facL
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2020 23:47:59.6027 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b1f80db3-db45-42e8-e533-08d7c228cd87
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4602
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_154802_274996_7416F818 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.65 listed in list.dnswl.org]
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

Use direct function call for query_data instead of using eemi ops.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/clk/zynqmp/clkc.c              | 17 ++++++-----------
 drivers/clk/zynqmp/divider.c           |  3 +--
 drivers/firmware/xilinx/zynqmp-debug.c |  3 +--
 drivers/firmware/xilinx/zynqmp.c       |  4 ++--
 include/linux/firmware/xlnx-zynqmp.h   |  2 +-
 5 files changed, 11 insertions(+), 18 deletions(-)

diff --git a/drivers/clk/zynqmp/clkc.c b/drivers/clk/zynqmp/clkc.c
index 10e89f2..5eed5ce 100644
--- a/drivers/clk/zynqmp/clkc.c
+++ b/drivers/clk/zynqmp/clkc.c
@@ -134,7 +134,6 @@ static struct clk_hw *(* const clk_topology[]) (const char *name, u32 clk_id,
 static struct zynqmp_clock *clock;
 static struct clk_hw_onecell_data *zynqmp_data;
 static unsigned int clock_max_idx;
-static const struct zynqmp_eemi_ops *eemi_ops;
 
 /**
  * zynqmp_is_valid_clock() - Check whether clock is valid or not
@@ -206,7 +205,7 @@ static int zynqmp_pm_clock_get_num_clocks(u32 *nclocks)
 
 	qdata.qid = PM_QID_CLOCK_GET_NUM_CLOCKS;
 
-	ret = eemi_ops->query_data(qdata, ret_payload);
+	ret = zynqmp_pm_query_data(qdata, ret_payload);
 	*nclocks = ret_payload[1];
 
 	return ret;
@@ -231,7 +230,7 @@ static int zynqmp_pm_clock_get_name(u32 clock_id,
 	qdata.qid = PM_QID_CLOCK_GET_NAME;
 	qdata.arg1 = clock_id;
 
-	eemi_ops->query_data(qdata, ret_payload);
+	zynqmp_pm_query_data(qdata, ret_payload);
 	memcpy(response, ret_payload, sizeof(*response));
 
 	return 0;
@@ -265,7 +264,7 @@ static int zynqmp_pm_clock_get_topology(u32 clock_id, u32 index,
 	qdata.arg1 = clock_id;
 	qdata.arg2 = index;
 
-	ret = eemi_ops->query_data(qdata, ret_payload);
+	ret = zynqmp_pm_query_data(qdata, ret_payload);
 	memcpy(response, &ret_payload[1], sizeof(*response));
 
 	return ret;
@@ -296,7 +295,7 @@ struct clk_hw *zynqmp_clk_register_fixed_factor(const char *name, u32 clk_id,
 	qdata.qid = PM_QID_CLOCK_GET_FIXEDFACTOR_PARAMS;
 	qdata.arg1 = clk_id;
 
-	ret = eemi_ops->query_data(qdata, ret_payload);
+	ret = zynqmp_pm_query_data(qdata, ret_payload);
 	if (ret)
 		return ERR_PTR(ret);
 
@@ -339,7 +338,7 @@ static int zynqmp_pm_clock_get_parents(u32 clock_id, u32 index,
 	qdata.arg1 = clock_id;
 	qdata.arg2 = index;
 
-	ret = eemi_ops->query_data(qdata, ret_payload);
+	ret = zynqmp_pm_query_data(qdata, ret_payload);
 	memcpy(response, &ret_payload[1], sizeof(*response));
 
 	return ret;
@@ -364,7 +363,7 @@ static int zynqmp_pm_clock_get_attributes(u32 clock_id,
 	qdata.qid = PM_QID_CLOCK_GET_ATTRIBUTES;
 	qdata.arg1 = clock_id;
 
-	ret = eemi_ops->query_data(qdata, ret_payload);
+	ret = zynqmp_pm_query_data(qdata, ret_payload);
 	memcpy(response, &ret_payload[1], sizeof(*response));
 
 	return ret;
@@ -738,10 +737,6 @@ static int zynqmp_clock_probe(struct platform_device *pdev)
 	int ret;
 	struct device *dev = &pdev->dev;
 
-	eemi_ops = zynqmp_pm_get_eemi_ops();
-	if (IS_ERR(eemi_ops))
-		return PTR_ERR(eemi_ops);
-
 	ret = zynqmp_clk_setup(dev->of_node);
 
 	return ret;
diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
index 4be2cc7..e21f4ea 100644
--- a/drivers/clk/zynqmp/divider.c
+++ b/drivers/clk/zynqmp/divider.c
@@ -258,7 +258,6 @@ static const struct clk_ops zynqmp_clk_divider_ops = {
  */
 u32 zynqmp_clk_get_max_divisor(u32 clk_id, u32 type)
 {
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 	struct zynqmp_pm_query_data qdata = {0};
 	u32 ret_payload[PAYLOAD_ARG_CNT];
 	int ret;
@@ -266,7 +265,7 @@ u32 zynqmp_clk_get_max_divisor(u32 clk_id, u32 type)
 	qdata.qid = PM_QID_CLOCK_GET_MAX_DIVISOR;
 	qdata.arg1 = clk_id;
 	qdata.arg2 = type;
-	ret = eemi_ops->query_data(qdata, ret_payload);
+	ret = zynqmp_pm_query_data(qdata, ret_payload);
 	/*
 	 * To maintain backward compatibility return maximum possible value
 	 * (0xFFFF) if query for max divisor is not successful.
diff --git a/drivers/firmware/xilinx/zynqmp-debug.c b/drivers/firmware/xilinx/zynqmp-debug.c
index de4faf2..c396f29 100644
--- a/drivers/firmware/xilinx/zynqmp-debug.c
+++ b/drivers/firmware/xilinx/zynqmp-debug.c
@@ -85,7 +85,6 @@ static int get_pm_api_id(char *pm_api_req, u32 *pm_id)
 
 static int process_api_request(u32 pm_id, u64 *pm_api_arg, u32 *pm_api_ret)
 {
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 	u32 pm_api_version;
 	int ret;
 	struct zynqmp_pm_query_data qdata = {0};
@@ -102,7 +101,7 @@ static int process_api_request(u32 pm_id, u64 *pm_api_arg, u32 *pm_api_ret)
 		qdata.arg2 = pm_api_arg[2];
 		qdata.arg3 = pm_api_arg[3];
 
-		ret = eemi_ops->query_data(qdata, pm_api_ret);
+		ret = zynqmp_pm_query_data(qdata, pm_api_ret);
 		if (ret)
 			break;
 
diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 02d89e9..e25a540 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -326,7 +326,7 @@ static int get_set_conduit_method(struct device_node *np)
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_query_data(struct zynqmp_pm_query_data qdata, u32 *out)
+int zynqmp_pm_query_data(struct zynqmp_pm_query_data qdata, u32 *out)
 {
 	int ret;
 
@@ -340,6 +340,7 @@ static int zynqmp_pm_query_data(struct zynqmp_pm_query_data qdata, u32 *out)
 	 */
 	return qdata.qid == PM_QID_CLOCK_GET_NAME ? 0 : ret;
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_query_data);
 
 /**
  * zynqmp_pm_clock_enable() - Enable the clock for given id
@@ -710,7 +711,6 @@ static int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.query_data = zynqmp_pm_query_data,
 	.clock_enable = zynqmp_pm_clock_enable,
 	.clock_disable = zynqmp_pm_clock_disable,
 	.clock_getstate = zynqmp_pm_clock_getstate,
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 84b4160..283d039 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -288,7 +288,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*query_data)(struct zynqmp_pm_query_data qdata, u32 *out);
 	int (*clock_enable)(u32 clock_id);
 	int (*clock_disable)(u32 clock_id);
 	int (*clock_getstate)(u32 clock_id, u32 *state);
@@ -317,6 +316,7 @@ struct zynqmp_eemi_ops {
 
 int zynqmp_pm_get_api_version(u32 *version);
 int zynqmp_pm_get_chipid(u32 *idcode, u32 *version);
+int zynqmp_pm_query_data(struct zynqmp_pm_query_data qdata, u32 *out);
 int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
 			u32 arg2, u32 arg3, u32 *ret_payload);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
