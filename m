Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C93DC113BD5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 07:38:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5n/tXZ0jhawR0ptgC2ORIY275FgCDkPYiAUDuTmf4l4=; b=P0BUFk1Pi6bLFk
	SPW81+UvLSJ5tdeUoY++tFCkW8AVAMZnWe+Ro9JPUGmFMftt6iOCuZv9e77mTntY44I4i7UD6liCc
	mbColhrd43d5asRvvXKFo6O7oGK9klv8SYOQ3ht5aKWXh1DmeAYAgHSumUSJ2+w/OKnY78O3k/3tp
	S0m/bi3lRIvoCF8+xcMavrX0rKzXu3F64WWJ8x9L+PZ9BbrG5EYY1hOTKVwU9vsexCpxlhMRgn2pZ
	laVrnxlOLIX9d3kvUljpRNaMc40UT8LwzlOTEuStHZ8vyUJWuwcWzcFAPKOpp54Y6Y/hQUWLid4P7
	F8NW+dMi6cc+IbqoVGTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ickmX-00055D-R5; Thu, 05 Dec 2019 06:38:33 +0000
Received: from mail-dm6nam10on20627.outbound.protection.outlook.com
 ([2a01:111:f400:7e88::627]
 helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ickle-0004DA-OB
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 06:37:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zpw+ZCQbbSe6C2NQwzsEinT1IapKLmeABzQqMcSp54Ggo9BP3QGXs1v5KtgMjg/DcpvqChUsN+aPNHpof4CnO+tvTVdqnudwCG3Yu4V+hEC/vE1LwPf4MtoFM7vPT5opQe+X4OAoVp+Chq/SQE0UgMqc8dWvQ5+OKVnlI174nqiuz9BRVQikaKOkolzRzUadUz5lQITrwtPo0iVrx5eXgv3ez9nQtsymQiA9fHUaikTneTdaoAhY7fdUUL0GyR4bCldAb3nK59k4+t50pztr6/GRSv7iYxtIZDHWN6yNlcT0HbWowzoIeJGBolB+boWlk0W7KTiKW3HQuBU8eckjvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=My5GEXzjq+YdSFxcfZdDk/JzMNz28rCI+oq70GAKch8=;
 b=ZhxYIfQyNT+oZR9xTtF5dxxps3lxJXR0FWFHlQlihF1lPljnDLIECQowakPnH9IGmzoKclcaZ5aa6RPr4Gns1DUM+oQgvHOWi5VAb1uok/zOiBnZCQpQ09dpgQyyQgKsRgY4NRtIp5QcSeo91IoTIckM7kRFxG0dDLFxBi0R8Rop/d5jdwmirlQY8ybs2Esec5nMvV+zGkmsp+TX/z2e7dqzv0THQZbYF9ufDh2eIJg6qbcA6GBdtJeECJBhF+lkmijEaUjwJW0jkX3CbzH6cK17gnjnSUTe276EQjyPPxOfGtOzeTS8Qo3s10Tptb0Rxmipvbdex6HgvX+T3etA6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=My5GEXzjq+YdSFxcfZdDk/JzMNz28rCI+oq70GAKch8=;
 b=qN8VBdzyQjjlMj8OusSpip831ugXJZIzCzbBFP65nKOzdTORGPugXE9Wy52tR4IPAvOvCKqZH5HenoslArJKKV8wLw6AzBw4XMMHYPvGOHZzyg+iOzfi4uMsbWsD7DaHIpSLuTPUHc8UBoN7ofUDYDWYNiabCVLWS9cXbvhW/Hw=
Received: from DM6PR02CA0136.namprd02.prod.outlook.com (2603:10b6:5:1b4::38)
 by DM6PR02MB4892.namprd02.prod.outlook.com (2603:10b6:5:12::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.22; Thu, 5 Dec
 2019 06:37:35 +0000
Received: from CY1NAM02FT044.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::201) by DM6PR02CA0136.outlook.office365.com
 (2603:10b6:5:1b4::38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2516.14 via Frontend
 Transport; Thu, 5 Dec 2019 06:37:35 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT044.mail.protection.outlook.com (10.152.75.137) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Thu, 5 Dec 2019 06:37:35 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1ickla-0000xM-SN; Wed, 04 Dec 2019 22:37:34 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1icklV-0000XV-Of; Wed, 04 Dec 2019 22:37:29 -0800
Received: from xsj-pvapsmtp01 (xsj-pvapsmtp01.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xB56bKBn010333; 
 Wed, 4 Dec 2019 22:37:20 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1icklM-0000WL-1l; Wed, 04 Dec 2019 22:37:20 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, michal.simek@xilinx.com, jolly.shah@xilinx.com,
 m.tretter@pengutronix.de, gustavo@embeddedor.com,
 tejas.patel@xilinx.com, nava.manne@xilinx.com, mdf@kernel.org
Subject: [PATCH v3 6/6] clk: zynqmp: Add support for clock with
 CLK_DIVIDER_POWER_OF_TWO flag
Date: Wed,  4 Dec 2019 22:35:59 -0800
Message-Id: <1575527759-26452-7-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575527759-26452-1-git-send-email-rajan.vaja@xilinx.com>
References: <1574415814-19797-1-git-send-email-rajan.vaja@xilinx.com>
 <1575527759-26452-1-git-send-email-rajan.vaja@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(396003)(39860400002)(376002)(199004)(189003)(305945005)(478600001)(2906002)(316002)(336012)(44832011)(36756003)(4326008)(5660300002)(107886003)(8936002)(50226002)(36386004)(6666004)(50466002)(54906003)(48376002)(356004)(81166006)(8676002)(81156014)(9786002)(70206006)(70586007)(11346002)(7416002)(76176011)(16586007)(426003)(186003)(7696005)(51416003)(2616005)(26005)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4892; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8df6f09c-4dc3-4451-c822-08d7794d9d50
X-MS-TrafficTypeDiagnostic: DM6PR02MB4892:
X-Microsoft-Antispam-PRVS: <DM6PR02MB4892262C358F599546A29C05B75C0@DM6PR02MB4892.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:1186;
X-Forefront-PRVS: 02426D11FE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oAEelGZK5+lteK9AXb0kVuiYkXiH9FB+QMn/xl+bQA7bOjd4USPR7RiYIwIADTRLUegozGTqPUCH4oQX0WsMa8Xrgrc08uSJi4F7+0Ix42svkmBOZvBL+zUcrqS1okAb2bsGwQ7Iyy6Cgl31w2p0eyR/8ENu5cGZjrb2lXmWLi6e2wVBND9WpwzMJd716NwLRgZ/2ZP83JYNNyLn5J46vmhSuwX4s/CvPd3lPrh89BFe2Olj8UU+42qK6lo/BQZqrPWmTpyQHkRaD6RgGOR5tRDeNLBDls6sv9f9Rd9jmkB5+U+WwjSaLoYZz2Bf2ixAsRjaKg2l+4F9vjr9j9Jz4D3ng9ZA7/ggTI2b0myH0LJrH8lAgpcEJZ0hOblGrpZJ2XvGMNgnngyF0PNrntItNZJwPY+TOvA42qFeejPOAoHa1LcoYTMgkJro0bUJHYNJ9GfO0GQo19czc4qYbKbF0E9Q0YilCmg08ACTUyDqMQZ44cy0pVg6GMlccnAEHsTj
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2019 06:37:35.3242 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8df6f09c-4dc3-4451-c822-08d7794d9d50
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4892
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_223738_790926_D7AC1395 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tejas Patel <tejas.patel@xilinx.com>

Existing clock divider functions is not checking for
base of divider. So, if any clock divider is power of 2
then clock rate calculation will be wrong.

Add support to calculate divider value for the clocks
with CLK_DIVIDER_POWER_OF_TWO flag.

Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
Signed-off-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
---
 drivers/clk/zynqmp/divider.c | 36 +++++++++++++++++++++++++++++++-----
 1 file changed, 31 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
index e0d49cc..1d5a416 100644
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
@@ -45,9 +45,26 @@ struct zynqmp_clk_divider {
 };
 
 static inline int zynqmp_divider_get_val(unsigned long parent_rate,
-					 unsigned long rate)
+					 unsigned long rate, u16 flags)
 {
-	return DIV_ROUND_CLOSEST(parent_rate, rate);
+	int up, down;
+	unsigned long up_rate, down_rate;
+
+	if (flags & CLK_DIVIDER_POWER_OF_TWO) {
+		up = DIV_ROUND_UP_ULL((u64)parent_rate, rate);
+		down = DIV_ROUND_DOWN_ULL((u64)parent_rate, rate);
+
+		up = __roundup_pow_of_two(up);
+		down = __rounddown_pow_of_two(down);
+
+		up_rate = DIV_ROUND_UP_ULL((u64)parent_rate, up);
+		down_rate = DIV_ROUND_UP_ULL((u64)parent_rate, down);
+
+		return (rate - up_rate) <= (down_rate - rate) ? up : down;
+
+	} else {
+		return DIV_ROUND_CLOSEST(parent_rate, rate);
+	}
 }
 
 /**
@@ -79,6 +96,9 @@ static unsigned long zynqmp_clk_divider_recalc_rate(struct clk_hw *hw,
 	else
 		value = div >> 16;
 
+	if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
+		value = 1 << value;
+
 	if (!value) {
 		WARN(!(divider->flags & CLK_DIVIDER_ALLOW_ZERO),
 		     "%s: Zero divisor and CLK_DIVIDER_ALLOW_ZERO not set\n",
@@ -157,10 +177,13 @@ static long zynqmp_clk_divider_round_rate(struct clk_hw *hw,
 		else
 			bestdiv  = bestdiv >> 16;
 
+		if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
+			bestdiv = 1 << bestdiv;
+
 		return DIV_ROUND_UP_ULL((u64)*prate, bestdiv);
 	}
 
-	bestdiv = zynqmp_divider_get_val(*prate, rate);
+	bestdiv = zynqmp_divider_get_val(*prate, rate, divider->flags);
 
 	/*
 	 * In case of two divisors, compute best divider values and return
@@ -198,7 +221,7 @@ static int zynqmp_clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
 	int ret;
 	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 
-	value = zynqmp_divider_get_val(parent_rate, rate);
+	value = zynqmp_divider_get_val(parent_rate, rate, divider->flags);
 	if (div_type == TYPE_DIV1) {
 		div = value & 0xFFFF;
 		div |= 0xffff << 16;
@@ -207,6 +230,9 @@ static int zynqmp_clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
 		div |= value << 16;
 	}
 
+	if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
+		div = __ffs(div);
+
 	ret = eemi_ops->clock_setdivider(clk_id, div);
 
 	if (ret)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
