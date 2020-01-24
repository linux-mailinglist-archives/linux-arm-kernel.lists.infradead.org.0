Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5EA14877B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:23:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RQkvOq4FlpswDa4u/cF3id6/HHNPWHg1wMf6KOzAN9Q=; b=u1VLg6tfqZjV8g
	N7Zo8hovmXIhlxe3iSHWOeWRUMxF3pJ9SVzRfP7HWEpZM+GmRgXK2aYcD1bgyOkF64jYVJU72hkeO
	rwvjWludRzhJF1j0rrVULTntjovBrzPd2tsRM7pRRGED0gkGQatRv7qjoUsWJEHXDdoUhUfkkuZww
	gkjsWo7trKMkubrN7pOI49D72Q8z2ZLqqxyXfLSlzaS1sVjh6F9gt88pWf2YzBe/CV6dnD/uaPumG
	EbCi+o94Gx2+EwtTcoKquIsgLKpa0zqJa/Wa1rYeCNTVsL/z4KVhsoRGHeyMJCHbAn7lmVRI6yP2d
	4PCyqS6hWlPoDFsVdG8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuzru-0005sB-H2; Fri, 24 Jan 2020 14:23:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuznJ-0000nT-4t
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 14:18:46 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1510B22464;
 Fri, 24 Jan 2020 14:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579875524;
 bh=cOyqk97cutL1s+fJwmtKJKAfj/jZXdg6ZAmb/dhgNH8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Tk71IFufMPoskqSClLRkmX0e9oOII1vq0algWcVLbXHMAQTKRxDqcyJJaKM6apr22
 RVbRpPw/sH9oYaJ0SzEWqJ4bECqUwobgKjeTRIZkngfTo33rfOMy0I77Tm/i8jvgef
 ocwABviNIL1l9lvpPChdqGhmRkIDrbJARrZbV8Zk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 023/107] clk: sunxi-ng: sun8i-r: Fix divider on
 APB0 clock
Date: Fri, 24 Jan 2020 09:16:53 -0500
Message-Id: <20200124141817.28793-23-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124141817.28793-1-sashal@kernel.org>
References: <20200124141817.28793-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_061845_222866_8D05361E 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, linux-clk@vger.kernel.org,
 Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org,
 Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Samuel Holland <samuel@sholland.org>

[ Upstream commit 47d64fef1f3ffbdf960d3330b9865fc9f12fdf84 ]

According to the BSP source code, the APB0 clock on the H3 and H5 has a
normal M divider, not a power-of-two divider. This matches the hardware
in the A83T (as described in both the BSP source code and the manual).
Since the A83T and H3/A64 clocks are actually the same, we can merge the
definitions.

Signed-off-by: Samuel Holland <samuel@sholland.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/sunxi-ng/ccu-sun8i-r.c | 21 +++------------------
 1 file changed, 3 insertions(+), 18 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-r.c b/drivers/clk/sunxi-ng/ccu-sun8i-r.c
index 4646fdc61053b..4c8c491b87c27 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-r.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-r.c
@@ -51,19 +51,7 @@ static struct ccu_div ar100_clk = {
 
 static CLK_FIXED_FACTOR_HW(ahb0_clk, "ahb0", &ar100_clk.common.hw, 1, 1, 0);
 
-static struct ccu_div apb0_clk = {
-	.div		= _SUNXI_CCU_DIV_FLAGS(0, 2, CLK_DIVIDER_POWER_OF_TWO),
-
-	.common		= {
-		.reg		= 0x0c,
-		.hw.init	= CLK_HW_INIT_HW("apb0",
-						 &ahb0_clk.hw,
-						 &ccu_div_ops,
-						 0),
-	},
-};
-
-static SUNXI_CCU_M(a83t_apb0_clk, "apb0", "ahb0", 0x0c, 0, 2, 0);
+static SUNXI_CCU_M(apb0_clk, "apb0", "ahb0", 0x0c, 0, 2, 0);
 
 /*
  * Define the parent as an array that can be reused to save space
@@ -127,7 +115,7 @@ static struct ccu_mp a83t_ir_clk = {
 
 static struct ccu_common *sun8i_a83t_r_ccu_clks[] = {
 	&ar100_clk.common,
-	&a83t_apb0_clk.common,
+	&apb0_clk.common,
 	&apb0_pio_clk.common,
 	&apb0_ir_clk.common,
 	&apb0_timer_clk.common,
@@ -167,7 +155,7 @@ static struct clk_hw_onecell_data sun8i_a83t_r_hw_clks = {
 	.hws	= {
 		[CLK_AR100]		= &ar100_clk.common.hw,
 		[CLK_AHB0]		= &ahb0_clk.hw,
-		[CLK_APB0]		= &a83t_apb0_clk.common.hw,
+		[CLK_APB0]		= &apb0_clk.common.hw,
 		[CLK_APB0_PIO]		= &apb0_pio_clk.common.hw,
 		[CLK_APB0_IR]		= &apb0_ir_clk.common.hw,
 		[CLK_APB0_TIMER]	= &apb0_timer_clk.common.hw,
@@ -282,9 +270,6 @@ static void __init sunxi_r_ccu_init(struct device_node *node,
 
 static void __init sun8i_a83t_r_ccu_setup(struct device_node *node)
 {
-	/* Fix apb0 bus gate parents here */
-	apb0_gate_parent[0] = &a83t_apb0_clk.common.hw;
-
 	sunxi_r_ccu_init(node, &sun8i_a83t_r_ccu_desc);
 }
 CLK_OF_DECLARE(sun8i_a83t_r_ccu, "allwinner,sun8i-a83t-r-ccu",
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
