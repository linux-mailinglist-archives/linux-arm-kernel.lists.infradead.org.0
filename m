Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4CB176673
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 22:52:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=778jfSt+oQdYmqaSuw6k/jUILnllJ5HdkI8o+stJ1YA=; b=V4bkx5sa4Blxkp
	Wwvmvm7XPOMShacpl2Yqvc/wWaN2bH0PsNggWHGgUYsQHDs7uovkPjW1lvzavzNhcCK8odsvwSSjX
	O3XYUf0UlvWhdM5Q1+xx8WNKp99HVoEp1pxJrMUXx1h7dwDpd7P/+sl+dZfwuAePaBsVYp/Gb4bTE
	aL3RVSjJpdx/0EbYw6biG6cCmkNDNBiV82ribHjsqVXRVC963MUffonAa05X4umSTvpqBotdAZACM
	UeLyDJyc9Hxt/PLcaxKqkglovkEel/06J/FqUXPzwKE2OsRgAnJw6JsITme3yH2zH7P6v+AmoyvVp
	KZPoPuQRczD2N/WOdxwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8sz6-0007w0-Im; Mon, 02 Mar 2020 21:52:20 +0000
Received: from mail-dm6nam10on2080.outbound.protection.outlook.com
 ([40.107.93.80] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8sxx-0006yy-6H
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 21:51:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oRPyG4wjIoeCpX2SO9Mu/ez5RvntO8R96OiuYzZFTTxGj9W2rUqwA0Ge1ximhOaCUSp0sAb+zr0evFvk7woLPbnnskAEyB7F4ylgPWxz7CSrFHgIgmP7cTdv4KHtdoiryy2k/8E3dTN9VwVdOqVbjbxYWwEbi18yt2hjLNWka7bh258wxhYPgvNZFYOyYi8CerJN1co6n9qDe5SMLSCPqM4EL4uD6i/wGXu22H7bhHQtH0NiNL5xIFI2E0y8bpnfSS3JZDoRU4oTzyMg/xNxHv6wi5dxzkc+V4Jvd6GFxhImL35pat9Gb1dkKlh/tadtvJhCVWOmNEh69cbVAxq+VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HgEIy20wP0B4Bosev/tTDKraK2Es9IvFNhzvT3/KeaE=;
 b=brh+VI+dre1UFilzePgjsgXDdW1UOR6Zfk7YEckD5idbrdJpm1AZK4rmpQvccmfhNGEEy7bZICxIO48UZ9W/C12Q+2gYuFltT8DQGCn9Vu+dkhs9C7gSZW+ghOM/zv3IC7Cm9DU0R6e8RW9+GUjCpcKalkQ7pFsQbRUiY7NfunQbAN6TR1hwyC/MF4wgejvhgDADiMMaOS90S4LtS5IekC/eBNkVnL/Q5DOSvP74I1/lgTSAxCxr1kXc1vT5Au+NG5M9nWq+L+p7QE1VURaZk4lrcp0sAwOMxM6RuYrkDvUMYBDrMpENVzpz0e3e1qdFq7vDD82FcKdYATmBOEoRvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HgEIy20wP0B4Bosev/tTDKraK2Es9IvFNhzvT3/KeaE=;
 b=eg1M/Ew/+Qk85o/HiybAK87ouTSDDiOrG3TfOP7GqUPonnysk8jBTN4rQr2O9PgcQl813FYhGn9D2XdcZNTbVzlzENXeJKsXTW6GUTrXefzasrJL4N9URdyDGi9ZdE3USBx3gTcRlsz3e0btqx0tYsgjKb5RHbxYtNuVWt5KzUs=
Received: from MN2PR20CA0006.namprd20.prod.outlook.com (2603:10b6:208:e8::19)
 by BN7PR02MB4241.namprd02.prod.outlook.com (2603:10b6:406:ff::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.15; Mon, 2 Mar
 2020 21:51:05 +0000
Received: from BL2NAM02FT040.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:e8:cafe::f9) by MN2PR20CA0006.outlook.office365.com
 (2603:10b6:208:e8::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14 via Frontend
 Transport; Mon, 2 Mar 2020 21:51:05 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT040.mail.protection.outlook.com (10.152.77.193) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2772.15
 via Frontend Transport; Mon, 2 Mar 2020 21:51:04 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j8sxs-00022b-4E; Mon, 02 Mar 2020 13:51:04 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j8sxn-0005jv-17; Mon, 02 Mar 2020 13:50:59 -0800
Received: from xsj-pvapsmtp01 (smtp2.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 022LopWX009840; 
 Mon, 2 Mar 2020 13:50:51 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j8sxf-0005fm-LL; Mon, 02 Mar 2020 13:50:51 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: olof@lixom.net, mturquette@baylibre.com, sboyd@kernel.org,
 michal.simek@xilinx.com, arm@kernel.org, linux-clk@vger.kernel.org
Subject: [PATCH v2 2/4] drivers: clk: zynqmp: Fix divider2 calculation
Date: Mon,  2 Mar 2020 13:50:41 -0800
Message-Id: <1583185843-20707-3-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583185843-20707-1-git-send-email-jolly.shah@xilinx.com>
References: <1583185843-20707-1-git-send-email-jolly.shah@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(136003)(39860400002)(199004)(189003)(356004)(6666004)(70586007)(2616005)(9786002)(336012)(70206006)(186003)(26005)(7696005)(36756003)(54906003)(426003)(316002)(4326008)(478600001)(5660300002)(8676002)(81156014)(8936002)(107886003)(2906002)(44832011)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR02MB4241; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6d327200-cf4c-4da0-210e-08d7bef3cea9
X-MS-TrafficTypeDiagnostic: BN7PR02MB4241:
X-Microsoft-Antispam-PRVS: <BN7PR02MB4241158AC35AD8912315DB97B8E70@BN7PR02MB4241.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 033054F29A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CxAmGCosOshgyKEecsb+nsqRkz58GmXC6piMXS6gqvfsEetZ9ntFiBNlaZ+kfIAwBrP40qW5KLRXUCglADNgt1OOpuBJnz3zc02Q9uBzZk13Dz5FrxxrWz1qRKGy4QL82MwlWsdzIYWcgGdEFjfNaNKCtW/o7wROt8WaacQHseM39LwAjpMN7U8NuHlmPjsHl7iWKyrq5DDlMeaiVGgeiXVFZKYasczKTjw+QcWmJL4yp/LSjhdFEFFtYKtQGJu9nYISeuDvasSEnGoq1Yg43d2MTt6D6zJIkLyRAKq7HiAsnD8ioH0TqubehJx/wJtYKAye6Glz9qMS6l10M/swrU+8LQiQP6eLmjshu9O8OFf2EvKd4Yt40Un5OdLj4/hnh4lcZWTThk8phSI4uQ4mZIK6rMdC5eNbLsIRVJ7LXIAjpDpkYer+9F5qj4mmknPF
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2020 21:51:04.7323 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d327200-cf4c-4da0-210e-08d7bef3cea9
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR02MB4241
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_135109_236659_39F2A52A 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.80 listed in list.dnswl.org]
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
