Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C96E3295CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:28:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cgdi3PrbpEsV/zlPHJGYRcN27TYKGb80OgtH89AtRfM=; b=nbH4tYtzAT38xo
	9xeAEfFrX7f+aSAqzOzFqsxBBBpKFSHLvEtPJC9C8Gld0TyphlhNHpxPwY6qp7A5sjx6JHNivnfDg
	M5Z4S79Yzq46xMNsuM03OJnbe+uHe17x9o/QyIuiKwbAH7QWcoXYxhVLQvWdL5z6uIQnScOudzo4U
	fQsq+qVP/FJ0aIFTMbh9nyN56JkIi9Wlma2BGSLS5TK+RWjHcTdjsgzNJCZMttsPo+ujkV2Yi5HnL
	owbW8CO+0QAWrRNfTwJPVGCfsAaYySKB3+Z6tjFAVn6+fVqLcYKI4+kxq9+jeX8Gxu69YNRR7I2Kc
	a0ppFRLAsEG35cCppwvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU7RB-0002vS-Ik; Fri, 24 May 2019 10:28:33 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU7Pl-0001g1-B8
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:27:27 +0000
Received: by mail-io1-xd44.google.com with SMTP id g16so7347890iom.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 03:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SPlEglQ/6Q3TJ75NagM4QC1DwwrTkTqIVzLkih7YL5c=;
 b=XkPReTF3yJ3Svu28w+MBFecQPonOKoGFfttpuk0FbeISoFJyn7K67PwKQDaIWZA0+D
 s1xLzZbyrktBR0eD+5qW8weCrU31KAosE7QjSM6u07LgYJpkbCiWGqGAOqN8cLh70oyK
 mN2I7FPImruKjWvMGy7vDuGlzmmm7LKYeXeIo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SPlEglQ/6Q3TJ75NagM4QC1DwwrTkTqIVzLkih7YL5c=;
 b=Fz0fux7NevXQwYEJ8phYIFvi7acEANRjxZkI9/OA80j2WSuBwC2Xvh6zDQUEo0iVPw
 rgU6v3p1UnR906lroCb61F8XGHPrTFTniGWAcs6AdC5lx7xC2S6ZlRhrb9eZbbSUXZx0
 F+Vmg/DyohcCGNvBdsvc3vNmBiuovLSiYSM9ot5wttJdX5HdLGjBKSk7941M7WAwVDhM
 Z5rrbvWXRUU9YN1uXp6QbpOYKXATC+Acgq/lStED6mdh5LZuN3hju84uUf+bc6iIYkEG
 83n9yt4S+JFnew0TOAud0z35VX6/3fpgedtBWsUFireOXpTTfNhrjD0C11MopoRZC9Vn
 jmbQ==
X-Gm-Message-State: APjAAAVlgc/9oHInw4pPFOZxCuIJ2ejvIdn+IDLLU32aNeeDYR60nGp2
 C5tHnaSTAQdlixrYePZutAGlwsSIO55pFPppvHcX8Q==
X-Google-Smtp-Source: APXvYqw+blsGn2WGwgkQ+N9T83dKM1bSRawVzCxftgv+tUrJeep+NQHRQwXSjO+NUbeAkm/T4/4928HWN0eo3ydPf8o=
X-Received: by 2002:a5d:9f46:: with SMTP id u6mr44962698iot.297.1558693624522; 
 Fri, 24 May 2019 03:27:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190520090318.27570-1-jagan@amarulasolutions.com>
 <20190520090318.27570-4-jagan@amarulasolutions.com>
 <20190523203836.xy7nmte3ubyxwg27@flea>
In-Reply-To: <20190523203836.xy7nmte3ubyxwg27@flea>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 24 May 2019 15:56:53 +0530
Message-ID: <CAMty3ZA2mZugso_rMy+anp1i1bSL5FtB2mAyN1v_gE3rds0LgA@mail.gmail.com>
Subject: Re: [PATCH v10 03/11] drm/sun4i: dsi: Fix video start delay
 computation
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_032705_967551_E7348BE8 
X-CRM114-Status: GOOD (  15.30  )
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

On Fri, May 24, 2019 at 2:18 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Mon, May 20, 2019 at 02:33:10PM +0530, Jagan Teki wrote:
> > The current code is computing vertical video start delay as
> >
> > delay = mode->vtotal - (mode->vsync_end - mode->vdisplay) + start;
> >
> > On which the second parameter
> >
> > mode->vsync_end - mode->vdisplay = front porch + sync timings
> >
> > according to "DRM kernel-internal display mode structure" in
> > include/drm/drm_modes.h
> >
> > With adding additional sync timings, the desired video start delay
> > value as 510 for "bananapi,s070wv20-ct16" panel timings which indeed
> > trigger panel flip_done timed out as:
> >
> >  WARNING: CPU: 0 PID: 31 at drivers/gpu/drm/drm_atomic_helper.c:1429 drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0
> >  [CRTC:46:crtc-0] vblank wait timed out
> >  Modules linked in:
> >  CPU: 0 PID: 31 Comm: kworker/0:1 Not tainted 5.1.0-next-20190514-00029-g09e5b0ed0a58 #18
> >  Hardware name: Allwinner sun8i Family
> >  Workqueue: events deferred_probe_work_func
> >  [<c010ed54>] (unwind_backtrace) from [<c010b76c>] (show_stack+0x10/0x14)
> >  [<c010b76c>] (show_stack) from [<c0688c70>] (dump_stack+0x84/0x98)
> >  [<c0688c70>] (dump_stack) from [<c011d9e4>] (__warn+0xfc/0x114)
> >  [<c011d9e4>] (__warn) from [<c011da40>] (warn_slowpath_fmt+0x44/0x68)
> >  [<c011da40>] (warn_slowpath_fmt) from [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0)
> >  [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1) from [<c040e694>] (drm_atomic_helper_commit_tail_rpm+0x5c/0x6c)
> >  [<c040e694>] (drm_atomic_helper_commit_tail_rpm) from [<c040e4dc>] (commit_tail+0x40/0x6c)
> >  [<c040e4dc>] (commit_tail) from [<c040e5cc>] (drm_atomic_helper_commit+0xbc/0x128)
> >  [<c040e5cc>] (drm_atomic_helper_commit) from [<c0411b64>] (restore_fbdev_mode_atomic+0x1cc/0x1dc)
> >  [<c0411b64>] (restore_fbdev_mode_atomic) from [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked+0x54/0xa0)
> >  [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked) from [<c0415774>] (drm_fb_helper_set_par+0x30/0x54)
> >  [<c0415774>] (drm_fb_helper_set_par) from [<c03ad450>] (fbcon_init+0x560/0x5ac)
> >  [<c03ad450>] (fbcon_init) from [<c03eb8a0>] (visual_init+0xbc/0x104)
> >  [<c03eb8a0>] (visual_init) from [<c03ed1b8>] (do_bind_con_driver+0x1b0/0x390)
> >  [<c03ed1b8>] (do_bind_con_driver) from [<c03ed780>] (do_take_over_console+0x13c/0x1c4)
> >  [<c03ed780>] (do_take_over_console) from [<c03ad800>] (do_fbcon_takeover+0x74/0xcc)
> >  [<c03ad800>] (do_fbcon_takeover) from [<c013c9c8>] (notifier_call_chain+0x44/0x84)
> >  [<c013c9c8>] (notifier_call_chain) from [<c013cd20>] (__blocking_notifier_call_chain+0x48/0x60)
> >  [<c013cd20>] (__blocking_notifier_call_chain) from [<c013cd50>] (blocking_notifier_call_chain+0x18/0x20)
> >  [<c013cd50>] (blocking_notifier_call_chain) from [<c03a6e44>] (register_framebuffer+0x1e0/0x2f8)
> >  [<c03a6e44>] (register_framebuffer) from [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock+0x2fc/0x50c)
> >  [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock) from [<c04158c8>] (drm_fbdev_client_hotplug+0xe8/0x1b8)
> >  [<c04158c8>] (drm_fbdev_client_hotplug) from [<c0415a20>] (drm_fbdev_generic_setup+0x88/0x118)
> >  [<c0415a20>] (drm_fbdev_generic_setup) from [<c043f060>] (sun4i_drv_bind+0x128/0x160)
> >  [<c043f060>] (sun4i_drv_bind) from [<c044b598>] (try_to_bring_up_master+0x164/0x1a0)
> >  [<c044b598>] (try_to_bring_up_master) from [<c044b668>] (__component_add+0x94/0x140)
> >  [<c044b668>] (__component_add) from [<c0445e1c>] (sun6i_dsi_probe+0x144/0x234)
> >  [<c0445e1c>] (sun6i_dsi_probe) from [<c0452ef4>] (platform_drv_probe+0x48/0x9c)
> >  [<c0452ef4>] (platform_drv_probe) from [<c04512cc>] (really_probe+0x1dc/0x2c8)
> >  [<c04512cc>] (really_probe) from [<c0451518>] (driver_probe_device+0x60/0x160)
> >  [<c0451518>] (driver_probe_device) from [<c044f7a4>] (bus_for_each_drv+0x74/0xb8)
> >  [<c044f7a4>] (bus_for_each_drv) from [<c045107c>] (__device_attach+0xd0/0x13c)
> >  [<c045107c>] (__device_attach) from [<c0450474>] (bus_probe_device+0x84/0x8c)
> >  [<c0450474>] (bus_probe_device) from [<c0450900>] (deferred_probe_work_func+0x64/0x90)
> >  [<c0450900>] (deferred_probe_work_func) from [<c0135970>] (process_one_work+0x204/0x420)
> >  [<c0135970>] (process_one_work) from [<c013690c>] (worker_thread+0x274/0x5a0)
> >  [<c013690c>] (worker_thread) from [<c013b3d8>] (kthread+0x11c/0x14c)
> >  [<c013b3d8>] (kthread) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
> >  Exception stack(0xde539fb0 to 0xde539ff8)
> >  9fa0:                                     00000000 00000000 00000000 00000000
> >  9fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
> >  9fe0: 00000000 00000000 00000000 00000000 00000013 00000000
> >  ---[ end trace 495200a78b24980e ]---
> >  random: fast init done
> >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CRTC:46:crtc-0] flip_done timed out
> >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CONNECTOR:48:DSI-1] flip_done timed out
> >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [PLANE:30:plane-0] flip_done timed out
> >
> > But the expected video start delay value is 513 which states that
> > the second parameter on the computation is "front porch" value
> > (no sync timings included).
> >
> > This is clearly confirmed from the legacy [1] and new [2] bsp codes
> > that the second parameter on the video start delay is "front porch"
> >
> > Here is the detailed evidence for calculating front porch as per
> > bsp code.
> >
> > vfp = panel->lcd_vt - panel->lcd_y - panel->lcd_vbp
> > => (panel->lcd_vt) - panel->lcd_y - panel->lcd_vbp
> > => (tt->ver_front_porch + lcdp->panel_info.lcd_vbp
> >     + lcdp->panel_info.lcd_y) -  panel->lcd_y - panel->lcd_vbp
> > => tt->ver_front_porch
>
> The comment on patch 1 still applies on this patch

Thanks, I have responded on that. Same applies here.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
