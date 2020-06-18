Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C31C81FDE38
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:31:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dlLySuY84jOoaQLLBmdHy3DYUUUJsJfVeBpbjU56PnU=; b=JEDzHCuhdyRgxs
	daTNfYf10rn5fWeD6Ewl+WRblyW8O1FJCYwlxFLTh2GnM2zH/cVcPClazOskBVxOr2gX6Y0DYaPhZ
	dx4Zgos83CXw14O3WAxo39/a5z8EnsVF5Gbj2813m3hpXA4l9U5WmcQLplvDXKygK8MpXHGZ1eAT/
	9SZ0wuuJlV7uq/tEMgPeW3YJruOtEyaaiqkDTTSM7bJuXwqRCwsOuNlt5OGhHIz3OpmeVyK5aZXBu
	R1d2IUC/+OU9zYoJfQWCLRDOvekmx/n2CtRLNPOfVZQhwVvnHMLh29wQmUAcytPxAcGLfe8QmUnpa
	UNa0AVQooAOdHu3zaIPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljOs-000122-7W; Thu, 18 Jun 2020 01:31:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlj8A-0003TC-GS
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:14:17 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0459821D7B;
 Thu, 18 Jun 2020 01:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442853;
 bh=wxagRCdDmLBVpwWsJ/YZCGc4NdGxBQAmrVSKQTkcppM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wIVu9cNQurT8hjqqVnuFPYpTTPcVjur4fVsYdg3TMj3buMmS24yDa2yGQ8nbVowWQ
 2rse+h2UyrjGdyFs+WGqPshMOwpyh02WaZXZNTeB9QvAUdQMsB4odDiopF3cOmiTrh
 Px9Q7leFSamuEdb/SCI10rfAtDtkuQWlA4VTh2nQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 284/388] clk: zynqmp: Fix divider2 calculation
Date: Wed, 17 Jun 2020 21:06:21 -0400
Message-Id: <20200618010805.600873-284-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181414_606968_551D103D 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, Sasha Levin <sashal@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Jolly Shah <jolly.shah@xilinx.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tejas Patel <tejas.patel@xilinx.com>

[ Upstream commit b8c1049c68d634a412ed5980ae666ed7c8839305 ]

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
Link: https://lkml.kernel.org/r/1583185843-20707-3-git-send-email-jolly.shah@xilinx.com
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/zynqmp/divider.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
index 4be2cc76aa2e..9bc4f9409aea 100644
--- a/drivers/clk/zynqmp/divider.c
+++ b/drivers/clk/zynqmp/divider.c
@@ -111,23 +111,30 @@ static unsigned long zynqmp_clk_divider_recalc_rate(struct clk_hw *hw,
 
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
@@ -192,7 +199,7 @@ static long zynqmp_clk_divider_round_rate(struct clk_hw *hw,
 	 */
 	if (div_type == TYPE_DIV2 &&
 	    (clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT)) {
-		zynqmp_get_divider2_val(hw, rate, *prate, divider, &bestdiv);
+		zynqmp_get_divider2_val(hw, rate, divider, &bestdiv);
 	}
 
 	if ((clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT) && divider->is_frac)
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
