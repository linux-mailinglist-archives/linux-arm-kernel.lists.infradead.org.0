Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C52B295AB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:26:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yip37T/NBeG6FXLEjqzBRxaqBv5GPYU+7L6GrWJrwl4=; b=iIBKtHNeHIT0Um
	NlbrnOR08fRGOwYiHYiayn9hMufSXWzO8CzHf0EqgOGKEjKSvvx3eaDvuI1iFilBoNfh9tBY4H4Dh
	y8FOVC2CBQVSQxH9Q+05TjbE06oPKC6lxAuZ8zohyPW+VXiA6C1h1gz5AlJWAmbKnnNcpkfhqblrm
	0RxsagP3QiyIcLOMzrb1lOzlegM4WVCsZzT19sJRl0RqGbxuqdCSvg6XjJf8nzyrMxXXJxmlcFWm+
	GmbLeTDj6bsU159BKNyCDr4hc7czDaAi0omtNV0C10wN8nARA9tCj4T0XjJWxCmkKpQImAB9JJmIM
	zZ25+J5SecOXPIhcfLgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU7Oo-0000PO-RB; Fri, 24 May 2019 10:26:06 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU7Od-0000LB-EU
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:25:58 +0000
Received: by mail-io1-xd44.google.com with SMTP id g84so7374425ioa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 03:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qN0fQ/BMq0q2EVpA/1s2GX6LUVx/FfMWn8PFgU6J6Rw=;
 b=ZLpuLNqK73RefVopUCmh5TGqrtX2xUN4UOnwEoHAPMSs4CvLzidJMWj9qY3iOmttH+
 R5SIYBltjR56jZFdSEMN4xLtWG7lLE7tWDMhjm0kUbAXICaDCJ+cORdGuIDhIXV6Q9UJ
 5Ub3ClJ4A9wvyaZFA3W44taselh2Yswv8AfKw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qN0fQ/BMq0q2EVpA/1s2GX6LUVx/FfMWn8PFgU6J6Rw=;
 b=muQBp5MGzz1ALOwbRO8jagWrxIb8EFjBvmmCu6L29mhzvZR7+00RyLPj+LWPgf6gCH
 wC2iraITRnXkoVKiDY0ixSKsuIVeYOW79qMkllsZHvJYqAkdVl3a3URbD+wH2O9fP28N
 zJ4UDhsKQ9ulL8olZV10P7jDIJBVtAefK3Mh8qFzu7YJx9aLBI0dffmOhqN24UaZa+u+
 38Tm/O4a/hy331wDj8GOX0MDk0wJJwt9eAFtzLGp35OpKE4M2+bXGIT2WgUDXd8pwAui
 H8MpLAR+KBJw0vHUkoEa2d0enchygmyvzfCn1NzqnnguoT/iUG0YfUv31JebhFxUHCzz
 MtbQ==
X-Gm-Message-State: APjAAAXVCIdr8mZ2JB4IcqiWXwj3oGIXntSeA7rpfp5/q5nNPIXvX7xD
 YjrivLFKgfpksTzpAIAAlN+5EmitKG1CazoQxCMRcA==
X-Google-Smtp-Source: APXvYqydisrOOjlH1nqAoPuhc4Miqbk3Bge6wIEcoYRMh+f3Kg0Dtug+Sb0YAwMBXq+JCaaGt+vcaBXyLegaHC2ZXu8=
X-Received: by 2002:a5e:8e09:: with SMTP id a9mr17228170ion.28.1558693554196; 
 Fri, 24 May 2019 03:25:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190520090318.27570-1-jagan@amarulasolutions.com>
 <20190520090318.27570-3-jagan@amarulasolutions.com>
 <20190523203754.2lhi37veeh4rwiy3@flea>
In-Reply-To: <20190523203754.2lhi37veeh4rwiy3@flea>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 24 May 2019 15:55:42 +0530
Message-ID: <CAMty3ZBvJ-7Ndq7NSfNMSFX=8hjYVhYsdA=nfyw5mMxOf6vW1Q@mail.gmail.com>
Subject: Re: [PATCH v10 02/11] drm/sun4i: dsi: Update start value in video
 start delay
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_032556_417958_05334833 
X-CRM114-Status: GOOD (  17.93  )
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

On Fri, May 24, 2019 at 2:07 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Mon, May 20, 2019 at 02:33:09PM +0530, Jagan Teki wrote:
> > start value in video start delay computation done in below commit
> > is as per the legacy bsp drivers/video/sunxi/legacy..
> > "drm/sun4i: dsi: Change the start delay calculation"
> > (sha1: da676c6aa6413d59ab0a80c97bbc273025e640b2)
> >
> > This existing start delay computation gives start value of 35,
> > for "bananapi,s070wv20-ct16" panel timings which indeed trigger
> > panel flip_done timed out as:
> >
> >  WARNING: CPU: 0 PID: 31 at drivers/gpu/drm/drm_atomic_helper.c:1429 drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0
> >  [CRTC:46:crtc-0] vblank wait timed out
> >  Modules linked in:
> >  CPU: 0 PID: 31 Comm: kworker/0:1 Tainted: G        W         5.1.0-next-20190514-00025-gf928bc7cc146 #15
> >  Hardware name: Allwinner sun8i Family
> >  Workqueue: events deferred_probe_work_func
> >  [<c010ed54>] (unwind_backtrace) from [<c010b76c>] (show_stack+0x10/0x14)
> >  [<c010b76c>] (show_stack) from [<c0688c90>] (dump_stack+0x84/0x98)
> >  [<c0688c90>] (dump_stack) from [<c011d9e4>] (__warn+0xfc/0x114)
> >  [<c011d9e4>] (__warn) from [<c011da40>] (warn_slowpath_fmt+0x44/0x68)
> >  [<c011da40>] (warn_slowpath_fmt) from [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0)
> >  [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1) from [<c040e694>] (drm_atomic_helper_commit_tail_rpm+0x5c/0x6c)
> >  [<c040e694>] (drm_atomic_helper_commit_tail_rpm) from [<c040e4dc>] (commit_tail+0x40/0x6c)
> >  [<c040e4dc>] (commit_tail) from [<c040e5cc>] (drm_atomic_helper_commit+0xbc/0x128)
> >  [<c040e5cc>] (drm_atomic_helper_commit) from [<c0411b64>] (restore_fbdev_mode_atomic+0x1cc/0x1dc)
> >  [<c0411b64>] (restore_fbdev_mode_atomic) from [<c0411cb0>] (drm_fb_helper_pan_display+0xac/0x1d0)
> >  [<c0411cb0>] (drm_fb_helper_pan_display) from [<c03a4e84>] (fb_pan_display+0xcc/0x134)
> >  [<c03a4e84>] (fb_pan_display) from [<c03b1214>] (bit_update_start+0x14/0x30)
> >  [<c03b1214>] (bit_update_start) from [<c03afe94>] (fbcon_switch+0x3d8/0x4e0)
> >  [<c03afe94>] (fbcon_switch) from [<c03ec930>] (redraw_screen+0x174/0x238)
> >  [<c03ec930>] (redraw_screen) from [<c03aceb4>] (fbcon_prepare_logo+0x3c4/0x400)
> >  [<c03aceb4>] (fbcon_prepare_logo) from [<c03ad2b8>] (fbcon_init+0x3c8/0x5ac)
> >  [<c03ad2b8>] (fbcon_init) from [<c03eb8a0>] (visual_init+0xbc/0x104)
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
> >  [<c043f060>] (sun4i_drv_bind) from [<c044b5b0>] (try_to_bring_up_master+0x164/0x1a0)
> >  [<c044b5b0>] (try_to_bring_up_master) from [<c044b680>] (__component_add+0x94/0x140)
> >  [<c044b680>] (__component_add) from [<c0445e1c>] (sun6i_dsi_probe+0x144/0x234)
> >  [<c0445e1c>] (sun6i_dsi_probe) from [<c0452f0c>] (platform_drv_probe+0x48/0x9c)
> >  [<c0452f0c>] (platform_drv_probe) from [<c04512e4>] (really_probe+0x1dc/0x2c8)
> >  [<c04512e4>] (really_probe) from [<c0451530>] (driver_probe_device+0x60/0x160)
> >  [<c0451530>] (driver_probe_device) from [<c044f7bc>] (bus_for_each_drv+0x74/0xb8)
> >  [<c044f7bc>] (bus_for_each_drv) from [<c0451094>] (__device_attach+0xd0/0x13c)
> >  [<c0451094>] (__device_attach) from [<c045048c>] (bus_probe_device+0x84/0x8c)
> >  [<c045048c>] (bus_probe_device) from [<c0450918>] (deferred_probe_work_func+0x64/0x90)
> >  [<c0450918>] (deferred_probe_work_func) from [<c0135970>] (process_one_work+0x204/0x420)
> >  [<c0135970>] (process_one_work) from [<c013690c>] (worker_thread+0x274/0x5a0)
> >  [<c013690c>] (worker_thread) from [<c013b3d8>] (kthread+0x11c/0x14c)
> >  [<c013b3d8>] (kthread) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
> >  Exception stack(0xde539fb0 to 0xde539ff8)
> >  9fa0:                                     00000000 00000000 00000000 00000000
> >  9fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
> >  9fe0: 00000000 00000000 00000000 00000000 00000013 00000000
> >  ---[ end trace 755e10f62b83f396 ]---
> >  Console: switching to colour frame buffer device 100x30
> >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CRTC:46:crtc-0] flip_done timed out
> >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CONNECTOR:48:DSI-1] flip_done timed out
> >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [PLANE:30:plane-0] flip_done timed out
> >
> > But the expected start delay value is 1 which is confirmed from
> > new bsp [2].
>
> If you're saying that the "legacy" link (second one) is the new BSP.

Will update, thanks.

>
> > The important and unclear note on legacy and new bsp codes [1] [2]
> > is both use similar start computation initially but it later reassign
> > it to 1 in new bsp.
>
> Then start_delay is never reassigned to 1 in that link, and is clamped
> between 8 and 100 as the code that you are removing is doing.

Please see the link one more please
https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/lowlevel_sun8iw5/de_dsi.c#L807

>
> > Unfortunately we don't have any evidence or documentation for this
> > reassignment to 1 in new bsp, but it is working with all supported
> > panels in A33, A64.
>
> No, it's not. That was added to fix a panel that is supported today.

No, I have see this in  A33, A64. and these are controller drivers
right, if it panel fix and it should be part of panel driver isn't it?

We can even see the same in pin64 longsleep kernel and others.

https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/lowlevel_sun8iw5/de_dsi.c#L807
https://github.com/longsleep/linux-pine64/blob/pine64-hacks-1.2/drivers/video/sunxi/disp2/disp/de/lowlevel_sun50iw1/de_dsi.c#L730

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
