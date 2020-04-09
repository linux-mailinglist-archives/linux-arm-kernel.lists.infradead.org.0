Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 041761A3A37
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 21:13:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iDmjkbq0TDAhkQoIMgpV06r+QcCW9WOjrGhy6UR7O4A=; b=XLcJcz7VkzVbqs
	ly9ByrIgImqPUR3voFTijvW7Wn9VGBNqyB1cz5L/brCULxkavuwlVlH9jz1x5QAjw0qjnZd8RbPox
	1l/IAo3F82oCvHFOx1hOkWQnv8OZ+WQUAw/Pv6h93mYgw9Laod9tWqcjwrGyvW3+MpUO+zEd540x4
	Q2sQz3WyiTnzyAYrD1SCE4IzfNcKgKzSCXhroM4aFo8gwKsXPtn5hZ3A9//qtjJaeGzbLMNaL6JDN
	utdf7Ke0R0GCAE6U98QC8/1aWYtCRlWU88d4dcfnkiJOyHBLzYK2HuPUYQjO405dEebp9uXf5Ht4k
	En4ibb5lFkpoXMT+EoQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMcbg-0007Pv-Bs; Thu, 09 Apr 2020 19:12:56 +0000
Received: from mail-co1nam11on2078.outbound.protection.outlook.com
 ([40.107.220.78] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMcbc-0007K5-MQ
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 19:12:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a6TpltS1M2N+GpoJRU6aPgbAhn9Bki0MlOn4vFQOSBZOYnQyXkxa6iYVDh5RAJ4k7etN0xlYO8DqTTJKnsNSoEyev8EjLf1U1q9lWo8MQ1nMBHyGNNbJHyBDoBMnNiH/KciC9bVi60Wu4oZkn3kKUt/VV05XhqrwBN7pgXqDZG0IGYvtrXGDiaZBsc6o7+SVwiH8jNThWI5nazHUMGJnW5zXwifPnJVOdSbcDctDe0TZy/SfjpMdGZvKxooQZWTYpb+Bd9pSNSFCguLw2Iv5MbH88QnHxJeXIyZSWDRfPwreofQn5Eoxlifdnl9F3ZuHLldaIl8ldbsIYBkHX3tJ2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4Wn0MOr//dSvPxJzOp7hW7sFwpMBUymVIfq0k0171Nk=;
 b=X+YHQHXyKQ3Pu3F39joVp2rWJuJlEpHhhnbneXvJMYGqJQhraLB4MU5HZwXBlB7Glxs9sv7GofhJdT7FJISsA66Rq76UpQGTO5G8Y7UvkJNMrFaYEhWaJvSLW7gu+oZ9hZ2C6CmA7VpHdgm6mI3bnzk9F0T7e4+nwVO/mRjkmYhCySKkTrKcobYUo2D6DcYc7yp0pzT6L5YChgzJoI72rCNIdYQNgSY6KGzXQnNBiKQ/h3SyauJyZEXODa8badYE1X74Xnj0FuwZELn/DIZqwPzzqqMc4PQ8Z2f3UZq4k1sSRhn9KYyaaL6KmgPz+DmxWOW6s6VbuIAPSP2Puy2NXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4Wn0MOr//dSvPxJzOp7hW7sFwpMBUymVIfq0k0171Nk=;
 b=l8O/nU//s79yFHKlMwvSsj1KPWNuL9USwwM9iWB+n4tXbODD87YbyLMHCOIzZtJq6cwz2wgGI/FrsKdESiKOyqSK93vfpmims+e1iEih13+g5tpU/ySC4KS16vjF++y6IfNFrd9G5ltNTZCz2/xYSCGak7Y9oj5m7mRb018gRYI=
Received: from CY4PR22CA0083.namprd22.prod.outlook.com (2603:10b6:903:ad::21)
 by CY4PR02MB2197.namprd02.prod.outlook.com (2603:10b6:903:c::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Thu, 9 Apr
 2020 19:12:49 +0000
Received: from CY1NAM02FT010.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:ad:cafe::20) by CY4PR22CA0083.outlook.office365.com
 (2603:10b6:903:ad::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15 via Frontend
 Transport; Thu, 9 Apr 2020 19:12:49 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT010.mail.protection.outlook.com (10.152.75.50) with Microsoft SMTP
 Server id 15.20.2900.15 via Frontend Transport; Thu, 9 Apr 2020 19:12:49
 +0000
Received: from [149.199.38.66] (port=44241 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcb8-0005zq-L3; Thu, 09 Apr 2020 12:12:22 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbZ-0007NV-2w; Thu, 09 Apr 2020 12:12:49 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbS-0007La-1k; Thu, 09 Apr 2020 12:12:42 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v4 06/25] firmware: xilinx: Remove eemi ops for clock_getstate
Date: Thu,  9 Apr 2020 12:11:55 -0700
Message-Id: <1586459534-8997-7-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(396003)(136003)(39860400002)(376002)(346002)(46966005)(426003)(478600001)(82740400003)(8936002)(81156014)(6636002)(2616005)(107886003)(8676002)(316002)(336012)(44832011)(47076004)(81166007)(4326008)(9786002)(2906002)(54906003)(36756003)(7696005)(5660300002)(7416002)(356004)(6666004)(26005)(70206006)(70586007)(186003);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7333ba0f-b290-4fb1-beda-08d7dcb9fe95
X-MS-TrafficTypeDiagnostic: CY4PR02MB2197:
X-Microsoft-Antispam-PRVS: <CY4PR02MB2197B02D88AF6DF0DF18CB56B8C10@CY4PR02MB2197.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:229;
X-Forefront-PRVS: 0368E78B5B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +FkSHRkaNKrgsysmq/yzuH3jWgTrtRRfNM0rzLJpGUAzWu9WnrvK2G6zbpMookI20tJ6j5zJilXN/rVKST9FTLdmZZzpHV50OJXPHTZekUmt/YiTye6RN03v3xGJZVOwYEtNf29Hv0o6T5d+V+Hvhjr7qnsdu/p/Elahv437VXmk13Elti8XI20oPoAYMNRTFy14YrVzmaYClXoQ1+l1Co5zg1sf36dEHpjJqrvG5T/bgYMAtEX0yA5CwCQpBxMQaqhh3hOPkLHRFGY8sxn2lFcQk67cB1k3ffCaklth9AYN+YL4K6L4Fzs/dTVdhR3zlrxbqZut5LVbKcLBEtaILrJAfXSKNwgk/W9MrEqycP/M4MYzaDiTEiTZ6NzxszB1h3RG1n3ArsoSvSXPJigIY4acpMoR2PnLBAi4T4ja4z6oOWMfzewWFVnMMbCLLMzQEEvaT2EfkUe6amEnBHKVdKY96k6IIRLm6h19t4fHi5PnwTIvIFP53SRJzxcAJibKqKqoqhG3C3e6yTv7ihnt5A==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2020 19:12:49.4346 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7333ba0f-b290-4fb1-beda-08d7dcb9fe95
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB2197
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_121252_797870_337ED21D 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.78 listed in list.dnswl.org]
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

Use direct function call instead of eemi ops for clock_getstate.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/clk/zynqmp/clk-gate-zynqmp.c | 3 +--
 drivers/clk/zynqmp/pll.c             | 3 +--
 drivers/firmware/xilinx/zynqmp.c     | 4 ++--
 include/linux/firmware/xlnx-zynqmp.h | 6 +++++-
 4 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/zynqmp/clk-gate-zynqmp.c b/drivers/clk/zynqmp/clk-gate-zynqmp.c
index 11f1b97..10c9b88 100644
--- a/drivers/clk/zynqmp/clk-gate-zynqmp.c
+++ b/drivers/clk/zynqmp/clk-gate-zynqmp.c
@@ -77,9 +77,8 @@ static int zynqmp_clk_gate_is_enabled(struct clk_hw *hw)
 	const char *clk_name = clk_hw_get_name(hw);
 	u32 clk_id = gate->clk_id;
 	int state, ret;
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 
-	ret = eemi_ops->clock_getstate(clk_id, &state);
+	ret = zynqmp_pm_clock_getstate(clk_id, &state);
 	if (ret) {
 		pr_warn_once("%s() clock get state failed for %s, ret = %d\n",
 			     __func__, clk_name, ret);
diff --git a/drivers/clk/zynqmp/pll.c b/drivers/clk/zynqmp/pll.c
index 38b8dbc..41f376a 100644
--- a/drivers/clk/zynqmp/pll.c
+++ b/drivers/clk/zynqmp/pll.c
@@ -222,9 +222,8 @@ static int zynqmp_pll_is_enabled(struct clk_hw *hw)
 	u32 clk_id = clk->clk_id;
 	unsigned int state;
 	int ret;
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 
-	ret = eemi_ops->clock_getstate(clk_id, &state);
+	ret = zynqmp_pm_clock_getstate(clk_id, &state);
 	if (ret) {
 		pr_warn_once("%s() clock get state failed for %s, ret = %d\n",
 			     __func__, clk_name, ret);
diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index d884805..c11b528 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -382,7 +382,7 @@ EXPORT_SYMBOL_GPL(zynqmp_pm_clock_disable);
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_clock_getstate(u32 clock_id, u32 *state)
+int zynqmp_pm_clock_getstate(u32 clock_id, u32 *state)
 {
 	u32 ret_payload[PAYLOAD_ARG_CNT];
 	int ret;
@@ -393,6 +393,7 @@ static int zynqmp_pm_clock_getstate(u32 clock_id, u32 *state)
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_clock_getstate);
 
 /**
  * zynqmp_pm_clock_setdivider() - Set the clock divider for given id
@@ -739,7 +740,6 @@ static int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.clock_getstate = zynqmp_pm_clock_getstate,
 	.clock_setdivider = zynqmp_pm_clock_setdivider,
 	.clock_getdivider = zynqmp_pm_clock_getdivider,
 	.clock_setrate = zynqmp_pm_clock_setrate,
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index f9a84d9..e874f0c 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -296,7 +296,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*clock_getstate)(u32 clock_id, u32 *state);
 	int (*clock_setdivider)(u32 clock_id, u32 divider);
 	int (*clock_getdivider)(u32 clock_id, u32 *divider);
 	int (*clock_setrate)(u32 clock_id, u64 rate);
@@ -331,6 +330,7 @@ int zynqmp_pm_get_chipid(u32 *idcode, u32 *version);
 int zynqmp_pm_query_data(struct zynqmp_pm_query_data qdata, u32 *out);
 int zynqmp_pm_clock_enable(u32 clock_id);
 int zynqmp_pm_clock_disable(u32 clock_id);
+int zynqmp_pm_clock_getstate(u32 clock_id, u32 *state);
 #else
 static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 {
@@ -357,6 +357,10 @@ static inline int zynqmp_pm_clock_disable(u32 clock_id)
 {
 	return -ENODEV;
 }
+static inline int zynqmp_pm_clock_getstate(u32 clock_id, u32 *state)
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
