Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6781B814F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 22:59:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rcvKFPz8QOtObRtKwGjsDbqqN/sHLzLXnVxD3JQ3TFY=; b=u4h1eWKSUnUeMC
	ClpDo0YuKbPr21Jpy9ODgaK2DFxwo0dPoiuTTmJnKMqTZw2r0OF/p3b2I74aG9Y+c/eo6JATlIJEg
	CpTuVZdoKXYfNNq/DPAyGcL3AQiXpzeef2JZOJeGTLOnn9BcCVtfYCFsDXKeCqz9QsNxYaCUtAXpZ
	7tQp5HXYRS7LWAB2cCNWxNvwxaiQiwi6fdgrRgvMoyFCY+vOHSE1ttKy2yQ+gOk5hLdSM+yguBmfr
	eqsY1/ABQPOJqNmzCjgRbkGIOX3GnKmrgEKPOmtftx+rI1dvXW69T84ZSdXdjOJOpnvYQj1YrWKmI
	kSsInug1+XJ1jM/5ek9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS5Ph-0006eM-AN; Fri, 24 Apr 2020 20:59:09 +0000
Received: from mail-bn8nam11on2063.outbound.protection.outlook.com
 ([40.107.236.63] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS5Oy-0006J2-Rb
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:58:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WP2ei1t0EhHtwdaDYF5fkXiRGCLh1vUr5nCsLbWyrxdsvQD7ZVATjHvCjAJ7EO6jVxoTS41cveNY6BTOpK//VumwZmHYMB4zeoTSVno1wbvX8w1GkhjV+lrFLsUdHAvBHu9qM3QmUpYNhkFoUwR8XXr6lqo91VUFTyjveQ6nFobmcxWyTBZ/VjtO8F6rmh6RHxRKD4sXfqfHOiZP4T6s2YYI1cz49JAnpXKa0wdVGxT9Ay9rIS6cSH4FaaJ6XM86RqvPbaE19FT5uGM1GtIu+GvmZR0di0XCE9/DCL5yP0YU0tL1If0pOXxqz64cpU/GuECd/7RGvrL/UNs5DtfwWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tfjioUTWZWsuP7/bJ/unKMGABsK+FjvCGc2MPcGh+uo=;
 b=M006SP7EhulZHj7d7spMZQNAy8DOf3RLkUovaGbiv1IAF+cpo03iHnkHQM/e3Ntox5WIWP7gdxDQk2khNUFZT9FD4SVmp66lGgocLzEqi7RFVHY/co0RS9TDG7rw93vS5WGouRmoe8fvBdo4mdUZb6Tha7fdfTUVHsSAsVLUCBDDZeNZN2opcCRhOtyKEJstai3gYvH3/uaL//MMR36+YfeIy8O8ivDq1YvIXAuB9NiCuNjEZXrL9/cAJjRguzWlpu9mANxjPIzIOqbgX9s4sEM4nuGQ+QcIHK0KWlpOiYYWHZTliSRn94oVssa9kuNOpzskujMxANYOxlXUN/xcVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tfjioUTWZWsuP7/bJ/unKMGABsK+FjvCGc2MPcGh+uo=;
 b=U4OeNE673xabR2yMv9KtnynX1Olrg2yjiXn54DsIBWd5jOKgubOpw1DoU2DmQessQlHbirqgfntq2+lVK0r+tgHVIC4XQ05R4lmv0y5qHRNLC25g3SKlIlLntEW4SNx8o25YN4qxuPyIuvBe2o3tMog5KGiJytDPbu/mlOEvGsk=
Received: from DM5PR08CA0046.namprd08.prod.outlook.com (2603:10b6:4:60::35) by
 BYAPR02MB5111.namprd02.prod.outlook.com (2603:10b6:a03:72::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.28; Fri, 24 Apr 2020 20:58:22 +0000
Received: from CY1NAM02FT009.eop-nam02.prod.protection.outlook.com
 (2603:10b6:4:60:cafe::7f) by DM5PR08CA0046.outlook.office365.com
 (2603:10b6:4:60::35) with Microsoft SMTP Server (version=TLS1_2,
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
 CY1NAM02FT009.mail.protection.outlook.com (10.152.75.12) with Microsoft SMTP
 Server id 15.20.2937.19 via Frontend Transport; Fri, 24 Apr 2020 20:58:21
 +0000
Received: from [149.199.38.66] (port=33250 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Nm-0002Ck-3c; Fri, 24 Apr 2020 13:57:10 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Ov-0007N4-2w; Fri, 24 Apr 2020 13:58:21 -0700
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03OKwJib026319; 
 Fri, 24 Apr 2020 13:58:19 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Ot-0007Lo-46; Fri, 24 Apr 2020 13:58:19 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v5 08/25] firmware: xilinx: Remove eemi ops for
 clock_getdivider
Date: Fri, 24 Apr 2020 13:57:50 -0700
Message-Id: <1587761887-4279-9-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(376002)(346002)(39860400002)(396003)(136003)(46966005)(82310400002)(8676002)(478600001)(336012)(8936002)(44832011)(4326008)(47076004)(2906002)(36756003)(426003)(6666004)(6636002)(186003)(54906003)(81156014)(2616005)(9786002)(316002)(7416002)(107886003)(81166007)(26005)(70206006)(7696005)(70586007)(356005)(5660300002)(82740400003)(42866002);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 59bf96bd-d06d-43d6-7d15-08d7e89238e9
X-MS-TrafficTypeDiagnostic: BYAPR02MB5111:
X-Microsoft-Antispam-PRVS: <BYAPR02MB5111E4503B61B166772446CBB8D00@BYAPR02MB5111.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:229;
X-Forefront-PRVS: 03838E948C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Iq/hkecyP1TAaUuJcvd5GKqC02f1TBqsiIdFAEJ7+KnEHFjqiC7CFlq81UzGQw99MxV7WICYjBSt+lmBnmqCa8ISdMp3MjJmBUh/GSeKbAEPuMBUio8gkYV6uTFqsrhle9QiesLxJTcQQNaTGjPYxZZFrkREPCo7jHtaq7qN+JPaG82HMLvK0bUetNecz8BTzp0fYagl9fvYd7y54ixCVxOWcS20gn7FaY8+CXoK84Qr2dMZ7Qik5SE+0+NNjcoI7KXjRRDeQHdkvrcdLCAIY2qxZSHNgmGjCYXAE8sBJg1KD+lK5p0g7GMCd1oawgfYjvK1R00n0FL1dyIR5FDf6CuHPIekHSYRIIvuTdKLbX/E5QY+407MCH9P6lI9NZ1kdhTbnuTO75YdKr7ouh+Oz+wvTDQnRKqhIroc4f/rEzSeJpkqDjx5+u1y5gG7/Sd7zMQje4vwStbWJLfzhVTe0ISCfKNdJfAPtCCiMBHrqO3Tp7wr+48VVzYNGuqxtbdLM4Qg16jMV0qss48S5UDPejjPRlc5RXa/xu+k37St5zY=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 20:58:21.3549 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 59bf96bd-d06d-43d6-7d15-08d7e89238e9
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_135824_891302_249474EB 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.63 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.236.63 listed in wl.mailspike.net]
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
 include/linux/firmware/xlnx-zynqmp.h | 6 +++++-
 4 files changed, 10 insertions(+), 8 deletions(-)

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
index ef2412d..5782b5c 100644
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
@@ -741,7 +742,6 @@ static int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.clock_getdivider = zynqmp_pm_clock_getdivider,
 	.clock_setrate = zynqmp_pm_clock_setrate,
 	.clock_getrate = zynqmp_pm_clock_getrate,
 	.clock_setparent = zynqmp_pm_clock_setparent,
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 023f1f9..3bda22f 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -296,7 +296,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*clock_getdivider)(u32 clock_id, u32 *divider);
 	int (*clock_setrate)(u32 clock_id, u64 rate);
 	int (*clock_getrate)(u32 clock_id, u64 *rate);
 	int (*clock_setparent)(u32 clock_id, u32 parent_id);
@@ -331,6 +330,7 @@ int zynqmp_pm_clock_enable(u32 clock_id);
 int zynqmp_pm_clock_disable(u32 clock_id);
 int zynqmp_pm_clock_getstate(u32 clock_id, u32 *state);
 int zynqmp_pm_clock_setdivider(u32 clock_id, u32 divider);
+int zynqmp_pm_clock_getdivider(u32 clock_id, u32 *divider);
 #else
 static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 {
@@ -365,6 +365,10 @@ static inline int zynqmp_pm_clock_setdivider(u32 clock_id, u32 divider)
 {
 	return -ENODEV;
 }
+static inline int zynqmp_pm_clock_getdivider(u32 clock_id, u32 *divider)
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
