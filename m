Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7345749EA0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 12:51:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tGt5tL6PmWiQ5DI/I3mqLlbAY1Ug7CPHhg1QXiTXB7k=; b=XXSPalQxRpFfWv
	KfzZGUCbQPNr3055gtb6qjw7yeHTaJ51onw6F/u2BKGsVg0VhCi+bLEj21gZuovgmPtXsS9oBx/8R
	PDYC1fif++IZXwCU2iwwe+F+67z5lVokU8ZBdRSNrObi5SQ8oluXqqB6v+aESxMcvRjG84A1k/AAe
	3mUjA/cEC9X7qe4Xrht4ayymdwqMKsOjitJVpJBFAZDS4T01crq90tQcEjCCylcD4Do2N3281POqU
	M28iG5oy1MmzSeRkRnZB17Gix7KzS6iy+2evRUmBqKBm3xBRaLNOz9AZl3WD6WUiH9miQ6L6Yl2bq
	CriQoW3v2vZit35XnnBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdBiE-0001zN-ND; Tue, 18 Jun 2019 10:51:38 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdBi1-0001yr-6e
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 10:51:27 +0000
Received: by mail-io1-xd44.google.com with SMTP id s7so28575262iob.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 03:51:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RKl1D/a6HsF6fI7h5WcfQlEqvLDlSMotWsZrkby5a0I=;
 b=XqJay6RSaa/d/2T4rPebrCHmJ2LVCM+Nvb271F8G46i7GrNrjY5YdOf+yEbfgO9Ygp
 HRczzvh4gIJjd9HyOOHBTU/LTLL9Kc0LUmJ/qG//C2sU6Dp6rWuhRtPnDx+Di6J/xlUF
 LKi7tbW74mimwai/0Por7clgAfSnGleYJq10w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RKl1D/a6HsF6fI7h5WcfQlEqvLDlSMotWsZrkby5a0I=;
 b=f2wff6zSSkWJREVsh8F4OlYw7uhw2NpNwG0v7vGJRShH2lUHdq1CI23cA5njqFnO9q
 /G0+xMTMNGWJ4BVjtVB0NNgnp1iQJ4MU6hZ9LzwnBnE7s1rSf+6c3kr7lSRig0097hON
 xlznEylsdtLf2DRsokCZyjgmCaKTX7lJwD2klvmEIyh5bHrIxDKlqf6v9YrHZkmr6gI7
 9THa3qUDufsljTEeAIhKkfEqzz80HJmj9RD5/0H9RRBlnjIac8QqYaHTXIhvvNti0Kwz
 5THxd9kMNADd6c/Ggq0DN2PB4Pwj6NPMyPtCbUuoIkor2CFFqiJvzopWpYEliQ1mJ9D7
 fJLA==
X-Gm-Message-State: APjAAAURy+HZuOV70mVU00Kz1TSsh4xUrHMw2Sk7O0xsQXtaybZVsvPs
 ghhSxPTLojQ8Zyw2gl3Jf/Q5p63aP4LcFRTNzm+kSg==
X-Google-Smtp-Source: APXvYqwdW4hrJWNY7ujUT18HEQ9kKAtHprUBFCuev2uwpiY9XzMuFWrJkql/YppzVxKwwzPhsFvuV6PNQNq5YL1I/eQ=
X-Received: by 2002:a05:6602:2253:: with SMTP id
 o19mr35617163ioo.297.1560855084081; 
 Tue, 18 Jun 2019 03:51:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190520090318.27570-1-jagan@amarulasolutions.com>
 <20190520090318.27570-2-jagan@amarulasolutions.com>
 <20190523203407.o5obg2wtj7wwau6a@flea>
 <CAMty3ZDDYEOvSbi7kmacjJZS6f3whpaGd4xsf4OUkXmBbTE3Qg@mail.gmail.com>
 <20190529145450.qnitxpmpr2a2xemk@flea>
 <CAMty3ZB89cPc8AycFPuNTfPC1dot4cNgN87v+rtQVW2zQh8uZg@mail.gmail.com>
 <20190604100011.cqkhpwmmmwh3vr3y@flea>
 <CAMty3ZAFdg1Ow8ececmqF2L0ckitkLdqUPmME3fGBoOaP32kzA@mail.gmail.com>
 <20190613125630.2b2fvvtvrcjlx4lv@flea>
 <CAMty3ZCNJK+Wcdw3AXKjUQZTD=PWijq9caNsTzpz+pSEqpUy_A@mail.gmail.com>
 <20190614144526.lorg3saj4wjopgne@flea>
In-Reply-To: <20190614144526.lorg3saj4wjopgne@flea>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 18 Jun 2019 16:21:13 +0530
Message-ID: <CAMty3ZBuKWFKckPt+C=XeXgvSLtYL6uuyy29vw2C89TSiDs15w@mail.gmail.com>
Subject: Re: [PATCH v10 01/11] drm/sun4i: dsi: Fix TCON DRQ set bits
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_035125_697050_2986A86B 
X-CRM114-Status: GOOD (  29.01  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Fri, Jun 14, 2019 at 8:15 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Fri, Jun 14, 2019 at 12:03:13PM +0530, Jagan Teki wrote:
> > On Thu, Jun 13, 2019 at 6:56 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > On Wed, Jun 05, 2019 at 01:17:11PM +0530, Jagan Teki wrote:
> > > > On Tue, Jun 4, 2019 at 3:30 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > >
> > > > > On Wed, May 29, 2019 at 11:44:56PM +0530, Jagan Teki wrote:
> > > > > > On Wed, May 29, 2019 at 8:24 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > >
> > > > > > > On Fri, May 24, 2019 at 03:48:51PM +0530, Jagan Teki wrote:
> > > > > > > > On Fri, May 24, 2019 at 2:04 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > > > >
> > > > > > > > > On Mon, May 20, 2019 at 02:33:08PM +0530, Jagan Teki wrote:
> > > > > > > > > > According to "DRM kernel-internal display mode structure" in
> > > > > > > > > > include/drm/drm_modes.h the current driver is trying to include
> > > > > > > > > > sync timings along with front porch value while checking and
> > > > > > > > > > computing drq set bits in non-burst mode.
> > > > > > > > > >
> > > > > > > > > > mode->hsync_end - mode->hdisplay => horizontal front porch + sync
> > > > > > > > > >
> > > > > > > > > > With adding additional sync timings, the dsi controller leads to
> > > > > > > > > > wrong drq set bits for "bananapi,s070wv20-ct16" panel which indeed
> > > > > > > > > > trigger panel flip_done timed out as:
> > > > > > > > > >
> > > > > > > > > >  WARNING: CPU: 0 PID: 31 at drivers/gpu/drm/drm_atomic_helper.c:1429 drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0
> > > > > > > > > >  [CRTC:46:crtc-0] vblank wait timed out
> > > > > > > > > >  Modules linked in:
> > > > > > > > > >  CPU: 0 PID: 31 Comm: kworker/0:1 Not tainted 5.1.0-next-20190514-00026-g01f0c75b902d-dirty #13
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
> > > > > > > > > >  [<c043f060>] (sun4i_drv_bind) from [<c044b598>] (try_to_bring_up_master+0x164/0x1a0)
> > > > > > > > > >  [<c044b598>] (try_to_bring_up_master) from [<c044b668>] (__component_add+0x94/0x140)
> > > > > > > > > >  [<c044b668>] (__component_add) from [<c0445e1c>] (sun6i_dsi_probe+0x144/0x234)
> > > > > > > > > >  [<c0445e1c>] (sun6i_dsi_probe) from [<c0452ef4>] (platform_drv_probe+0x48/0x9c)
> > > > > > > > > >  [<c0452ef4>] (platform_drv_probe) from [<c04512cc>] (really_probe+0x1dc/0x2c8)
> > > > > > > > > >  [<c04512cc>] (really_probe) from [<c0451518>] (driver_probe_device+0x60/0x160)
> > > > > > > > > >  [<c0451518>] (driver_probe_device) from [<c044f7a4>] (bus_for_each_drv+0x74/0xb8)
> > > > > > > > > >  [<c044f7a4>] (bus_for_each_drv) from [<c045107c>] (__device_attach+0xd0/0x13c)
> > > > > > > > > >  [<c045107c>] (__device_attach) from [<c0450474>] (bus_probe_device+0x84/0x8c)
> > > > > > > > > >  [<c0450474>] (bus_probe_device) from [<c0450900>] (deferred_probe_work_func+0x64/0x90)
> > > > > > > > > >  [<c0450900>] (deferred_probe_work_func) from [<c0135970>] (process_one_work+0x204/0x420)
> > > > > > > > > >  [<c0135970>] (process_one_work) from [<c013690c>] (worker_thread+0x274/0x5a0)
> > > > > > > > > >  [<c013690c>] (worker_thread) from [<c013b3d8>] (kthread+0x11c/0x14c)
> > > > > > > > > >  [<c013b3d8>] (kthread) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
> > > > > > > > > >  Exception stack(0xde539fb0 to 0xde539ff8)
> > > > > > > > > >  9fa0:                                     00000000 00000000 00000000 00000000
> > > > > > > > > >  9fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
> > > > > > > > > >  9fe0: 00000000 00000000 00000000 00000000 00000013 00000000
> > > > > > > > > >  ---[ end trace b57eb1e5c64c6b8b ]---
> > > > > > > > > >  random: fast init done
> > > > > > > > > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CRTC:46:crtc-0] flip_done timed out
> > > > > > > > > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CONNECTOR:48:DSI-1] flip_done timed out
> > > > > > > > > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [PLANE:30:plane-0] flip_done timed out
> > > > > > > > > >
> > > > > > > > > > But according to Allwinner A33, A64 BSP code [1] [3] the TCON DRQ for
> > > > > > > > > > non-burst DSI mode can be computed based on "horizontal front porch"
> > > > > > > > > > value only (no sync timings included).
> > > > > > > > > >
> > > > > > > > > > Detailed evidence for drq set bits based on A33 BSP [1] [2]
> > > > > > > > > >
> > > > > > > > > > => panel->lcd_ht - panel->lcd_x - panel->lcd_hbp - 20
> > > > > > > > > > => (tt->hor_front_porch + lcdp->panel_info.lcd_hbp +
> > > > > > > > > > lcdp->panel_info.lcd_x) - panel->lcd_x - panel->lcd_hbp - 20
> > > > > > > > > > => tt->hor_front_porch - 20
> > > > > > > > >
> > > > > > > > > The thing is, while your explanation on the DRM side is sound,
> > > > > > > > > Allwinner has been using the hbp field of their panel description to
> > > > > > > > > store what DRM calls the backporch and the sync period.
> > > > > > > >
> > > > > > > > Exactly, hbp = backporch + sync
> > > > > > > > https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L2046
> > > > > > > >
> > > > > > > > And the above computation is rely on that as well. If you can see the
> > > > > > > > final out of the above computation you can get the front porch value
> > > > > > > > (w/o sync )
> > > > > > >
> > > > > > > As I was saying, you are explaining it well for DRM, but in order for
> > > > > > > your last formula (the one coming from the BSP) to make sense, you
> > > > > > > have to explain that the horizontal back porch for Allwinner contains
> > > > > > > the sync period, otherwise your expansion of lcd_ht doesn't make
> > > > > > > sense.
> > > > > >
> > > > > > I'm not sure why we need to take care of back porch since the formula
> > > > > > clearly evaluating a result as front porch, without sync timing (as
> > > > > > current code included this sync), I keep the hbp and trying to
> > > > > > substitute the lcd_ht value so the end result would cancel hbp.
> > > > >
> > > > > Because it changes how lcd_ht expands. In the DRM case, it will expand
> > > > > to the displayed area, the front porch, the sync period and the back
> > > > > porch.
> > > > >
> > > > > In your case, you expand it to the displayed area, the front porch and
> > > > > the back porch, precisely because in Allwinner's case, the back porch
> > > > > has the sync period.
> > > >
> > > > I understand the point, but technically it matter about the final
> > > > computation result.  May be we can even manage the same computation in
> > > > back porch, but I'm not sure. Since the final output doesn't involve
> > > > any sync length, why we can include that ie what I'm not sure.
> > >
> > > We have the following formula:
> > > lcd_ht - lcd_x - lcd_hbp - 20
> > >
> > > Using the concepts as they are defined in DRM, this expands to:
> > > x + hbp + hsync + hfp - x - hbp - 20
> >
> > Here is diff between allwinner hbp vs hbp in DRM.
> >
> > Say hbp in DRM can call it hbackporch, so
> >
> > => x + hbackporch + hsync + hfp - -x - hbp - 20
> >
> > (and here we need to substitute hbp formula from allwinner since the
> > actual equation would coming from there
> > https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L2046)
>
> And this is precisely what needs to be said, with an explanation about
> where that hor_back_porch is being used later on, and what impact it
> could have.

Yes, it an equation and the mathematical equations can be substitute
to variety kind I did agree with that, whether you can use hbackporch
or not or use another-way the final resulting value is equivalent to
the value of front porch. In that case we can solve based on what I
explained above. If you still dought me, please run BSP and check the
resulting value on this check, you can get the front porch value.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
