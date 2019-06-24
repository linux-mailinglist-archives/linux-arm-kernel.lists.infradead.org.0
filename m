Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E901A504EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 10:53:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+N4pV9YuEYjdudBTfkc9zn1WqC9M/uGr4rk7wikM80=; b=qqXNpEguTmLbXD
	HvvakBksElNwi0Bq2loWJ41L3/6c9DN6U8Z5poi+tddKxL6ItvOw5ShYy+ZWn626FHuU9gTuvsyrh
	cAUjnf9VopkS6gx8zlfrTn26Q1OvEr8iCXjlFTe9eZkEyl0JZTE/MRdTr2y7JZo21V8hXWte6OHzV
	zcA/37lqm4hrIrPTHLFN8IGQ3RgFbgkU0VnjzXHDMxVSXoKYSVc5q0mf80apeNTXRPKO3D8TqS1AT
	fI/UZ85n10KfYfw+iSeZz7HXKbr7hltcsKrBdh8c358iDpT/acMSsJIYgG93MBIMfmWxyYEQJHY4r
	KXwD1yoyOy9/n5qKOyJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfKj3-0000QT-OD; Mon, 24 Jun 2019 08:53:21 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfKir-0000Pb-D8
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 08:53:11 +0000
Received: by mail-io1-xd43.google.com with SMTP id w25so327293ioc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 01:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G8nkLyiOaKgOFrbXNHkWxjnqz5OluwUUizZDLmikCzc=;
 b=bQa7w3w9/tWFlqTl3ELpwdzGQDB+EPZzU7W2gMufCdWT1u4LtQjwwKHj9CsaYLT4PM
 0JG06gaRGRWkCLsd2vl1uHTSvidjZb8DMvpSe4PFcET2cf2zO+kFhYO3YFZMz7NXeqX3
 E8UsbVgASYcuCGL2fFoPDQVWFONW9BOa5eNV8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G8nkLyiOaKgOFrbXNHkWxjnqz5OluwUUizZDLmikCzc=;
 b=hGyJh/3dbRO0Ttx1jySOrPnQ9uYXWGa3O8pr0vw3GWa6Em1NgdDrQo923i58UE1Zjw
 J3Rh2UC58n2py8exB01A2TTntrF+SOCE3ybHnxQU7ZDmZQou4YrUH7+9Oidti3FrozGW
 wfkbL1j0bnO2TevSsFEA0W5jW/0Wu+jvh9mt5+eYtwIWwadw+Pp5XFdrOIpk/QcS1v7r
 x1k10miJGZBI12bmoDv/fbRF1HPt5qZB+vdxPhzHGihqn4MD68VCUsH9TxreFwcSe5He
 LVKNTMJp3d0ttQGcbPQvdT5t1ITOaNIboTum8WNJzJPWQcaPB6JAsx4Vgx/2VaGeUL8A
 n0ww==
X-Gm-Message-State: APjAAAWevsvcGN/crtcvik9wD69n/Muq/S9zt2FcJiMAhRZzy52RCYpb
 qZUmxP4rsSAECVnCUc+JNuIXFOmjqyaZlutvoCWGzw==
X-Google-Smtp-Source: APXvYqwMdAYjeq4CKzrllSK9uqFTO/tWs5fwsktXXlwIZt4LNDMpnzAmyrl5/0Wg5WytuKtm3+Y47WeYvP0jfFtfIn0=
X-Received: by 2002:a05:6602:2253:: with SMTP id
 o19mr16852836ioo.297.1561366387533; 
 Mon, 24 Jun 2019 01:53:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190520090318.27570-1-jagan@amarulasolutions.com>
 <20190520090318.27570-4-jagan@amarulasolutions.com>
 <20190523203836.xy7nmte3ubyxwg27@flea>
 <CAMty3ZA2mZugso_rMy+anp1i1bSL5FtB2mAyN1v_gE3rds0LgA@mail.gmail.com>
 <CAGb2v67He9t3RhHJAW5ph_1Wgrj0eqRAF7Xg1Weh8Do3tBFyeQ@mail.gmail.com>
In-Reply-To: <CAGb2v67He9t3RhHJAW5ph_1Wgrj0eqRAF7Xg1Weh8Do3tBFyeQ@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Mon, 24 Jun 2019 14:22:56 +0530
Message-ID: <CAMty3ZCEz7nMmVp6D99nFRfS4n_uwLgmveRz5Dp5rCrKL9dF5Q@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v10 03/11] drm/sun4i: dsi: Fix video
 start delay computation
To: Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_015309_602001_92BCAE43 
X-CRM114-Status: GOOD (  18.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Fri, Jun 21, 2019 at 2:05 PM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Fri, May 24, 2019 at 6:27 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> >
> > On Fri, May 24, 2019 at 2:18 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > On Mon, May 20, 2019 at 02:33:10PM +0530, Jagan Teki wrote:
> > > > The current code is computing vertical video start delay as
> > > >
> > > > delay = mode->vtotal - (mode->vsync_end - mode->vdisplay) + start;
> > > >
> > > > On which the second parameter
> > > >
> > > > mode->vsync_end - mode->vdisplay = front porch + sync timings
> > > >
> > > > according to "DRM kernel-internal display mode structure" in
> > > > include/drm/drm_modes.h
> > > >
> > > > With adding additional sync timings, the desired video start delay
> > > > value as 510 for "bananapi,s070wv20-ct16" panel timings which indeed
> > > > trigger panel flip_done timed out as:
> > > >
> > > >  WARNING: CPU: 0 PID: 31 at drivers/gpu/drm/drm_atomic_helper.c:1429 drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0
> > > >  [CRTC:46:crtc-0] vblank wait timed out
> > > >  Modules linked in:
> > > >  CPU: 0 PID: 31 Comm: kworker/0:1 Not tainted 5.1.0-next-20190514-00029-g09e5b0ed0a58 #18
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
> > > >  [<c043f060>] (sun4i_drv_bind) from [<c044b598>] (try_to_bring_up_master+0x164/0x1a0)
> > > >  [<c044b598>] (try_to_bring_up_master) from [<c044b668>] (__component_add+0x94/0x140)
> > > >  [<c044b668>] (__component_add) from [<c0445e1c>] (sun6i_dsi_probe+0x144/0x234)
> > > >  [<c0445e1c>] (sun6i_dsi_probe) from [<c0452ef4>] (platform_drv_probe+0x48/0x9c)
> > > >  [<c0452ef4>] (platform_drv_probe) from [<c04512cc>] (really_probe+0x1dc/0x2c8)
> > > >  [<c04512cc>] (really_probe) from [<c0451518>] (driver_probe_device+0x60/0x160)
> > > >  [<c0451518>] (driver_probe_device) from [<c044f7a4>] (bus_for_each_drv+0x74/0xb8)
> > > >  [<c044f7a4>] (bus_for_each_drv) from [<c045107c>] (__device_attach+0xd0/0x13c)
> > > >  [<c045107c>] (__device_attach) from [<c0450474>] (bus_probe_device+0x84/0x8c)
> > > >  [<c0450474>] (bus_probe_device) from [<c0450900>] (deferred_probe_work_func+0x64/0x90)
> > > >  [<c0450900>] (deferred_probe_work_func) from [<c0135970>] (process_one_work+0x204/0x420)
> > > >  [<c0135970>] (process_one_work) from [<c013690c>] (worker_thread+0x274/0x5a0)
> > > >  [<c013690c>] (worker_thread) from [<c013b3d8>] (kthread+0x11c/0x14c)
> > > >  [<c013b3d8>] (kthread) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
> > > >  Exception stack(0xde539fb0 to 0xde539ff8)
> > > >  9fa0:                                     00000000 00000000 00000000 00000000
> > > >  9fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
> > > >  9fe0: 00000000 00000000 00000000 00000000 00000013 00000000
> > > >  ---[ end trace 495200a78b24980e ]---
> > > >  random: fast init done
> > > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CRTC:46:crtc-0] flip_done timed out
> > > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CONNECTOR:48:DSI-1] flip_done timed out
> > > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [PLANE:30:plane-0] flip_done timed out
> > > >
> > > > But the expected video start delay value is 513 which states that
> > > > the second parameter on the computation is "front porch" value
> > > > (no sync timings included).
> > > >
> > > > This is clearly confirmed from the legacy [1] and new [2] bsp codes
> > > > that the second parameter on the video start delay is "front porch"
> > > >
> > > > Here is the detailed evidence for calculating front porch as per
> > > > bsp code.
> > > >
> > > > vfp = panel->lcd_vt - panel->lcd_y - panel->lcd_vbp
> > > > => (panel->lcd_vt) - panel->lcd_y - panel->lcd_vbp
> > > > => (tt->ver_front_porch + lcdp->panel_info.lcd_vbp
> > > >     + lcdp->panel_info.lcd_y) -  panel->lcd_y - panel->lcd_vbp
> > > > => tt->ver_front_porch
> > >
> > > The comment on patch 1 still applies on this patch
> >
> > Thanks, I have responded on that. Same applies here.
>
> So this patch fixes the misinterpretation of Allwinner's back porch value,
> much like patch 1, but this one is for the vertical back porch. So I think
> you should follow the same advice I gave you for patch 1.

Yes, indeed I'm planning to do the same. thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
