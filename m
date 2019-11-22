Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7E610692C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 10:47:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q4uAE67/y2zFKFY0ew/39+tXDTXA/Fussg+2b6YcumU=; b=L3BNhbD54gjvif
	UAwsjw8+OHTH62dGlIaOWeShKXADBY+EPAHXMfADNtjTileC81pcZQjnu/7fS9IBvgLAHV6/YvvJO
	8O6c8aZTmdo2UuVoNOLPUqo/7/ZwqlIu1uLdKc/lcV9lx6KpT3cV9SIcKoXJyVNhtdGIKde2MNjy6
	H2CF3OXC2WglgpwBPF5iNYCa+xWtzDn1Ir0HfewikR9oOuZTcIcuTRlatDW7MptgVkJA3AWm52UCa
	c46gX3TPSljcwckh6glIsmd5xZ1DYhZ/YrML1nMed35GrrzE6wxS68KF6tq9vqH0BPwsO4uOk6PoO
	uox993BTnmr4nE9aaZ+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5X0-0001tb-78; Fri, 22 Nov 2019 09:47:14 +0000
Received: from mail-eopbgr730084.outbound.protection.outlook.com
 ([40.107.73.84] helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5VS-0000sg-0c
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 09:45:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IqlpRPP454X9AD81Yy1bVIDf156VWToLIhlNJ/4pxREv8wXkfRN9vie43r8Iy5HRqlIaTY3OaHpDmckEVnMckCKnzZLlBvqlo6nBqF/vL+np/+FBTkfJ1Nj/vFDw6D8DDeSpIR6VQW+UEdgneb48nYupPgnBZsG8ptHkmf9WGV2bWSdLH8KtWaZ1yVoXdDhxyA+4Dgwxy8ZjUdeyI2EyuqmmmS2Aku8AM3tTNiFZHy52B8kiezTz2zec6W2jTeweOL9umvLBbw90itS+xCGAVktkgBy/QPj8Vta6NKJjTv4dXc5WPS9njGw776nIH4G5EnoAr/4BjXPo9d0mNbhf5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZKxWj3qsVG6zfdAsWNxAoo1z1VXi0/nfZCtWcP1myN4=;
 b=gp1DkW5AreTAurmLSdvD1e9aEGIp9tIYX41YlOm9T7qa/CItCZSAqbdGnNaxeLeYmPvgFuOujxc2ELCIrVnnxjfNJk6BIhPTLE3m7b03y7lNQPsXiXZcpfyzKMBFeb1+A6UmFPMu9oed1uZrl0kaOogOPOY2pG717uthGa0wyC8tIekzzU1ccY4F+i/FTTh6Zxrx+7Q0XeZ/QCsT2Rt4ZHd2Vh18sL17Ro20Iv+u+Fni8l9AWOBzLWHJWR0TFVh9n+B4aEGUTCW9YK1qm69dmR+/jmsQy8TEd5Hd2D2nczsQXcuFHqiQHbrZjSKpnmpxsKLWtPl2HSl6WtvGQfcTCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZKxWj3qsVG6zfdAsWNxAoo1z1VXi0/nfZCtWcP1myN4=;
 b=sonfYpnqTDB9W8efLgfzS+0xLr9in1A87Uc7G8033vd6oAUpWbyYa+7u5r9we+BG7VC15e/c/Kb7eiExXGD3sF4fiGVhbuJI7wBWO91TTaWkLKIQMz/AEfRLjPDEfOOJCONg5W2DepP86Gerui/Em9HgQp4lUCOLA0KNlDGywBI=
Received: from BL0PR02CA0107.namprd02.prod.outlook.com (2603:10b6:208:51::48)
 by DM5PR02MB2699.namprd02.prod.outlook.com (2603:10b6:3:107::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.21; Fri, 22 Nov
 2019 09:45:35 +0000
Received: from BL2NAM02FT043.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::203) by BL0PR02CA0107.outlook.office365.com
 (2603:10b6:208:51::48) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.17 via Frontend
 Transport; Fri, 22 Nov 2019 09:45:35 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT043.mail.protection.outlook.com (10.152.77.95) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Fri, 22 Nov 2019 09:45:34 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iY5VO-0008SI-66; Fri, 22 Nov 2019 01:45:34 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iY5VJ-0002pC-41; Fri, 22 Nov 2019 01:45:29 -0800
Received: from xsj-pvapsmtp01 (smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xAM9jLlb003852; 
 Fri, 22 Nov 2019 01:45:21 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iY5VB-0002ob-MC; Fri, 22 Nov 2019 01:45:21 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, michal.simek@xilinx.com, jolly.shah@xilinx.com,
 m.tretter@pengutronix.de, gustavo@embeddedor.com,
 dan.carpenter@oracle.com, tejas.patel@xilinx.com,
 nava.manne@xilinx.com, mdf@kernel.org
Subject: [PATCH v2 4/6] clk: zynqmp: Add support for get max divider
Date: Fri, 22 Nov 2019 01:43:32 -0800
Message-Id: <1574415814-19797-5-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574415814-19797-1-git-send-email-rajan.vaja@xilinx.com>
References: <1573564580-9006-1-git-send-email-rajan.vaja@xilinx.com>
 <1574415814-19797-1-git-send-email-rajan.vaja@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(346002)(376002)(199004)(189003)(7696005)(47776003)(14444005)(76176011)(36756003)(8936002)(478600001)(186003)(2906002)(5660300002)(305945005)(7416002)(70586007)(70206006)(107886003)(36386004)(426003)(336012)(2616005)(446003)(44832011)(50466002)(26005)(48376002)(4326008)(106002)(356004)(6666004)(81156014)(9786002)(8676002)(16586007)(316002)(81166006)(11346002)(51416003)(50226002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR02MB2699; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ee1cfe1d-2751-4dcf-af35-08d76f30b90b
X-MS-TrafficTypeDiagnostic: DM5PR02MB2699:
X-Microsoft-Antispam-PRVS: <DM5PR02MB2699DD9878095B45C0232EE2B7490@DM5PR02MB2699.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:862;
X-Forefront-PRVS: 02296943FF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XwvebzDAIBLCspyO19wlQrBZjOmHookVWubg+7/B10ZT18gIa7facQofqI3q7h3YsgCBwzxAlIZbqox/pLu+MhTBkvZvpAMHi14twQ5c6t9CqY1AeAb26NLLqxl7uHqSi/z4uoHwLYpoqhkytPh2KBdRbzplEr5tFRDOdgH1LuWj5nFdRjPidPWWN/a3unOhWhPRUOn+iv2KwDcjihXK2XpxmBUa3OrAfTmx1p9xCHRW1qScM8adETKciiy4KzpxrCyy4hetmxlHW8kFzXYB0veTz6XTKIzdvqAsLBVUE+xYLT6MDiH6V9tQ9ZwYgtvhQXf6dHyyRXlfzqDTyPs7luWYoIFwVgrfm1qkxi+fpvHvwIF+h//bKM4UjWlHs3KcUGFUqAMTjcWUeNpZS9PdnyCjpKZX0lYvtt0V2DSDEN7+VOmzvCNLSYS2XftuRtFu
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2019 09:45:34.7496 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ee1cfe1d-2751-4dcf-af35-08d76f30b90b
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB2699
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_014538_096985_51613B8F 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.73.84 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To achieve best possible rate, maximum limit of divider is required
while computation. Get maximum supported divisor from firmware. To
maintain backward compatibility assign maximum possible value(0xFFFF)
if query for max divisor is not successful.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
---
Changes in v2:
 - Add helper function to get maximum divisor of a clock from firmware.
---
 drivers/clk/zynqmp/divider.c         | 36 ++++++++++++++++++++++++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h |  1 +
 2 files changed, 37 insertions(+)

diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
index d8f5b70d..aea52cd 100644
--- a/drivers/clk/zynqmp/divider.c
+++ b/drivers/clk/zynqmp/divider.c
@@ -41,6 +41,7 @@ struct zynqmp_clk_divider {
 	bool is_frac;
 	u32 clk_id;
 	u32 div_type;
+	u16 max_div;
 };
 
 static inline int zynqmp_divider_get_val(unsigned long parent_rate,
@@ -176,6 +177,35 @@ static const struct clk_ops zynqmp_clk_divider_ops = {
 };
 
 /**
+ * zynqmp_clk_get_max_divisor() - Get maximum supported divisor from firmware.
+ * @clk_id:		Id of clock
+ * @type:		Divider type
+ *
+ * Return: Maximum divisor of a clock if query data is successful
+ *	   U16_MAX in case of query data is not success
+ */
+u32 zynqmp_clk_get_max_divisor(u32 clk_id, u32 type)
+{
+	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
+	struct zynqmp_pm_query_data qdata = {0};
+	u32 ret_payload[PAYLOAD_ARG_CNT];
+	int ret;
+
+	qdata.qid = PM_QID_CLOCK_GET_MAX_DIVISOR;
+	qdata.arg1 = clk_id;
+	qdata.arg2 = type;
+	ret = eemi_ops->query_data(qdata, ret_payload);
+	/*
+	 * To maintain backward compatibility return maximum possible value
+	 * (0xFFFF) if query for max divisor is not successful.
+	 */
+	if (ret)
+		return U16_MAX;
+	else
+		return ret_payload[1];
+}
+
+/**
  * zynqmp_clk_register_divider() - Register a divider clock
  * @name:		Name of this clock
  * @clk_id:		Id of clock
@@ -215,6 +245,12 @@ struct clk_hw *zynqmp_clk_register_divider(const char *name,
 	div->clk_id = clk_id;
 	div->div_type = nodes->type;
 
+	/*
+	 * To achieve best possible rate, maximum limit of divider is required
+	 * while computation.
+	 */
+	div->max_div = zynqmp_clk_get_max_divisor(clk_id, nodes->type);
+
 	hw = &div->hw;
 	ret = clk_hw_register(NULL, hw);
 	if (ret) {
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index a3b0a39..74d710d 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -107,6 +107,7 @@ enum pm_query_id {
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
