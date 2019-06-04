Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A0D34A7A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 16:31:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JwgPSoKsRhI5BC/mXoPgYlcqmW6utt8NSeLhP5A3NDk=; b=PZXmKkfp6hyL0f4sHEj4dV/0G
	ACh1/zoNehV/8EbbXXIDKf6tUBxSGiB/LiYua0tGcvUFleIFryXg9zBjb2nie1EXBLLYZMmJSWn9M
	OujkRMvmf0NRnfAzACR0Z33UKKdfsiAiqWmCBAC95V8dTVs3Ux/uda7uD3ZLmyc378oGoFdY7tMpG
	juiVn6EiXsS/FyQFzabyExAsJP5AYxifZ0OZ5igLy+wHRZ5ikRne5/nUYLLApuxSqRoOJAev+qp3K
	55v/RMvGmizW2SvAgEPmPeLX3jxOWiYt4+U3CBDEoVgoVeWzCgw/a+Olei0BFvJ7sYVZm92kMUhOn
	AftR6q+tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYASv-00084u-58; Tue, 04 Jun 2019 14:31:05 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYASp-00084i-S2
 for linux-arm-kernel@bombadil.infradead.org; Tue, 04 Jun 2019 14:31:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7Q9LDiVWB9kPoAAAH7vvT7cxtxbPd41FlNJGS358wwU=; b=rbF352SkE29mVhbOxSueDKA3j
 rBdPu7RtP6BwPIxKdGPlD4i5SLewPSZixvoA64Mi+EeALNvzt80l4T43WNpVq7447MP2jZB8hh2gl
 fck4RzCJaHYGp0UnbnMM1Tr5yjd+7XvcwZuvxSoVjBMUkuVH1ZWYqcX200zjseF+1ZUSvl5VscRSM
 48jFU9nCXnQTUYi1mxdzzBqSHvOfJCNpMno+iPR+yUzScUnm2pEMkdT/CIT+FAYafYMXYQLasicHD
 ZxKPXXWlmjeHE2EPr4D3zEMzBOdgD7ZkdjLWilQ+mgZ8AO1rsoCTr5mXHftNLQ4e8ZcwXqBQcEFOa
 N9H+g58NQ==;
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYASl-0007ua-TO
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 14:30:58 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 2E1C41BF214;
 Tue,  4 Jun 2019 14:30:16 +0000 (UTC)
Date: Tue, 4 Jun 2019 16:30:16 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v10 04/11] drm/sun4i: tcon: Compute DCLK dividers based
 on format, lanes
Message-ID: <20190604143016.fcx3ezmga244xakp@flea>
References: <20190520090318.27570-1-jagan@amarulasolutions.com>
 <20190520090318.27570-5-jagan@amarulasolutions.com>
 <20190523204823.mx7l4ozklzdh7npn@flea>
 <CAMty3ZA0S=+8NBrQZvP6sFdzSYWqhNZL_KjkJAQ0jTc2RVivrw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMty3ZA0S=+8NBrQZvP6sFdzSYWqhNZL_KjkJAQ0jTc2RVivrw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_153056_029334_C8E846AC 
X-CRM114-Status: GOOD (  30.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Bhushan Shah <bshah@mykolab.com>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 =?utf-8?B?5Z2a5a6a5YmN6KGM?= <powerpan@qq.com>, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6755509508004274020=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6755509508004274020==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bzh4hofc767vlzii"
Content-Disposition: inline


--bzh4hofc767vlzii
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 24, 2019 at 03:37:36PM +0530, Jagan Teki wrote:
> On Fri, May 24, 2019 at 2:18 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > On Mon, May 20, 2019 at 02:33:11PM +0530, Jagan Teki wrote:
> > > pll-video => pll-mipi => tcon0 => tcon0-pixel-clock is the typical
> > > MIPI clock topology in Allwinner DSI controller.
> > >
> > > TCON dotclock driver is computing the desired DCLK divider based on
> > > panel pixel clock along with input DCLK min, max divider values from
> > > tcon driver and that would eventually set the pll-mipi clock rate.
> > >
> > > The current code is passing dsi min and max divider value as 4 via
> > > tcon driver which would ended-up triggering below vblank wait timed out
> > > warning on "bananapi,s070wv20-ct16" panel.
> > >
> > >  WARNING: CPU: 0 PID: 31 at drivers/gpu/drm/drm_atomic_helper.c:1429 drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0
> > >  [CRTC:46:crtc-0] vblank wait timed out
> > >  Modules linked in:
> > >  CPU: 0 PID: 31 Comm: kworker/0:1 Not tainted 5.1.0-next-20190514-00025-g5186cdf10757-dirty #6
> > >  Hardware name: Allwinner sun8i Family
> > >  Workqueue: events deferred_probe_work_func
> > >  [<c010ed54>] (unwind_backtrace) from [<c010b76c>] (show_stack+0x10/0x14)
> > >  [<c010b76c>] (show_stack) from [<c0688c70>] (dump_stack+0x84/0x98)
> > >  [<c0688c70>] (dump_stack) from [<c011d9e4>] (__warn+0xfc/0x114)
> > >  [<c011d9e4>] (__warn) from [<c011da40>] (warn_slowpath_fmt+0x44/0x68)
> > >  [<c011da40>] (warn_slowpath_fmt) from [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0)
> > >  [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1) from [<c040e694>] (drm_atomic_helper_commit_tail_rpm+0x5c/0x6c)
> > >  [<c040e694>] (drm_atomic_helper_commit_tail_rpm) from [<c040e4dc>] (commit_tail+0x40/0x6c)
> > >  [<c040e4dc>] (commit_tail) from [<c040e5cc>] (drm_atomic_helper_commit+0xbc/0x128)
> > >  [<c040e5cc>] (drm_atomic_helper_commit) from [<c0411b64>] (restore_fbdev_mode_atomic+0x1cc/0x1dc)
> > >  [<c0411b64>] (restore_fbdev_mode_atomic) from [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked+0x54/0xa0)
> > >  [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked) from [<c0415774>] (drm_fb_helper_set_par+0x30/0x54)
> > >  [<c0415774>] (drm_fb_helper_set_par) from [<c03ad450>] (fbcon_init+0x560/0x5ac)
> > >  [<c03ad450>] (fbcon_init) from [<c03eb8a0>] (visual_init+0xbc/0x104)
> > >  [<c03eb8a0>] (visual_init) from [<c03ed1b8>] (do_bind_con_driver+0x1b0/0x390)
> > >  [<c03ed1b8>] (do_bind_con_driver) from [<c03ed780>] (do_take_over_console+0x13c/0x1c4)
> > >  [<c03ed780>] (do_take_over_console) from [<c03ad800>] (do_fbcon_takeover+0x74/0xcc)
> > >  [<c03ad800>] (do_fbcon_takeover) from [<c013c9c8>] (notifier_call_chain+0x44/0x84)
> > >  [<c013c9c8>] (notifier_call_chain) from [<c013cd20>] (__blocking_notifier_call_chain+0x48/0x60)
> > >  [<c013cd20>] (__blocking_notifier_call_chain) from [<c013cd50>] (blocking_notifier_call_chain+0x18/0x20)
> > >  [<c013cd50>] (blocking_notifier_call_chain) from [<c03a6e44>] (register_framebuffer+0x1e0/0x2f8)
> > >  [<c03a6e44>] (register_framebuffer) from [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock+0x2fc/0x50c)
> > >  [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock) from [<c04158c8>] (drm_fbdev_client_hotplug+0xe8/0x1b8)
> > >  [<c04158c8>] (drm_fbdev_client_hotplug) from [<c0415a20>] (drm_fbdev_generic_setup+0x88/0x118)
> > >  [<c0415a20>] (drm_fbdev_generic_setup) from [<c043f060>] (sun4i_drv_bind+0x128/0x160)
> > >  [<c043f060>] (sun4i_drv_bind) from [<c044b588>] (try_to_bring_up_master+0x164/0x1a0)
> > >  [<c044b588>] (try_to_bring_up_master) from [<c044b658>] (__component_add+0x94/0x140)
> > >  [<c044b658>] (__component_add) from [<c0445e0c>] (sun6i_dsi_probe+0x144/0x234)
> > >  [<c0445e0c>] (sun6i_dsi_probe) from [<c0452ee4>] (platform_drv_probe+0x48/0x9c)
> > >  [<c0452ee4>] (platform_drv_probe) from [<c04512bc>] (really_probe+0x1dc/0x2c8)
> > >  [<c04512bc>] (really_probe) from [<c0451508>] (driver_probe_device+0x60/0x160)
> > >  [<c0451508>] (driver_probe_device) from [<c044f794>] (bus_for_each_drv+0x74/0xb8)
> > >  [<c044f794>] (bus_for_each_drv) from [<c045106c>] (__device_attach+0xd0/0x13c)
> > >  [<c045106c>] (__device_attach) from [<c0450464>] (bus_probe_device+0x84/0x8c)
> > >  [<c0450464>] (bus_probe_device) from [<c04508f0>] (deferred_probe_work_func+0x64/0x90)
> > >  [<c04508f0>] (deferred_probe_work_func) from [<c0135970>] (process_one_work+0x204/0x420)
> > >  [<c0135970>] (process_one_work) from [<c013690c>] (worker_thread+0x274/0x5a0)
> > >  [<c013690c>] (worker_thread) from [<c013b3d8>] (kthread+0x11c/0x14c)
> > >  [<c013b3d8>] (kthread) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
> > >  Exception stack(0xde539fb0 to 0xde539ff8)
> > >  9fa0:                                     00000000 00000000 00000000 00000000
> > >  9fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
> > >  9fe0: 00000000 00000000 00000000 00000000 00000013 00000000
> > >  ---[ end trace 4017fea4906ab391 ]---
> > >
> > > But accordingly to Allwinner A33, A64 BSP codes [1] [2] this divider
> > > is clearly using 'format/lanes' for dsi divider value, dsi_clk.clk_div
> > >
> > > Which would compute the pll_freq and set a clock rate for it in
> > > [3] and [4] respectively.
> > >
> > > The same issue has reproduced in A33, A64 with 4-lane and 2-lane devices
> > > and got fixed with this computation logic 'format/lanes', so this patch
> > > using dclk min and max dividers as per BSP.
> > >
> > > [1] https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L1106
> > > [2] https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/lowlevel_sun50iw1/disp_al.c#L213
> > > [3] https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L1127
> > > [4] https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L1161
> >
> > In that mail, I've pointed out that clk_div isn't used for the TCON dclk divider:
> > http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/629596.html
> >
> > The only reply you've sent is that you indeed see that the divider is
> > set to 4 in the BSP, but you're now saying that the BSP can change
> > it. If so, then please point exactly the flaw in the explanation in
> > that mail.
>
> Frankly, I have explained these details in commit message and previous
> version patch[1] with print messages on the code.
>
> BSP has tcon_div and dsi_div. dsi_div is dynamic which depends on
> bpp/lanes and it indeed depends on PLL computation (not tcon_div),
> anyway I have explained again on this initial link you mentioned.
> Please have a look and get back.

I'll have a look, thanks.

I've given your patches a try on my setup though, and this patch
breaks it with vblank timeouts and some horizontal lines that looks
like what should be displayed, but blinking and on the right of the
display. The previous ones are fine though.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--bzh4hofc767vlzii
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPaAeAAKCRDj7w1vZxhR
xRsaAQD8VOHrkhTaroXSk/grjYaZthiT2ZmiYgFnpApMvxbCQwD8DKO1ICEMfDdJ
8IfIf2TnCp47Y4ka5MCvLBLVomQQTwA=
=zQDF
-----END PGP SIGNATURE-----

--bzh4hofc767vlzii--


--===============6755509508004274020==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6755509508004274020==--

