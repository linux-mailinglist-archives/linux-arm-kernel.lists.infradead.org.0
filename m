Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C818413547
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 00:11:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qTcMvt4I5gl+34YEyiLPnXSeacgjpliGiax5vYFOZmQ=; b=PUW4I3zNHV8eg2
	Hu0e7CE0BW3gqPGSA1J8KemiVKCubWnz3IPk84tdw9la4gcuiiWUhPqw4oJUWfqfCticOKAQWc6Cb
	VEI8u/eIufhn7Ac/vWp0zxsR80iO1L4wOExkhZyKUFZltoMcK5EXaA2gtjECng+ncvLmtvMU+7s/u
	WIX+Ke3rw9MGbGlgUfqB/eahkrzZ/M/vCLRFEdMXNyxYOD2UVCnOfALQ3EPD7XKKPVM9sBbomvY9x
	3XZFmFPTFtS0zLiGgMJuLZrsAOSXwjaZVvZazEcTTuxjtJz3MusYjy8xVdSY4m7SQ4P3pE4scQ7D7
	y9fEi56fkJH+nR5b/+1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMgP4-0006NP-SO; Fri, 03 May 2019 22:11:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMgOr-0006Cm-Lo; Fri, 03 May 2019 22:11:29 +0000
Received: from localhost (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 88BAB206E0;
 Fri,  3 May 2019 22:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556921484;
 bh=YxHTZShOcDV00VQUHv/xm7oSbg5tXMsEy2BisbYC/z4=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=oMojVehQzvqv1ds0vigIDtbGTnRifWLy0j05yvSTQ0IgKts12O328jAFiC29VawIe
 ZEyiwy+G8XG2HboizeOA9yARJIf13horlV899Fj2fNkFzWQjyU42U+NSKPsxtVVuMn
 7WA8VJaQr2xx/XOdmFPgKK1qr+/9SzcBhHjv2en8=
MIME-Version: 1.0
In-Reply-To: <20190503212208.223232-1-dianders@chromium.org>
References: <20190503212208.223232-1-dianders@chromium.org>
To: Douglas Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Shawn Lin <shawn.lin@rock-chips.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: rockchip: Don't yell about bad mmc phases when
 getting
Message-ID: <155692148370.12939.291938595926908281@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Fri, 03 May 2019 15:11:23 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_151126_292317_E7BB3179 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: hal@halemmerich.com, Michael Turquette <mturquette@baylibre.com>,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Douglas Anderson (2019-05-03 14:22:08)
> At boot time, my rk3288-veyron devices yell with 8 lines that look
> like this:
>   [    0.000000] rockchip_mmc_get_phase: invalid clk rate
> 
> This is because the clock framework at clk_register() time tries to
> get the phase but we don't have a parent yet.
> 
> While the errors appear to be harmless they are still ugly and, in
> general, we don't want yells like this in the log unless they are
> important.
> 
> There's no real reason to be yelling here.  We can still return
> -EINVAL to indicate that the phase makes no sense without a parent.
> If someone really tries to do tuning and the clock is reported as 0
> then we'll see the yells in rockchip_mmc_set_phase().
> 
> Fixes: 4bf59902b500 ("clk: rockchip: Prevent calculating mmc phase if clock rate is zero")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

Change looks fine, but this driver should call clk_hw_get_rate() on the
clk instead of clk_get_rate(). Unless that needs to recalc the rate for
some reason?

Also, we don't check for errors from clk_ops::get_phase() in clk.c
before storing away the result into the clk_core::phase member. I
suppose we should skip the store in this case so that debugfs results
don't look odd.

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index aa51756fd4d6..2455b2c43386 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -2606,14 +2606,14 @@ EXPORT_SYMBOL_GPL(clk_set_phase);
 
 static int clk_core_get_phase(struct clk_core *core)
 {
-	int ret;
+	int ret = 0;
 
-	clk_prepare_lock();
+	lockdep_assert_held(&prepare_lock);
 	/* Always try to update cached phase if possible */
 	if (core->ops->get_phase)
-		core->phase = core->ops->get_phase(core->hw);
-	ret = core->phase;
-	clk_prepare_unlock();
+		ret = core->ops->get_phase(core->hw);
+	if (ret >= 0)
+		core->phase = ret;
 
 	return ret;
 }
@@ -2627,10 +2627,16 @@ static int clk_core_get_phase(struct clk_core *core)
  */
 int clk_get_phase(struct clk *clk)
 {
+	int ret;
+
 	if (!clk)
 		return 0;
 
-	return clk_core_get_phase(clk->core);
+	clk_prepare_unlock();
+	ret = clk_core_get_phase(clk->core);
+	clk_prepare_unlock();
+
+	return ret;
 }
 EXPORT_SYMBOL_GPL(clk_get_phase);
 
@@ -2850,16 +2856,24 @@ static struct hlist_head *orphan_list[] = {
 static void clk_summary_show_one(struct seq_file *s, struct clk_core *c,
 				 int level)
 {
+	int phase;
+
 	if (!c)
 		return;
 
-	seq_printf(s, "%*s%-*s %7d %8d %8d %11lu %10lu %5d %6d\n",
+	seq_printf(s, "%*s%-*s %7d %8d %8d %11lu %10lu ",
 		   level * 3 + 1, "",
 		   30 - level * 3, c->name,
 		   c->enable_count, c->prepare_count, c->protect_count,
-		   clk_core_get_rate(c), clk_core_get_accuracy(c),
-		   clk_core_get_phase(c),
-		   clk_core_get_scaled_duty_cycle(c, 100000));
+		   clk_core_get_rate(c), clk_core_get_accuracy(c));
+
+	phase = clk_core_get_phase(c);
+	if (phase >= 0)
+		seq_printf(s, "%5d", phase);
+	else
+		seq_printf(s, "-----");
+
+	seq_printf(s, " %6d\n", clk_core_get_scaled_duty_cycle(c, 100000));
 }
 
 static void clk_summary_show_subtree(struct seq_file *s, struct clk_core *c,
@@ -2899,6 +2913,8 @@ DEFINE_SHOW_ATTRIBUTE(clk_summary);
 
 static void clk_dump_one(struct seq_file *s, struct clk_core *c, int level)
 {
+	int phase;
+
 	if (!c)
 		return;
 
@@ -2909,7 +2925,9 @@ static void clk_dump_one(struct seq_file *s, struct clk_core *c, int level)
 	seq_printf(s, "\"protect_count\": %d,", c->protect_count);
 	seq_printf(s, "\"rate\": %lu,", clk_core_get_rate(c));
 	seq_printf(s, "\"accuracy\": %lu,", clk_core_get_accuracy(c));
-	seq_printf(s, "\"phase\": %d,", clk_core_get_phase(c));
+	phase = clk_core_get_phase(c);
+	if (phase >= 0)
+		seq_printf(s, "\"phase\": %d,", phase);
 	seq_printf(s, "\"duty_cycle\": %u",
 		   clk_core_get_scaled_duty_cycle(c, 100000));
 }
@@ -3248,10 +3266,7 @@ static int __clk_core_init(struct clk_core *core)
 	 * Since a phase is by definition relative to its parent, just
 	 * query the current clock phase, or just assume it's in phase.
 	 */
-	if (core->ops->get_phase)
-		core->phase = core->ops->get_phase(core->hw);
-	else
-		core->phase = 0;
+	clk_core_get_phase(core);
 
 	/*
 	 * Set clk's duty cycle.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
