Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DD61A3A62
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 21:17:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GJza9cDDPdlW6hakorXGlE8LciP+i06ZkuWk3e47jYY=; b=uYvBH1n5cylrze
	uIUs7tb8ak8V+X0RbyN1TsGd48gzLyz0npz8QW9O4UTicFkSfNpmaoPs8WJlAcx6giYWICHLFor4h
	bXeSgIZXbuA/U+kGJIEDHXbTzpaH/9fEymPq+bQ9UOkuN+ZbQG+txz9lOD97j5CUy6APzAPikVaUB
	L0jTmk+1qGxjxjdfyM+mq7f8DdmSRwfbn0uM+vTCLL1tXg+VDEAc5Qw4hxEgi/Rhf/LAtSgfv69xu
	68cxDkaSnqkiaeEX5E9cRtK1gqoeSZQJx7Q69ytCKbtwsjqP0c7uNEgBx22uZ2MKhW6/OLBjdEmQd
	dnFt/vRweFBhVLJ/I0Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMcgC-0005RT-CL; Thu, 09 Apr 2020 19:17:36 +0000
Received: from mail-mw2nam10on2057.outbound.protection.outlook.com
 ([40.107.94.57] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMcbe-0007Mw-FX
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 19:13:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hGRX0IXveZyYb3ZRr53/n5gKy6CbFwR7xZ7wm9cbSk9aKsv8Zahx8Q1EVQV9fl04/8rc+udxjjiPf4tIPbeRbYSIncRdZPfZ64UKnPT3T8kKM1FODtyRVjCRqLQe5xx4bkCyyi/O+M5L1VWQoUiWRnADYO/1KRrDfWpyTirgo6vK463wQBfv9p7kKWT45T97hT6jbIGsysxK7q6Qlr8xRjCeq4dODA8lPw9rhqIZwjsO+MvBlcoaDVCZTBLnoEbQMzsru+VPmhmzhtgVLnAjkK2eettE/eTM7xJfdnM1xUghmTQCUqA8g4yXqLPk5yypYgMy1kNZ2QsMY1kFhTl6JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sATqa6bpBY+UfFlOpuZKml9pRkY7bkpKT1EGHVTM0wU=;
 b=SLpBRLbzJQ5tYXkHnRmhonw+990XlfS9D1CBQ0YXxkZT/tyuHKa3FpItrD8rjxjeBq2Nw6AScJmFdSkdZdbfErXpH+4lZ+RNYnEWJZB3ZNun4v+oWScKU+v9omv0nJmMrl/pBffetLP+4vam63eSonJtIrS26WT28jH26S+FXlwFU/otmrXLxJhMAZCdGAjhlDF4Sty5TCUAMZoOcIPt9Ae8x1B7KxYZPOBMVAg+BDGls53FyLH99yd6W+MhqzkkzyZ57CF+kZO97pjLUqdV8Z84sLATJ1niObs0HWWRiGajX5YVnsiovamlCsxF3Oe/h9TtjRxSMnfX8OEKeyuBaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sATqa6bpBY+UfFlOpuZKml9pRkY7bkpKT1EGHVTM0wU=;
 b=cFgURyZrggePOGQSFKN1fa/uEoG0FT6JwX2ReA5EKEv8kAPxMx4PfodkU9eSdH5jmYrefwEH+zqkL5EpVU+7xBYyZVp4Ne0piK77TIbnIPUfBuBlXHy9wlh6VjYkGQm0U4xc0hHbYx+cGpky5U/2ZDswDeElkU87qZA2p/tePow=
Received: from MN2PR20CA0044.namprd20.prod.outlook.com (2603:10b6:208:235::13)
 by DM5PR02MB2843.namprd02.prod.outlook.com (2603:10b6:3:113::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Thu, 9 Apr
 2020 19:12:52 +0000
Received: from BL2NAM02FT043.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:235:cafe::b0) by MN2PR20CA0044.outlook.office365.com
 (2603:10b6:208:235::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15 via Frontend
 Transport; Thu, 9 Apr 2020 19:12:52 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT043.mail.protection.outlook.com (10.152.77.95) with Microsoft SMTP
 Server id 15.20.2900.15 via Frontend Transport; Thu, 9 Apr 2020 19:12:51
 +0000
Received: from [149.199.38.66] (port=44422 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbA-000612-Ob; Thu, 09 Apr 2020 12:12:24 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbb-0007NV-6u; Thu, 09 Apr 2020 12:12:51 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbR-0007La-Rn; Thu, 09 Apr 2020 12:12:41 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v4 03/25] firmware: xilinx: Remove eemi ops for query_data
Date: Thu,  9 Apr 2020 12:11:52 -0700
Message-Id: <1586459534-8997-4-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(136003)(396003)(46966005)(107886003)(6636002)(2616005)(44832011)(54906003)(2906002)(478600001)(4326008)(82740400003)(426003)(336012)(5660300002)(316002)(7416002)(6666004)(9786002)(47076004)(356004)(81166007)(36756003)(7696005)(70586007)(70206006)(26005)(186003)(8676002)(8936002)(81156014);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 77065247-e38b-4918-d075-08d7dcb9ffe5
X-MS-TrafficTypeDiagnostic: DM5PR02MB2843:
X-Microsoft-Antispam-PRVS: <DM5PR02MB2843B2A95333A6CF7FFFA976B8C10@DM5PR02MB2843.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:276;
X-Forefront-PRVS: 0368E78B5B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dJnCecfD8yHryPCGEncnB7Ht7uev2WtRcNUHnoye5ZfaZAgWZ02uqeRX/i+RKWk5Zx7ZBZgu1ScZQdHjCOq8m9PybDzIwTk9Fk5IbcarC7Y/4O1gVKtKpyY9wxpye0kZibgc0ykXG2Y/0UMHYFzK2lEpr3dnZ5AnDdBnOPV1oF2W7zonwCQRsyIQu7DsXoZ/krA3mYDkf/L9OsM/Wr8RhEz1RpT+SALRjCLD2igZ76ayCsTs9aygRP+qrEAvT8ACFWwWdGDIbmyd8mrlgrkCQtebrAQzv+7UzqqSGRQ9qCuNw7l/Fo1WS2bw6X3BurTVYMyyagUB0T8B2gRP2eORAOLftXqPDcjIH+QAhETq94DzwFtVDq3MdvHonKvRCPZitFDQspJ8dL9xjzlH5JinkDION3pbE4vosG4lbcibYAqMQvMPRE2fkW+ARmGI+z9FPq4Ipk+u4LSnMIIKX2zkm7xi1mpEKxXYp4lOlo3jVMqBcJmiJ6Dy0YbWmJXsTScHyrBPDwjUR/ScSAcvi6HOxg==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2020 19:12:51.6376 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 77065247-e38b-4918-d075-08d7dcb9ffe5
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB2843
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_121254_544145_F8F1A34C 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.57 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.94.57 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

Use direct function call for query_data instead of using eemi ops.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/clk/zynqmp/clkc.c              | 17 ++++++-----------
 drivers/clk/zynqmp/divider.c           |  3 +--
 drivers/firmware/xilinx/zynqmp-debug.c |  3 +--
 drivers/firmware/xilinx/zynqmp.c       |  4 ++--
 include/linux/firmware/xlnx-zynqmp.h   |  7 ++++++-
 5 files changed, 16 insertions(+), 18 deletions(-)

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
index 36ab9ac..3fbab29 100644
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
@@ -736,7 +737,6 @@ static int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.query_data = zynqmp_pm_query_data,
 	.clock_enable = zynqmp_pm_clock_enable,
 	.clock_disable = zynqmp_pm_clock_disable,
 	.clock_getstate = zynqmp_pm_clock_getstate,
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 89f6a53..fa1195c7 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -296,7 +296,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*query_data)(struct zynqmp_pm_query_data qdata, u32 *out);
 	int (*clock_enable)(u32 clock_id);
 	int (*clock_disable)(u32 clock_id);
 	int (*clock_getstate)(u32 clock_id, u32 *state);
@@ -331,6 +330,7 @@ int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
 const struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void);
 int zynqmp_pm_get_api_version(u32 *version);
 int zynqmp_pm_get_chipid(u32 *idcode, u32 *version);
+int zynqmp_pm_query_data(struct zynqmp_pm_query_data qdata, u32 *out);
 #else
 static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 {
@@ -344,6 +344,11 @@ static inline int zynqmp_pm_get_chipid(u32 *idcode, u32 *version)
 {
 	return -ENODEV;
 }
+static inline int zynqmp_pm_query_data(struct zynqmp_pm_query_data qdata,
+				       u32 *out)
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
