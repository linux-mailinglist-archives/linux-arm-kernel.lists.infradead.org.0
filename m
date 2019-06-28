Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C18D659998
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 13:58:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SqipQnBkzYuzU0ec86qohyFyUOnq5CdtUN7GxwFLKgU=; b=pXEGYyfNiR+OJK
	bUVhVNcMBA8r/s92wjFVYlr6e4AZCJhJkoSKdrgi/caL752RQC28patMwxbPfN+JK/9LPU9KEX4Ym
	u5rVfs+lPpsiv/AEnWejylhQLezvR7KzMN/yfTDmEwaYxYXEBoJHDYsFmTxC7vXQ9hGtdR0Q8Bk7E
	PYz3HlbDYtLu9/4BQPjf1XzdThRRR5jO/GkZN7tB/c+f0uvwKeQmToqpIT/ztKnuA5gFsh67+8IN5
	qo3qOF5Z5Vl93QEsr009aYUrSP1DJYzk3iWGbmol5ewTkSTd5hO5bx8/OW+2fYiC1OyvNhJ8xm/+h
	yVnQwWKDYShOPR/GuFNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgpWn-0008Em-Em; Fri, 28 Jun 2019 11:58:53 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgpWZ-0008ES-Fl
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 11:58:41 +0000
Received: by mail-ot1-f65.google.com with SMTP id z23so5652982ote.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 04:58:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wjwJQWvjkPZB5+dI0ZXVDAKQLoC3P8jLetBVFWbvwO8=;
 b=iy6HNBZClofql+jGvaCsrue2fKM30c5uTiZx4w/MQ0Td6jcW8e94r6/IhUHtOdXYjW
 D9j2gRAqhkkw3untoEtylNYLtog5Hnth1GTf/BkWRM2WgW9Q5PMEaqIXeeb++bFQ1Vh7
 5E1abHuYQ8CjFqbvKy/AHscxbcUEZIKIqEfS3dkvdfM8MjGilN9eU7O1r7OaVcD3tI//
 MQ78LuwrbgvOSABxgx52Grc+GTGrg0csraYVL8bNTSJMns74/0lP87GU4q7S96aNfk16
 eo5Qq9adCiz17+gvoJ0flONHAm5wOshZVMFXdteL6lwW2+Ktiul3I1a6Hz4/Bc15/EDj
 DIOg==
X-Gm-Message-State: APjAAAUoF1IACal4deCQahell8OMiX5DLb66BIyumn4Lhf9GFL6AeEaQ
 9ErN8jJqXQHrx0G9QV//6/e94EdOi8C+eNUmkKI=
X-Google-Smtp-Source: APXvYqzp6jHaeNCs5Hjcl/XOjy/kK6sCjD6SeRPImxs4gU9dfYyFNwTdcdO6JwHVVamhG7ocnB+YrZfiAF79btrJ72U=
X-Received: by 2002:a9d:704f:: with SMTP id x15mr7768914otj.297.1561723118484; 
 Fri, 28 Jun 2019 04:58:38 -0700 (PDT)
MIME-Version: 1.0
References: <0c12208398cadb7450b6b7745e99c55770c0ccf8.1561709827.git.leonard.crestez@nxp.com>
In-Reply-To: <0c12208398cadb7450b6b7745e99c55770c0ccf8.1561709827.git.leonard.crestez@nxp.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 28 Jun 2019 13:58:27 +0200
Message-ID: <CAMuHMdWVoYPZFZPmfTWMU3pZc633uqkn70MyApcPhgUSgmCW-A@mail.gmail.com>
Subject: Re: [PATCH v2] clk: Add clk_min/max_rate entries in debugfs
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_045839_523045_38DF78EF 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leonard,

On Fri, Jun 28, 2019 at 10:19 AM Leonard Crestez
<leonard.crestez@nxp.com> wrote:
> Add two files to expose min/max clk rates as determined by
> clk_core_get_boundaries, taking all consumer requests into account.
>
> This information does not appear to be otherwise exposed to userspace.
>
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

> Changes since v1:
> * Call clk_prepare_lock/clk_prepare_unlock (Geert)
> * Also include in clk_dump, but only with non-default values
> Link to v1: https://patchwork.kernel.org/patch/11019873/

Thanks for the update!

> Didn't add to clk_summary because min/max rates are rarely used and
> clk_summary already has too many columns.

Agreed.

> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -591,10 +591,12 @@ static void clk_core_get_boundaries(struct clk_core *core,
>                                     unsigned long *min_rate,
>                                     unsigned long *max_rate)
>  {
>         struct clk *clk_user;
>
> +       lockdep_assert_held(&prepare_lock);
> +

I guess the clock maintainers want to see the addition of this check
spun off into a separate patch....

> @@ -3062,10 +3071,38 @@ static int clk_duty_cycle_show(struct seq_file *s, void *data)
>
>         return 0;
>  }
>  DEFINE_SHOW_ATTRIBUTE(clk_duty_cycle);
>
> +static int clk_min_rate_show(struct seq_file *s, void *data)
> +{
> +       struct clk_core *core = s->private;
> +       unsigned long min_rate, max_rate;
> +
> +       clk_prepare_lock();
> +       clk_core_get_boundaries(core, &min_rate, &max_rate);
> +       seq_printf(s, "%lu\n", min_rate);
> +       clk_prepare_unlock();

You can move the release of the lock one line up.

> +
> +       return 0;
> +}
> +DEFINE_SHOW_ATTRIBUTE(clk_min_rate);
> +
> +static int clk_max_rate_show(struct seq_file *s, void *data)
> +{
> +       struct clk_core *core = s->private;
> +       unsigned long min_rate, max_rate;
> +
> +       clk_prepare_lock();
> +       clk_core_get_boundaries(core, &min_rate, &max_rate);
> +       seq_printf(s, "%lu\n", max_rate);
> +       clk_prepare_unlock();

You can move the release of the lock one line up.

> +
> +       return 0;
> +}

With the above fixed:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
