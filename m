Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E5B34397
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:00:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c66Qe5nKo7TorVqszo9+wQ/lFh6bRf2p+yqL4zUrAy0=; b=NUrHp4sbv12nvamlSYQxuBIpW
	yXszkjfFVxOH2lPIri4pletRjes0NKRvqIdrg+5I05y+h+aNBs7Ft9A6TAIO1D34h5547EB6hHo+G
	57kczp80bKBVn78JgvKhNy8pTRZFB7o4nyQOr3MbnhQd2z7D170hjgBsLN2E8YrkySj7GDRFwTvDZ
	Po9LXd7MiAnQ+zHEY8SNYBeOcvvJIEeDc3e87KzDuv8HF00oD47stNxpm14ajA4FrGi465+FV7G9J
	sx2yNXQmK8nJi4GEza+y+9UiZ1JTk9XUpJPyMi7H4hrPElerYyGNKuboWJeSy0HmDXFt7+S0YChMI
	zG5rCGo1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6FB-0001ar-Ql; Tue, 04 Jun 2019 10:00:37 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6F3-0001aC-Bh
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 10:00:31 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 552D620008;
 Tue,  4 Jun 2019 10:00:12 +0000 (UTC)
Date: Tue, 4 Jun 2019 12:00:11 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v10 01/11] drm/sun4i: dsi: Fix TCON DRQ set bits
Message-ID: <20190604100011.cqkhpwmmmwh3vr3y@flea>
References: <20190520090318.27570-1-jagan@amarulasolutions.com>
 <20190520090318.27570-2-jagan@amarulasolutions.com>
 <20190523203407.o5obg2wtj7wwau6a@flea>
 <CAMty3ZDDYEOvSbi7kmacjJZS6f3whpaGd4xsf4OUkXmBbTE3Qg@mail.gmail.com>
 <20190529145450.qnitxpmpr2a2xemk@flea>
 <CAMty3ZB89cPc8AycFPuNTfPC1dot4cNgN87v+rtQVW2zQh8uZg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMty3ZB89cPc8AycFPuNTfPC1dot4cNgN87v+rtQVW2zQh8uZg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_030029_791575_1529FD41 
X-CRM114-Status: GOOD (  19.19  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: multipart/mixed; boundary="===============3604820440069207750=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3604820440069207750==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mf43bufptefijii6"
Content-Disposition: inline


--mf43bufptefijii6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 29, 2019 at 11:44:56PM +0530, Jagan Teki wrote:
> On Wed, May 29, 2019 at 8:24 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > On Fri, May 24, 2019 at 03:48:51PM +0530, Jagan Teki wrote:
> > > On Fri, May 24, 2019 at 2:04 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > >
> > > > On Mon, May 20, 2019 at 02:33:08PM +0530, Jagan Teki wrote:
> > > > > According to "DRM kernel-internal display mode structure" in
> > > > > include/drm/drm_modes.h the current driver is trying to include
> > > > > sync timings along with front porch value while checking and
> > > > > computing drq set bits in non-burst mode.
> > > > >
> > > > > mode->hsync_end - mode->hdisplay => horizontal front porch + sync
> > > > >
> > > > > With adding additional sync timings, the dsi controller leads to
> > > > > wrong drq set bits for "bananapi,s070wv20-ct16" panel which indeed
> > > > > trigger panel flip_done timed out as:
> > > > >
> > > > >  WARNING: CPU: 0 PID: 31 at drivers/gpu/drm/drm_atomic_helper.c:1429 drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0
> > > > >  [CRTC:46:crtc-0] vblank wait timed out
> > > > >  Modules linked in:
> > > > >  CPU: 0 PID: 31 Comm: kworker/0:1 Not tainted 5.1.0-next-20190514-00026-g01f0c75b902d-dirty #13
> > > > >  Hardware name: Allwinner sun8i Family
> > > > >  Workqueue: events deferred_probe_work_func
> > > > >  [<c010ed54>] (unwind_backtrace) from [<c010b76c>] (show_stack+0x10/0x14)
> > > > >  [<c010b76c>] (show_stack) from [<c0688c70>] (dump_stack+0x84/0x98)
> > > > >  [<c0688c70>] (dump_stack) from [<c011d9e4>] (__warn+0xfc/0x114)
> > > > >  [<c011d9e4>] (__warn) from [<c011da40>] (warn_slowpath_fmt+0x44/0x68)
> > > > >  [<c011da40>] (warn_slowpath_fmt) from [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0)
> > > > >  [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1) from [<c040e694>] (drm_atomic_helper_commit_tail_rpm+0x5c/0x6c)
> > > > >  [<c040e694>] (drm_atomic_helper_commit_tail_rpm) from [<c040e4dc>] (commit_tail+0x40/0x6c)
> > > > >  [<c040e4dc>] (commit_tail) from [<c040e5cc>] (drm_atomic_helper_commit+0xbc/0x128)
> > > > >  [<c040e5cc>] (drm_atomic_helper_commit) from [<c0411b64>] (restore_fbdev_mode_atomic+0x1cc/0x1dc)
> > > > >  [<c0411b64>] (restore_fbdev_mode_atomic) from [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked+0x54/0xa0)
> > > > >  [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked) from [<c0415774>] (drm_fb_helper_set_par+0x30/0x54)
> > > > >  [<c0415774>] (drm_fb_helper_set_par) from [<c03ad450>] (fbcon_init+0x560/0x5ac)
> > > > >  [<c03ad450>] (fbcon_init) from [<c03eb8a0>] (visual_init+0xbc/0x104)
> > > > >  [<c03eb8a0>] (visual_init) from [<c03ed1b8>] (do_bind_con_driver+0x1b0/0x390)
> > > > >  [<c03ed1b8>] (do_bind_con_driver) from [<c03ed780>] (do_take_over_console+0x13c/0x1c4)
> > > > >  [<c03ed780>] (do_take_over_console) from [<c03ad800>] (do_fbcon_takeover+0x74/0xcc)
> > > > >  [<c03ad800>] (do_fbcon_takeover) from [<c013c9c8>] (notifier_call_chain+0x44/0x84)
> > > > >  [<c013c9c8>] (notifier_call_chain) from [<c013cd20>] (__blocking_notifier_call_chain+0x48/0x60)
> > > > >  [<c013cd20>] (__blocking_notifier_call_chain) from [<c013cd50>] (blocking_notifier_call_chain+0x18/0x20)
> > > > >  [<c013cd50>] (blocking_notifier_call_chain) from [<c03a6e44>] (register_framebuffer+0x1e0/0x2f8)
> > > > >  [<c03a6e44>] (register_framebuffer) from [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock+0x2fc/0x50c)
> > > > >  [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock) from [<c04158c8>] (drm_fbdev_client_hotplug+0xe8/0x1b8)
> > > > >  [<c04158c8>] (drm_fbdev_client_hotplug) from [<c0415a20>] (drm_fbdev_generic_setup+0x88/0x118)
> > > > >  [<c0415a20>] (drm_fbdev_generic_setup) from [<c043f060>] (sun4i_drv_bind+0x128/0x160)
> > > > >  [<c043f060>] (sun4i_drv_bind) from [<c044b598>] (try_to_bring_up_master+0x164/0x1a0)
> > > > >  [<c044b598>] (try_to_bring_up_master) from [<c044b668>] (__component_add+0x94/0x140)
> > > > >  [<c044b668>] (__component_add) from [<c0445e1c>] (sun6i_dsi_probe+0x144/0x234)
> > > > >  [<c0445e1c>] (sun6i_dsi_probe) from [<c0452ef4>] (platform_drv_probe+0x48/0x9c)
> > > > >  [<c0452ef4>] (platform_drv_probe) from [<c04512cc>] (really_probe+0x1dc/0x2c8)
> > > > >  [<c04512cc>] (really_probe) from [<c0451518>] (driver_probe_device+0x60/0x160)
> > > > >  [<c0451518>] (driver_probe_device) from [<c044f7a4>] (bus_for_each_drv+0x74/0xb8)
> > > > >  [<c044f7a4>] (bus_for_each_drv) from [<c045107c>] (__device_attach+0xd0/0x13c)
> > > > >  [<c045107c>] (__device_attach) from [<c0450474>] (bus_probe_device+0x84/0x8c)
> > > > >  [<c0450474>] (bus_probe_device) from [<c0450900>] (deferred_probe_work_func+0x64/0x90)
> > > > >  [<c0450900>] (deferred_probe_work_func) from [<c0135970>] (process_one_work+0x204/0x420)
> > > > >  [<c0135970>] (process_one_work) from [<c013690c>] (worker_thread+0x274/0x5a0)
> > > > >  [<c013690c>] (worker_thread) from [<c013b3d8>] (kthread+0x11c/0x14c)
> > > > >  [<c013b3d8>] (kthread) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
> > > > >  Exception stack(0xde539fb0 to 0xde539ff8)
> > > > >  9fa0:                                     00000000 00000000 00000000 00000000
> > > > >  9fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
> > > > >  9fe0: 00000000 00000000 00000000 00000000 00000013 00000000
> > > > >  ---[ end trace b57eb1e5c64c6b8b ]---
> > > > >  random: fast init done
> > > > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CRTC:46:crtc-0] flip_done timed out
> > > > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CONNECTOR:48:DSI-1] flip_done timed out
> > > > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [PLANE:30:plane-0] flip_done timed out
> > > > >
> > > > > But according to Allwinner A33, A64 BSP code [1] [3] the TCON DRQ for
> > > > > non-burst DSI mode can be computed based on "horizontal front porch"
> > > > > value only (no sync timings included).
> > > > >
> > > > > Detailed evidence for drq set bits based on A33 BSP [1] [2]
> > > > >
> > > > > => panel->lcd_ht - panel->lcd_x - panel->lcd_hbp - 20
> > > > > => (tt->hor_front_porch + lcdp->panel_info.lcd_hbp +
> > > > > lcdp->panel_info.lcd_x) - panel->lcd_x - panel->lcd_hbp - 20
> > > > > => tt->hor_front_porch - 20
> > > >
> > > > The thing is, while your explanation on the DRM side is sound,
> > > > Allwinner has been using the hbp field of their panel description to
> > > > store what DRM calls the backporch and the sync period.
> > >
> > > Exactly, hbp = backporch + sync
> > > https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L2046
> > >
> > > And the above computation is rely on that as well. If you can see the
> > > final out of the above computation you can get the front porch value
> > > (w/o sync )
> >
> > As I was saying, you are explaining it well for DRM, but in order for
> > your last formula (the one coming from the BSP) to make sense, you
> > have to explain that the horizontal back porch for Allwinner contains
> > the sync period, otherwise your expansion of lcd_ht doesn't make
> > sense.
>
> I'm not sure why we need to take care of back porch since the formula
> clearly evaluating a result as front porch, without sync timing (as
> current code included this sync), I keep the hbp and trying to
> substitute the lcd_ht value so the end result would cancel hbp.

Because it changes how lcd_ht expands. In the DRM case, it will expand
to the displayed area, the front porch, the sync period and the back
porch.

In your case, you expand it to the displayed area, the front porch and
the back porch, precisely because in Allwinner's case, the back porch
has the sync period.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--mf43bufptefijii6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPZBKwAKCRDj7w1vZxhR
xcyFAP9BvStQFLIub7q9QkrhsJp3jr16Xv8Agsm8Sx416fiFhAEA7oPuJJIvhMZC
kU26h3rcdyenl06CVOz1ePMHdl779ws=
=mvjJ
-----END PGP SIGNATURE-----

--mf43bufptefijii6--


--===============3604820440069207750==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3604820440069207750==--

