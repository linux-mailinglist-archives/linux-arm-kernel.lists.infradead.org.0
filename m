Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1DDF906E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 14:19:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f/izvMPf1Jkdwky/nGQv7XYSa+nNkQHoLxO95t3KZGE=; b=kaR92YB9/N1Rty
	cys/lZn4xfe+IbDgL6h5YtOhR17ls4/HhQ/qCcjOYCvx8IYlCvpEH9BwqFi3xG8DIPBahW7cT3byi
	BNEPbkpZ7qq6Dv6c65QwrN4hyEG8gERaP8vOx6pF/GNiZZq08A6ibvMsG8PjrBwqzdHLAmFmngDoN
	1Rt92WO6UsR4950f5lgabHwuVWlXACTg/hC8NGIdptbCN57ddelcBJZ14mynPFo+IWsEHcXHxmBSE
	UbF1X70ysx0tHRc+fbfmn7WfbndeRYQDVZpxsRQux4pZbD8mW31qj76UtAoZkY3vEAnnLcbCqoZPt
	zPPUGLYr0u/GCW/lme3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUW4c-0008Hb-Tc; Tue, 12 Nov 2019 13:19:10 +0000
Received: from mail-eopbgr800043.outbound.protection.outlook.com
 ([40.107.80.43] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUW2u-0006mh-8i
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 13:17:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mttOl/KoCymW0LCfzGC9s6QEmLWh04/cRbpiRGTc0+9iq06s7FdTXNPOOpDV7fjYOIlX6qu7ybIbATDZidIM0gLGeV3dP8UgCdxToaMaxQCxjBg3lcY/GHq7grXLKxm0KTg97TmsOLdWcME1DHb8J3jsrZmAIXRdMKtNfgjaKFnfRF1ligoF0q5gwDai7shUieh1iCXrWWFLRsNImZyaBaKeQedzdg7nyyVyEvehbj1jWKIWu8o4Pe/HtGr2777yjL1Me5ZShVevNWeG7QaCJ8Hgn4FdtMklFDPXR5QG0rY/Iv8xONcCeBYrgPCPlKV3eFSG4sg/1++gBYPaYzCcEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3cFkGCKk7MuEitcTUnSnqvZ/QbDnmb5KjStx3kSvack=;
 b=M+84ozEL+WfaGuLfhnnTnDH/omtchBXMDnhHYFVrPY9Xb5q5CjO1pInyc/AIiH5oHDE4ho+cL4llO7MET3GFXRxn+dp0Q89kxXMbki3cmbRl6A8pZP3dCil8geMtxjGXQDJu+nlxDyh2J+4hY3rRoAGoOgEy0x8d+AZVvbnkOyD0fYsHT7P+dfh9974foAvMFbXU8VxFR0G5RGs/a9z68BH8xvQ2aBtaQko7Ga4ZvsCWoyWwBXrjXP+jIy3M8Q2Vn2NfVUIog2CRqNZ4l4Jkoqd3lzX3YsYdBTcWC1lo9YbnBvnY+yXvhXTOHOMVRYmwVyo/9EDXIU+FrL1arqL+JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3cFkGCKk7MuEitcTUnSnqvZ/QbDnmb5KjStx3kSvack=;
 b=HyB3iE2OD6p83hK493koqVtM95XgS214QIO7M27DclA+GGyC0Bpj1ml9a/TiIzFnc35e7vSOpmDJK2cFdpTH5pOgel3ejCj9ImqUK2qvgZrqmqcyUjgY6LPlRRnvFJZKeBJ/BUucqRHPjCExteDndFJM3BUGRCvw+0YzAQh+/CI=
Received: from BL0PR02CA0058.namprd02.prod.outlook.com (2603:10b6:207:3d::35)
 by DM6PR02MB5180.namprd02.prod.outlook.com (2603:10b6:5:4e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.22; Tue, 12 Nov
 2019 13:17:20 +0000
Received: from BL2NAM02FT047.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::206) by BL0PR02CA0058.outlook.office365.com
 (2603:10b6:207:3d::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.25 via Frontend
 Transport; Tue, 12 Nov 2019 13:17:20 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT047.mail.protection.outlook.com (10.152.77.9) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2430.20
 via Frontend Transport; Tue, 12 Nov 2019 13:17:20 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iUW2p-0003tB-Q6; Tue, 12 Nov 2019 05:17:19 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iUW2k-0004J3-Mc; Tue, 12 Nov 2019 05:17:14 -0800
Received: from xsj-pvapsmtp01 (maildrop.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xACDH6lG022526; 
 Tue, 12 Nov 2019 05:17:07 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iUW2c-0004Ds-P0; Tue, 12 Nov 2019 05:17:06 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, michal.simek@xilinx.com,
 m.tretter@pengutronix.de, jolly.shah@xilinx.com,
 dan.carpenter@oracle.com, gustavo@embeddedor.com,
 tejas.patel@xilinx.com, nava.manne@xilinx.com, ravi.patel@xilinx.com
Subject: [PATCH 6/7] clk: zynqmp: Add support for clock with
 CLK_DIVIDER_POWER_OF_TWO flag
Date: Tue, 12 Nov 2019 05:16:19 -0800
Message-Id: <1573564580-9006-7-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573564580-9006-1-git-send-email-rajan.vaja@xilinx.com>
References: <1573564580-9006-1-git-send-email-rajan.vaja@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(136003)(39860400002)(346002)(199004)(189003)(50226002)(81156014)(9786002)(50466002)(186003)(11346002)(446003)(2616005)(486006)(126002)(476003)(426003)(336012)(26005)(8936002)(81166006)(8676002)(48376002)(70586007)(36386004)(4326008)(70206006)(356004)(7696005)(6666004)(51416003)(36756003)(107886003)(106002)(76176011)(16586007)(316002)(6636002)(54906003)(478600001)(2906002)(7416002)(305945005)(44832011)(5660300002)(47776003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB5180; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 64ca7f2a-38db-4dde-4c72-08d76772a612
X-MS-TrafficTypeDiagnostic: DM6PR02MB5180:
X-Microsoft-Antispam-PRVS: <DM6PR02MB5180BA1917286F2EB9F6239AB7770@DM6PR02MB5180.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:1186;
X-Forefront-PRVS: 021975AE46
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +PG7LSlqBANqo0T68T1kDibIsVt5tyJTPGAjid3YRleze+uZj7MLcb+4dUgU3UF0XQwsjR3hIdCrYofHzPzpBR94OfMVZuDGUVr9pFwg7GaujHvuGN/XBZirALyTYhSzNIDcoNqGmc5RkEWxSyzIsl8/SmqGrAlBk5A3lYDASMAL51VCUW/Pyxq6kk5q9pti4/E3mA5P3wEkg1TOvkI4yxyeXNGIP4MmRUOTf+CRLsz12RxrHZ2M11xb3JjPGNgSPm/wIhzgQxNZm3uUbJ4UoQc9KcB+eIsW+r+1Rf8l20/5felEPZkKR24WjVomPpDwNzfROsk4oR/IS4OXxkA4148ve/d1VPw3jdS4HfqBEgETrH3BUCMhunAULh9Oa7hb/1xYOFMndEdvfY75aHMyx7ByzinHMFLVGzFN5veXbFmQwm7qdYnfyCjn2jOXWRh+
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2019 13:17:20.3972 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 64ca7f2a-38db-4dde-4c72-08d76772a612
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_051724_341986_47947121 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
index b564696..67aa88c 100644
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
