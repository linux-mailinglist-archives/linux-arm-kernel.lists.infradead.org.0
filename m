Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C8E39543
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 21:05:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=05/iuRu+vFX+yuR8hB1u5v6RPqgkBr0h9r8T2gqwUeU=; b=Bg+30V/xbyIrpy
	PVwnmZX1unhVUMqQXtoX6qiturUFI1fNy37G/77nXBLOrr0V0qox1+fxV6JZsVJcK+UQOyfy1m+qJ
	t7Qpht2hTYwlqtNfTS5htliSbqzkfhMeyiwpU7JemQgFAvCGnyOws8JyTedsZCn0fLWkVOlYhESUs
	4oIfHuw3/8j5uFJ4sSjywHXxyq2zxUrwucB9PQ7X/GsVx/FFDyi8s4NMRBgkBUd1zLO9rg7wzQd8O
	jHfEqLAb9lGqPmxul4fbAoh5Q/8aKUbFmpy77DSRQmeFfPAryXFvovEMXwjjgF3npB460q/KlReY4
	e9zVVljthpRghTo/NMgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZKB7-0004Ca-UN; Fri, 07 Jun 2019 19:05:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZKB1-0004C8-7M
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 19:05:24 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D276520868;
 Fri,  7 Jun 2019 19:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559934322;
 bh=TxSMtx6lLGs98uGXIiVyUk0DVMENnYc/2yJw23Hmcd8=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=DO3KFOM6eAnUf9YpBWbM86cXXPo/lHeb4x74qBQ43Qyrc9+tJCGSgMhZZVs3VaBfv
 HmLWGzcJ50XbgMn9cGFyKSReHWy2/oC6smGjWIczLbtn0cz+ko5Kf2eopNN/cOkwan
 G9nYHPrtmjpO2Sy9lwJmh2kHarxQCIQcE1FwL7Lo=
MIME-Version: 1.0
In-Reply-To: <057720844e78e615e46de34a73b16ffaf7dbfc10.1558686047.git.leonard.crestez@nxp.com>
References: <057720844e78e615e46de34a73b16ffaf7dbfc10.1558686047.git.leonard.crestez@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: Add clk_parent entry in debugfs
User-Agent: alot/0.8.1
Date: Fri, 07 Jun 2019 12:05:22 -0700
Message-Id: <20190607190522.D276520868@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_120523_285965_47A0F151 
X-CRM114-Status: GOOD (  10.83  )
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
Cc: Peter De Schrijver <pdeschrijver@nvidia.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Leonard Crestez (2019-05-24 01:25:25)
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index aa51756fd4d6..94a93b07dd37 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -3009,10 +3009,21 @@ static int possible_parents_show(struct seq_file *s, void *data)
>  
>         return 0;
>  }
>  DEFINE_SHOW_ATTRIBUTE(possible_parents);
>  
> +static int current_parent_show(struct seq_file *s, void *data)
> +{
> +       struct clk_core *core = s->private;
> +
> +       if (core->parent)
> +               seq_printf(s, "%s\n", core->parent->name);
> +
> +       return 0;
> +}
> +DEFINE_SHOW_ATTRIBUTE(current_parent);

Looks OK.

> +
>  static int clk_duty_cycle_show(struct seq_file *s, void *data)
>  {
>         struct clk_core *core = s->private;
>         struct clk_duty *duty = &core->duty;
>  
> @@ -3040,10 +3051,11 @@ static void clk_debug_create_one(struct clk_core *core, struct dentry *pdentry)
>         debugfs_create_u32("clk_enable_count", 0444, root, &core->enable_count);
>         debugfs_create_u32("clk_protect_count", 0444, root, &core->protect_count);
>         debugfs_create_u32("clk_notifier_count", 0444, root, &core->notifier_count);
>         debugfs_create_file("clk_duty_cycle", 0444, root, core,
>                             &clk_duty_cycle_fops);
> +       debugfs_create_file("clk_parent", 0444, root, core, &current_parent_fops);

Shouldn't we skip creation of this file if core->num_parents == 0? So
put this under the if condition below?

>  
>         if (core->num_parents > 1)
>                 debugfs_create_file("clk_possible_parents", 0444, root, core,
>                                     &possible_parents_fops);
>  

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
