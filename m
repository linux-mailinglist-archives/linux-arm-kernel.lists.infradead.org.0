Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C193049EE0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 13:03:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rkN6tKZ+ZN/20ikYi062DT6OoP4/EIHPUl/GNs6+NqI=; b=cIgsuL2fTgdjM3
	GKNZDr634RjRMdGvmcKUHaoRQ1pDsW/HAMuny2e/cnqiUJ5aIVSxOmkuQptFFOfBZNgOs4jtNnmkj
	yPzye9BzXBRGNQF60tyJLBUG7s+/p9c+f+PRHdL6NsUYDXcoyNdzTG5yHdNzl9QceqD4cHneHYT56
	ca7bDi5MdrcqtPWhfUWNz8xeALGicnF9Ouelq+2YrAE6Oh2Jkmk9rbpXmH07pILUY8Egc6Zs/8CoQ
	BsnwKryhPQnwxRgc+XZK5xvPECQ7dJCbL9xa/ZS1ZPkumZetdqpwyhbw4UpGWPiKiuNhMD15/zHxd
	xPAKYhAVstMRU0VuTqmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdBtC-0008Ex-Gm; Tue, 18 Jun 2019 11:02:58 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdBsy-0008ES-SD
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 11:02:47 +0000
Received: by mail-io1-xd44.google.com with SMTP id i10so28621965iol.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 04:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6dPd3RrQAaJmSlxbXCrrYAeV5BgA8baQituPrW6T8q4=;
 b=J8aRALCtZ5+q665nCDGHGWdB9L4KUtXUTr2aYEOhkvFYvSzSxjEZBnxAx8jq4+CIrG
 kfZQ7h7AOkWGNUkPJQKvtrs7G8vA4tHYQkZSL8IOo8hSzMlRmFi5A4yNE+cQCaBXDkSS
 Fw9gA1Q+2KAjPhGWQTXJpHt0jL6CbnzUxhC7k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6dPd3RrQAaJmSlxbXCrrYAeV5BgA8baQituPrW6T8q4=;
 b=DAHYr5T7EaT4rYMo2nvEdSjFQzDY0FvvfMBrZc1IW314ODjNe/MHmyhM4ACplgF6ij
 dCjloO1iE41lxoPfjzkNxyRzwJpSnsWjsxDH4jFAZLHiMQL3c32RocAfUh0wY+MlWphS
 Tu8iFLiW30VzijrMUDdxR5axTXgGDnRGS7cIAY3CErM4+RD5wptuS/5CJxtneJ4/LU2b
 fwa05n+1Exlt+nh5VbNvAmj2HecRVm6DCuM3uIIlnj6uNaKvJ4s05WqF4i+kAG7R4WZJ
 dQkpihv0QCUgIV6dm25YccmxRbwy3UgY9b8UeAfcEcq5pt7J8a6x9IifIDEO3B8+4Rnf
 YRJQ==
X-Gm-Message-State: APjAAAXBFemXfbW7rAeASEgLbK8MYkpdbrg6JhG2/xuq3r/P8eLitLc5
 av4xrU1u94iouf0jPhCvWc9a2AyCRb30G2D5Oxf9Zw==
X-Google-Smtp-Source: APXvYqx+1RXVIiXwJWvpnbgzk7DSvApiqXAee1b+tNWJ3+b7tOzqL9eacxMiiOpVam4G5g3AOCkWwGZPw6G4S5b385c=
X-Received: by 2002:a5e:8618:: with SMTP id z24mr5045183ioj.174.1560855763973; 
 Tue, 18 Jun 2019 04:02:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190520090318.27570-1-jagan@amarulasolutions.com>
 <20190520090318.27570-3-jagan@amarulasolutions.com>
 <20190523203754.2lhi37veeh4rwiy3@flea>
 <CAMty3ZBvJ-7Ndq7NSfNMSFX=8hjYVhYsdA=nfyw5mMxOf6vW1Q@mail.gmail.com>
 <20190530104242.d6ktwv7lip27vc3x@flea>
 <CAMty3ZCwS4BS5Lig4O8G3dE3RbJu6m1Ux3-ZS4rT-cPEAjXSFw@mail.gmail.com>
 <20190614142810.hbdaikbk7immwzc3@flea>
In-Reply-To: <20190614142810.hbdaikbk7immwzc3@flea>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 18 Jun 2019 16:32:32 +0530
Message-ID: <CAMty3ZBmTTKk29EDxPLP1vYPg6ZvBQibRsB=7cfSUCXtML95qA@mail.gmail.com>
Subject: Re: [PATCH v10 02/11] drm/sun4i: dsi: Update start value in video
 start delay
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_040245_401151_786F8DAD 
X-CRM114-Status: GOOD (  32.26  )
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

On Fri, Jun 14, 2019 at 7:58 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Thu, Jun 13, 2019 at 01:34:04PM +0530, Jagan Teki wrote:
> > On Fri, May 31, 2019 at 12:23 AM Maxime Ripard
> > <maxime.ripard@bootlin.com> wrote:
> > >
> > > On Fri, May 24, 2019 at 03:55:42PM +0530, Jagan Teki wrote:
> > > > On Fri, May 24, 2019 at 2:07 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > >
> > > > > On Mon, May 20, 2019 at 02:33:09PM +0530, Jagan Teki wrote:
> > > > > > start value in video start delay computation done in below commit
> > > > > > is as per the legacy bsp drivers/video/sunxi/legacy..
> > > > > > "drm/sun4i: dsi: Change the start delay calculation"
> > > > > > (sha1: da676c6aa6413d59ab0a80c97bbc273025e640b2)
> > > > > >
> > > > > > This existing start delay computation gives start value of 35,
> > > > > > for "bananapi,s070wv20-ct16" panel timings which indeed trigger
> > > > > > panel flip_done timed out as:
> > > > > >
> > > > > >  WARNING: CPU: 0 PID: 31 at drivers/gpu/drm/drm_atomic_helper.c:1429 drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0
> > > > > >  [CRTC:46:crtc-0] vblank wait timed out
> > > > > >  Modules linked in:
> > > > > >  CPU: 0 PID: 31 Comm: kworker/0:1 Tainted: G        W         5.1.0-next-20190514-00025-gf928bc7cc146 #15
> > > > > >  Hardware name: Allwinner sun8i Family
> > > > > >  Workqueue: events deferred_probe_work_func
> > > > > >  [<c010ed54>] (unwind_backtrace) from [<c010b76c>] (show_stack+0x10/0x14)
> > > > > >  [<c010b76c>] (show_stack) from [<c0688c90>] (dump_stack+0x84/0x98)
> > > > > >  [<c0688c90>] (dump_stack) from [<c011d9e4>] (__warn+0xfc/0x114)
> > > > > >  [<c011d9e4>] (__warn) from [<c011da40>] (warn_slowpath_fmt+0x44/0x68)
> > > > > >  [<c011da40>] (warn_slowpath_fmt) from [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0)
> > > > > >  [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1) from [<c040e694>] (drm_atomic_helper_commit_tail_rpm+0x5c/0x6c)
> > > > > >  [<c040e694>] (drm_atomic_helper_commit_tail_rpm) from [<c040e4dc>] (commit_tail+0x40/0x6c)
> > > > > >  [<c040e4dc>] (commit_tail) from [<c040e5cc>] (drm_atomic_helper_commit+0xbc/0x128)
> > > > > >  [<c040e5cc>] (drm_atomic_helper_commit) from [<c0411b64>] (restore_fbdev_mode_atomic+0x1cc/0x1dc)
> > > > > >  [<c0411b64>] (restore_fbdev_mode_atomic) from [<c0411cb0>] (drm_fb_helper_pan_display+0xac/0x1d0)
> > > > > >  [<c0411cb0>] (drm_fb_helper_pan_display) from [<c03a4e84>] (fb_pan_display+0xcc/0x134)
> > > > > >  [<c03a4e84>] (fb_pan_display) from [<c03b1214>] (bit_update_start+0x14/0x30)
> > > > > >  [<c03b1214>] (bit_update_start) from [<c03afe94>] (fbcon_switch+0x3d8/0x4e0)
> > > > > >  [<c03afe94>] (fbcon_switch) from [<c03ec930>] (redraw_screen+0x174/0x238)
> > > > > >  [<c03ec930>] (redraw_screen) from [<c03aceb4>] (fbcon_prepare_logo+0x3c4/0x400)
> > > > > >  [<c03aceb4>] (fbcon_prepare_logo) from [<c03ad2b8>] (fbcon_init+0x3c8/0x5ac)
> > > > > >  [<c03ad2b8>] (fbcon_init) from [<c03eb8a0>] (visual_init+0xbc/0x104)
> > > > > >  [<c03eb8a0>] (visual_init) from [<c03ed1b8>] (do_bind_con_driver+0x1b0/0x390)
> > > > > >  [<c03ed1b8>] (do_bind_con_driver) from [<c03ed780>] (do_take_over_console+0x13c/0x1c4)
> > > > > >  [<c03ed780>] (do_take_over_console) from [<c03ad800>] (do_fbcon_takeover+0x74/0xcc)
> > > > > >  [<c03ad800>] (do_fbcon_takeover) from [<c013c9c8>] (notifier_call_chain+0x44/0x84)
> > > > > >  [<c013c9c8>] (notifier_call_chain) from [<c013cd20>] (__blocking_notifier_call_chain+0x48/0x60)
> > > > > >  [<c013cd20>] (__blocking_notifier_call_chain) from [<c013cd50>] (blocking_notifier_call_chain+0x18/0x20)
> > > > > >  [<c013cd50>] (blocking_notifier_call_chain) from [<c03a6e44>] (register_framebuffer+0x1e0/0x2f8)
> > > > > >  [<c03a6e44>] (register_framebuffer) from [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock+0x2fc/0x50c)
> > > > > >  [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock) from [<c04158c8>] (drm_fbdev_client_hotplug+0xe8/0x1b8)
> > > > > >  [<c04158c8>] (drm_fbdev_client_hotplug) from [<c0415a20>] (drm_fbdev_generic_setup+0x88/0x118)
> > > > > >  [<c0415a20>] (drm_fbdev_generic_setup) from [<c043f060>] (sun4i_drv_bind+0x128/0x160)
> > > > > >  [<c043f060>] (sun4i_drv_bind) from [<c044b5b0>] (try_to_bring_up_master+0x164/0x1a0)
> > > > > >  [<c044b5b0>] (try_to_bring_up_master) from [<c044b680>] (__component_add+0x94/0x140)
> > > > > >  [<c044b680>] (__component_add) from [<c0445e1c>] (sun6i_dsi_probe+0x144/0x234)
> > > > > >  [<c0445e1c>] (sun6i_dsi_probe) from [<c0452f0c>] (platform_drv_probe+0x48/0x9c)
> > > > > >  [<c0452f0c>] (platform_drv_probe) from [<c04512e4>] (really_probe+0x1dc/0x2c8)
> > > > > >  [<c04512e4>] (really_probe) from [<c0451530>] (driver_probe_device+0x60/0x160)
> > > > > >  [<c0451530>] (driver_probe_device) from [<c044f7bc>] (bus_for_each_drv+0x74/0xb8)
> > > > > >  [<c044f7bc>] (bus_for_each_drv) from [<c0451094>] (__device_attach+0xd0/0x13c)
> > > > > >  [<c0451094>] (__device_attach) from [<c045048c>] (bus_probe_device+0x84/0x8c)
> > > > > >  [<c045048c>] (bus_probe_device) from [<c0450918>] (deferred_probe_work_func+0x64/0x90)
> > > > > >  [<c0450918>] (deferred_probe_work_func) from [<c0135970>] (process_one_work+0x204/0x420)
> > > > > >  [<c0135970>] (process_one_work) from [<c013690c>] (worker_thread+0x274/0x5a0)
> > > > > >  [<c013690c>] (worker_thread) from [<c013b3d8>] (kthread+0x11c/0x14c)
> > > > > >  [<c013b3d8>] (kthread) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
> > > > > >  Exception stack(0xde539fb0 to 0xde539ff8)
> > > > > >  9fa0:                                     00000000 00000000 00000000 00000000
> > > > > >  9fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
> > > > > >  9fe0: 00000000 00000000 00000000 00000000 00000013 00000000
> > > > > >  ---[ end trace 755e10f62b83f396 ]---
> > > > > >  Console: switching to colour frame buffer device 100x30
> > > > > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CRTC:46:crtc-0] flip_done timed out
> > > > > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CONNECTOR:48:DSI-1] flip_done timed out
> > > > > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [PLANE:30:plane-0] flip_done timed out
> > > > > >
> > > > > > But the expected start delay value is 1 which is confirmed from
> > > > > > new bsp [2].
> > > > >
> > > > > If you're saying that the "legacy" link (second one) is the new BSP.
> > > >
> > > > Will update, thanks.
> > > >
> > > > >
> > > > > > The important and unclear note on legacy and new bsp codes [1] [2]
> > > > > > is both use similar start computation initially but it later reassign
> > > > > > it to 1 in new bsp.
> > > > >
> > > > > Then start_delay is never reassigned to 1 in that link, and is clamped
> > > > > between 8 and 100 as the code that you are removing is doing.
> > > >
> > > > Please see the link one more please
> > > > https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/lowlevel_sun8iw5/de_dsi.c#L807
> > > >
> > > > >
> > > > > > Unfortunately we don't have any evidence or documentation for this
> > > > > > reassignment to 1 in new bsp, but it is working with all supported
> > > > > > panels in A33, A64.
> > > > >
> > > > > No, it's not. That was added to fix a panel that is supported today.
> > > >
> > > > No, I have see this in A33, A64. and these are controller drivers
> > > > right, if it panel fix and it should be part of panel driver isn't
> > > > it?
> > >
> > > I'm not sure to follow that argument. You're submitting that fix to
> > > allow other panels to work, right? So surely, some issues that can be
> > > found using a given panel might not be solely fixed in the panel driver.
> >
> > I'm not sure I understand this. I have been verifying different panels
> > to check across. and this change literally in BSP and the BSP code is
> > using this based on the logs confirmation. all the logs and working
> > conditions shows that the fix would required in dsi.
>
> You were saying that your fix was working with all supported panels in
> A33, A64. That's simply not true, since at least one of mine will be
> broken by this.
>
> You can say that it fixes all the panels *you* have, but it's
> certainly not all of them.

The panels I have are running A33, A64 AW BSP and there are not using
legacy drivers. better you can use what AW BSP's are using, if
something not working with AW bsp then there can be an issue on the
panel init sequence or timings.

>
> > > > We can even see the same in pin64 longsleep kernel and others.
> > > >
> > > > https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/lowlevel_sun8iw5/de_dsi.c#L807
> > > > https://github.com/longsleep/linux-pine64/blob/pine64-hacks-1.2/drivers/video/sunxi/disp2/disp/de/lowlevel_sun50iw1/de_dsi.c#L730
> > >
> > > Yeah, and both of these have the legacy driver part with the clamping
> > > too.
> >
> > Yes, both legacy has clamping, but not using.
>
> See the links above, they are being used.
>
> > they used it in new version driver which I'm referring above.
>
> I'm sorry, but I just don't get what you're saying. The links
> mentionned above are clearly showing that it's being used, while the
> other, !legacy, driver doesn't have them anymore. So it seems to be
> exactly the opposite of what you're saying.

legacy drivers have the clamping of what the current code has, I agree
that point. but the new version BSP driver which is running on right
now, don't have clamping instead they do have a change what this patch
has.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
