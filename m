Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B54FE4A07F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 14:14:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ex5tzRqn7wq7LczTbTQ8QSyFx9PXzUDH50XhDKcDa2A=; b=nNCH1bE8/kJ+XU
	RAje5dyBhWPerbPq40mSSNo29VeH+dXklKRKv7bBOy3Ka6ESNGXNaZEh20sx0BdSVp5xPHnCvoq5j
	kNq9ewUr7O+5646qtM08nteUpIF5+BtUGP6fldHIvC7wXZXUrfmMaPp0yppoN6B024xeV2WKypc4j
	Hqui2XVtmimNBOTRFoXlOx31ja9Q94eYSnWxHTDFZVKDYChbVbMQMRI0FPTh8B1CzUowJXl33wEsq
	hMDmJfsoRiqgzjYI9V0Rx5nFi8K05cMJugdFxAnrh9DNTHVjkzRMM42RWW9ox+GzdINkulQs/aj3N
	B1pq+w/xuiMYtxZ7LkBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdD0F-0008SM-BE; Tue, 18 Jun 2019 12:14:19 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdCxa-0006BF-Hc
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 12:11:41 +0000
Received: by mail-io1-xd41.google.com with SMTP id i10so29067458iol.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 05:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GNPGhjWJHOLzOkbl9lCqWVRXIVmKM0uXwguKO+vbDgs=;
 b=cSP4k/0u1aTAAQANg5eN7YI4rd0uqAL4f6jnx0+hHDGcTrZIfpf40Zts77CZzSQCKY
 zIfS5Ryh4nJ5DBXfEMqFSbGjNQRQRzrKn7D4sDsExdBZ6rrAOrPF6APIRBVP1urh/bak
 n8/yTuBMGIl4tixWiL+u+Jax76FB/3yXBoj1U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GNPGhjWJHOLzOkbl9lCqWVRXIVmKM0uXwguKO+vbDgs=;
 b=ftI2RWJuTG0lK0CwI0aAzXf0zpxOIYkOOHjVAxi4xlnthMJv8Su8iExDqWUqB7gHmt
 QZZLLkz+z/Kk0xJmrLbtaWNXG/avhusrW/hQ8puBrd+qfkq6LKs0adukzvIh2wZAUH7m
 1RG+p5vMn5/oBrjmF6DHVjFLz/iR0G2nP+CClCtfms3b3/ArqacVhnyCsdkoUS6AqwJV
 H2xz1ZZVyA6n3C0SfU1lXIFQvcKtFTZmRcUWRHKsKms73tX3ONsENA2ak2zOc91XcMXN
 IzE2Y4tSm1m4sJ0oqJHoFYGC8QpX0gLdWIaRrH9KgtZ0HsZUBNrlzizhOIRLfhT18rHm
 OY1A==
X-Gm-Message-State: APjAAAU98szfuFNBQ16TiAbw7CMcKi12MaHrNygJzgXGIRfgRnZ1s4bi
 rkboQVo2bNKdXWYkUqYyar7ZHNmUbi++J6xjPKyQiw==
X-Google-Smtp-Source: APXvYqzr2Tdcu2GVLmZ8p7/TLACM5iFYl2kLI4oydjLQ8MpA2buxSd5zFYvqVyAKlnqxrXPGTCN7rc1k26SFgOoZ7M0=
X-Received: by 2002:a6b:6b14:: with SMTP id g20mr7364793ioc.28.1560859892561; 
 Tue, 18 Jun 2019 05:11:32 -0700 (PDT)
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
 <CAMty3ZBuKWFKckPt+C=XeXgvSLtYL6uuyy29vw2C89TSiDs15w@mail.gmail.com>
 <CAGb2v679C2PRsEJFo_Q+PbKZXvW3B72T28mUJJDe1Sqarjy36A@mail.gmail.com>
In-Reply-To: <CAGb2v679C2PRsEJFo_Q+PbKZXvW3B72T28mUJJDe1Sqarjy36A@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 18 Jun 2019 17:41:20 +0530
Message-ID: <CAMty3ZANkmf=ih4snh1xCLxJaFvPoBPvzpD=aZQCiuSM004UVw@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v10 01/11] drm/sun4i: dsi: Fix TCON DRQ
 set bits
To: Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_051135_237220_C651C192 
X-CRM114-Status: GOOD (  31.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
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
Cc: Bhushan Shah <bshah@mykolab.com>,
 =?UTF-8?B?5Z2a5a6a5YmN6KGM?= <powerpan@qq.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 5:13 PM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Tue, Jun 18, 2019 at 6:51 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> >
> > On Fri, Jun 14, 2019 at 8:15 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > On Fri, Jun 14, 2019 at 12:03:13PM +0530, Jagan Teki wrote:
> > > > On Thu, Jun 13, 2019 at 6:56 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > >
> > > > > On Wed, Jun 05, 2019 at 01:17:11PM +0530, Jagan Teki wrote:
> > > > > > On Tue, Jun 4, 2019 at 3:30 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > >
> > > > > > > On Wed, May 29, 2019 at 11:44:56PM +0530, Jagan Teki wrote:
> > > > > > > > On Wed, May 29, 2019 at 8:24 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > > > >
> > > > > > > > > On Fri, May 24, 2019 at 03:48:51PM +0530, Jagan Teki wrote:
> > > > > > > > > > On Fri, May 24, 2019 at 2:04 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > > > > > >
> > > > > > > > > > > On Mon, May 20, 2019 at 02:33:08PM +0530, Jagan Teki wrote:
> > > > > > > > > > > > According to "DRM kernel-internal display mode structure" in
> > > > > > > > > > > > include/drm/drm_modes.h the current driver is trying to include
> > > > > > > > > > > > sync timings along with front porch value while checking and
> > > > > > > > > > > > computing drq set bits in non-burst mode.
> > > > > > > > > > > >
> > > > > > > > > > > > mode->hsync_end - mode->hdisplay => horizontal front porch + sync
> > > > > > > > > > > >
> > > > > > > > > > > > With adding additional sync timings, the dsi controller leads to
> > > > > > > > > > > > wrong drq set bits for "bananapi,s070wv20-ct16" panel which indeed
> > > > > > > > > > > > trigger panel flip_done timed out as:
> > > > > > > > > > > >
> > > > > > > > > > > >  WARNING: CPU: 0 PID: 31 at drivers/gpu/drm/drm_atomic_helper.c:1429 drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0
> > > > > > > > > > > >  [CRTC:46:crtc-0] vblank wait timed out
> > > > > > > > > > > >  Modules linked in:
> > > > > > > > > > > >  CPU: 0 PID: 31 Comm: kworker/0:1 Not tainted 5.1.0-next-20190514-00026-g01f0c75b902d-dirty #13
> > > > > > > > > > > >  Hardware name: Allwinner sun8i Family
> > > > > > > > > > > >  Workqueue: events deferred_probe_work_func
> > > > > > > > > > > >  [<c010ed54>] (unwind_backtrace) from [<c010b76c>] (show_stack+0x10/0x14)
> > > > > > > > > > > >  [<c010b76c>] (show_stack) from [<c0688c70>] (dump_stack+0x84/0x98)
> > > > > > > > > > > >  [<c0688c70>] (dump_stack) from [<c011d9e4>] (__warn+0xfc/0x114)
> > > > > > > > > > > >  [<c011d9e4>] (__warn) from [<c011da40>] (warn_slowpath_fmt+0x44/0x68)
> > > > > > > > > > > >  [<c011da40>] (warn_slowpath_fmt) from [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0)
> > > > > > > > > > > >  [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1) from [<c040e694>] (drm_atomic_helper_commit_tail_rpm+0x5c/0x6c)
> > > > > > > > > > > >  [<c040e694>] (drm_atomic_helper_commit_tail_rpm) from [<c040e4dc>] (commit_tail+0x40/0x6c)
> > > > > > > > > > > >  [<c040e4dc>] (commit_tail) from [<c040e5cc>] (drm_atomic_helper_commit+0xbc/0x128)
> > > > > > > > > > > >  [<c040e5cc>] (drm_atomic_helper_commit) from [<c0411b64>] (restore_fbdev_mode_atomic+0x1cc/0x1dc)
> > > > > > > > > > > >  [<c0411b64>] (restore_fbdev_mode_atomic) from [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked+0x54/0xa0)
> > > > > > > > > > > >  [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked) from [<c0415774>] (drm_fb_helper_set_par+0x30/0x54)
> > > > > > > > > > > >  [<c0415774>] (drm_fb_helper_set_par) from [<c03ad450>] (fbcon_init+0x560/0x5ac)
> > > > > > > > > > > >  [<c03ad450>] (fbcon_init) from [<c03eb8a0>] (visual_init+0xbc/0x104)
> > > > > > > > > > > >  [<c03eb8a0>] (visual_init) from [<c03ed1b8>] (do_bind_con_driver+0x1b0/0x390)
> > > > > > > > > > > >  [<c03ed1b8>] (do_bind_con_driver) from [<c03ed780>] (do_take_over_console+0x13c/0x1c4)
> > > > > > > > > > > >  [<c03ed780>] (do_take_over_console) from [<c03ad800>] (do_fbcon_takeover+0x74/0xcc)
> > > > > > > > > > > >  [<c03ad800>] (do_fbcon_takeover) from [<c013c9c8>] (notifier_call_chain+0x44/0x84)
> > > > > > > > > > > >  [<c013c9c8>] (notifier_call_chain) from [<c013cd20>] (__blocking_notifier_call_chain+0x48/0x60)
> > > > > > > > > > > >  [<c013cd20>] (__blocking_notifier_call_chain) from [<c013cd50>] (blocking_notifier_call_chain+0x18/0x20)
> > > > > > > > > > > >  [<c013cd50>] (blocking_notifier_call_chain) from [<c03a6e44>] (register_framebuffer+0x1e0/0x2f8)
> > > > > > > > > > > >  [<c03a6e44>] (register_framebuffer) from [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock+0x2fc/0x50c)
> > > > > > > > > > > >  [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock) from [<c04158c8>] (drm_fbdev_client_hotplug+0xe8/0x1b8)
> > > > > > > > > > > >  [<c04158c8>] (drm_fbdev_client_hotplug) from [<c0415a20>] (drm_fbdev_generic_setup+0x88/0x118)
> > > > > > > > > > > >  [<c0415a20>] (drm_fbdev_generic_setup) from [<c043f060>] (sun4i_drv_bind+0x128/0x160)
> > > > > > > > > > > >  [<c043f060>] (sun4i_drv_bind) from [<c044b598>] (try_to_bring_up_master+0x164/0x1a0)
> > > > > > > > > > > >  [<c044b598>] (try_to_bring_up_master) from [<c044b668>] (__component_add+0x94/0x140)
> > > > > > > > > > > >  [<c044b668>] (__component_add) from [<c0445e1c>] (sun6i_dsi_probe+0x144/0x234)
> > > > > > > > > > > >  [<c0445e1c>] (sun6i_dsi_probe) from [<c0452ef4>] (platform_drv_probe+0x48/0x9c)
> > > > > > > > > > > >  [<c0452ef4>] (platform_drv_probe) from [<c04512cc>] (really_probe+0x1dc/0x2c8)
> > > > > > > > > > > >  [<c04512cc>] (really_probe) from [<c0451518>] (driver_probe_device+0x60/0x160)
> > > > > > > > > > > >  [<c0451518>] (driver_probe_device) from [<c044f7a4>] (bus_for_each_drv+0x74/0xb8)
> > > > > > > > > > > >  [<c044f7a4>] (bus_for_each_drv) from [<c045107c>] (__device_attach+0xd0/0x13c)
> > > > > > > > > > > >  [<c045107c>] (__device_attach) from [<c0450474>] (bus_probe_device+0x84/0x8c)
> > > > > > > > > > > >  [<c0450474>] (bus_probe_device) from [<c0450900>] (deferred_probe_work_func+0x64/0x90)
> > > > > > > > > > > >  [<c0450900>] (deferred_probe_work_func) from [<c0135970>] (process_one_work+0x204/0x420)
> > > > > > > > > > > >  [<c0135970>] (process_one_work) from [<c013690c>] (worker_thread+0x274/0x5a0)
> > > > > > > > > > > >  [<c013690c>] (worker_thread) from [<c013b3d8>] (kthread+0x11c/0x14c)
> > > > > > > > > > > >  [<c013b3d8>] (kthread) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
> > > > > > > > > > > >  Exception stack(0xde539fb0 to 0xde539ff8)
> > > > > > > > > > > >  9fa0:                                     00000000 00000000 00000000 00000000
> > > > > > > > > > > >  9fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
> > > > > > > > > > > >  9fe0: 00000000 00000000 00000000 00000000 00000013 00000000
> > > > > > > > > > > >  ---[ end trace b57eb1e5c64c6b8b ]---
> > > > > > > > > > > >  random: fast init done
> > > > > > > > > > > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CRTC:46:crtc-0] flip_done timed out
> > > > > > > > > > > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CONNECTOR:48:DSI-1] flip_done timed out
> > > > > > > > > > > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [PLANE:30:plane-0] flip_done timed out
> > > > > > > > > > > >
> > > > > > > > > > > > But according to Allwinner A33, A64 BSP code [1] [3] the TCON DRQ for
> > > > > > > > > > > > non-burst DSI mode can be computed based on "horizontal front porch"
> > > > > > > > > > > > value only (no sync timings included).
> > > > > > > > > > > >
> > > > > > > > > > > > Detailed evidence for drq set bits based on A33 BSP [1] [2]
> > > > > > > > > > > >
> > > > > > > > > > > > => panel->lcd_ht - panel->lcd_x - panel->lcd_hbp - 20
> > > > > > > > > > > > => (tt->hor_front_porch + lcdp->panel_info.lcd_hbp +
> > > > > > > > > > > > lcdp->panel_info.lcd_x) - panel->lcd_x - panel->lcd_hbp - 20
> > > > > > > > > > > > => tt->hor_front_porch - 20
> > > > > > > > > > >
> > > > > > > > > > > The thing is, while your explanation on the DRM side is sound,
> > > > > > > > > > > Allwinner has been using the hbp field of their panel description to
> > > > > > > > > > > store what DRM calls the backporch and the sync period.
> > > > > > > > > >
> > > > > > > > > > Exactly, hbp = backporch + sync
> > > > > > > > > > https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L2046
> > > > > > > > > >
> > > > > > > > > > And the above computation is rely on that as well. If you can see the
> > > > > > > > > > final out of the above computation you can get the front porch value
> > > > > > > > > > (w/o sync )
> > > > > > > > >
> > > > > > > > > As I was saying, you are explaining it well for DRM, but in order for
> > > > > > > > > your last formula (the one coming from the BSP) to make sense, you
> > > > > > > > > have to explain that the horizontal back porch for Allwinner contains
> > > > > > > > > the sync period, otherwise your expansion of lcd_ht doesn't make
> > > > > > > > > sense.
> > > > > > > >
> > > > > > > > I'm not sure why we need to take care of back porch since the formula
> > > > > > > > clearly evaluating a result as front porch, without sync timing (as
> > > > > > > > current code included this sync), I keep the hbp and trying to
> > > > > > > > substitute the lcd_ht value so the end result would cancel hbp.
> > > > > > >
> > > > > > > Because it changes how lcd_ht expands. In the DRM case, it will expand
> > > > > > > to the displayed area, the front porch, the sync period and the back
> > > > > > > porch.
> > > > > > >
> > > > > > > In your case, you expand it to the displayed area, the front porch and
> > > > > > > the back porch, precisely because in Allwinner's case, the back porch
> > > > > > > has the sync period.
> > > > > >
> > > > > > I understand the point, but technically it matter about the final
> > > > > > computation result.  May be we can even manage the same computation in
> > > > > > back porch, but I'm not sure. Since the final output doesn't involve
> > > > > > any sync length, why we can include that ie what I'm not sure.
> > > > >
> > > > > We have the following formula:
> > > > > lcd_ht - lcd_x - lcd_hbp - 20
> > > > >
> > > > > Using the concepts as they are defined in DRM, this expands to:
> > > > > x + hbp + hsync + hfp - x - hbp - 20
> > > >
> > > > Here is diff between allwinner hbp vs hbp in DRM.
> > > >
> > > > Say hbp in DRM can call it hbackporch, so
> > > >
> > > > => x + hbackporch + hsync + hfp - -x - hbp - 20
> > > >
> > > > (and here we need to substitute hbp formula from allwinner since the
> > > > actual equation would coming from there
> > > > https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L2046)
> > >
> > > And this is precisely what needs to be said, with an explanation about
> > > where that hor_back_porch is being used later on, and what impact it
> > > could have.
> >
> > Yes, it an equation and the mathematical equations can be substitute
> > to variety kind I did agree with that, whether you can use hbackporch
> > or not or use another-way the final resulting value is equivalent to
> > the value of front porch. In that case we can solve based on what I
> > explained above. If you still dought me, please run BSP and check the
> > resulting value on this check, you can get the front porch value.
>
> Maxime is not doubting you. He is saying that you need to include the
> detailed explanation in your commit log, and not just reference pieces
> of code. This is separate from the requirement of having a correct patch.
>
> Providing just a mathematical formula isn't enough either, because it
> is not clear to the average reader which term expanded into what. A

Not sure whether you see my commit log on this version or not. Each
one has it's own way of providing the details and explanation and at
the end people in ML should understand it. I'm not proving a simple
formula here (like I did it in initial version) instead I'm giving all
the respective information along with the bug log, and the bsp links
where it comes from etc. This is easier way for everyone to
understand.

Just a bit to explain what I've mentioned in the log.

Paragraph 1:

"
According to "DRM kernel-internal display mode structure" in
include/drm/drm_modes.h the current driver is trying to include
sync timings along with front porch value while checking and
computing drq set bits in non-burst mode.

mode->hsync_end - mode->hdisplay => horizontal front porch + sync
"

This paragraph explains what the existing code is using according to
DRM, which indeed help new users to understand by providing
include/drm/drm_modes.h file.

Paragraph 2:

"
With adding additional sync timings, the dsi controller leads to
wrong drq set bits for "bananapi,s070wv20-ct16" panel which indeed
trigger panel flip_done timed out as:
"

This paragraph explains what is the relevant issue with existing change.

Paragraph 3:

BUG or WARNING log

Paragraph 4:

"
But according to Allwinner A33, A64 BSP code [1] [3] the TCON DRQ for
non-burst DSI mode can be computed based on "horizontal front porch"
value only (no sync timings included).
"

This paragraph explains what is BSP is using compared with mainline.

Paragraph 5:

"
Detailed evidence for drq set bits based on A33 BSP [1] [2]

=> panel->lcd_ht - panel->lcd_x - panel->lcd_hbp - 20
=> (tt->hor_front_porch + lcdp->panel_info.lcd_hbp +
lcdp->panel_info.lcd_x) - panel->lcd_x - panel->lcd_hbp - 20
=> tt->hor_front_porch - 20
"

This paragraph explains the detailed steps of equation evaluation by
providing BSP links.

Paragraph 6:

"
Which is mode->hsync_start - mode->hdisplay as per
"DRM kernel-internal display mode structure" in include/drm/drm_modes.h
"

This paragraph give fix details in according to Linux DRM.

So, all the explanation which I'm trying to provide here will help to
understand, what is the issue with existing code and BUG log, how it
handle in BSP, with justification of equations and links where it
refers. Please note that I'm providing bug log and before that I've
mentioned this timeout because of additional sync. why is the timeout
with additional sync time, which I'm unaware since we don't have
associated datasheets for this but we have working BSP's to prove
that.

Frankly, I still didn't understand what I missed here to explain the
issue. request for help if you see any issues on this format or
information.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
