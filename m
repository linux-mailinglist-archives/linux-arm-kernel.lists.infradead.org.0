Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2421C520F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 05:15:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3USrOtvs46VfSx5u04Y425WRZyqrfz0gUsVZ1SNpMm8=; b=g9ldpnkcr+5HqV
	/ZY5naZC5XroRCqG7VhITobxHw5l31WUBMsgco8dN5LNQCmB3l5cxtgyNCTh/Ek8LbTqRDt7/3TaQ
	Sk86DM1kN/ZCIApdznDECsvnR4Vb7ipo1G88lsd7cGDxYLl3wleFnrfmMs7e/R19KvlnAVkgglk0d
	o5EdjVXOFIQ3XAE7azXZMFLRc3iR4xMG0eKmTTwuCDHMf+Uga0mBtwaNTynvwnhxVzuNm6Qpdk8Ly
	WY00PIUlvFOD18J1v3wCmVKi25EChY84o1J/y1gX5OKijCQSfxfoPfvz+zcpDM6gimlKQcDEgZPYC
	ZOEfa7+8sqtHCsHPFMDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfbvg-0005yO-Fu; Tue, 25 Jun 2019 03:15:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfbvY-0005xv-6E
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 03:15:25 +0000
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 84DA52077C
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 03:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561432523;
 bh=lfgP7NT0+SHhYmeRMEcYjoGW2q4RrpTeDG9woGn9lM8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=iSyFXgcfPyIDtyYh/h+oq1c0TbruARaJJot9ttD73roAABu8kkgrXW8LgSg6qLQYo
 OoTNj+CRLoy88ebPfu+s1ce1vBwuLF7/QKFLLt3N1N58dLHArNji+6Z8VJU9uQwLbR
 WaTYgOP2fRhbV/VpqFvloK1D6T/AGkNRdDNIfmXE=
Received: by mail-wr1-f51.google.com with SMTP id c2so16024596wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 20:15:23 -0700 (PDT)
X-Gm-Message-State: APjAAAXTC3gD9GpjrJBxswfe1OHxQyu6pUIgrjTMHLAOrPjNk0i+rIBY
 URog58hipwQbmMLkUrwgzMHP3E9FxalyGP7w8sw=
X-Google-Smtp-Source: APXvYqxwAYorposvWwzJLRsp2KQ2dY0FCXVRdOd/3twSSrj9/M48cTokNT8TKt/n6SwhXWpnNJw1D81iEb/mUL74IHU=
X-Received: by 2002:a5d:4311:: with SMTP id h17mr116608587wrq.9.1561432522143; 
 Mon, 24 Jun 2019 20:15:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190622022254.GA7789@wens.csie.org>
 <20190625030141.0D26320652@mail.kernel.org>
In-Reply-To: <20190625030141.0D26320652@mail.kernel.org>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 25 Jun 2019 11:15:12 +0800
X-Gmail-Original-Message-ID: <CAGb2v64COVAo2uCVjZumDHb6HMmHoS4YBbNMHsd7w7-_3t84bw@mail.gmail.com>
Message-ID: <CAGb2v64COVAo2uCVjZumDHb6HMmHoS4YBbNMHsd7w7-_3t84bw@mail.gmail.com>
Subject: Re: [GIT PULL] clk: sunxi-ng: clk parent rewrite part 1 - take 2
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_201524_265195_0A766BA5 
X-CRM114-Status: GOOD (  22.73  )
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>, Chen-Yu Tsai <wens@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 11:01 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Chen-Yu Tsai (2019-06-21 19:22:54)
> > Hi,
> >
> > Take 2 has build errors in drivers/clk/sunxi-ng/ccu-suniv-f1c100s.c
> > fixed.
> >
> > The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> >
> >   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> >
> > are available in the Git repository at:
> >
> >   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git sunxi-ng-parent-rewrite-part-1-take-2
> >
> > for you to fetch changes up to 89f27fb2dd348d8d52a97e6ebec15c64fe461a25:
> >
> >   clk: sunxi-ng: sun8i-r: Use local parent references for SUNXI_CCU_GATE (2019-06-22 10:13:16 +0800)
> >
> > ----------------------------------------------------------------
>
> Thanks. Pulled into clk-next. I applied this patch on top though to
> clean up the debugfs patch. A newline was missing. Does it make sense? I
> haven't tested it at all.

Looks good to me. Thanks for the cleanup.

Tested-by: Chen-Yu Tsai <wens@csie.org>
Reviewed-by: Chen-Yu Tsai <wens@csie.org>


>
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index 093161ca4dcc..09d8e84a1968 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -2997,11 +2997,10 @@ static int clk_flags_show(struct seq_file *s, void *data)
>  }
>  DEFINE_SHOW_ATTRIBUTE(clk_flags);
>
> -static int possible_parents_show(struct seq_file *s, void *data)
> +static void possible_parent_show(struct seq_file *s, struct clk_core *core,
> +                                unsigned int i, char terminator)
>  {
> -       struct clk_core *core = s->private;
>         struct clk_core *parent;
> -       int i;
>
>         /*
>          * Go through the following options to fetch a parent's name.
> @@ -3015,22 +3014,6 @@ static int possible_parents_show(struct seq_file *s, void *data)
>          * specified directly via a struct clk_hw pointer, but it isn't
>          * registered (yet).
>          */
> -       for (i = 0; i < core->num_parents - 1; i++) {
> -               parent = clk_core_get_parent_by_index(core, i);
> -               if (parent)
> -                       seq_printf(s, "%s ", parent->name);
> -               else if (core->parents[i].name)
> -                       seq_printf(s, "%s ", core->parents[i].name);
> -               else if (core->parents[i].fw_name)
> -                       seq_printf(s, "<%s>(fw) ", core->parents[i].fw_name);
> -               else if (core->parents[i].index >= 0)
> -                       seq_printf(s, "%s ",
> -                                  of_clk_get_parent_name(core->of_node,
> -                                                         core->parents[i].index));
> -               else
> -                       seq_puts(s, "(missing) ");
> -       }
> -
>         parent = clk_core_get_parent_by_index(core, i);
>         if (parent)
>                 seq_printf(s, "%s", parent->name);
> @@ -3045,6 +3028,19 @@ static int possible_parents_show(struct seq_file *s, void *data)
>         else
>                 seq_puts(s, "(missing)");
>
> +       seq_putc(s, terminator);
> +}
> +
> +static int possible_parents_show(struct seq_file *s, void *data)
> +{
> +       struct clk_core *core = s->private;
> +       int i;
> +
> +       for (i = 0; i < core->num_parents - 1; i++)
> +               possible_parent_show(s, core, i, ' ');
> +
> +       possible_parent_show(s, core, i, '\n');
> +
>         return 0;
>  }
>  DEFINE_SHOW_ATTRIBUTE(possible_parents);
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
