Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7255128BD4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 22:48:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ta/PfGatadl/3dhw5nWWKzhB4RUFFKzJz3cViBJ2k9o=; b=AKcM4g/5cz8JLY
	cHrh17Xhy3yO7Kij86LqFrv9xgPGPI0sz4atBTPFlClKhxgUb5AgJ7HAzN7k+9ymgc2M6SuhVV9oB
	r5HItdEL9ApcdZw3gQn2pg+ATgHplr47Q3yegUsPETdzqIsCk0ACSu3tiPWIAxeFhFUzd6ya0Wc3v
	PgAqGXN5OUz6BPxrK3/ERU1E3KredMZ9iK5/89BTqNNcqKcEemeeL8XVaeb60czXTrIiNONimNk8A
	Q98IExVNTvNSuYUP4zqjJcv8219P1B/tJ8El18zpZc8gRxnHK7yYpLddhyPItAPL8yKGV/Dbi8vgE
	5EG/01ghk5Kbb1Qayizg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTudy-0001d5-6N; Thu, 23 May 2019 20:48:54 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTudn-0001WK-Af
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 20:48:47 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 99564E0006;
 Thu, 23 May 2019 20:48:29 +0000 (UTC)
Date: Thu, 23 May 2019 22:48:23 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v10 04/11] drm/sun4i: tcon: Compute DCLK dividers based
 on format, lanes
Message-ID: <20190523204823.mx7l4ozklzdh7npn@flea>
References: <20190520090318.27570-1-jagan@amarulasolutions.com>
 <20190520090318.27570-5-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520090318.27570-5-jagan@amarulasolutions.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_134843_745216_3ADF1D7F 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: bshah@mykolab.com, David Airlie <airlied@linux.ie>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, powerpan@qq.com, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 02:33:11PM +0530, Jagan Teki wrote:
> pll-video => pll-mipi => tcon0 => tcon0-pixel-clock is the typical
> MIPI clock topology in Allwinner DSI controller.
>
> TCON dotclock driver is computing the desired DCLK divider based on
> panel pixel clock along with input DCLK min, max divider values from
> tcon driver and that would eventually set the pll-mipi clock rate.
>
> The current code is passing dsi min and max divider value as 4 via
> tcon driver which would ended-up triggering below vblank wait timed out
> warning on "bananapi,s070wv20-ct16" panel.
>
>  WARNING: CPU: 0 PID: 31 at drivers/gpu/drm/drm_atomic_helper.c:1429 drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0
>  [CRTC:46:crtc-0] vblank wait timed out
>  Modules linked in:
>  CPU: 0 PID: 31 Comm: kworker/0:1 Not tainted 5.1.0-next-20190514-00025-g5186cdf10757-dirty #6
>  Hardware name: Allwinner sun8i Family
>  Workqueue: events deferred_probe_work_func
>  [<c010ed54>] (unwind_backtrace) from [<c010b76c>] (show_stack+0x10/0x14)
>  [<c010b76c>] (show_stack) from [<c0688c70>] (dump_stack+0x84/0x98)
>  [<c0688c70>] (dump_stack) from [<c011d9e4>] (__warn+0xfc/0x114)
>  [<c011d9e4>] (__warn) from [<c011da40>] (warn_slowpath_fmt+0x44/0x68)
>  [<c011da40>] (warn_slowpath_fmt) from [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0)
>  [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1) from [<c040e694>] (drm_atomic_helper_commit_tail_rpm+0x5c/0x6c)
>  [<c040e694>] (drm_atomic_helper_commit_tail_rpm) from [<c040e4dc>] (commit_tail+0x40/0x6c)
>  [<c040e4dc>] (commit_tail) from [<c040e5cc>] (drm_atomic_helper_commit+0xbc/0x128)
>  [<c040e5cc>] (drm_atomic_helper_commit) from [<c0411b64>] (restore_fbdev_mode_atomic+0x1cc/0x1dc)
>  [<c0411b64>] (restore_fbdev_mode_atomic) from [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked+0x54/0xa0)
>  [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked) from [<c0415774>] (drm_fb_helper_set_par+0x30/0x54)
>  [<c0415774>] (drm_fb_helper_set_par) from [<c03ad450>] (fbcon_init+0x560/0x5ac)
>  [<c03ad450>] (fbcon_init) from [<c03eb8a0>] (visual_init+0xbc/0x104)
>  [<c03eb8a0>] (visual_init) from [<c03ed1b8>] (do_bind_con_driver+0x1b0/0x390)
>  [<c03ed1b8>] (do_bind_con_driver) from [<c03ed780>] (do_take_over_console+0x13c/0x1c4)
>  [<c03ed780>] (do_take_over_console) from [<c03ad800>] (do_fbcon_takeover+0x74/0xcc)
>  [<c03ad800>] (do_fbcon_takeover) from [<c013c9c8>] (notifier_call_chain+0x44/0x84)
>  [<c013c9c8>] (notifier_call_chain) from [<c013cd20>] (__blocking_notifier_call_chain+0x48/0x60)
>  [<c013cd20>] (__blocking_notifier_call_chain) from [<c013cd50>] (blocking_notifier_call_chain+0x18/0x20)
>  [<c013cd50>] (blocking_notifier_call_chain) from [<c03a6e44>] (register_framebuffer+0x1e0/0x2f8)
>  [<c03a6e44>] (register_framebuffer) from [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock+0x2fc/0x50c)
>  [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock) from [<c04158c8>] (drm_fbdev_client_hotplug+0xe8/0x1b8)
>  [<c04158c8>] (drm_fbdev_client_hotplug) from [<c0415a20>] (drm_fbdev_generic_setup+0x88/0x118)
>  [<c0415a20>] (drm_fbdev_generic_setup) from [<c043f060>] (sun4i_drv_bind+0x128/0x160)
>  [<c043f060>] (sun4i_drv_bind) from [<c044b588>] (try_to_bring_up_master+0x164/0x1a0)
>  [<c044b588>] (try_to_bring_up_master) from [<c044b658>] (__component_add+0x94/0x140)
>  [<c044b658>] (__component_add) from [<c0445e0c>] (sun6i_dsi_probe+0x144/0x234)
>  [<c0445e0c>] (sun6i_dsi_probe) from [<c0452ee4>] (platform_drv_probe+0x48/0x9c)
>  [<c0452ee4>] (platform_drv_probe) from [<c04512bc>] (really_probe+0x1dc/0x2c8)
>  [<c04512bc>] (really_probe) from [<c0451508>] (driver_probe_device+0x60/0x160)
>  [<c0451508>] (driver_probe_device) from [<c044f794>] (bus_for_each_drv+0x74/0xb8)
>  [<c044f794>] (bus_for_each_drv) from [<c045106c>] (__device_attach+0xd0/0x13c)
>  [<c045106c>] (__device_attach) from [<c0450464>] (bus_probe_device+0x84/0x8c)
>  [<c0450464>] (bus_probe_device) from [<c04508f0>] (deferred_probe_work_func+0x64/0x90)
>  [<c04508f0>] (deferred_probe_work_func) from [<c0135970>] (process_one_work+0x204/0x420)
>  [<c0135970>] (process_one_work) from [<c013690c>] (worker_thread+0x274/0x5a0)
>  [<c013690c>] (worker_thread) from [<c013b3d8>] (kthread+0x11c/0x14c)
>  [<c013b3d8>] (kthread) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
>  Exception stack(0xde539fb0 to 0xde539ff8)
>  9fa0:                                     00000000 00000000 00000000 00000000
>  9fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
>  9fe0: 00000000 00000000 00000000 00000000 00000013 00000000
>  ---[ end trace 4017fea4906ab391 ]---
>
> But accordingly to Allwinner A33, A64 BSP codes [1] [2] this divider
> is clearly using 'format/lanes' for dsi divider value, dsi_clk.clk_div
>
> Which would compute the pll_freq and set a clock rate for it in
> [3] and [4] respectively.
>
> The same issue has reproduced in A33, A64 with 4-lane and 2-lane devices
> and got fixed with this computation logic 'format/lanes', so this patch
> using dclk min and max dividers as per BSP.
>
> [1] https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L1106
> [2] https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/lowlevel_sun50iw1/disp_al.c#L213
> [3] https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L1127
> [4] https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L1161

In that mail, I've pointed out that clk_div isn't used for the TCON dclk divider:
http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/629596.html

The only reply you've sent is that you indeed see that the divider is
set to 4 in the BSP, but you're now saying that the BSP can change
it. If so, then please point exactly the flaw in the explanation in
that mail.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
