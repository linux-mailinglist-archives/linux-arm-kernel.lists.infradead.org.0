Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DD65D2E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 17:29:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9h2lrs3gucK22BXY2u/l579esnenILQ7c9MpKzLUaSY=; b=E1uWcVBRtVW2aP
	EBgwgbNYsXQYxUGwjU10vtEkLAJehy8lIdWtKmUv7kT05PzlTytQ90WgodnP9ugICeFqLn+sB2GcX
	wlvucj8B9ZBqsQfcBpfZnk0A9LWWebqO5uy4/d52w9Soly56XHUBICByZs7ouj9JpnH0GwaOlb0Hg
	6Y0AGrXkEOaCh/+D2PBmY7SPYMRCsIgp0PWBwWhOu95Fmfc6a0O3ymXL6bItDW7SI+RsZ/sxAi0AD
	hRdqNSpH5wP9jAC9thFJbUhXwz8oZ2jWZPujUhPttPrIvyx8YR8jk1Nfs6YaqXrBD+n6SmmbAQSy8
	yY87UldOZSFeABcBwvHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiKiv-0000tP-U4; Tue, 02 Jul 2019 15:29:37 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiKih-0000rz-Ns
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 15:29:25 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 548C91C0012;
 Tue,  2 Jul 2019 15:29:09 +0000 (UTC)
Date: Tue, 2 Jul 2019 17:29:08 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [linux-sunxi] Re: [PATCH v10 04/11] drm/sun4i: tcon: Compute
 DCLK dividers based on format, lanes
Message-ID: <20190702152908.fwwf7smt7nh2lxo2@flea>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMty3ZCh+C9+zgcL633tTw6aPW_WOLnYN7FzJHX+3zu8=8Unpg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_082923_935885_1472C796 
X-CRM114-Status: GOOD (  21.97  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 =?utf-8?B?5Z2a5a6a5YmN6KGM?= <powerpan@qq.com>, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 02, 2019 at 12:30:14AM +0530, Jagan Teki wrote:
> On Tue, Jun 25, 2019 at 8:07 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > > > > BSP has tcon_div and dsi_div. dsi_div is dynamic which depends on
> > > > > > > > > bpp/lanes and it indeed depends on PLL computation (not tcon_div),
> > > > > > > > > anyway I have explained again on this initial link you mentioned.
> > > > > > > > > Please have a look and get back.
> > > > > > > >
> > > > > > > > I'll have a look, thanks.
> > > > > > > >
> > > > > > > > I've given your patches a try on my setup though, and this patch
> > > > > > > > breaks it with vblank timeouts and some horizontal lines that looks
> > > > > > > > like what should be displayed, but blinking and on the right of the
> > > > > > > > display. The previous ones are fine though.
> > > > > > >
> > > > > > > Would you please send me the link of panel driver.
> > > > > >
> > > > > > It's drivers/gpu/drm/panel/panel-ronbo-rb070d30.c
> > > > >
> > > > > Look like this panel work even w/o any vendor sequence. it's similar
> > > > > to the 4-lane panel I have with RGB888, so the dclk div is 6, is it
> > > > > working with this divider?
> > > >
> > > > It works with 4, it doesn't work with 6.
> > >
> > > Can be the pixel clock with associated timings can make this diff.
> > > Would you send me the pixel clock, pll_rate and timings this panel
> > > used it from BSP?
> >
> > This board never had an Allwinner BSP
>
> Running on BSP would help to understand some clue, anyway would you
> send me the the value PLL_MIPI register (devme 0x1c20040) on this
> board. I'm trying to understand how it value in your case.

I'm sorry, but I'm not going to port a whole BSP on that board,
especially for something I haven't been convinced it's the right fix.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
