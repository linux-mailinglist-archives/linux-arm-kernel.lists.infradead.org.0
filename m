Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 371FEF29E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 09:56:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P1UFJXcnWZ+J+vVHWOIyk1mH3uNZEzY8TLPRkszlBkY=; b=BDqEuCozpCz5/l
	ZtjmQ/50Icy/sgD2tCVrijNd//UL72KX3wsjnhOJjwwTHobcttrfIMTYoWOElNRc3TlX9jGQdss7L
	b+rNrG+2n/LFuyGbULoOV7rXWwgCGzeXZaXUMJyvU693p9b9/DDwZrM9+M4+8YKQdQnkGviJ4FGbf
	zHiIIcwoI/M7F56BongQbng6bxaGviJ142Im3rqEkA5r5ct9L076/KX7F9ZX67q+q6ZOGueoH9OMq
	t1tjDpFagg7+Kfbh48tW6Qu5u8VOx7PjT4qShGADj6012lWl4uEtjgCAAQxRB9I5foZ38hFMQg9iH
	SWQlkBDUGTExEJ8UJFJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSdaV-00088t-3q; Thu, 07 Nov 2019 08:56:19 +0000
Received: from mail-dm3nam05on0614.outbound.protection.outlook.com
 ([2a01:111:f400:fe51::614]
 helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSdaL-00088A-W5
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 08:56:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vh3ECb+zn/3v6TXzB/mbSOBECQ4mQtcian6QzeJWd4AHmXyAcmY0AESmtap3JpNZAsxOWh1km322lUUVe/VFG7b7t4bT9MBXwjcfx3i+OYqlT/LxlRHHo6svjkadehLq4Ck+4kXR0dtF1auw5HTA10l6/yOv95UXwBs4WKM/9BS22Rjp8KqgOOLajo3/Zf8UXEgyhaG4hQFIkgyWW4Tg749DJVbuUzV897PPmsaJbmQPAPqFMqOMykSTvT01ul6RoKrvc9TVM4kpguP1dqICCjJij9oVv7rCpxLZLxs0cKqHN4f/d9dOZ9c9zsdANj2PNnUe+rgCTx+Vw9RxnJIrUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qS+mlutQ68MpJbm655/vD8RfT7Izm6hl50kw6W5rfmw=;
 b=CIvzTVjVmkfrxZB3n5FncgsJP0mJZa/HqaSIau4+zXws+Pihx6k68cnfcVIbb3nKla26z9PavIRXPwT26YFkz7DaBSU3x5L7DoMyF5ESUPsgAiTB+srqcy6PzvnbsjFhP1JRxqO0mwq5LYPMKtuBfh0o8DdHriwNt2JqyG0claQMQ5BhnNyM8l9JRInWdfJN+qDYe5MhbHnTiiW90LJ4gljD2eqFkR+5FTpJyckx4d2oIDrUOaimEAI7aGq7f7I553EF6RXPM7mdlqUQawdLLPDRxKp8CKIQveZq33FFD8c6knUDV2IUAbRcbBz/t8L1H18nB8UzyPnEv6I7omD4Jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qS+mlutQ68MpJbm655/vD8RfT7Izm6hl50kw6W5rfmw=;
 b=Grjn+xzG8DAU28R60zfPtZsxJRuOKEFv+8i8PKIMiXezVpyEwobw3hfpoedLOnKLb+/gcczfV1VJcJgUboKygHILnt22cZwHk2F4RwCKzhgkvRLnu+mK8w1A3qSAhJUzLHVVh5HjbOVEinZXstAkOKMlsI7onC7QMIbsCFwtHxc=
Received: from CY4PR02CA0038.namprd02.prod.outlook.com (2603:10b6:903:117::24)
 by DM6PR02MB5722.namprd02.prod.outlook.com (2603:10b6:5:178::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2408.24; Thu, 7 Nov
 2019 08:56:05 +0000
Received: from CY1NAM02FT020.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::203) by CY4PR02CA0038.outlook.office365.com
 (2603:10b6:903:117::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.22 via Frontend
 Transport; Thu, 7 Nov 2019 08:56:05 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT020.mail.protection.outlook.com (10.152.75.191) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2430.20
 via Frontend Transport; Thu, 7 Nov 2019 08:56:05 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSdaH-00011r-3u; Thu, 07 Nov 2019 00:56:05 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSdaC-0006ci-0E; Thu, 07 Nov 2019 00:56:00 -0800
Received: from xsj-pvapsmtp01 (xsj-pvapsmtp01.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xA78tpS3024413; 
 Thu, 7 Nov 2019 00:55:51 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSda3-0006c2-6H; Thu, 07 Nov 2019 00:55:51 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, michal.simek@xilinx.com,
 m.tretter@pengutronix.de, jollys@xilinx.com
Subject: [PATCH] clk: zynqmp: Add support for clock with
 CLK_DIVIDER_POWER_OF_TWO flag
Date: Thu,  7 Nov 2019 00:55:02 -0800
Message-Id: <1573116902-7240-1-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39850400004)(376002)(136003)(346002)(199004)(189003)(6636002)(16586007)(47776003)(50226002)(54906003)(7696005)(9786002)(51416003)(316002)(2906002)(8936002)(36386004)(106002)(36756003)(5660300002)(4326008)(81166006)(107886003)(6666004)(356004)(478600001)(2616005)(486006)(44832011)(476003)(426003)(26005)(8676002)(305945005)(70586007)(70206006)(81156014)(126002)(186003)(336012)(48376002)(50466002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB5722; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a029c844-8802-4b1b-2f27-08d763605314
X-MS-TrafficTypeDiagnostic: DM6PR02MB5722:
X-Microsoft-Antispam-PRVS: <DM6PR02MB57224F32DF4C7BBCD1DD72B6B7780@DM6PR02MB5722.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3044;
X-Forefront-PRVS: 0214EB3F68
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AEAtbLOn3s12w4OXKkdVpXKz5lMwAZ8Iumr4jDoHgI4P+A7VpWyXD52jXqkPasz2Xvbl5mEy2nIAe67IGkGGFXQKsZEN36Vwho06aAxkO10J8YChSz/goI7rThpNQITUIKlVJv1/ckJmn56Yx7lyNM5WwVVL2RCMsk/1OVZ8LJjDEdfeXcWPd7eUQKFxE3BjCIvlRhwl70yIKCQYkvA91UsWlDKaOkeWI1JKUj5geCqTI8ZHGUPC1fSfC6lMQ/1pNitrhaPYzcCwFbxJlv86HML1ykekWFa6cjWX5W5K1Yui4YGLYsEuMxl9JRXhieb8yjbrf0XXCJCLhhwvs9KhIRklhL0ayXVlVGBU1XjwPOg3eLwbGOy+tTep4Nde1lWAE5gIzsTrqFz9VJ1rwgpu0bdwqKzJS51GIL4yW1YZTNmnfo9CkY0Acebfe3M5gw+i
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2019 08:56:05.6174 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a029c844-8802-4b1b-2f27-08d763605314
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5722
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_005610_036054_E75819B2 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
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
index d8f5b70d..ce63cf5 100644
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
@@ -44,9 +44,26 @@ struct zynqmp_clk_divider {
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
+		down = parent_rate / rate;
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
@@ -78,6 +95,9 @@ static unsigned long zynqmp_clk_divider_recalc_rate(struct clk_hw *hw,
 	else
 		value = div >> 16;
 
+	if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
+		value = 1 << value;
+
 	if (!value) {
 		WARN(!(divider->flags & CLK_DIVIDER_ALLOW_ZERO),
 		     "%s: Zero divisor and CLK_DIVIDER_ALLOW_ZERO not set\n",
@@ -120,10 +140,13 @@ static long zynqmp_clk_divider_round_rate(struct clk_hw *hw,
 		else
 			bestdiv  = bestdiv >> 16;
 
+		if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
+			bestdiv = 1 << bestdiv;
+
 		return DIV_ROUND_UP_ULL((u64)*prate, bestdiv);
 	}
 
-	bestdiv = zynqmp_divider_get_val(*prate, rate);
+	bestdiv = zynqmp_divider_get_val(*prate, rate, divider->flags);
 
 	if ((clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT) && divider->is_frac)
 		bestdiv = rate % *prate ? 1 : bestdiv;
@@ -151,7 +174,7 @@ static int zynqmp_clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
 	int ret;
 	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 
-	value = zynqmp_divider_get_val(parent_rate, rate);
+	value = zynqmp_divider_get_val(parent_rate, rate, divider->flags);
 	if (div_type == TYPE_DIV1) {
 		div = value & 0xFFFF;
 		div |= 0xffff << 16;
@@ -160,6 +183,9 @@ static int zynqmp_clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
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
