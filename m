Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 112A4F2A20
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 10:07:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s+pdBF+JBIeKN2wy8TdkQPNnKLyRze/bAoGcVYwepoU=; b=YtrTh02QJhxzRx
	uLC2tucjZAHPIMp6h965vS3d4Wbsc4avIaigFZBKn66/eWiBjjmE69FC/PCmPeBiraU6nrdmU6bJQ
	NDRgAgPOn6HXS/EptXj6ah3xvAGFNhnT2pWgi+S9eu8F/Q3fnSXMfmoeKbVu06Qc0vzuUqKkWOVqE
	ReaSnNgO5rBHMVwcp40Y+hC64Rv81LOuGR1E1hvZtyouXy0iQeLrYTDmxEZGPW81ZKHgSH13U+QiF
	brksNiIvjhqgDzrEpcdZgs2JC38L5C+1M3oloKJpfIxq48KqwwhTaAyGQ9tufTjHQq2Phr8LcypBT
	bLncRy4GDVGl9lMG8XIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSdl2-0005Gx-8M; Thu, 07 Nov 2019 09:07:12 +0000
Received: from mail-eopbgr770042.outbound.protection.outlook.com
 ([40.107.77.42] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSdku-0005GZ-TM
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 09:07:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U1bgPd9O1pIUYq6FKn4N02mAiKIah54kJN6D8Cu/hNLnXNX/fLyqwYiv6jJqFRKEgjiteDFYfzOyLHg4j7Sy2i1l0LIwInf91SKOStAKNzqE2t+3h59Eav5xp1AL2PvxEYldvsA6nZRGuNZCXSW62LcbtiLpAVO7zoPd+pAF92hwKUP4fRJUF6BNEFbEas4xUDKUoYFvTj/r8dItHsRNvPeeG0J/hRJlbUL9fP38ndrAoOA+EIxs2gjsaiqYonc3XapEMPwtCvoLuMa0EsntmVPTi/IRCaSFkIqviu2TjTvxOYat4/4PctoofbG+o5hZygN6k/iizOd++DqGd8Ac9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vsoMbPhZthgvzW3XntHdKGNDxOqGfz5Pmkpyen+X4nI=;
 b=c0IEsdrvzuqg4QDxerD8YDb4ZhIqkaeHiyNbS4KkqJbViLAeY6ySWrMQOZeU7t8Lw4/gIcHkdR5LWIxFcZPT3WLcwLAb4/+YeFQRs8aU5ylw1t8miJrEkKnP1PF3WMeYr9+LTzNNhaasl04ogEj06SMcQVygPsdxLL/tnJlzoDv78JiQbWMy8TZwA0spTjs8NG+yFEtj1YXO1fihCY5SJo8m2z41XkXbhufFQeKX91u26ps8mrDwD1SaZUELNA8W305SwGVi/qX62U0DEsp5kHd7jOusiOudW5Ct0WNYME2WEV/fMFOXoJ9HrIFetp4pK4s4ccv65V3PM57Q68MCgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=baylibre.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vsoMbPhZthgvzW3XntHdKGNDxOqGfz5Pmkpyen+X4nI=;
 b=jDvYt0DSyclckn5O7nNkBKzYCSclsMwJHFHnrcTf0gUJbM43G2XMsWVR0xikce5Zdh+o4Kk6TM0bhK92rDpZE28J0m7HkhF6yG4Q7aykggQk82BNLsPpAyoKymR9cJA5/+U+NLMWsWrlaZ/WeVzENw4RQQcWP1jwQc6q5qs4xZ0=
Received: from CY4PR02CA0006.namprd02.prod.outlook.com (2603:10b6:903:18::16)
 by SN6PR02MB5133.namprd02.prod.outlook.com (2603:10b6:805:68::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.20; Thu, 7 Nov
 2019 09:07:01 +0000
Received: from SN1NAM02FT017.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::209) by CY4PR02CA0006.outlook.office365.com
 (2603:10b6:903:18::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.20 via Frontend
 Transport; Thu, 7 Nov 2019 09:07:01 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; baylibre.com; dkim=none (message not signed)
 header.d=none;baylibre.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT017.mail.protection.outlook.com (10.152.72.115) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2430.20
 via Frontend Transport; Thu, 7 Nov 2019 09:07:00 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSdkq-0001bY-Ce; Thu, 07 Nov 2019 01:07:00 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSdkl-0002Ij-9j; Thu, 07 Nov 2019 01:06:55 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSdkf-0002IK-3v; Thu, 07 Nov 2019 01:06:49 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, michal.simek@xilinx.com,
 m.tretter@pengutronix.de, jollys@xilinx.com, nava.manne@xilinx.com,
 tejas.patel@xilinx.com
Subject: [PATCH] clk: zynqmp: Fix divider calculation
Date: Thu,  7 Nov 2019 01:06:14 -0800
Message-Id: <1573117574-9316-1-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(39850400004)(376002)(199004)(189003)(70206006)(50466002)(70586007)(48376002)(305945005)(8676002)(2906002)(26005)(426003)(50226002)(336012)(106002)(316002)(51416003)(81156014)(81166006)(7696005)(9786002)(356004)(6666004)(44832011)(6636002)(186003)(8936002)(36756003)(2616005)(14444005)(486006)(16586007)(478600001)(107886003)(36386004)(126002)(47776003)(4326008)(5660300002)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB5133; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4457ebd4-273d-4c05-e0b7-08d76361d990
X-MS-TrafficTypeDiagnostic: SN6PR02MB5133:
X-Microsoft-Antispam-PRVS: <SN6PR02MB5133987FF1E540A3A4971457B7780@SN6PR02MB5133.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:1332;
X-Forefront-PRVS: 0214EB3F68
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kl3Qq7w/FV7Y8qnqn096w7vVPN0FzcXUe+OnbE/Wn3ae7SpoeX6gBZ0KA3Yek6Vo7fYoly54PM6ng4gaOy+qcX7f8MEk1/U24p69unSnKQwPdZfKpfb5U4XhpGDVTzuzmZXq9bn8Pk3PYnhPpaQEOw2qKV9+d9arTJ8wjlXIlJGDvLaatccVTv41C0VWRfFWc09aEBdofWqNY8arpEYoegiLb24/f+CUGdFnDLJlkplQ6NNPgCnY0B0wmbWP6haqxOq3fAOppT6zE6uPd9H2eHFOTmcEaGLVoQvz8Srs1RiA0IEAYowgcQZuUq05GNOMhzSFKIX3veL3B47s/Hd8KbvfX1JsmCgshlhCGivyzR8FUgc6DV9FWkLjrut35HfTIbp4+rJNVIwAemK3yNfTmByg5nBUw18bdFQ0FocnUJl0RU81OM+3Qyjz5XdOXu00
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2019 09:07:00.7861 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4457ebd4-273d-4c05-e0b7-08d76361d990
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_010704_950595_73056120 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.42 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rajan Vaja <rajan.vaja@xilinx.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Linux doesn't know maximum value of divisor that it can support.
zynqmp_clk_divider_round_rate() returns actual divider value
after calculating from parent rate and desired rate, even though
that rate is not supported by single divider of hardware. It is
also possible that such divisor value can be achieved through 2
different dividers. As, Linux tries to set such divisor value(out
of range) in single divider set divider is getting failed.

Fix the same by computing best possible combination of two
divisors which provides more accurate clock rate.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
---
 drivers/clk/zynqmp/divider.c         | 62 +++++++++++++++++++++++++++++++++++-
 include/linux/firmware/xlnx-zynqmp.h |  3 +-
 2 files changed, 63 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
index d8f5b70d..d2be24e 100644
--- a/drivers/clk/zynqmp/divider.c
+++ b/drivers/clk/zynqmp/divider.c
@@ -2,7 +2,7 @@
 /*
  * Zynq UltraScale+ MPSoC Divider support
  *
- *  Copyright (C) 2016-2018 Xilinx
+ *  Copyright (C) 2016-2019 Xilinx
  *
  * Adjustable divider clock implementation
  */
@@ -41,6 +41,7 @@ struct zynqmp_clk_divider {
 	bool is_frac;
 	u32 clk_id;
 	u32 div_type;
+	u32 max_div;
 };
 
 static inline int zynqmp_divider_get_val(unsigned long parent_rate,
@@ -88,6 +89,34 @@ static unsigned long zynqmp_clk_divider_recalc_rate(struct clk_hw *hw,
 	return DIV_ROUND_UP_ULL(parent_rate, value);
 }
 
+static void zynqmp_compute_divider(struct clk_hw *hw,
+				   unsigned long rate,
+				   unsigned long parent_rate,
+				   u32 max_div,
+				   int *bestdiv)
+{
+	int div1;
+	int div2;
+	long error = LONG_MAX;
+	struct clk_hw *parent_hw = clk_hw_get_parent(hw);
+	struct zynqmp_clk_divider *pdivider = to_zynqmp_clk_divider(parent_hw);
+
+	if (!pdivider)
+		return;
+
+	*bestdiv = 1;
+	for (div1 = 1; div1 <= pdivider->max_div; div1++) {
+		for (div2 = 1; div2 <= max_div; div2++) {
+			long new_error = ((parent_rate / div1) / div2) - rate;
+
+			if (abs(new_error) < abs(error)) {
+				*bestdiv = div2;
+				error = new_error;
+			}
+		}
+	}
+}
+
 /**
  * zynqmp_clk_divider_round_rate() - Round rate of divider clock
  * @hw:			handle between common and hardware-specific interfaces
@@ -125,8 +154,21 @@ static long zynqmp_clk_divider_round_rate(struct clk_hw *hw,
 
 	bestdiv = zynqmp_divider_get_val(*prate, rate);
 
+	/*
+	 * In case of two divisors, compute best divider values and return
+	 * divider2 value based on compute value. div1 will  be automatically
+	 * set to optimum based on required total divider value.
+	 */
+	if (div_type == TYPE_DIV2 &&
+	    (clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT)) {
+		zynqmp_compute_divider(hw, rate, *prate,
+				       divider->max_div, &bestdiv);
+	}
+
 	if ((clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT) && divider->is_frac)
 		bestdiv = rate % *prate ? 1 : bestdiv;
+
+	bestdiv = min_t(u32, bestdiv, divider->max_div);
 	*prate = rate * bestdiv;
 
 	return rate;
@@ -195,6 +237,9 @@ struct clk_hw *zynqmp_clk_register_divider(const char *name,
 	struct clk_hw *hw;
 	struct clk_init_data init;
 	int ret;
+	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
+	struct zynqmp_pm_query_data qdata = {0};
+	u32 ret_payload[PAYLOAD_ARG_CNT];
 
 	/* allocate the divider */
 	div = kzalloc(sizeof(*div), GFP_KERNEL);
@@ -215,6 +260,21 @@ struct clk_hw *zynqmp_clk_register_divider(const char *name,
 	div->clk_id = clk_id;
 	div->div_type = nodes->type;
 
+	/*
+	 * To achieve best possible rate, maximum limit of divider is required
+	 * while computation. Get maximum supported divisor from firmware. To
+	 * maintain backward compatibility assign maximum possible value(0xFFFF)
+	 * if query for max divisor is not successful.
+	 */
+	qdata.qid = PM_QID_CLOCK_GET_MAX_DIVISOR;
+	qdata.arg1 = clk_id;
+	qdata.arg2 = nodes->type;
+	ret = eemi_ops->query_data(qdata, ret_payload);
+	if (ret)
+		div->max_div = 0XFFFF;
+	else
+		div->max_div = ret_payload[1];
+
 	hw = &div->hw;
 	ret = clk_hw_register(NULL, hw);
 	if (ret) {
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 778abbb..1edb6e9 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -2,7 +2,7 @@
 /*
  * Xilinx Zynq MPSoC Firmware layer
  *
- *  Copyright (C) 2014-2018 Xilinx
+ *  Copyright (C) 2014-2019 Xilinx
  *
  *  Michal Simek <michal.simek@xilinx.com>
  *  Davorin Mista <davorin.mista@aggios.com>
@@ -105,6 +105,7 @@ enum pm_query_id {
 	PM_QID_CLOCK_GET_PARENTS,
 	PM_QID_CLOCK_GET_ATTRIBUTES,
 	PM_QID_CLOCK_GET_NUM_CLOCKS = 12,
+	PM_QID_CLOCK_GET_MAX_DIVISOR,
 };
 
 enum zynqmp_pm_reset_action {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
