Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2BC5D320
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 17:40:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wj+Jwe/c0TI9LbmNC6ZFGUr4mTxEK0br905rpw8nMT0=; b=pfw3lhZCVtPHma
	jhC9el2I9HvK3oiCjdOjtrhHuhy+HyfW7wcIladq34/as7lOfIxrQ9NwfUY6rap6U0ZU+yYvPL/E9
	AtcjWDhT6jhyG7i3kf9IdVmcU9ribzhtDllH5LnuKqQIiTTYl4FbuLRp2Egq6SkdtIg7F+RkbYJ5Q
	Dp/0AcNjnMKSrrlJGUeaC8vPmOP91sU4DCEmCgD8aQgOHIyiE6OCsyEZzn/FQzOUPzTdIsyrODeuB
	dlGyYWpNqY3+qnGzlrIOYp6XtiXEZHsRG9Y4CXMoq14Qvvrmodh85C2a9gRGFfSvHLhjDW96amDhX
	uKn9D8nSbGHIKs7bM6Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiKtr-0007Fa-Nm; Tue, 02 Jul 2019 15:40:55 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiKtb-0007Em-1U
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 15:40:40 +0000
Received: by mail-io1-xd42.google.com with SMTP id h6so38092131ioh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 08:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AuMos9aOQM3cxcuhv1W60RSW7KPJmo8XlBPpXo9DwCM=;
 b=EXC0a6fl270PfkwfxWzCHOx4R/6yhlO7DJ1l9JUMGtuVKq/y1rC1kLXwgNQzLEEVX9
 GXFXuCSjEmgmkRMe22VN8Si9ND41RT9/KzZzdgDXlCAw4zDfk1zOI/z46qkjn/kGwM46
 b6soIF2xiVhwujyt4rbqlkDPEeXgmw6xb1yJI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AuMos9aOQM3cxcuhv1W60RSW7KPJmo8XlBPpXo9DwCM=;
 b=SGUj4v8dfHTjn16DVDfEBEpIdD+HrMdwlmJQg2X6M0jQF2jCVb/Db/mI5qUQGb0tsN
 8oaWBg+Q/dgECB0ka1y1IxRVfT+ZLkNIt+1RvXcCkHUX66hOeI1lJoYdE1m1Jtywaeyg
 4zAGE/NPL2MV87LYs5w6im3zmzr+AsRCz4t5wYEhrmfPxIGJe+f3n6/RxkSSZ8Zk5BDR
 Lqq57k+6oIHmod9dyqkEjYtQO6OhBVqr2qbS+JUQ+qdk+9xFQ/OvZEK13l2axFPVqtbL
 1QJ5czmKrRJxEFOy+u0r2uJFEQ9DtTTBqdhHpXkec4+BeXNVP3VAUjsoUIDkPkv+OLXS
 4L8Q==
X-Gm-Message-State: APjAAAULZaxojnzHtDlUGxKUbnBIjlZ09idU8rKeRhvBfjl/DwHVmTGU
 9XY0w9FGMQooIM4sT9cH4zWSjfDcdptYq9eQ/xi/mQ==
X-Google-Smtp-Source: APXvYqyQn4ELrVQ+31mi6vxiW6KfqbigRcLe+LAxPCqbDf7gQDuzyI9WP9loYa7CyZvrX79HFV3MP0xrrvEDEhK+XbE=
X-Received: by 2002:a05:6638:3d6:: with SMTP id
 r22mr35517516jaq.71.1562082037872; 
 Tue, 02 Jul 2019 08:40:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190523204823.mx7l4ozklzdh7npn@flea>
 <CAMty3ZA0S=+8NBrQZvP6sFdzSYWqhNZL_KjkJAQ0jTc2RVivrw@mail.gmail.com>
 <20190604143016.fcx3ezmga244xakp@flea>
 <CAMty3ZAAK4RoE6g_LAZ-Q38On_1s_TTOz65YG7PVd88mwp-+4Q@mail.gmail.com>
 <20190613131626.7zbwvrvd4e7eafrc@flea>
 <CAMty3ZBDkMJkZm8FudNB1wQ+L-q3XVKa3zR2M0wZ5Uncdy_Ayg@mail.gmail.com>
 <20190624130442.ww4l3zctykr4i2e2@flea>
 <CAMty3ZB+eZUh5mr-LMZuEd_wrwLCN0mbf7arcRQHj8=uUNNq=Q@mail.gmail.com>
 <20190625143747.3czd7sit4waz75b6@flea>
 <CAMty3ZCh+C9+zgcL633tTw6aPW_WOLnYN7FzJHX+3zu8=8Unpg@mail.gmail.com>
 <20190702152908.fwwf7smt7nh2lxo2@flea>
In-Reply-To: <20190702152908.fwwf7smt7nh2lxo2@flea>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 2 Jul 2019 21:10:26 +0530
Message-ID: <CAMty3ZCBK__VcdNh6xJESjsX7nGrBHxLY3fOWW=5TxOVrwyVXw@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v10 04/11] drm/sun4i: tcon: Compute DCLK
 dividers based on format, lanes
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_084039_237690_67C28B6B 
X-CRM114-Status: GOOD (  25.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Bhushan Shah <bshah@mykolab.com>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 =?UTF-8?B?5Z2a5a6a5YmN6KGM?= <powerpan@qq.com>, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 2, 2019 at 8:59 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Tue, Jul 02, 2019 at 12:30:14AM +0530, Jagan Teki wrote:
> > On Tue, Jun 25, 2019 at 8:07 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > > > > > BSP has tcon_div and dsi_div. dsi_div is dynamic which depends on
> > > > > > > > > > bpp/lanes and it indeed depends on PLL computation (not tcon_div),
> > > > > > > > > > anyway I have explained again on this initial link you mentioned.
> > > > > > > > > > Please have a look and get back.
> > > > > > > > >
> > > > > > > > > I'll have a look, thanks.
> > > > > > > > >
> > > > > > > > > I've given your patches a try on my setup though, and this patch
> > > > > > > > > breaks it with vblank timeouts and some horizontal lines that looks
> > > > > > > > > like what should be displayed, but blinking and on the right of the
> > > > > > > > > display. The previous ones are fine though.
> > > > > > > >
> > > > > > > > Would you please send me the link of panel driver.
> > > > > > >
> > > > > > > It's drivers/gpu/drm/panel/panel-ronbo-rb070d30.c
> > > > > >
> > > > > > Look like this panel work even w/o any vendor sequence. it's similar
> > > > > > to the 4-lane panel I have with RGB888, so the dclk div is 6, is it
> > > > > > working with this divider?
> > > > >
> > > > > It works with 4, it doesn't work with 6.
> > > >
> > > > Can be the pixel clock with associated timings can make this diff.
> > > > Would you send me the pixel clock, pll_rate and timings this panel
> > > > used it from BSP?
> > >
> > > This board never had an Allwinner BSP
> >
> > Running on BSP would help to understand some clue, anyway would you
> > send me the the value PLL_MIPI register (devme 0x1c20040) on this
> > board. I'm trying to understand how it value in your case.
>
> I'm sorry, but I'm not going to port a whole BSP on that board,
> especially for something I haven't been convinced it's the right fix.

Look like a dead lock here, this change has a conclusive evidence from
BSP (which is AW datasheet or open code to outside world) and it is
working with A33, A64 and R40 which was tested in 4 different panels
and I don't understand the reason for not going with this (atleast
check with respect to BSP).

Please suggest, what I can do further, your suggestion is very helpful here.

Jagan.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
