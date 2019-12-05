Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71822113BCC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 07:38:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7kPMAWL21RIqznAPYtem/iawkEzV7yxWWHA6Yh/YGhs=; b=jdt6tqIR+YUrkw
	7mbHPcW1O1pe9SCoHFy82u1JRH47MPll2S0MoMsVGYz1BBvQfMJgaLKONb6BFaQ/7PyTT1bd3hN2M
	UFEAGsVcCQPjpDFUo9UW0Ki73lI9HQJFT9h6D9DaUZz6ZDJo0IzsWZGBJikA57xoRcL9NYd8GNWXn
	dkDfxfPA2inKzxQWgMevFGl3CifVcYaCv8R5Hvul+VS7x+oYjalixqGyfd03NKkG4hXURnq7lMn5V
	hKxGaMmafcwqwelwfeFYOTkfgigmgZoVQfbMXZ6ubN6i4Juu4oJyhQb+B03wdsHUB0mdwfN0m6nbz
	zkeXMyApiNa+Ix8B46yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ickm1-0004PX-TH; Thu, 05 Dec 2019 06:38:01 +0000
Received: from mail-eopbgr700058.outbound.protection.outlook.com
 ([40.107.70.58] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ickle-0004DC-Fn
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 06:37:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L/+LlNFoEFdwiWC+KGKrpe/HxkOiz6GhP3hXAFIyTczrEJgixsHyS1OY1ebtCK7EUp7YQgzrRawwVD0iaUBbUehFPtZCLAQXM41kn/59bhk+T9m0yu7UN53psLFyibWlKbbqLIp/dFHLvdFpo6E0Mi63kPgl6ssWs3Pb/Zujq87TAkamYv9gFsLzZvWi1EDi8NtoFjRbseVLf8n697aXA6bQkrs/igXv8sn/M/kV55OWX971CQ+Gex0psvHyzbo6taRcdhXBiA/oi8sKJVnNam471eChy+M44ibojJIUWI5eRo6KAQoIWzm0UbszrjMqiwPz8xaXYJjzqkJ4cj1OHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ey4Ej2hTzmEmKvVsIfcXFMBEAjs6vkI2lJYYHWL0KY=;
 b=nVO2eIDnEAaitrsQJwFNhHiSsruCwXEtYwDk94RAtSY8tzUJkoviULzixHkspmk8Rpgfv5eeM+P72yCxCKRsixqPsQTuIoVtSbUdvO7pOElUH5JnF7ZZhEQDRJsWj2PFEnOUKEAZAH1pOElpHxOYI9d5GljrrfeD/DoHZJT7EQY+ZI7WscV+1Se/76WsjTi0R2TJvLclIfbP0BTJL6uK6XvORs+mvnLLDNBzFk9dTq1U0CU/d8Uuo6kWmXey8paK1Fqt+aUOKfeIYxJGN+NpzpLZe2rT+btMTf1rfUfzkLt8DDDFr8WMQpZ46KvjsRt4pP71SS+ytF0Z/IlRV+ZasA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ey4Ej2hTzmEmKvVsIfcXFMBEAjs6vkI2lJYYHWL0KY=;
 b=MGcXV4fF/Ly9ncJUJ3WmlGQHrAPFcOHGEL60Rh43foOdx87qw2ZMi+HnQeYU20Y7GZblAYP0b4YqxN2YZjEug/Iy2bXZ6CQEzbizOHTBpKqncDZFD0pouB/2KfYTJNig9q0vhIVOpTLoEBl7hV9MzbIBLgccwUOEFWXAvD+sHeQ=
Received: from DM6PR02CA0103.namprd02.prod.outlook.com (2603:10b6:5:1f4::44)
 by CH2PR02MB6231.namprd02.prod.outlook.com (2603:10b6:610:4::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2516.12; Thu, 5 Dec
 2019 06:37:36 +0000
Received: from CY1NAM02FT050.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::202) by DM6PR02CA0103.outlook.office365.com
 (2603:10b6:5:1f4::44) with Microsoft SMTP Server (version=TLS1_2,
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
 CY1NAM02FT050.mail.protection.outlook.com (10.152.75.65) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Thu, 5 Dec 2019 06:37:35 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1icklb-0000xO-3Y; Wed, 04 Dec 2019 22:37:35 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1icklW-0000XV-04; Wed, 04 Dec 2019 22:37:30 -0800
Received: from xsj-pvapsmtp01 (maildrop.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xB56bKxV003543; 
 Wed, 4 Dec 2019 22:37:20 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1icklM-0000WL-0w; Wed, 04 Dec 2019 22:37:20 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, michal.simek@xilinx.com, jolly.shah@xilinx.com,
 m.tretter@pengutronix.de, gustavo@embeddedor.com,
 tejas.patel@xilinx.com, nava.manne@xilinx.com, mdf@kernel.org
Subject: [PATCH v3 5/6] clk: zynqmp: Fix divider calculation
Date: Wed,  4 Dec 2019 22:35:58 -0800
Message-Id: <1575527759-26452-6-git-send-email-rajan.vaja@xilinx.com>
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
 SFS:(10009020)(4636009)(136003)(396003)(376002)(346002)(39860400002)(189003)(199004)(7696005)(356004)(76176011)(7416002)(51416003)(2906002)(6666004)(9786002)(36386004)(70206006)(50466002)(50226002)(8936002)(8676002)(48376002)(305945005)(81166006)(36756003)(81156014)(11346002)(70586007)(5660300002)(426003)(478600001)(107886003)(2616005)(336012)(44832011)(26005)(16586007)(186003)(316002)(4326008)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6231; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 340fb16f-cc92-4252-320c-08d7794d9d77
X-MS-TrafficTypeDiagnostic: CH2PR02MB6231:
X-Microsoft-Antispam-PRVS: <CH2PR02MB6231EA23D6A1B12733A04295B75C0@CH2PR02MB6231.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-Forefront-PRVS: 02426D11FE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 75gzBgnQE4YwcCAdj5T+jIkZPJZzH3K5fiB3VVRUmzSpS1BbSRF6iGJoE5TrYhi9UQw8/7RCJsfJ1hIHzv0gQqtAgpJEXb4EXCR63B3QoygZfHffzQr2vtVG7nW+gPJ64U06BLHFu4frpNBgUFqqgzBg8iddLOfLcXdU8y5RAmUV4YPCu6GzPyQkYB9Z1OvuYm576hC8l5rdco8QCTLScnu6P+TvtpULS8FnpLgRM+hRJIvlnZgQEut+cjsdYVldmRHuRLtDC1wBTelPWR1k6o/k7ZMeYUDgNqJEwOkVtJGilDMYguxH8+f8ZRHTXlyYXIqf0QopjgWG7e27wYc74/c+FREsu5QkO4RKCFSLGEvl7VYNFwR7g+TcqIZTfYHMbQlXojAukb7W5+40wT+xbHJz8Kg/0N1kQGsTXxF4NGFr8A/GafyZkzb56C0Za5I5MfGgZJgn/FGpyScVfskVgq/WHoI+UEEB0G1D7toqa5ROBvrSUh8TPFAUFpvEYkql
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2019 06:37:35.5770 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 340fb16f-cc92-4252-320c-08d7794d9d77
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6231
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_223738_528902_6F35EE2F 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.58 listed in list.dnswl.org]
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

zynqmp_clk_divider_round_rate() returns actual divider value
after calculating from parent rate and desired rate, even though
that rate is not supported by single divider of hardware. It is
also possible that such divisor value can be achieved through 2
different dividers. As, Linux tries to set such divisor value(out
of range) in single divider set divider is getting failed.

Fix the same by computing best possible combination of two
divisors which provides more accurate clock rate.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
---
 drivers/clk/zynqmp/divider.c | 46 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
index aea52cd..e0d49cc 100644
--- a/drivers/clk/zynqmp/divider.c
+++ b/drivers/clk/zynqmp/divider.c
@@ -89,6 +89,42 @@ static unsigned long zynqmp_clk_divider_recalc_rate(struct clk_hw *hw,
 	return DIV_ROUND_UP_ULL(parent_rate, value);
 }
 
+static void zynqmp_get_divider2_val(struct clk_hw *hw,
+				    unsigned long rate,
+				    unsigned long parent_rate,
+				    struct zynqmp_clk_divider *divider,
+				    int *bestdiv)
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
+	for (div1 = 1; div1 <= pdivider->max_div;) {
+		for (div2 = 1; div2 <= divider->max_div;) {
+			long new_error = ((parent_rate / div1) / div2) - rate;
+
+			if (abs(new_error) < abs(error)) {
+				*bestdiv = div2;
+				error = new_error;
+			}
+			if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
+				div2 = div2 << 1;
+			else
+				div2++;
+		}
+		if (pdivider->flags & CLK_DIVIDER_POWER_OF_TWO)
+			div1 = div1 << 1;
+		else
+			div1++;
+	}
+}
+
 /**
  * zynqmp_clk_divider_round_rate() - Round rate of divider clock
  * @hw:			handle between common and hardware-specific interfaces
@@ -126,6 +162,16 @@ static long zynqmp_clk_divider_round_rate(struct clk_hw *hw,
 
 	bestdiv = zynqmp_divider_get_val(*prate, rate);
 
+	/*
+	 * In case of two divisors, compute best divider values and return
+	 * divider2 value based on compute value. div1 will  be automatically
+	 * set to optimum based on required total divider value.
+	 */
+	if (div_type == TYPE_DIV2 &&
+	    (clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT)) {
+		zynqmp_get_divider2_val(hw, rate, *prate, divider, &bestdiv);
+	}
+
 	if ((clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT) && divider->is_frac)
 		bestdiv = rate % *prate ? 1 : bestdiv;
 	*prate = rate * bestdiv;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
