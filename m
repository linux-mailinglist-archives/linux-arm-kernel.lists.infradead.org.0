Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D50357FF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 09:42:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XPXZDQt8M2eoPq9kQJcL4dSuSNGGpeW4QEmk8QHnHYw=; b=O4LoZjGIcUuyZu
	BncmYMiMkKHHSaGETDZxPJeXOQUYKIwtbrzeZ1yKGe2f63MH1yGxnn0BSUleEyDodvt0F/MAFVLwz
	X8tz1EuHeNfiWOeMfhPlw2Zoj2uJvfem+xt17uNshJFJMnRyGnj72ZdwIl3hoKmQgw7EhlCG+MALB
	XJFdvUMdKbEsEPl1qRONqwn/AZ0nqaiFLWwOLU40+8NCQtq0O2+GmxSiE+OY3a4PGysieiEdNb+sa
	VB7ySctJO8HiROzzQsGPmrcgcrEywDDyg66w78RkDPw2dXGPBoFrcX0bxGBXngt+qbyOSDgWjpwof
	1EEZm874w97ZPouhKHUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYQYd-0007VT-SB; Wed, 05 Jun 2019 07:42:03 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYQYW-0007Sd-8z
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 07:41:58 +0000
Received: by mail-io1-xd44.google.com with SMTP id k20so19457131ios.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 00:41:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YUTEsNkErm64NyUOPGn0nhKblDP+F95DDMao4HPSViA=;
 b=dPQ29IWVfxGz5Vz02CnO/v9QbyrqADw2a27dHc008BssU3tqOryDLuH/ERpfuwhaBF
 0/vkl0hHAx5nAmIlhmOkRWKQX0bpaf0e4ACuCAA95vyNswNHmD51qDbzuvg06zzoUyhw
 sfFV9dZjCZqCODYw8XyVHOqcLwiJPYrqx5vh8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YUTEsNkErm64NyUOPGn0nhKblDP+F95DDMao4HPSViA=;
 b=ja5MCoy7Q8H8q21783gVo30bYd2aNJgIJihupeAIL0MGAxxrJFSOP7tjQ9HfIMimNP
 LXKHM5kR0IsVa0Wx6RxxAhcU4NCVIt5q7tyvW+N6WX6dtgag1Qs5c9lY2BNH7AHP8lAr
 F2TZcEW+gr/VZuFcTeijZCNZwiTgipNfTxsseBe5xwEc09zjg3fMcXrgDsCQwhYdmQyC
 t3fCRbjX/6rTXB+3S8Dd0mptIF72L7wSUvfWAaFFDKGA7Mzh13ljPppjsT/IQ5a9vdQS
 OvXJYFlXiBgY9RUHT22p73BiOvQw4bQrGgntRZ65IrO01aRX+1Z1HWXuOJiaA7/aBPXi
 /z/A==
X-Gm-Message-State: APjAAAUrBEHsSAZb3HKtiVPjf7fOgnikgeaAIjPPMfVw2YDYGOHz1qSI
 AdgMgpjfygaxuXtljw6hXNygvzoe/VeNtGl3/ZQ4hA==
X-Google-Smtp-Source: APXvYqxVcC9MvWhyfyPaf0can06Sav/NrcWClAycRftnqUn/hN12SOBJN/e9kN+tHVxcEFy/fV/VMhBcsYTQNbQcFSI=
X-Received: by 2002:a05:6602:2253:: with SMTP id
 o19mr1063968ioo.297.1559720515473; 
 Wed, 05 Jun 2019 00:41:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190520090318.27570-1-jagan@amarulasolutions.com>
 <20190520090318.27570-5-jagan@amarulasolutions.com>
 <20190523204823.mx7l4ozklzdh7npn@flea>
 <CAMty3ZA0S=+8NBrQZvP6sFdzSYWqhNZL_KjkJAQ0jTc2RVivrw@mail.gmail.com>
 <20190604143016.fcx3ezmga244xakp@flea>
In-Reply-To: <20190604143016.fcx3ezmga244xakp@flea>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 5 Jun 2019 13:11:44 +0530
Message-ID: <CAMty3ZAAK4RoE6g_LAZ-Q38On_1s_TTOz65YG7PVd88mwp-+4Q@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v10 04/11] drm/sun4i: tcon: Compute DCLK
 dividers based on format, lanes
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_004156_319412_E0FDA872 
X-CRM114-Status: GOOD (  23.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 =?UTF-8?B?5Z2a5a6a5YmN6KGM?= <powerpan@qq.com>, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 4, 2019 at 8:00 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Fri, May 24, 2019 at 03:37:36PM +0530, Jagan Teki wrote:
> > On Fri, May 24, 2019 at 2:18 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > On Mon, May 20, 2019 at 02:33:11PM +0530, Jagan Teki wrote:
> > > > pll-video => pll-mipi => tcon0 => tcon0-pixel-clock is the typical
> > > > MIPI clock topology in Allwinner DSI controller.
> > > >
> > > > TCON dotclock driver is computing the desired DCLK divider based on
> > > > panel pixel clock along with input DCLK min, max divider values from
> > > > tcon driver and that would eventually set the pll-mipi clock rate.
> > > >
> > > > The current code is passing dsi min and max divider value as 4 via
> > > > tcon driver which would ended-up triggering below vblank wait timed out
> > > > warning on "bananapi,s070wv20-ct16" panel.
> > > >
> > > >  WARNING: CPU: 0 PID: 31 at drivers/gpu/drm/drm_atomic_helper.c:1429 drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0
> > > >  [CRTC:46:crtc-0] vblank wait timed out
> > > >  Modules linked in:
> > > >  CPU: 0 PID: 31 Comm: kworker/0:1 Not tainted 5.1.0-next-20190514-00025-g5186cdf10757-dirty #6
> > > >  Hardware name: Allwinner sun8i Family
> > > >  Workqueue: events deferred_probe_work_func
> > > >  [<c010ed54>] (unwind_backtrace) from [<c010b76c>] (show_stack+0x10/0x14)
> > > >  [<c010b76c>] (show_stack) from [<c0688c70>] (dump_stack+0x84/0x98)
> > > >  [<c0688c70>] (dump_stack) from [<c011d9e4>] (__warn+0xfc/0x114)
> > > >  [<c011d9e4>] (__warn) from [<c011da40>] (warn_slowpath_fmt+0x44/0x68)
> > > >  [<c011da40>] (warn_slowpath_fmt) from [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0)
> > > >  [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1) from [<c040e694>] (drm_atomic_helper_commit_tail_rpm+0x5c/0x6c)
> > > >  [<c040e694>] (drm_atomic_helper_commit_tail_rpm) from [<c040e4dc>] (commit_tail+0x40/0x6c)
> > > >  [<c040e4dc>] (commit_tail) from [<c040e5cc>] (drm_atomic_helper_commit+0xbc/0x128)
> > > >  [<c040e5cc>] (drm_atomic_helper_commit) from [<c0411b64>] (restore_fbdev_mode_atomic+0x1cc/0x1dc)
> > > >  [<c0411b64>] (restore_fbdev_mode_atomic) from [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked+0x54/0xa0)
> > > >  [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked) from [<c0415774>] (drm_fb_helper_set_par+0x30/0x54)
> > > >  [<c0415774>] (drm_fb_helper_set_par) from [<c03ad450>] (fbcon_init+0x560/0x5ac)
> > > >  [<c03ad450>] (fbcon_init) from [<c03eb8a0>] (visual_init+0xbc/0x104)
> > > >  [<c03eb8a0>] (visual_init) from [<c03ed1b8>] (do_bind_con_driver+0x1b0/0x390)
> > > >  [<c03ed1b8>] (do_bind_con_driver) from [<c03ed780>] (do_take_over_console+0x13c/0x1c4)
> > > >  [<c03ed780>] (do_take_over_console) from [<c03ad800>] (do_fbcon_takeover+0x74/0xcc)
> > > >  [<c03ad800>] (do_fbcon_takeover) from [<c013c9c8>] (notifier_call_chain+0x44/0x84)
> > > >  [<c013c9c8>] (notifier_call_chain) from [<c013cd20>] (__blocking_notifier_call_chain+0x48/0x60)
> > > >  [<c013cd20>] (__blocking_notifier_call_chain) from [<c013cd50>] (blocking_notifier_call_chain+0x18/0x20)
> > > >  [<c013cd50>] (blocking_notifier_call_chain) from [<c03a6e44>] (register_framebuffer+0x1e0/0x2f8)
> > > >  [<c03a6e44>] (register_framebuffer) from [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock+0x2fc/0x50c)
> > > >  [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock) from [<c04158c8>] (drm_fbdev_client_hotplug+0xe8/0x1b8)
> > > >  [<c04158c8>] (drm_fbdev_client_hotplug) from [<c0415a20>] (drm_fbdev_generic_setup+0x88/0x118)
> > > >  [<c0415a20>] (drm_fbdev_generic_setup) from [<c043f060>] (sun4i_drv_bind+0x128/0x160)
> > > >  [<c043f060>] (sun4i_drv_bind) from [<c044b588>] (try_to_bring_up_master+0x164/0x1a0)
> > > >  [<c044b588>] (try_to_bring_up_master) from [<c044b658>] (__component_add+0x94/0x140)
> > > >  [<c044b658>] (__component_add) from [<c0445e0c>] (sun6i_dsi_probe+0x144/0x234)
> > > >  [<c0445e0c>] (sun6i_dsi_probe) from [<c0452ee4>] (platform_drv_probe+0x48/0x9c)
> > > >  [<c0452ee4>] (platform_drv_probe) from [<c04512bc>] (really_probe+0x1dc/0x2c8)
> > > >  [<c04512bc>] (really_probe) from [<c0451508>] (driver_probe_device+0x60/0x160)
> > > >  [<c0451508>] (driver_probe_device) from [<c044f794>] (bus_for_each_drv+0x74/0xb8)
> > > >  [<c044f794>] (bus_for_each_drv) from [<c045106c>] (__device_attach+0xd0/0x13c)
> > > >  [<c045106c>] (__device_attach) from [<c0450464>] (bus_probe_device+0x84/0x8c)
> > > >  [<c0450464>] (bus_probe_device) from [<c04508f0>] (deferred_probe_work_func+0x64/0x90)
> > > >  [<c04508f0>] (deferred_probe_work_func) from [<c0135970>] (process_one_work+0x204/0x420)
> > > >  [<c0135970>] (process_one_work) from [<c013690c>] (worker_thread+0x274/0x5a0)
> > > >  [<c013690c>] (worker_thread) from [<c013b3d8>] (kthread+0x11c/0x14c)
> > > >  [<c013b3d8>] (kthread) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
> > > >  Exception stack(0xde539fb0 to 0xde539ff8)
> > > >  9fa0:                                     00000000 00000000 00000000 00000000
> > > >  9fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
> > > >  9fe0: 00000000 00000000 00000000 00000000 00000013 00000000
> > > >  ---[ end trace 4017fea4906ab391 ]---
> > > >
> > > > But accordingly to Allwinner A33, A64 BSP codes [1] [2] this divider
> > > > is clearly using 'format/lanes' for dsi divider value, dsi_clk.clk_div
> > > >
> > > > Which would compute the pll_freq and set a clock rate for it in
> > > > [3] and [4] respectively.
> > > >
> > > > The same issue has reproduced in A33, A64 with 4-lane and 2-lane devices
> > > > and got fixed with this computation logic 'format/lanes', so this patch
> > > > using dclk min and max dividers as per BSP.
> > > >
> > > > [1] https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L1106
> > > > [2] https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/lowlevel_sun50iw1/disp_al.c#L213
> > > > [3] https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L1127
> > > > [4] https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L1161
> > >
> > > In that mail, I've pointed out that clk_div isn't used for the TCON dclk divider:
> > > http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/629596.html
> > >
> > > The only reply you've sent is that you indeed see that the divider is
> > > set to 4 in the BSP, but you're now saying that the BSP can change
> > > it. If so, then please point exactly the flaw in the explanation in
> > > that mail.
> >
> > Frankly, I have explained these details in commit message and previous
> > version patch[1] with print messages on the code.
> >
> > BSP has tcon_div and dsi_div. dsi_div is dynamic which depends on
> > bpp/lanes and it indeed depends on PLL computation (not tcon_div),
> > anyway I have explained again on this initial link you mentioned.
> > Please have a look and get back.
>
> I'll have a look, thanks.
>
> I've given your patches a try on my setup though, and this patch
> breaks it with vblank timeouts and some horizontal lines that looks
> like what should be displayed, but blinking and on the right of the
> display. The previous ones are fine though.

Would you please send me the link of panel driver.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
