Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C51AF49F74
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 13:43:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XTAt54vypRmBim+YIuVhb92l3ZCwS9QlJjIzATWDH8o=; b=rgj3US3f+d5B65
	/ZgyPhXDxqT8zVW8j/nXZ1JtkIF6X32LGmo/FViYe+lbhR4Jwc+NoaPIsSify6iWl+3a0CahGLBBr
	TyP6ZWdAW9h5uoVV7l8tXPnovoTS18QyunFX7yScaI2fgCGASEUgpNad+142l7lHvUyokVmt6R3Zg
	pentyQpmC4TEd373EsRRwN07bsdxSS4tCOpswLWpM9WxOodyf12ot5YzCqXNMQBYUHfrJalEMWSV8
	RPeQN3fNm75pDbFKnHQOo6X0mHi4OwbwzxF5FvU0K6zZLjGUKle21DOIdupsXg98znvW0eP1Peueu
	Krvf2TKle3X9GofMdJgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdCWc-000752-Pt; Tue, 18 Jun 2019 11:43:42 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdCWQ-00074c-DD
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 11:43:32 +0000
Received: by mail-ed1-f68.google.com with SMTP id k8so21240303edr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 04:43:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5qGqJdg+wsfVYT2KxKKLL7YQpxY66gkI5/E04j3clEI=;
 b=B6X8re2Xsatf5ay2zMwNGyl3y/Hi7T1bEksBfI45eDuWzJNGorfgq3XH/Yr92gz9+q
 am8oLZakcx5GOSbxMidfy1P2VDFTnDM9ZRcBTPfcjbFv++xR5oDwmhY1OPMuQMqDgkFa
 dUd2OBnfAJQItYckeceJgiJ8ec0yD9yDLzOOPtThKmYiAXorT5EdUH06He4O0dM1WN5A
 W4qjdDW2+kKz+Z3yKXkwST2+P/40/5Tazn+D+33RIVLBxlXALJLu7kYR8WNZaZ+vf18h
 wb9abazEmxwyp3TcxRNh+tQo54xfAuo1niauEaGDV0AsAtBZRM95wIY+mSAEqdV9rufu
 mmdg==
X-Gm-Message-State: APjAAAVX1z+BTJr8zj0siUBRa3z+KJaMWVRMsL7ijldaFFs9241fv0Wj
 ns2Em52j6MNxlUYwNk0lqkhhUuSWNsQ=
X-Google-Smtp-Source: APXvYqzBmCgdKXoIx2+zDg7nNfM0XVyNL/VKRV2L4XkK95O920gInCgx2ikl0vyvsouc8uLkz+jCiA==
X-Received: by 2002:a50:ba28:: with SMTP id
 g37mr103307489edc.109.1560858208549; 
 Tue, 18 Jun 2019 04:43:28 -0700 (PDT)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com.
 [209.85.128.47])
 by smtp.gmail.com with ESMTPSA id h10sm4705609eda.85.2019.06.18.04.43.27
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 04:43:28 -0700 (PDT)
Received: by mail-wm1-f47.google.com with SMTP id z23so2883459wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 04:43:27 -0700 (PDT)
X-Received: by 2002:a1c:a186:: with SMTP id k128mr3320549wme.125.1560858207199; 
 Tue, 18 Jun 2019 04:43:27 -0700 (PDT)
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
In-Reply-To: <CAMty3ZBuKWFKckPt+C=XeXgvSLtYL6uuyy29vw2C89TSiDs15w@mail.gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 18 Jun 2019 19:43:14 +0800
X-Gmail-Original-Message-ID: <CAGb2v679C2PRsEJFo_Q+PbKZXvW3B72T28mUJJDe1Sqarjy36A@mail.gmail.com>
Message-ID: <CAGb2v679C2PRsEJFo_Q+PbKZXvW3B72T28mUJJDe1Sqarjy36A@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v10 01/11] drm/sun4i: dsi: Fix TCON DRQ
 set bits
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_044330_484420_717BDBBB 
X-CRM114-Status: GOOD (  31.43  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

On Tue, Jun 18, 2019 at 6:51 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> On Fri, Jun 14, 2019 at 8:15 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > On Fri, Jun 14, 2019 at 12:03:13PM +0530, Jagan Teki wrote:
> > > On Thu, Jun 13, 2019 at 6:56 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > >
> > > > On Wed, Jun 05, 2019 at 01:17:11PM +0530, Jagan Teki wrote:
> > > > > On Tue, Jun 4, 2019 at 3:30 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > >
> > > > > > On Wed, May 29, 2019 at 11:44:56PM +0530, Jagan Teki wrote:
> > > > > > > On Wed, May 29, 2019 at 8:24 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > > >
> > > > > > > > On Fri, May 24, 2019 at 03:48:51PM +0530, Jagan Teki wrote:
> > > > > > > > > On Fri, May 24, 2019 at 2:04 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > > > > >
> > > > > > > > > > On Mon, May 20, 2019 at 02:33:08PM +0530, Jagan Teki wrote:
> > > > > > > > > > > According to "DRM kernel-internal display mode structure" in
> > > > > > > > > > > include/drm/drm_modes.h the current driver is trying to include
> > > > > > > > > > > sync timings along with front porch value while checking and
> > > > > > > > > > > computing drq set bits in non-burst mode.
> > > > > > > > > > >
> > > > > > > > > > > mode->hsync_end - mode->hdisplay => horizontal front porch + sync
> > > > > > > > > > >
> > > > > > > > > > > With adding additional sync timings, the dsi controller leads to
> > > > > > > > > > > wrong drq set bits for "bananapi,s070wv20-ct16" panel which indeed
> > > > > > > > > > > trigger panel flip_done timed out as:
> > > > > > > > > > >
> > > > > > > > > > >  WARNING: CPU: 0 PID: 31 at drivers/gpu/drm/drm_atomic_helper.c:1429 drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0
> > > > > > > > > > >  [CRTC:46:crtc-0] vblank wait timed out
> > > > > > > > > > >  Modules linked in:
> > > > > > > > > > >  CPU: 0 PID: 31 Comm: kworker/0:1 Not tainted 5.1.0-next-20190514-00026-g01f0c75b902d-dirty #13
> > > > > > > > > > >  Hardware name: Allwinner sun8i Family
> > > > > > > > > > >  Workqueue: events deferred_probe_work_func
> > > > > > > > > > >  [<c010ed54>] (unwind_backtrace) from [<c010b76c>] (show_stack+0x10/0x14)
> > > > > > > > > > >  [<c010b76c>] (show_stack) from [<c0688c70>] (dump_stack+0x84/0x98)
> > > > > > > > > > >  [<c0688c70>] (dump_stack) from [<c011d9e4>] (__warn+0xfc/0x114)
> > > > > > > > > > >  [<c011d9e4>] (__warn) from [<c011da40>] (warn_slowpath_fmt+0x44/0x68)
> > > > > > > > > > >  [<c011da40>] (warn_slowpath_fmt) from [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0)
> > > > > > > > > > >  [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1) from [<c040e694>] (drm_atomic_helper_commit_tail_rpm+0x5c/0x6c)
> > > > > > > > > > >  [<c040e694>] (drm_atomic_helper_commit_tail_rpm) from [<c040e4dc>] (commit_tail+0x40/0x6c)
> > > > > > > > > > >  [<c040e4dc>] (commit_tail) from [<c040e5cc>] (drm_atomic_helper_commit+0xbc/0x128)
> > > > > > > > > > >  [<c040e5cc>] (drm_atomic_helper_commit) from [<c0411b64>] (restore_fbdev_mode_atomic+0x1cc/0x1dc)
> > > > > > > > > > >  [<c0411b64>] (restore_fbdev_mode_atomic) from [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked+0x54/0xa0)
> > > > > > > > > > >  [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked) from [<c0415774>] (drm_fb_helper_set_par+0x30/0x54)
> > > > > > > > > > >  [<c0415774>] (drm_fb_helper_set_par) from [<c03ad450>] (fbcon_init+0x560/0x5ac)
> > > > > > > > > > >  [<c03ad450>] (fbcon_init) from [<c03eb8a0>] (visual_init+0xbc/0x104)
> > > > > > > > > > >  [<c03eb8a0>] (visual_init) from [<c03ed1b8>] (do_bind_con_driver+0x1b0/0x390)
> > > > > > > > > > >  [<c03ed1b8>] (do_bind_con_driver) from [<c03ed780>] (do_take_over_console+0x13c/0x1c4)
> > > > > > > > > > >  [<c03ed780>] (do_take_over_console) from [<c03ad800>] (do_fbcon_takeover+0x74/0xcc)
> > > > > > > > > > >  [<c03ad800>] (do_fbcon_takeover) from [<c013c9c8>] (notifier_call_chain+0x44/0x84)
> > > > > > > > > > >  [<c013c9c8>] (notifier_call_chain) from [<c013cd20>] (__blocking_notifier_call_chain+0x48/0x60)
> > > > > > > > > > >  [<c013cd20>] (__blocking_notifier_call_chain) from [<c013cd50>] (blocking_notifier_call_chain+0x18/0x20)
> > > > > > > > > > >  [<c013cd50>] (blocking_notifier_call_chain) from [<c03a6e44>] (register_framebuffer+0x1e0/0x2f8)
> > > > > > > > > > >  [<c03a6e44>] (register_framebuffer) from [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock+0x2fc/0x50c)
> > > > > > > > > > >  [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock) from [<c04158c8>] (drm_fbdev_client_hotplug+0xe8/0x1b8)
> > > > > > > > > > >  [<c04158c8>] (drm_fbdev_client_hotplug) from [<c0415a20>] (drm_fbdev_generic_setup+0x88/0x118)
> > > > > > > > > > >  [<c0415a20>] (drm_fbdev_generic_setup) from [<c043f060>] (sun4i_drv_bind+0x128/0x160)
> > > > > > > > > > >  [<c043f060>] (sun4i_drv_bind) from [<c044b598>] (try_to_bring_up_master+0x164/0x1a0)
> > > > > > > > > > >  [<c044b598>] (try_to_bring_up_master) from [<c044b668>] (__component_add+0x94/0x140)
> > > > > > > > > > >  [<c044b668>] (__component_add) from [<c0445e1c>] (sun6i_dsi_probe+0x144/0x234)
> > > > > > > > > > >  [<c0445e1c>] (sun6i_dsi_probe) from [<c0452ef4>] (platform_drv_probe+0x48/0x9c)
> > > > > > > > > > >  [<c0452ef4>] (platform_drv_probe) from [<c04512cc>] (really_probe+0x1dc/0x2c8)
> > > > > > > > > > >  [<c04512cc>] (really_probe) from [<c0451518>] (driver_probe_device+0x60/0x160)
> > > > > > > > > > >  [<c0451518>] (driver_probe_device) from [<c044f7a4>] (bus_for_each_drv+0x74/0xb8)
> > > > > > > > > > >  [<c044f7a4>] (bus_for_each_drv) from [<c045107c>] (__device_attach+0xd0/0x13c)
> > > > > > > > > > >  [<c045107c>] (__device_attach) from [<c0450474>] (bus_probe_device+0x84/0x8c)
> > > > > > > > > > >  [<c0450474>] (bus_probe_device) from [<c0450900>] (deferred_probe_work_func+0x64/0x90)
> > > > > > > > > > >  [<c0450900>] (deferred_probe_work_func) from [<c0135970>] (process_one_work+0x204/0x420)
> > > > > > > > > > >  [<c0135970>] (process_one_work) from [<c013690c>] (worker_thread+0x274/0x5a0)
> > > > > > > > > > >  [<c013690c>] (worker_thread) from [<c013b3d8>] (kthread+0x11c/0x14c)
> > > > > > > > > > >  [<c013b3d8>] (kthread) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
> > > > > > > > > > >  Exception stack(0xde539fb0 to 0xde539ff8)
> > > > > > > > > > >  9fa0:                                     00000000 00000000 00000000 00000000
> > > > > > > > > > >  9fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
> > > > > > > > > > >  9fe0: 00000000 00000000 00000000 00000000 00000013 00000000
> > > > > > > > > > >  ---[ end trace b57eb1e5c64c6b8b ]---
> > > > > > > > > > >  random: fast init done
> > > > > > > > > > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CRTC:46:crtc-0] flip_done timed out
> > > > > > > > > > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CONNECTOR:48:DSI-1] flip_done timed out
> > > > > > > > > > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [PLANE:30:plane-0] flip_done timed out
> > > > > > > > > > >
> > > > > > > > > > > But according to Allwinner A33, A64 BSP code [1] [3] the TCON DRQ for
> > > > > > > > > > > non-burst DSI mode can be computed based on "horizontal front porch"
> > > > > > > > > > > value only (no sync timings included).
> > > > > > > > > > >
> > > > > > > > > > > Detailed evidence for drq set bits based on A33 BSP [1] [2]
> > > > > > > > > > >
> > > > > > > > > > > => panel->lcd_ht - panel->lcd_x - panel->lcd_hbp - 20
> > > > > > > > > > > => (tt->hor_front_porch + lcdp->panel_info.lcd_hbp +
> > > > > > > > > > > lcdp->panel_info.lcd_x) - panel->lcd_x - panel->lcd_hbp - 20
> > > > > > > > > > > => tt->hor_front_porch - 20
> > > > > > > > > >
> > > > > > > > > > The thing is, while your explanation on the DRM side is sound,
> > > > > > > > > > Allwinner has been using the hbp field of their panel description to
> > > > > > > > > > store what DRM calls the backporch and the sync period.
> > > > > > > > >
> > > > > > > > > Exactly, hbp = backporch + sync
> > > > > > > > > https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L2046
> > > > > > > > >
> > > > > > > > > And the above computation is rely on that as well. If you can see the
> > > > > > > > > final out of the above computation you can get the front porch value
> > > > > > > > > (w/o sync )
> > > > > > > >
> > > > > > > > As I was saying, you are explaining it well for DRM, but in order for
> > > > > > > > your last formula (the one coming from the BSP) to make sense, you
> > > > > > > > have to explain that the horizontal back porch for Allwinner contains
> > > > > > > > the sync period, otherwise your expansion of lcd_ht doesn't make
> > > > > > > > sense.
> > > > > > >
> > > > > > > I'm not sure why we need to take care of back porch since the formula
> > > > > > > clearly evaluating a result as front porch, without sync timing (as
> > > > > > > current code included this sync), I keep the hbp and trying to
> > > > > > > substitute the lcd_ht value so the end result would cancel hbp.
> > > > > >
> > > > > > Because it changes how lcd_ht expands. In the DRM case, it will expand
> > > > > > to the displayed area, the front porch, the sync period and the back
> > > > > > porch.
> > > > > >
> > > > > > In your case, you expand it to the displayed area, the front porch and
> > > > > > the back porch, precisely because in Allwinner's case, the back porch
> > > > > > has the sync period.
> > > > >
> > > > > I understand the point, but technically it matter about the final
> > > > > computation result.  May be we can even manage the same computation in
> > > > > back porch, but I'm not sure. Since the final output doesn't involve
> > > > > any sync length, why we can include that ie what I'm not sure.
> > > >
> > > > We have the following formula:
> > > > lcd_ht - lcd_x - lcd_hbp - 20
> > > >
> > > > Using the concepts as they are defined in DRM, this expands to:
> > > > x + hbp + hsync + hfp - x - hbp - 20
> > >
> > > Here is diff between allwinner hbp vs hbp in DRM.
> > >
> > > Say hbp in DRM can call it hbackporch, so
> > >
> > > => x + hbackporch + hsync + hfp - -x - hbp - 20
> > >
> > > (and here we need to substitute hbp formula from allwinner since the
> > > actual equation would coming from there
> > > https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L2046)
> >
> > And this is precisely what needs to be said, with an explanation about
> > where that hor_back_porch is being used later on, and what impact it
> > could have.
>
> Yes, it an equation and the mathematical equations can be substitute
> to variety kind I did agree with that, whether you can use hbackporch
> or not or use another-way the final resulting value is equivalent to
> the value of front porch. In that case we can solve based on what I
> explained above. If you still dought me, please run BSP and check the
> resulting value on this check, you can get the front porch value.

Maxime is not doubting you. He is saying that you need to include the
detailed explanation in your commit log, and not just reference pieces
of code. This is separate from the requirement of having a correct patch.

Providing just a mathematical formula isn't enough either, because it
is not clear to the average reader which term expanded into what. A
better way to do is to first provide the definition of each term in
a form easy to understand, such as the following:

    List of LCD parameters as defined by Allwinner, explained using terms
    from the DRM subsystem:

      - lcd_ht: horizontal total size
      - lcd_x: horizontal display size
      - lcd_hbp: horizontal sync + backporch

Or better yet, copy the diagram from drm_modes.h and add lcd_* to the bottom
to show the differences.

    <-------------------------------- lcd_[hv]t ----------------------------->
    <----- lcd_[xy] -------->                  <-------- lcd_[hv]bp --------->

             Active                 Front           Sync           Back
             Region                 Porch                          Porch
    <-----------------------><----------------><-------------><-------------->
      //////////////////////|
     ////////////////////// |
    //////////////////////  |..................               ................
                                               _______________
    <----- [hv]display ----->
    <------------- [hv]sync_start ------------>
    <--------------------- [hv]sync_end --------------------->
    <-------------------------------- [hv]total ----------------------------->


Then you can go on explain what effect the difference in the definition of
"backporch" has on the piece of code you are fixing:

    The DSI driver misinterpreted the hbp term from the BSP code to refer
    only to the backporch, when in fact it was backporch + sync. Thus the
    driver incorrectly used the horizontal front porch plus sync in its
    calculation of the DRQ value, when it should not have included the sync
    period.

The above explains how you came to create your fix. At this point you don't
even need to include the mathematical formulas anymore.

The why you already explained, the flip_done time outs. The result you haven't
explained, but it can be as simple as:

    With the terms fixed, the panel displays correctly without any timeouts.

Hope this explains clearly what is needed in your commit log, and how to make
it easier to understand for other, especially for people either not familiar
with display internals, and/or Allwinner specifics.

Regards
ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
