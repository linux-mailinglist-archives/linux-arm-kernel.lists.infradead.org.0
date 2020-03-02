Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2672717664B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 22:44:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=778jfSt+oQdYmqaSuw6k/jUILnllJ5HdkI8o+stJ1YA=; b=g07VxkWAa+uAdL
	RoPUJfbG9CvJSv+lPsa71VzW4+RSmM5Am9nrEhkRIjNBSiB/KWPZegmCgii22AnwBSDaLmHbsM2iP
	2EaluUd2d+VocpfdM5HEUaPfbHvUzFNWF/j6s2mubtBf1Gq0FM1wUth3+419n9vjK2MyPJnCzY80U
	70W0LblsIswmaLEIMm6+pX/Dj/57SICnfYZwewx4m1QmqHCoJDOw7eO/Yl/UZe0rODCzuZDEXjgOE
	u8kmdRTZwpU6k1J3SLi7tPiHtHj6uR+n7wNYEVctt/s1Covu74Y+k2EOVB8DyCmm1Rhedoxp1a6G8
	LyWbsL9sKIo9jY42ZQCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8srK-0002tK-Qj; Mon, 02 Mar 2020 21:44:18 +0000
Received: from mail-mw2nam10on2070.outbound.protection.outlook.com
 ([40.107.94.70] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8sqx-0002kK-5X
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 21:43:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i/9oo/XisXLl0dapyNhUlt/qtDdt6BMAAf+f2Qi9vGnzyb5+aSyl0fG38ultgPoG/Xj1u8CRUVJHthN3kInfubBtYJZO6NHtkonpGyzREORqGTtlHdOsRK7GG2psx1ba9m+lej5/AkocXmVEhJlNlBc7HB++sLwpUG1X8BWYntC3GQy+rpc42o6tpNi6mX1O8hoqbZSrL5Y5Dmu0JpSxLwL4z6Ya+o+Mv9G8/jBXhHupqZ+gKdFf6HCEA3ClVPLE7U0azGkvRBDPze4RjZJcB8w3/HDkg5e6cprMKebM7cAoD3M8iApVnxcR7JqcoSN2iufKXot+A66JTXkDaiRwbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HgEIy20wP0B4Bosev/tTDKraK2Es9IvFNhzvT3/KeaE=;
 b=MpO+sM+CAvZYcM9k78+D4aiGUAOOzAZVYpi67amrNOFjd06T/utxtbxX/H6atxygLy4ALWCcBcDi3y6adFlQ+VE/j2RuiBXucX9I5GGegp56pJtkdWgD4KGaJUqC6G9JsV3puDyqnA7GnviOs38RLk9ZIiUZWmytxvQVkW4ERZovPeIkFJhh2csE+wyjmDmab9ql/7r71f449qXPVUNUIh1/PYAAZPYH8BgBrZS6/Fhi3PJpNgWZDPIsnzjIFj0ktUmToiRNC4RyoFzvzPkqlipzgexv1tXPkm3+Qpy8PUR19PYBmAmTJ2r3bMlHyRGmQ9MOX0ofHZ7Xjb8/VRaWpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HgEIy20wP0B4Bosev/tTDKraK2Es9IvFNhzvT3/KeaE=;
 b=lp08jLq4VRQ7HoUYLic7Lg4xArSQJuAl31CJZzlQ6KKGCWX8gK0lf4Zrz0q+Bem0j4UEPjMtWELlEAF59NK4oYBtYmXl7cbszOg+E8htzmXJ+Uh8b0v6cWwlMDNtWM1FnC8zdTHAqsAd3JF/yUtyIEbDfoCYmY9qwH9Jwn0Vz6U=
Received: from MN2PR16CA0024.namprd16.prod.outlook.com (2603:10b6:208:134::37)
 by DM6PR02MB5228.namprd02.prod.outlook.com (2603:10b6:5:46::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.18; Mon, 2 Mar
 2020 21:43:53 +0000
Received: from BL2NAM02FT008.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:134:cafe::88) by MN2PR16CA0024.outlook.office365.com
 (2603:10b6:208:134::37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.15 via Frontend
 Transport; Mon, 2 Mar 2020 21:43:52 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT008.mail.protection.outlook.com (10.152.76.162) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2772.15
 via Frontend Transport; Mon, 2 Mar 2020 21:43:52 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j8squ-00020A-5G; Mon, 02 Mar 2020 13:43:52 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j8sqp-00033f-2F; Mon, 02 Mar 2020 13:43:47 -0800
Received: from xsj-pvapsmtp01 (mailman.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 022LhiOC006057; 
 Mon, 2 Mar 2020 13:43:45 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j8sqm-00032V-Of; Mon, 02 Mar 2020 13:43:44 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: olof@lixom.net, mturquette@baylibre.com, sboyd@kernel.org,
 michal.simek@xilinx.com, arm@kernel.org, linux-clk@vger.kernel.org
Subject: [PATCH 2/4] drivers: clk: zynqmp: Fix divider2 calculation
Date: Mon,  2 Mar 2020 13:43:32 -0800
Message-Id: <1583185414-20106-3-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583185414-20106-1-git-send-email-jolly.shah@xilinx.com>
References: <1583185414-20106-1-git-send-email-jolly.shah@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(346002)(376002)(396003)(189003)(199004)(2906002)(336012)(26005)(36756003)(478600001)(8676002)(81166006)(81156014)(426003)(9786002)(356004)(6666004)(44832011)(8936002)(2616005)(107886003)(7696005)(316002)(5660300002)(70206006)(70586007)(54906003)(186003)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB5228; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 24b7a5ee-a4bb-4379-7d70-08d7bef2cd2a
X-MS-TrafficTypeDiagnostic: DM6PR02MB5228:
X-Microsoft-Antispam-PRVS: <DM6PR02MB5228C27C8A52555E728320B8B8E70@DM6PR02MB5228.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 033054F29A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DZx7IpN5kayvA+YNK57SvUQp/5YpkBuH0u15DNsK5xG1UZeEKdPFcbswB/HIC7MdNm1HppkRKboD9/dgCVFjWS95wi05RMkeq4nVlRUPqwfRcX6c3m6MyQbdb5Hmi/DgPci8E6kmkWYdpwKsTkeqo8xSeMYgpmFPBDRxO1KRoYfoQeqadvIxSJU448qKDEu96rWhoFi6G6N7Vxcc7ZXZF+LqgdcmFH/dbLz2YR5udfOEMMUKTioLwocNm2DlshcT6Y4xFjUe+KFJOlnnP2Znm8UZZFithdRWt+c/sV7z+eAF7JngosoeFOtmOF2TEwcj2Q1Dr+xg4tbft+697/zlG+DqvwNE7liCs5yshT6CM4aV9BzSf+cT+5QSTdL7iIUC2q+phtwg/R748rwQx8EJve6WLoL4DebUrZi44CltUmnrKQnNi96mSlno/osHqvRe
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2020 21:43:52.7289 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 24b7a5ee-a4bb-4379-7d70-08d7bef2cd2a
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5228
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_134355_210093_6AA42379 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.70 listed in list.dnswl.org]
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, Jolly Shah <jolly.shah@xilinx.com>,
 rajanv@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tejas Patel <tejas.patel@xilinx.com>

zynqmp_get_divider2_val() calculates, divider value of type DIV2 clock,
considering best possible combination of DIV1 and DIV2.

To find best possible values of DIV1 and DIV2, DIV1's parent rate
should be consider and not DIV2's parent rate since it would rate of
div1 clock. Consider a below topology,

	out_clk->div2_clk->div1_clk->fixed_parent

where out_clk = (fixed_parent/div1_clk) / div2_clk, so parent clock
of div1_clk (i.e. out_clk) should be divided by div1_clk and div2_clk.

Existing code divides parent rate of div2_clk's clock instead of
div1_clk's parent rate, which is wrong.

Fix the same by considering div1's parent clock rate.

Fixes: 4ebd92d2e228 ("clk: zynqmp: Fix divider calculation")
Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/clk/zynqmp/divider.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
index 7d2cb61..dea3e21 100644
--- a/drivers/clk/zynqmp/divider.c
+++ b/drivers/clk/zynqmp/divider.c
@@ -112,23 +112,30 @@ static unsigned long zynqmp_clk_divider_recalc_rate(struct clk_hw *hw,
 
 static void zynqmp_get_divider2_val(struct clk_hw *hw,
 				    unsigned long rate,
-				    unsigned long parent_rate,
 				    struct zynqmp_clk_divider *divider,
 				    int *bestdiv)
 {
 	int div1;
 	int div2;
 	long error = LONG_MAX;
-	struct clk_hw *parent_hw = clk_hw_get_parent(hw);
-	struct zynqmp_clk_divider *pdivider = to_zynqmp_clk_divider(parent_hw);
+	unsigned long div1_prate;
+	struct clk_hw *div1_parent_hw;
+	struct clk_hw *div2_parent_hw = clk_hw_get_parent(hw);
+	struct zynqmp_clk_divider *pdivider =
+				to_zynqmp_clk_divider(div2_parent_hw);
 
 	if (!pdivider)
 		return;
 
+	div1_parent_hw = clk_hw_get_parent(div2_parent_hw);
+	if (!div1_parent_hw)
+		return;
+
+	div1_prate = clk_hw_get_rate(div1_parent_hw);
 	*bestdiv = 1;
 	for (div1 = 1; div1 <= pdivider->max_div;) {
 		for (div2 = 1; div2 <= divider->max_div;) {
-			long new_error = ((parent_rate / div1) / div2) - rate;
+			long new_error = ((div1_prate / div1) / div2) - rate;
 
 			if (abs(new_error) < abs(error)) {
 				*bestdiv = div2;
@@ -193,7 +200,7 @@ static long zynqmp_clk_divider_round_rate(struct clk_hw *hw,
 	 */
 	if (div_type == TYPE_DIV2 &&
 	    (clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT)) {
-		zynqmp_get_divider2_val(hw, rate, *prate, divider, &bestdiv);
+		zynqmp_get_divider2_val(hw, rate, divider, &bestdiv);
 	}
 
 	if ((clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT) && divider->is_frac)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
