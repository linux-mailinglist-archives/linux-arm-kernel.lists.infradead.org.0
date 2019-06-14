Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 186DE454CD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 08:33:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SbPfchHdMFVLOGYPzLLyYkwuqOfc+Qv4YJmgs+f5R3k=; b=FHeWqFflejGOY7
	Bwpej6aVFwPR4g28jZhxwgVf7Gm17yvdMyZ+nYahsNRd8t4uhjZ99kg9dQKQng8ZAtWh3EGYx0pl8
	jCgaOZxWWx215BtFVAyX6cm/qjuFOynaQiRiz+f1q6Kdg/4A4A76yiNcIyEPBsx8dyC52Y99X0S8p
	hrYp36S8udh+fSKME8udKw5N6uE8yVeSVv8DCl+AaV8zzlhLpk4Mnd3/k5c8tmv+5nSwczo6XEmFg
	I5Mf/xHaT4ixqY/g1CYgw0j9sseSfnQcLe2WCv+wLyrh/7A3Zr5ZQfVt6HSPp4LB2OlIFziKb0JP3
	l8DKe21WT7wM32WhEnVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbfmU-0001ny-Vq; Fri, 14 Jun 2019 06:33:47 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbfm9-0001lR-Ux
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 06:33:28 +0000
Received: by mail-io1-xd43.google.com with SMTP id w25so3331937ioc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 23:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BC78yzeE2YVKx79Y2+WiS4iK6WeI4kP4QaEjuFxmzkA=;
 b=LdrNHrf+3Zal1wdOC3nqZSVJTZ1ztZNykMZ180uzsuSvlISU5nSC4VNTxS8zoaOfrO
 hOY0UTpCsxGSV73FXv3vjyCicnC4lkVC/M23gJz9R9s9Nyz4Zw76EARWPGeUB9vRve/I
 SekLQ1rfJUbhW5Es0Pnp2hsgMFL6UaXyKuSso=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BC78yzeE2YVKx79Y2+WiS4iK6WeI4kP4QaEjuFxmzkA=;
 b=K9knwnQUkpmWY++Ma9MrIbupk6/aNvmttHqxY0Y5+N75YwEcOUalKPzlVuQXnFvo/A
 beFg54dB470/s0sB5IgSTNntPVuCvH4f1AwpD4qCfD62BaGbtmF8xqJxZ+PpxYnNErMT
 q6at7mDfz9kVOCY2k44BeSpvr0z+V/ZdhSENZViWw2jdE5iBRr4CF6KnhSVW5EIuM8yF
 G2cO1mN/f3c+vLitHdN85/TbrQ51baV0PNXTI34vdeNHpbirSjIBieLQkvkdHnPedkYF
 l3avtq4uAc8tT64Ew9dTbFUbPJP2rqlGjw7zZUw/LLCA/xZk3e2B7c4Xe1gBjDI9tPoF
 OAaA==
X-Gm-Message-State: APjAAAVwoP5MR8iozhpIh4suCJQPkDnWEwD40iLLBNVRvyUoPUxejMOw
 PHBT28A+Sbqderjem/n5pCkG4xIsDeEaoZNFZXghkw==
X-Google-Smtp-Source: APXvYqweSn0IQ8QqCH4p5EFhvJNln9sfYUgga9RCLvHtMGb5QEWowO29OmcHTwtxMf4b7gjxCBAq/GZXs5jv+MERDZo=
X-Received: by 2002:a02:3308:: with SMTP id c8mr46484238jae.103.1560494004682; 
 Thu, 13 Jun 2019 23:33:24 -0700 (PDT)
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
In-Reply-To: <20190613125630.2b2fvvtvrcjlx4lv@flea>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 14 Jun 2019 12:03:13 +0530
Message-ID: <CAMty3ZCNJK+Wcdw3AXKjUQZTD=PWijq9caNsTzpz+pSEqpUy_A@mail.gmail.com>
Subject: Re: [PATCH v10 01/11] drm/sun4i: dsi: Fix TCON DRQ set bits
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_233326_156059_6516A667 
X-CRM114-Status: GOOD (  26.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Thu, Jun 13, 2019 at 6:56 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Wed, Jun 05, 2019 at 01:17:11PM +0530, Jagan Teki wrote:
> > On Tue, Jun 4, 2019 at 3:30 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > On Wed, May 29, 2019 at 11:44:56PM +0530, Jagan Teki wrote:
> > > > On Wed, May 29, 2019 at 8:24 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > >
> > > > > On Fri, May 24, 2019 at 03:48:51PM +0530, Jagan Teki wrote:
> > > > > > On Fri, May 24, 2019 at 2:04 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > >
> > > > > > > On Mon, May 20, 2019 at 02:33:08PM +0530, Jagan Teki wrote:
> > > > > > > > According to "DRM kernel-internal display mode structure" in
> > > > > > > > include/drm/drm_modes.h the current driver is trying to include
> > > > > > > > sync timings along with front porch value while checking and
> > > > > > > > computing drq set bits in non-burst mode.
> > > > > > > >
> > > > > > > > mode->hsync_end - mode->hdisplay => horizontal front porch + sync
> > > > > > > >
> > > > > > > > With adding additional sync timings, the dsi controller leads to
> > > > > > > > wrong drq set bits for "bananapi,s070wv20-ct16" panel which indeed
> > > > > > > > trigger panel flip_done timed out as:
> > > > > > > >
> > > > > > > >  WARNING: CPU: 0 PID: 31 at drivers/gpu/drm/drm_atomic_helper.c:1429 drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0
> > > > > > > >  [CRTC:46:crtc-0] vblank wait timed out
> > > > > > > >  Modules linked in:
> > > > > > > >  CPU: 0 PID: 31 Comm: kworker/0:1 Not tainted 5.1.0-next-20190514-00026-g01f0c75b902d-dirty #13
> > > > > > > >  Hardware name: Allwinner sun8i Family
> > > > > > > >  Workqueue: events deferred_probe_work_func
> > > > > > > >  [<c010ed54>] (unwind_backtrace) from [<c010b76c>] (show_stack+0x10/0x14)
> > > > > > > >  [<c010b76c>] (show_stack) from [<c0688c70>] (dump_stack+0x84/0x98)
> > > > > > > >  [<c0688c70>] (dump_stack) from [<c011d9e4>] (__warn+0xfc/0x114)
> > > > > > > >  [<c011d9e4>] (__warn) from [<c011da40>] (warn_slowpath_fmt+0x44/0x68)
> > > > > > > >  [<c011da40>] (warn_slowpath_fmt) from [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0)
> > > > > > > >  [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1) from [<c040e694>] (drm_atomic_helper_commit_tail_rpm+0x5c/0x6c)
> > > > > > > >  [<c040e694>] (drm_atomic_helper_commit_tail_rpm) from [<c040e4dc>] (commit_tail+0x40/0x6c)
> > > > > > > >  [<c040e4dc>] (commit_tail) from [<c040e5cc>] (drm_atomic_helper_commit+0xbc/0x128)
> > > > > > > >  [<c040e5cc>] (drm_atomic_helper_commit) from [<c0411b64>] (restore_fbdev_mode_atomic+0x1cc/0x1dc)
> > > > > > > >  [<c0411b64>] (restore_fbdev_mode_atomic) from [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked+0x54/0xa0)
> > > > > > > >  [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked) from [<c0415774>] (drm_fb_helper_set_par+0x30/0x54)
> > > > > > > >  [<c0415774>] (drm_fb_helper_set_par) from [<c03ad450>] (fbcon_init+0x560/0x5ac)
> > > > > > > >  [<c03ad450>] (fbcon_init) from [<c03eb8a0>] (visual_init+0xbc/0x104)
> > > > > > > >  [<c03eb8a0>] (visual_init) from [<c03ed1b8>] (do_bind_con_driver+0x1b0/0x390)
> > > > > > > >  [<c03ed1b8>] (do_bind_con_driver) from [<c03ed780>] (do_take_over_console+0x13c/0x1c4)
> > > > > > > >  [<c03ed780>] (do_take_over_console) from [<c03ad800>] (do_fbcon_takeover+0x74/0xcc)
> > > > > > > >  [<c03ad800>] (do_fbcon_takeover) from [<c013c9c8>] (notifier_call_chain+0x44/0x84)
> > > > > > > >  [<c013c9c8>] (notifier_call_chain) from [<c013cd20>] (__blocking_notifier_call_chain+0x48/0x60)
> > > > > > > >  [<c013cd20>] (__blocking_notifier_call_chain) from [<c013cd50>] (blocking_notifier_call_chain+0x18/0x20)
> > > > > > > >  [<c013cd50>] (blocking_notifier_call_chain) from [<c03a6e44>] (register_framebuffer+0x1e0/0x2f8)
> > > > > > > >  [<c03a6e44>] (register_framebuffer) from [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock+0x2fc/0x50c)
> > > > > > > >  [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock) from [<c04158c8>] (drm_fbdev_client_hotplug+0xe8/0x1b8)
> > > > > > > >  [<c04158c8>] (drm_fbdev_client_hotplug) from [<c0415a20>] (drm_fbdev_generic_setup+0x88/0x118)
> > > > > > > >  [<c0415a20>] (drm_fbdev_generic_setup) from [<c043f060>] (sun4i_drv_bind+0x128/0x160)
> > > > > > > >  [<c043f060>] (sun4i_drv_bind) from [<c044b598>] (try_to_bring_up_master+0x164/0x1a0)
> > > > > > > >  [<c044b598>] (try_to_bring_up_master) from [<c044b668>] (__component_add+0x94/0x140)
> > > > > > > >  [<c044b668>] (__component_add) from [<c0445e1c>] (sun6i_dsi_probe+0x144/0x234)
> > > > > > > >  [<c0445e1c>] (sun6i_dsi_probe) from [<c0452ef4>] (platform_drv_probe+0x48/0x9c)
> > > > > > > >  [<c0452ef4>] (platform_drv_probe) from [<c04512cc>] (really_probe+0x1dc/0x2c8)
> > > > > > > >  [<c04512cc>] (really_probe) from [<c0451518>] (driver_probe_device+0x60/0x160)
> > > > > > > >  [<c0451518>] (driver_probe_device) from [<c044f7a4>] (bus_for_each_drv+0x74/0xb8)
> > > > > > > >  [<c044f7a4>] (bus_for_each_drv) from [<c045107c>] (__device_attach+0xd0/0x13c)
> > > > > > > >  [<c045107c>] (__device_attach) from [<c0450474>] (bus_probe_device+0x84/0x8c)
> > > > > > > >  [<c0450474>] (bus_probe_device) from [<c0450900>] (deferred_probe_work_func+0x64/0x90)
> > > > > > > >  [<c0450900>] (deferred_probe_work_func) from [<c0135970>] (process_one_work+0x204/0x420)
> > > > > > > >  [<c0135970>] (process_one_work) from [<c013690c>] (worker_thread+0x274/0x5a0)
> > > > > > > >  [<c013690c>] (worker_thread) from [<c013b3d8>] (kthread+0x11c/0x14c)
> > > > > > > >  [<c013b3d8>] (kthread) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
> > > > > > > >  Exception stack(0xde539fb0 to 0xde539ff8)
> > > > > > > >  9fa0:                                     00000000 00000000 00000000 00000000
> > > > > > > >  9fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
> > > > > > > >  9fe0: 00000000 00000000 00000000 00000000 00000013 00000000
> > > > > > > >  ---[ end trace b57eb1e5c64c6b8b ]---
> > > > > > > >  random: fast init done
> > > > > > > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CRTC:46:crtc-0] flip_done timed out
> > > > > > > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CONNECTOR:48:DSI-1] flip_done timed out
> > > > > > > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [PLANE:30:plane-0] flip_done timed out
> > > > > > > >
> > > > > > > > But according to Allwinner A33, A64 BSP code [1] [3] the TCON DRQ for
> > > > > > > > non-burst DSI mode can be computed based on "horizontal front porch"
> > > > > > > > value only (no sync timings included).
> > > > > > > >
> > > > > > > > Detailed evidence for drq set bits based on A33 BSP [1] [2]
> > > > > > > >
> > > > > > > > => panel->lcd_ht - panel->lcd_x - panel->lcd_hbp - 20
> > > > > > > > => (tt->hor_front_porch + lcdp->panel_info.lcd_hbp +
> > > > > > > > lcdp->panel_info.lcd_x) - panel->lcd_x - panel->lcd_hbp - 20
> > > > > > > > => tt->hor_front_porch - 20
> > > > > > >
> > > > > > > The thing is, while your explanation on the DRM side is sound,
> > > > > > > Allwinner has been using the hbp field of their panel description to
> > > > > > > store what DRM calls the backporch and the sync period.
> > > > > >
> > > > > > Exactly, hbp = backporch + sync
> > > > > > https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L2046
> > > > > >
> > > > > > And the above computation is rely on that as well. If you can see the
> > > > > > final out of the above computation you can get the front porch value
> > > > > > (w/o sync )
> > > > >
> > > > > As I was saying, you are explaining it well for DRM, but in order for
> > > > > your last formula (the one coming from the BSP) to make sense, you
> > > > > have to explain that the horizontal back porch for Allwinner contains
> > > > > the sync period, otherwise your expansion of lcd_ht doesn't make
> > > > > sense.
> > > >
> > > > I'm not sure why we need to take care of back porch since the formula
> > > > clearly evaluating a result as front porch, without sync timing (as
> > > > current code included this sync), I keep the hbp and trying to
> > > > substitute the lcd_ht value so the end result would cancel hbp.
> > >
> > > Because it changes how lcd_ht expands. In the DRM case, it will expand
> > > to the displayed area, the front porch, the sync period and the back
> > > porch.
> > >
> > > In your case, you expand it to the displayed area, the front porch and
> > > the back porch, precisely because in Allwinner's case, the back porch
> > > has the sync period.
> >
> > I understand the point, but technically it matter about the final
> > computation result.  May be we can even manage the same computation in
> > back porch, but I'm not sure. Since the final output doesn't involve
> > any sync length, why we can include that ie what I'm not sure.
>
> We have the following formula:
> lcd_ht - lcd_x - lcd_hbp - 20
>
> Using the concepts as they are defined in DRM, this expands to:
> x + hbp + hsync + hfp - x - hbp - 20

Here is diff between allwinner hbp vs hbp in DRM.

Say hbp in DRM can call it hbackporch, so

=> x + hbackporch + hsync + hfp - -x - hbp - 20

(and here we need to substitute hbp formula from allwinner since the
actual equation would coming from there
https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L2046)

=> x + hbackporch + hsync + hfp - x - (hbackporch + hsync) - 20
=> x + hbackporch + hsync + hfp - x - hbackporch - hsync - 20
=> hfp - 20

>
> which ends up as
> hsync + hfp - 20
>
> Now, the same formula with how Allwinner defines it:
> x + hbp + hfp - x - hbp - 20
> which ends up as
> hfp - 20

This is true, and same I have explained in commit log. and hbp here is
as per allwinner so we endedup hfp. which is satisfied by above DRM
equation.

>
> So it definitely matters, and the sync period is used in one but not
> the other.

With the above explanation there is no sync included.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
