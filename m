Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5535C35F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 21:00:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O4cNuKZfgbhZSacQzlb2h2bDaYieumeXlcp9EhKaePY=; b=b7HXCZM+uAiQ0f
	AfWFDXmFXMVvq7NiXItUaE5uj5GkcLV9dTRRY3JozZu/dRS7kUsyQbwS+bHeR1QJS7SK1U6zHNnp+
	4tDZbtXU9SNEQKNAWxqM9DDiLN318kyQ1A71SLyqsJpMAZPgm6lSYXIg59ZqkDQZh1H/Q0n27xEbd
	u1VfTiRqM6FihpA5b+wuv4FhRMdSvBam+0y8OgiLif85xRsY9+yEOeRZ1fIr7GTswDhf0vsg9oJpp
	WhNVGkI/WXc338Adg5RQDbiVZWfMP9/GhFnTC3Sr8e75QrFwEsBz4Z5aDi5ZWOKoQzRNXyQn4m2V0
	juw3r0LpVTxSY60A6MHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi1Xk-0006V2-35; Mon, 01 Jul 2019 19:00:48 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi1XP-0006PU-UY
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 19:00:30 +0000
Received: by mail-io1-xd44.google.com with SMTP id k20so4892467ios.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 12:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+f5WCOBjqPd+mXSelV53JnH0oa33fcfgISGQjk/o+98=;
 b=GtunnfKPZkOzEInOloFGVQzAruinV1O3Ru6XEUnKvluOKdqXNXm9o5Off751DaeDAy
 UXKZND2fBEjFTfj3NRrxARYumPYVA9+BCBKr6Qdysj5fiNCksoM7z8cSEd/o3V5qOuF9
 DEUrEj7CwrILvF5/BWXYdLq2tWCyHdYkpga9w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+f5WCOBjqPd+mXSelV53JnH0oa33fcfgISGQjk/o+98=;
 b=re43FSWQmEpJFdXw6fVjGnCfnTKxIob3roDot14GoZWrQ6e2oDnuxqyp/7tME1KiUb
 nbtrj1EqyLJ7/aVRJFItEr7NBv02Md6wa2F3s+w7QctX1MA+xgCb7n1opb/nsDfXc5iX
 FWP25YBEKiFzLkXXv7vZ0h8BDvNnLNERIbtSDvg+g3F30ACtJzciU/m3zGgLJtDBEgMB
 YTZpd31koCE9yIfOlSFrW+Rsv2aBwBBE/8mFfVT66VOOgifTI6t2uOtN6KKmoOpY6K4z
 bruDFbi1dqO/mpkJJ7lxxzGfrcOSFBA+xIY86TBxirvZ2NH42ryS8q72r3e5gx5nF3rv
 ODJg==
X-Gm-Message-State: APjAAAXtYSZkkZd8v18Pp9TqBX+Rfx1xtfuwQaZfYXEQDCh0IglKm/99
 a+fSN/nyH7U6lgfhyZNkQUaLQ1aHqXfAWQAV3nIjuQ==
X-Google-Smtp-Source: APXvYqzlff56fV607aJrbZ+PhwePJXkwWoh4PIJ4Lt3BpMrSA97jegtE3JU7TZfOYSvAE6wdvv/6g86fFlR3Sp4wxAY=
X-Received: by 2002:a6b:6b14:: with SMTP id g20mr2643215ioc.28.1562007625979; 
 Mon, 01 Jul 2019 12:00:25 -0700 (PDT)
MIME-Version: 1.0
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
 <20190625143747.3czd7sit4waz75b6@flea>
In-Reply-To: <20190625143747.3czd7sit4waz75b6@flea>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 2 Jul 2019 00:30:14 +0530
Message-ID: <CAMty3ZCh+C9+zgcL633tTw6aPW_WOLnYN7FzJHX+3zu8=8Unpg@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v10 04/11] drm/sun4i: tcon: Compute DCLK
 dividers based on format, lanes
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_120028_294014_1B1ABC24 
X-CRM114-Status: GOOD (  30.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Tue, Jun 25, 2019 at 8:07 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Mon, Jun 24, 2019 at 09:32:11PM +0530, Jagan Teki wrote:
> > On Mon, Jun 24, 2019 at 6:34 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > On Fri, Jun 14, 2019 at 05:33:23PM +0530, Jagan Teki wrote:
> > > > On Thu, Jun 13, 2019 at 7:28 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > >
> > > > > On Wed, Jun 05, 2019 at 01:11:44PM +0530, Jagan Teki wrote:
> > > > > > On Tue, Jun 4, 2019 at 8:00 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > >
> > > > > > > On Fri, May 24, 2019 at 03:37:36PM +0530, Jagan Teki wrote:
> > > > > > > > On Fri, May 24, 2019 at 2:18 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > > > >
> > > > > > > > > On Mon, May 20, 2019 at 02:33:11PM +0530, Jagan Teki wrote:
> > > > > > > > > > pll-video => pll-mipi => tcon0 => tcon0-pixel-clock is the typical
> > > > > > > > > > MIPI clock topology in Allwinner DSI controller.
> > > > > > > > > >
> > > > > > > > > > TCON dotclock driver is computing the desired DCLK divider based on
> > > > > > > > > > panel pixel clock along with input DCLK min, max divider values from
> > > > > > > > > > tcon driver and that would eventually set the pll-mipi clock rate.
> > > > > > > > > >
> > > > > > > > > > The current code is passing dsi min and max divider value as 4 via
> > > > > > > > > > tcon driver which would ended-up triggering below vblank wait timed out
> > > > > > > > > > warning on "bananapi,s070wv20-ct16" panel.
> > > > > > > > > >
> > > > > > > > > >  WARNING: CPU: 0 PID: 31 at drivers/gpu/drm/drm_atomic_helper.c:1429 drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0
> > > > > > > > > >  [CRTC:46:crtc-0] vblank wait timed out
> > > > > > > > > >  Modules linked in:
> > > > > > > > > >  CPU: 0 PID: 31 Comm: kworker/0:1 Not tainted 5.1.0-next-20190514-00025-g5186cdf10757-dirty #6
> > > > > > > > > >  Hardware name: Allwinner sun8i Family
> > > > > > > > > >  Workqueue: events deferred_probe_work_func
> > > > > > > > > >  [<c010ed54>] (unwind_backtrace) from [<c010b76c>] (show_stack+0x10/0x14)
> > > > > > > > > >  [<c010b76c>] (show_stack) from [<c0688c70>] (dump_stack+0x84/0x98)
> > > > > > > > > >  [<c0688c70>] (dump_stack) from [<c011d9e4>] (__warn+0xfc/0x114)
> > > > > > > > > >  [<c011d9e4>] (__warn) from [<c011da40>] (warn_slowpath_fmt+0x44/0x68)
> > > > > > > > > >  [<c011da40>] (warn_slowpath_fmt) from [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0)
> > > > > > > > > >  [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1) from [<c040e694>] (drm_atomic_helper_commit_tail_rpm+0x5c/0x6c)
> > > > > > > > > >  [<c040e694>] (drm_atomic_helper_commit_tail_rpm) from [<c040e4dc>] (commit_tail+0x40/0x6c)
> > > > > > > > > >  [<c040e4dc>] (commit_tail) from [<c040e5cc>] (drm_atomic_helper_commit+0xbc/0x128)
> > > > > > > > > >  [<c040e5cc>] (drm_atomic_helper_commit) from [<c0411b64>] (restore_fbdev_mode_atomic+0x1cc/0x1dc)
> > > > > > > > > >  [<c0411b64>] (restore_fbdev_mode_atomic) from [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked+0x54/0xa0)
> > > > > > > > > >  [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked) from [<c0415774>] (drm_fb_helper_set_par+0x30/0x54)
> > > > > > > > > >  [<c0415774>] (drm_fb_helper_set_par) from [<c03ad450>] (fbcon_init+0x560/0x5ac)
> > > > > > > > > >  [<c03ad450>] (fbcon_init) from [<c03eb8a0>] (visual_init+0xbc/0x104)
> > > > > > > > > >  [<c03eb8a0>] (visual_init) from [<c03ed1b8>] (do_bind_con_driver+0x1b0/0x390)
> > > > > > > > > >  [<c03ed1b8>] (do_bind_con_driver) from [<c03ed780>] (do_take_over_console+0x13c/0x1c4)
> > > > > > > > > >  [<c03ed780>] (do_take_over_console) from [<c03ad800>] (do_fbcon_takeover+0x74/0xcc)
> > > > > > > > > >  [<c03ad800>] (do_fbcon_takeover) from [<c013c9c8>] (notifier_call_chain+0x44/0x84)
> > > > > > > > > >  [<c013c9c8>] (notifier_call_chain) from [<c013cd20>] (__blocking_notifier_call_chain+0x48/0x60)
> > > > > > > > > >  [<c013cd20>] (__blocking_notifier_call_chain) from [<c013cd50>] (blocking_notifier_call_chain+0x18/0x20)
> > > > > > > > > >  [<c013cd50>] (blocking_notifier_call_chain) from [<c03a6e44>] (register_framebuffer+0x1e0/0x2f8)
> > > > > > > > > >  [<c03a6e44>] (register_framebuffer) from [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock+0x2fc/0x50c)
> > > > > > > > > >  [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock) from [<c04158c8>] (drm_fbdev_client_hotplug+0xe8/0x1b8)
> > > > > > > > > >  [<c04158c8>] (drm_fbdev_client_hotplug) from [<c0415a20>] (drm_fbdev_generic_setup+0x88/0x118)
> > > > > > > > > >  [<c0415a20>] (drm_fbdev_generic_setup) from [<c043f060>] (sun4i_drv_bind+0x128/0x160)
> > > > > > > > > >  [<c043f060>] (sun4i_drv_bind) from [<c044b588>] (try_to_bring_up_master+0x164/0x1a0)
> > > > > > > > > >  [<c044b588>] (try_to_bring_up_master) from [<c044b658>] (__component_add+0x94/0x140)
> > > > > > > > > >  [<c044b658>] (__component_add) from [<c0445e0c>] (sun6i_dsi_probe+0x144/0x234)
> > > > > > > > > >  [<c0445e0c>] (sun6i_dsi_probe) from [<c0452ee4>] (platform_drv_probe+0x48/0x9c)
> > > > > > > > > >  [<c0452ee4>] (platform_drv_probe) from [<c04512bc>] (really_probe+0x1dc/0x2c8)
> > > > > > > > > >  [<c04512bc>] (really_probe) from [<c0451508>] (driver_probe_device+0x60/0x160)
> > > > > > > > > >  [<c0451508>] (driver_probe_device) from [<c044f794>] (bus_for_each_drv+0x74/0xb8)
> > > > > > > > > >  [<c044f794>] (bus_for_each_drv) from [<c045106c>] (__device_attach+0xd0/0x13c)
> > > > > > > > > >  [<c045106c>] (__device_attach) from [<c0450464>] (bus_probe_device+0x84/0x8c)
> > > > > > > > > >  [<c0450464>] (bus_probe_device) from [<c04508f0>] (deferred_probe_work_func+0x64/0x90)
> > > > > > > > > >  [<c04508f0>] (deferred_probe_work_func) from [<c0135970>] (process_one_work+0x204/0x420)
> > > > > > > > > >  [<c0135970>] (process_one_work) from [<c013690c>] (worker_thread+0x274/0x5a0)
> > > > > > > > > >  [<c013690c>] (worker_thread) from [<c013b3d8>] (kthread+0x11c/0x14c)
> > > > > > > > > >  [<c013b3d8>] (kthread) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
> > > > > > > > > >  Exception stack(0xde539fb0 to 0xde539ff8)
> > > > > > > > > >  9fa0:                                     00000000 00000000 00000000 00000000
> > > > > > > > > >  9fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
> > > > > > > > > >  9fe0: 00000000 00000000 00000000 00000000 00000013 00000000
> > > > > > > > > >  ---[ end trace 4017fea4906ab391 ]---
> > > > > > > > > >
> > > > > > > > > > But accordingly to Allwinner A33, A64 BSP codes [1] [2] this divider
> > > > > > > > > > is clearly using 'format/lanes' for dsi divider value, dsi_clk.clk_div
> > > > > > > > > >
> > > > > > > > > > Which would compute the pll_freq and set a clock rate for it in
> > > > > > > > > > [3] and [4] respectively.
> > > > > > > > > >
> > > > > > > > > > The same issue has reproduced in A33, A64 with 4-lane and 2-lane devices
> > > > > > > > > > and got fixed with this computation logic 'format/lanes', so this patch
> > > > > > > > > > using dclk min and max dividers as per BSP.
> > > > > > > > > >
> > > > > > > > > > [1] https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L1106
> > > > > > > > > > [2] https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/lowlevel_sun50iw1/disp_al.c#L213
> > > > > > > > > > [3] https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L1127
> > > > > > > > > > [4] https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L1161
> > > > > > > > >
> > > > > > > > > In that mail, I've pointed out that clk_div isn't used for the TCON dclk divider:
> > > > > > > > > http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/629596.html
> > > > > > > > >
> > > > > > > > > The only reply you've sent is that you indeed see that the divider is
> > > > > > > > > set to 4 in the BSP, but you're now saying that the BSP can change
> > > > > > > > > it. If so, then please point exactly the flaw in the explanation in
> > > > > > > > > that mail.
> > > > > > > >
> > > > > > > > Frankly, I have explained these details in commit message and previous
> > > > > > > > version patch[1] with print messages on the code.
> > > > > > > >
> > > > > > > > BSP has tcon_div and dsi_div. dsi_div is dynamic which depends on
> > > > > > > > bpp/lanes and it indeed depends on PLL computation (not tcon_div),
> > > > > > > > anyway I have explained again on this initial link you mentioned.
> > > > > > > > Please have a look and get back.
> > > > > > >
> > > > > > > I'll have a look, thanks.
> > > > > > >
> > > > > > > I've given your patches a try on my setup though, and this patch
> > > > > > > breaks it with vblank timeouts and some horizontal lines that looks
> > > > > > > like what should be displayed, but blinking and on the right of the
> > > > > > > display. The previous ones are fine though.
> > > > > >
> > > > > > Would you please send me the link of panel driver.
> > > > >
> > > > > It's drivers/gpu/drm/panel/panel-ronbo-rb070d30.c
> > > >
> > > > Look like this panel work even w/o any vendor sequence. it's similar
> > > > to the 4-lane panel I have with RGB888, so the dclk div is 6, is it
> > > > working with this divider?
> > >
> > > It works with 4, it doesn't work with 6.
> >
> > Can be the pixel clock with associated timings can make this diff.
> > Would you send me the pixel clock, pll_rate and timings this panel
> > used it from BSP?
>
> This board never had an Allwinner BSP

Running on BSP would help to understand some clue, anyway would you
send me the the value PLL_MIPI register (devme 0x1c20040) on this
board. I'm trying to understand how it value in your case.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
