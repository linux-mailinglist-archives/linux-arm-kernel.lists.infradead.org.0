Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D21686505
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 17:01:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xjQCA2+8WDHeyZkhceaNIKhPqbBb+V1yA0mc8q42G18=; b=DBKuM2SXoi6vyO
	WDHoJoYpSEsnPBNyhVdP2RtW/lJ13ZHOu9zUDalS7OaFmPNpXWRyUAojqIs28F/ZJiVazAIkYXPXx
	y0+rbVvnJKHZu+Uh90o03sjoVeBAN15jRI3uJ5lF/9Xn1BxIMUqJ5VSQP4hzczWrYJTNjt/MFs65Y
	43xZV0+EfWl8oW9PE3GZsNGPGSm/+nOofAUsi3lHNwAwIEXc97a4XD7CqW6+iUi5D7ZWKVHsK9djq
	kYBGeCZ9C/pbXnrp86MB3VnAwROGLB+ZQYPvZCETSARAG/nmpS3tHWeBVzS3O0r9UeSeMzqckE+pq
	KkWQPu4fIdlJXWUU5LXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvjuy-0001wV-Sa; Thu, 08 Aug 2019 15:01:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvju0-0001sU-TP
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 15:00:30 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0BC1F217D7;
 Thu,  8 Aug 2019 15:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565276428;
 bh=VMX4+z5KBsTfo17lWMUM0gaIU0HOjZ0tDh6fGoEHTnQ=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=OU883y23hC4qN8GDhilPPJBYsm9RaHoaxBEp4B4Yfmx5ct/s5eQvnxDMkAWfPNCMx
 0LhKJ+mhny/ztqhqol4XXyTkEWezFWSoKLMQRiMxagyObtlberNVn9uiqEQSMzFDdz
 efc9vBWwQ+rchl6lsiSNLhxHC73Fw0n03rJsc+Nc=
MIME-Version: 1.0
In-Reply-To: <68e96af2df96512300604d797ade2088d7e6e496.1562073871.git.leonard.crestez@nxp.com>
References: <68e96af2df96512300604d797ade2088d7e6e496.1562073871.git.leonard.crestez@nxp.com>
Subject: Re: [PATCH v3 1/2] clk: Add clk_min/max_rate entries in debugfs
From: Stephen Boyd <sboyd@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>,
 Leonard Crestez <leonard.crestez@nxp.com>
User-Agent: alot/0.8.1
Date: Thu, 08 Aug 2019 08:00:27 -0700
Message-Id: <20190808150028.0BC1F217D7@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_080028_973333_DE590BD1 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Leonard Crestez (2019-07-02 06:27:09)
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index c0990703ce54..e4e224982ae3 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -2894,19 +2894,26 @@ static int clk_summary_show(struct seq_file *s, void *data)
>  }
>  DEFINE_SHOW_ATTRIBUTE(clk_summary);
>  
>  static void clk_dump_one(struct seq_file *s, struct clk_core *c, int level)
>  {
> +       unsigned long min_rate, max_rate;
> +
>         if (!c)
>                 return;
>  
>         /* This should be JSON format, i.e. elements separated with a comma */
>         seq_printf(s, "\"%s\": { ", c->name);
>         seq_printf(s, "\"enable_count\": %d,", c->enable_count);
>         seq_printf(s, "\"prepare_count\": %d,", c->prepare_count);
>         seq_printf(s, "\"protect_count\": %d,", c->protect_count);
>         seq_printf(s, "\"rate\": %lu,", clk_core_get_rate(c));
> +       clk_core_get_boundaries(c, &min_rate, &max_rate);
> +       if (min_rate != 0)
> +               seq_printf(s, "\"min_rate\": %lu,", min_rate);
> +       if (max_rate != ULONG_MAX)
> +               seq_printf(s, "\"max_rate\": %lu,", max_rate);

What are the if conditions about? We always output the values in the
individual files, but for some reason we don't want to do that in the
json output?

>         seq_printf(s, "\"accuracy\": %lu,", clk_core_get_accuracy(c));
>         seq_printf(s, "\"phase\": %d,", clk_core_get_phase(c));
>         seq_printf(s, "\"duty_cycle\": %u",
>                    clk_core_get_scaled_duty_cycle(c, 100000));
>  }

Everything else looks fine, so maybe I'll just remove the if statements
if you don't mind.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
