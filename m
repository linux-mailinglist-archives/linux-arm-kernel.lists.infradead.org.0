Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8785F551E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 16:38:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lOOHMe/wbrr6Lo/nwU60naeNaazPm7PFmQKzxDitxTw=; b=MH05bJAE6r0TA9OM1FivpHl6D
	OHm3egrtbB/7I95RenTvNERXPRAa8dg/iK+77SOSAEUh2pPkXTakAzhT8DL9TZe1NO60NZ+z/cB3t
	rg6u64P969jRQC31A0S6lJFGQIWAcyE8g+79kA+KnEur8786k73glQn3hKoLAxuP1/wCEhMOuYsLk
	e6mI4t+TCRtbX7xPUdMG1xq+vda6mW0PexCJsBHv1vgg8TZZu6/rCcEKI3jbEcnyzwOfxJlrqZSi1
	Dc6BqaNDDJ21RSWhays8JrwgaKZ4ciZbmYR32MtF9f0cRY0qBNgX/xlvBBOmgEROouyHH1KfW5JUZ
	y1QyTUrMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfmaN-00087w-7y; Tue, 25 Jun 2019 14:38:15 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfma8-00084C-Sb
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 14:38:04 +0000
X-Originating-IP: 90.88.16.156
Received: from localhost (aaubervilliers-681-1-41-156.w90-88.abo.wanadoo.fr
 [90.88.16.156]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id B6C476000A;
 Tue, 25 Jun 2019 14:37:47 +0000 (UTC)
Date: Tue, 25 Jun 2019 16:37:47 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [linux-sunxi] Re: [PATCH v10 04/11] drm/sun4i: tcon: Compute
 DCLK dividers based on format, lanes
Message-ID: <20190625143747.3czd7sit4waz75b6@flea>
References: <20190520090318.27570-1-jagan@amarulasolutions.com>
 <20190520090318.27570-5-jagan@amarulasolutions.com>
 <20190523204823.mx7l4ozklzdh7npn@flea>
 <CAMty3ZA0S=+8NBrQZvP6sFdzSYWqhNZL_KjkJAQ0jTc2RVivrw@mail.gmail.com>
 <20190604143016.fcx3ezmga244xakp@flea>
 <CAMty3ZAAK4RoE6g_LAZ-Q38On_1s_TTOz65YG7PVd88mwp-+4Q@mail.gmail.com>
 <20190613131626.7zbwvrvd4e7eafrc@flea>
 <CAMty3ZBDkMJkZm8FudNB1wQ+L-q3XVKa3zR2M0wZ5Uncdy_Ayg@mail.gmail.com>
 <20190624130442.ww4l3zctykr4i2e2@flea>
 <CAMty3ZB+eZUh5mr-LMZuEd_wrwLCN0mbf7arcRQHj8=uUNNq=Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMty3ZB+eZUh5mr-LMZuEd_wrwLCN0mbf7arcRQHj8=uUNNq=Q@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_073801_273562_82107402 
X-CRM114-Status: GOOD (  28.56  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Content-Type: multipart/mixed; boundary="===============5955629184198419577=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5955629184198419577==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4qhko7umufjvzvnc"
Content-Disposition: inline


--4qhko7umufjvzvnc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 24, 2019 at 09:32:11PM +0530, Jagan Teki wrote:
> On Mon, Jun 24, 2019 at 6:34 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > On Fri, Jun 14, 2019 at 05:33:23PM +0530, Jagan Teki wrote:
> > > On Thu, Jun 13, 2019 at 7:28 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > >
> > > > On Wed, Jun 05, 2019 at 01:11:44PM +0530, Jagan Teki wrote:
> > > > > On Tue, Jun 4, 2019 at 8:00 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > >
> > > > > > On Fri, May 24, 2019 at 03:37:36PM +0530, Jagan Teki wrote:
> > > > > > > On Fri, May 24, 2019 at 2:18 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > > >
> > > > > > > > On Mon, May 20, 2019 at 02:33:11PM +0530, Jagan Teki wrote:
> > > > > > > > > pll-video => pll-mipi => tcon0 => tcon0-pixel-clock is the typical
> > > > > > > > > MIPI clock topology in Allwinner DSI controller.
> > > > > > > > >
> > > > > > > > > TCON dotclock driver is computing the desired DCLK divider based on
> > > > > > > > > panel pixel clock along with input DCLK min, max divider values from
> > > > > > > > > tcon driver and that would eventually set the pll-mipi clock rate.
> > > > > > > > >
> > > > > > > > > The current code is passing dsi min and max divider value as 4 via
> > > > > > > > > tcon driver which would ended-up triggering below vblank wait timed out
> > > > > > > > > warning on "bananapi,s070wv20-ct16" panel.
> > > > > > > > >
> > > > > > > > >  WARNING: CPU: 0 PID: 31 at drivers/gpu/drm/drm_atomic_helper.c:1429 drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0
> > > > > > > > >  [CRTC:46:crtc-0] vblank wait timed out
> > > > > > > > >  Modules linked in:
> > > > > > > > >  CPU: 0 PID: 31 Comm: kworker/0:1 Not tainted 5.1.0-next-20190514-00025-g5186cdf10757-dirty #6
> > > > > > > > >  Hardware name: Allwinner sun8i Family
> > > > > > > > >  Workqueue: events deferred_probe_work_func
> > > > > > > > >  [<c010ed54>] (unwind_backtrace) from [<c010b76c>] (show_stack+0x10/0x14)
> > > > > > > > >  [<c010b76c>] (show_stack) from [<c0688c70>] (dump_stack+0x84/0x98)
> > > > > > > > >  [<c0688c70>] (dump_stack) from [<c011d9e4>] (__warn+0xfc/0x114)
> > > > > > > > >  [<c011d9e4>] (__warn) from [<c011da40>] (warn_slowpath_fmt+0x44/0x68)
> > > > > > > > >  [<c011da40>] (warn_slowpath_fmt) from [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0)
> > > > > > > > >  [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1) from [<c040e694>] (drm_atomic_helper_commit_tail_rpm+0x5c/0x6c)
> > > > > > > > >  [<c040e694>] (drm_atomic_helper_commit_tail_rpm) from [<c040e4dc>] (commit_tail+0x40/0x6c)
> > > > > > > > >  [<c040e4dc>] (commit_tail) from [<c040e5cc>] (drm_atomic_helper_commit+0xbc/0x128)
> > > > > > > > >  [<c040e5cc>] (drm_atomic_helper_commit) from [<c0411b64>] (restore_fbdev_mode_atomic+0x1cc/0x1dc)
> > > > > > > > >  [<c0411b64>] (restore_fbdev_mode_atomic) from [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked+0x54/0xa0)
> > > > > > > > >  [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked) from [<c0415774>] (drm_fb_helper_set_par+0x30/0x54)
> > > > > > > > >  [<c0415774>] (drm_fb_helper_set_par) from [<c03ad450>] (fbcon_init+0x560/0x5ac)
> > > > > > > > >  [<c03ad450>] (fbcon_init) from [<c03eb8a0>] (visual_init+0xbc/0x104)
> > > > > > > > >  [<c03eb8a0>] (visual_init) from [<c03ed1b8>] (do_bind_con_driver+0x1b0/0x390)
> > > > > > > > >  [<c03ed1b8>] (do_bind_con_driver) from [<c03ed780>] (do_take_over_console+0x13c/0x1c4)
> > > > > > > > >  [<c03ed780>] (do_take_over_console) from [<c03ad800>] (do_fbcon_takeover+0x74/0xcc)
> > > > > > > > >  [<c03ad800>] (do_fbcon_takeover) from [<c013c9c8>] (notifier_call_chain+0x44/0x84)
> > > > > > > > >  [<c013c9c8>] (notifier_call_chain) from [<c013cd20>] (__blocking_notifier_call_chain+0x48/0x60)
> > > > > > > > >  [<c013cd20>] (__blocking_notifier_call_chain) from [<c013cd50>] (blocking_notifier_call_chain+0x18/0x20)
> > > > > > > > >  [<c013cd50>] (blocking_notifier_call_chain) from [<c03a6e44>] (register_framebuffer+0x1e0/0x2f8)
> > > > > > > > >  [<c03a6e44>] (register_framebuffer) from [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock+0x2fc/0x50c)
> > > > > > > > >  [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock) from [<c04158c8>] (drm_fbdev_client_hotplug+0xe8/0x1b8)
> > > > > > > > >  [<c04158c8>] (drm_fbdev_client_hotplug) from [<c0415a20>] (drm_fbdev_generic_setup+0x88/0x118)
> > > > > > > > >  [<c0415a20>] (drm_fbdev_generic_setup) from [<c043f060>] (sun4i_drv_bind+0x128/0x160)
> > > > > > > > >  [<c043f060>] (sun4i_drv_bind) from [<c044b588>] (try_to_bring_up_master+0x164/0x1a0)
> > > > > > > > >  [<c044b588>] (try_to_bring_up_master) from [<c044b658>] (__component_add+0x94/0x140)
> > > > > > > > >  [<c044b658>] (__component_add) from [<c0445e0c>] (sun6i_dsi_probe+0x144/0x234)
> > > > > > > > >  [<c0445e0c>] (sun6i_dsi_probe) from [<c0452ee4>] (platform_drv_probe+0x48/0x9c)
> > > > > > > > >  [<c0452ee4>] (platform_drv_probe) from [<c04512bc>] (really_probe+0x1dc/0x2c8)
> > > > > > > > >  [<c04512bc>] (really_probe) from [<c0451508>] (driver_probe_device+0x60/0x160)
> > > > > > > > >  [<c0451508>] (driver_probe_device) from [<c044f794>] (bus_for_each_drv+0x74/0xb8)
> > > > > > > > >  [<c044f794>] (bus_for_each_drv) from [<c045106c>] (__device_attach+0xd0/0x13c)
> > > > > > > > >  [<c045106c>] (__device_attach) from [<c0450464>] (bus_probe_device+0x84/0x8c)
> > > > > > > > >  [<c0450464>] (bus_probe_device) from [<c04508f0>] (deferred_probe_work_func+0x64/0x90)
> > > > > > > > >  [<c04508f0>] (deferred_probe_work_func) from [<c0135970>] (process_one_work+0x204/0x420)
> > > > > > > > >  [<c0135970>] (process_one_work) from [<c013690c>] (worker_thread+0x274/0x5a0)
> > > > > > > > >  [<c013690c>] (worker_thread) from [<c013b3d8>] (kthread+0x11c/0x14c)
> > > > > > > > >  [<c013b3d8>] (kthread) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
> > > > > > > > >  Exception stack(0xde539fb0 to 0xde539ff8)
> > > > > > > > >  9fa0:                                     00000000 00000000 00000000 00000000
> > > > > > > > >  9fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
> > > > > > > > >  9fe0: 00000000 00000000 00000000 00000000 00000013 00000000
> > > > > > > > >  ---[ end trace 4017fea4906ab391 ]---
> > > > > > > > >
> > > > > > > > > But accordingly to Allwinner A33, A64 BSP codes [1] [2] this divider
> > > > > > > > > is clearly using 'format/lanes' for dsi divider value, dsi_clk.clk_div
> > > > > > > > >
> > > > > > > > > Which would compute the pll_freq and set a clock rate for it in
> > > > > > > > > [3] and [4] respectively.
> > > > > > > > >
> > > > > > > > > The same issue has reproduced in A33, A64 with 4-lane and 2-lane devices
> > > > > > > > > and got fixed with this computation logic 'format/lanes', so this patch
> > > > > > > > > using dclk min and max dividers as per BSP.
> > > > > > > > >
> > > > > > > > > [1] https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L1106
> > > > > > > > > [2] https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/lowlevel_sun50iw1/disp_al.c#L213
> > > > > > > > > [3] https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L1127
> > > > > > > > > [4] https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L1161
> > > > > > > >
> > > > > > > > In that mail, I've pointed out that clk_div isn't used for the TCON dclk divider:
> > > > > > > > http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/629596.html
> > > > > > > >
> > > > > > > > The only reply you've sent is that you indeed see that the divider is
> > > > > > > > set to 4 in the BSP, but you're now saying that the BSP can change
> > > > > > > > it. If so, then please point exactly the flaw in the explanation in
> > > > > > > > that mail.
> > > > > > >
> > > > > > > Frankly, I have explained these details in commit message and previous
> > > > > > > version patch[1] with print messages on the code.
> > > > > > >
> > > > > > > BSP has tcon_div and dsi_div. dsi_div is dynamic which depends on
> > > > > > > bpp/lanes and it indeed depends on PLL computation (not tcon_div),
> > > > > > > anyway I have explained again on this initial link you mentioned.
> > > > > > > Please have a look and get back.
> > > > > >
> > > > > > I'll have a look, thanks.
> > > > > >
> > > > > > I've given your patches a try on my setup though, and this patch
> > > > > > breaks it with vblank timeouts and some horizontal lines that looks
> > > > > > like what should be displayed, but blinking and on the right of the
> > > > > > display. The previous ones are fine though.
> > > > >
> > > > > Would you please send me the link of panel driver.
> > > >
> > > > It's drivers/gpu/drm/panel/panel-ronbo-rb070d30.c
> > >
> > > Look like this panel work even w/o any vendor sequence. it's similar
> > > to the 4-lane panel I have with RGB888, so the dclk div is 6, is it
> > > working with this divider?
> >
> > It works with 4, it doesn't work with 6.
>
> Can be the pixel clock with associated timings can make this diff.
> Would you send me the pixel clock, pll_rate and timings this panel
> used it from BSP?

This board never had an Allwinner BSP

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--4qhko7umufjvzvnc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXRIxuwAKCRDj7w1vZxhR
xVscAP9pbjUMb+7sqNoi00MHqD8g9+AnFhyeTBWi07kSntTxvgEAqbLn4ybIstfr
Lzg/6w2mQ3encbcK4zDbkflqVuTtnQ4=
=Qu0L
-----END PGP SIGNATURE-----

--4qhko7umufjvzvnc--


--===============5955629184198419577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5955629184198419577==--

