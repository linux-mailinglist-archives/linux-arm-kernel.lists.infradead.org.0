Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FD3520CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 05:02:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/bKog4rO8zXIbwOSObCEuRWTHlO3Gvfu/Ym41Nj/DU=; b=YD3bvu3V3DawwL
	kwcwOwzeoRwzKEk8VRkv8oSKs0qV1i7AS069Cn/fv7DW35p9DufFVxikI5k9IA9+/GpSQ70cKdhAt
	QsMy8WrltEcAJ8rq67JttWRl4ZfunXHGKZCzal0Mt7kCcDHp6asLX7vjLm3dZLSZklCF5Kuk344FF
	n+kECPiBE9Nxq2DK9mrOTA/q93SK1sclllJtY+o3v0NZjRgu0qcITelAdp146lBUYZy5wIJlfYRNA
	LICBMtOFQtspZD+cX8jXc7hWQ9KA1Cii/Noxqaljs2NMY+8EMalveskOlNmiM6a6e2br9cEwLcby4
	VEIKAdk/lxul4nZGAgWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfbiU-0001Ah-Rn; Tue, 25 Jun 2019 03:01:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfbiJ-0001AL-K8
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 03:01:45 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0D26320652;
 Tue, 25 Jun 2019 03:01:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561431701;
 bh=O/Rl98hz9ieqZmp7Iv9AyRHq2sgebPoQ1bto4qjumRw=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=feSGfW41RThsnzcfmtVcGbco3VIDoEmSMnvFNcX7UbfsUw8jB70sQo7iRmZQdS4JM
 Y6vphDv0atiamoB1hPQ2/KoGbkC7RYU9Y4vbBLTEYOXrRtuhqqF2z73i3UW6eCi8PA
 yf8QZ2I0D1CDouHjPW8gjZBaJQU669bv3IyGS7D8=
MIME-Version: 1.0
In-Reply-To: <20190622022254.GA7789@wens.csie.org>
References: <20190622022254.GA7789@wens.csie.org>
To: Chen-Yu Tsai <wens@kernel.org>, Michael Turquette <mturquette@baylibre.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [GIT PULL] clk: sunxi-ng: clk parent rewrite part 1 - take 2
User-Agent: alot/0.8.1
Date: Mon, 24 Jun 2019 20:01:40 -0700
Message-Id: <20190625030141.0D26320652@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_200143_710711_9126786B 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Chen-Yu Tsai (2019-06-21 19:22:54)
> Hi,
> 
> Take 2 has build errors in drivers/clk/sunxi-ng/ccu-suniv-f1c100s.c
> fixed.
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git sunxi-ng-parent-rewrite-part-1-take-2
> 
> for you to fetch changes up to 89f27fb2dd348d8d52a97e6ebec15c64fe461a25:
> 
>   clk: sunxi-ng: sun8i-r: Use local parent references for SUNXI_CCU_GATE (2019-06-22 10:13:16 +0800)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next. I applied this patch on top though to
clean up the debugfs patch. A newline was missing. Does it make sense? I
haven't tested it at all.

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 093161ca4dcc..09d8e84a1968 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -2997,11 +2997,10 @@ static int clk_flags_show(struct seq_file *s, void *data)
 }
 DEFINE_SHOW_ATTRIBUTE(clk_flags);
 
-static int possible_parents_show(struct seq_file *s, void *data)
+static void possible_parent_show(struct seq_file *s, struct clk_core *core,
+				 unsigned int i, char terminator)
 {
-	struct clk_core *core = s->private;
 	struct clk_core *parent;
-	int i;
 
 	/*
 	 * Go through the following options to fetch a parent's name.
@@ -3015,22 +3014,6 @@ static int possible_parents_show(struct seq_file *s, void *data)
 	 * specified directly via a struct clk_hw pointer, but it isn't
 	 * registered (yet).
 	 */
-	for (i = 0; i < core->num_parents - 1; i++) {
-		parent = clk_core_get_parent_by_index(core, i);
-		if (parent)
-			seq_printf(s, "%s ", parent->name);
-		else if (core->parents[i].name)
-			seq_printf(s, "%s ", core->parents[i].name);
-		else if (core->parents[i].fw_name)
-			seq_printf(s, "<%s>(fw) ", core->parents[i].fw_name);
-		else if (core->parents[i].index >= 0)
-			seq_printf(s, "%s ",
-				   of_clk_get_parent_name(core->of_node,
-							  core->parents[i].index));
-		else
-			seq_puts(s, "(missing) ");
-	}
-
 	parent = clk_core_get_parent_by_index(core, i);
 	if (parent)
 		seq_printf(s, "%s", parent->name);
@@ -3045,6 +3028,19 @@ static int possible_parents_show(struct seq_file *s, void *data)
 	else
 		seq_puts(s, "(missing)");
 
+	seq_putc(s, terminator);
+}
+
+static int possible_parents_show(struct seq_file *s, void *data)
+{
+	struct clk_core *core = s->private;
+	int i;
+
+	for (i = 0; i < core->num_parents - 1; i++)
+		possible_parent_show(s, core, i, ' ');
+
+	possible_parent_show(s, core, i, '\n');
+
 	return 0;
 }
 DEFINE_SHOW_ATTRIBUTE(possible_parents);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
