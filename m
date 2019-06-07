Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCCC3940E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 20:14:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w5mSCaS6Mrszva/NMjII/t4lF7gVqzL0uFwj+VpIW0A=; b=qMumljrZ7H1QQp
	N3vubFkQJrWl+CRxO4vt/7YbX1+4nX0MRk8eq3iAlQnjZHQXo/OdVRzq1Z1cX0NzSy5K07jBpVTyD
	h/oQltyUQZw+gKzrDVLELb7SmE+FvmNAzv9QPA7rgznHWhEbjyUEhVkIx8vwjOZDCtaJ+PMxt2JlW
	dxqxZqaGI5iX9hMGJnwDOtm4FwzmKs4GMZ1Rtyi2KYdDF8v5SyzBSb1AiqCi1ITPDc4/gvTCHJSyN
	xf+xj9OA/9MERposhM6yxz22x58vDZ1HkLQc9ULZMwkq09jHDc2yyMRLY4grbfULOkWqAstgdB4OK
	JSxcjGP6zenr25yqi8+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZJNU-0000p2-Ja; Fri, 07 Jun 2019 18:14:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZJNL-0000oh-7L
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 18:14:04 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B3F9820868;
 Fri,  7 Jun 2019 18:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559931242;
 bh=UdznyVpRLBkTyuEoupaePTT33UjXWCnnxsQdTJKxo4Q=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=T1E46J9x/Y3mc1Ns6Or3nqaANxl2yDrd3n+pp3KNPD/W7cmLkijwMwceya5LP2rBS
 u1Tn3hQQ9pgY9IxmdiTchSQCjo6raPxsaDGE1txJUZGwvOS3pn/oCCl9cTjnNy7tcV
 I889Nknlvh4dsJejPqUpv9s8bTtXfGUN1qbUQAfY=
MIME-Version: 1.0
In-Reply-To: <20190520080421.12575-2-wens@kernel.org>
References: <20190520080421.12575-1-wens@kernel.org>
 <20190520080421.12575-2-wens@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 01/25] clk: Fix debugfs clk_possible_parents for clks
 without parent string names
User-Agent: alot/0.8.1
Date: Fri, 07 Jun 2019 11:14:01 -0700
Message-Id: <20190607181402.B3F9820868@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_111403_285364_DA0D3C7C 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Chen-Yu Tsai <wens@csie.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Chen-Yu Tsai (2019-05-20 01:03:57)
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index aa51756fd4d6..bdb077ba59b9 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -3000,12 +3000,16 @@ DEFINE_SHOW_ATTRIBUTE(clk_flags);
>  static int possible_parents_show(struct seq_file *s, void *data)
>  {
>         struct clk_core *core = s->private;
> +       struct clk_core *parent;
>         int i;
>  
> -       for (i = 0; i < core->num_parents - 1; i++)
> -               seq_printf(s, "%s ", core->parents[i].name);
> +       for (i = 0; i < core->num_parents - 1; i++) {
> +               parent = clk_core_get_parent_by_index(core, i);
> +               seq_printf(s, "%s ", parent ? parent->name : NULL);
> +       }
>  
> -       seq_printf(s, "%s\n", core->parents[i].name);
> +       parent = clk_core_get_parent_by_index(core, i);
> +       seq_printf(s, "%s", parent ? parent->name : NULL);

What do we do if the parent won't appear on this system, but we've
listed it as a possible parent with the '.fw_name' string? Is that not a
"possible" parent because it won't ever appear?

I'm mostly saying that we should try to detect these corner cases and
print something besides NULL. Maybe we could even print the fallback
'.name' if clk_core_get_parent_by_index() fails (and '.name' isn't
NULL).  Then we're left with the case where even the fallback '.name' is
NULL, and we can print something like "<fw_name> (fw)" to indicate that
we're waiting for the kernel to probe a provider for that parent, but
the firmware name is <fw_name> and that's all we know.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
