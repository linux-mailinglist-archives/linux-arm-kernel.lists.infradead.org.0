Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5384E201
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 10:35:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=emnYSob1mHLPsY1No7/EfYUQBfqyFClU+fDa/YmdI08=; b=A3h9xA9YcZeNnR
	2za1n5FMu/9NDg/dbBwlc5FDhAbHLgIjwZ3ETy7U0AO6FjdKcFQ1wpFGsygqmBTtGlO/jW4bm42/7
	AQg5090zNUU1I9Pm2Nj/SBieGTDgpD6tVRt+Y/oHsa/LwioNLwJPAogsIhst0NsXwkYWdGAc8NjI9
	xjHoDds2WZrRiXsvjtR20tSKicAHIualX28xgIVWu4EoUDphRBpbYv2pnQaSkZRy94do+y26sfblM
	ZZhVpv+vxCB26saki9CCnSGRVZxLwrMSxjnFPw2r84zRXj3ptfUdBEai8vLdNkzK7MIe80Iusob4F
	c453ZgQQZP+Zdxwi6lzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heF1I-0007d8-VR; Fri, 21 Jun 2019 08:35:41 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heF15-0007cd-Fz
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 08:35:29 +0000
Received: by mail-ed1-f65.google.com with SMTP id r12so8920131edo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 01:35:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mmt0kiyLRw+HeqUtPae5wb8eOqt4c0M39SkXRh/JHCk=;
 b=O+VJXxthMRSJURijZkkZB4zG1v/wuYpzWZqOnWQQYE+JFUdayUqjMxV473jA1FDcrw
 W9rOUxk9DSgqnj7QhLQ/zJPtzeajVgBZfvD9E5Lamc6ZZWgvu/S0qL2PvK9dFHPQA8XO
 mu2q9Y6pb/sQNsoE3zEfJVLGn3vSLfXcmLW63uf4XblPF9cCjHzm5yN6vU1tQiWT5Gpr
 +wS4+KaFAH27w0qvT+V9xnHVpomm7nbX5IqKWbDSIfNnBphYyQZktDpIyvo/MYDNKeuf
 +CqVKtg8dLp1DELKl99Ftq11sFxaP2Wy4y8vqyirXF6EQOQVDhnPPdg3olfBUksGijQz
 hGuw==
X-Gm-Message-State: APjAAAVBYrcrv5i4AZXa2CNB6QMr/g5O2Ox9u/z5iSry4ggEvWr62yWY
 xx4GkA4Q8/m1x5DiiIjAjI7TCBforvQ=
X-Google-Smtp-Source: APXvYqxu1XKqVJJnoTFFRVrkKK280fYLlAC9HXsnrt8PBY8y879qNiiQGs+jr5DHSGu2AHZvkDjbXw==
X-Received: by 2002:a50:a5ec:: with SMTP id b41mr115358522edc.52.1561106125538; 
 Fri, 21 Jun 2019 01:35:25 -0700 (PDT)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com.
 [209.85.221.44])
 by smtp.gmail.com with ESMTPSA id b25sm635822eda.38.2019.06.21.01.35.25
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 21 Jun 2019 01:35:25 -0700 (PDT)
Received: by mail-wr1-f44.google.com with SMTP id n4so5639671wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 01:35:25 -0700 (PDT)
X-Received: by 2002:a05:6000:114b:: with SMTP id
 d11mr28630201wrx.167.1561106124764; 
 Fri, 21 Jun 2019 01:35:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190520090318.27570-1-jagan@amarulasolutions.com>
 <20190520090318.27570-4-jagan@amarulasolutions.com>
 <20190523203836.xy7nmte3ubyxwg27@flea>
 <CAMty3ZA2mZugso_rMy+anp1i1bSL5FtB2mAyN1v_gE3rds0LgA@mail.gmail.com>
In-Reply-To: <CAMty3ZA2mZugso_rMy+anp1i1bSL5FtB2mAyN1v_gE3rds0LgA@mail.gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 21 Jun 2019 16:35:09 +0800
X-Gmail-Original-Message-ID: <CAGb2v67He9t3RhHJAW5ph_1Wgrj0eqRAF7Xg1Weh8Do3tBFyeQ@mail.gmail.com>
Message-ID: <CAGb2v67He9t3RhHJAW5ph_1Wgrj0eqRAF7Xg1Weh8Do3tBFyeQ@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v10 03/11] drm/sun4i: dsi: Fix video
 start delay computation
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_013527_539067_22138015 
X-CRM114-Status: GOOD (  17.76  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
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

On Fri, May 24, 2019 at 6:27 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> On Fri, May 24, 2019 at 2:18 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > On Mon, May 20, 2019 at 02:33:10PM +0530, Jagan Teki wrote:
> > > The current code is computing vertical video start delay as
> > >
> > > delay = mode->vtotal - (mode->vsync_end - mode->vdisplay) + start;
> > >
> > > On which the second parameter
> > >
> > > mode->vsync_end - mode->vdisplay = front porch + sync timings
> > >
> > > according to "DRM kernel-internal display mode structure" in
> > > include/drm/drm_modes.h
> > >
> > > With adding additional sync timings, the desired video start delay
> > > value as 510 for "bananapi,s070wv20-ct16" panel timings which indeed
> > > trigger panel flip_done timed out as:
> > >
> > >  WARNING: CPU: 0 PID: 31 at drivers/gpu/drm/drm_atomic_helper.c:1429 drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0
> > >  [CRTC:46:crtc-0] vblank wait timed out
> > >  Modules linked in:
> > >  CPU: 0 PID: 31 Comm: kworker/0:1 Not tainted 5.1.0-next-20190514-00029-g09e5b0ed0a58 #18
> > >  Hardware name: Allwinner sun8i Family
> > >  Workqueue: events deferred_probe_work_func
> > >  [<c010ed54>] (unwind_backtrace) from [<c010b76c>] (show_stack+0x10/0x14)
> > >  [<c010b76c>] (show_stack) from [<c0688c70>] (dump_stack+0x84/0x98)
> > >  [<c0688c70>] (dump_stack) from [<c011d9e4>] (__warn+0xfc/0x114)
> > >  [<c011d9e4>] (__warn) from [<c011da40>] (warn_slowpath_fmt+0x44/0x68)
> > >  [<c011da40>] (warn_slowpath_fmt) from [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0)
> > >  [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1) from [<c040e694>] (drm_atomic_helper_commit_tail_rpm+0x5c/0x6c)
> > >  [<c040e694>] (drm_atomic_helper_commit_tail_rpm) from [<c040e4dc>] (commit_tail+0x40/0x6c)
> > >  [<c040e4dc>] (commit_tail) from [<c040e5cc>] (drm_atomic_helper_commit+0xbc/0x128)
> > >  [<c040e5cc>] (drm_atomic_helper_commit) from [<c0411b64>] (restore_fbdev_mode_atomic+0x1cc/0x1dc)
> > >  [<c0411b64>] (restore_fbdev_mode_atomic) from [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked+0x54/0xa0)
> > >  [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked) from [<c0415774>] (drm_fb_helper_set_par+0x30/0x54)
> > >  [<c0415774>] (drm_fb_helper_set_par) from [<c03ad450>] (fbcon_init+0x560/0x5ac)
> > >  [<c03ad450>] (fbcon_init) from [<c03eb8a0>] (visual_init+0xbc/0x104)
> > >  [<c03eb8a0>] (visual_init) from [<c03ed1b8>] (do_bind_con_driver+0x1b0/0x390)
> > >  [<c03ed1b8>] (do_bind_con_driver) from [<c03ed780>] (do_take_over_console+0x13c/0x1c4)
> > >  [<c03ed780>] (do_take_over_console) from [<c03ad800>] (do_fbcon_takeover+0x74/0xcc)
> > >  [<c03ad800>] (do_fbcon_takeover) from [<c013c9c8>] (notifier_call_chain+0x44/0x84)
> > >  [<c013c9c8>] (notifier_call_chain) from [<c013cd20>] (__blocking_notifier_call_chain+0x48/0x60)
> > >  [<c013cd20>] (__blocking_notifier_call_chain) from [<c013cd50>] (blocking_notifier_call_chain+0x18/0x20)
> > >  [<c013cd50>] (blocking_notifier_call_chain) from [<c03a6e44>] (register_framebuffer+0x1e0/0x2f8)
> > >  [<c03a6e44>] (register_framebuffer) from [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock+0x2fc/0x50c)
> > >  [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock) from [<c04158c8>] (drm_fbdev_client_hotplug+0xe8/0x1b8)
> > >  [<c04158c8>] (drm_fbdev_client_hotplug) from [<c0415a20>] (drm_fbdev_generic_setup+0x88/0x118)
> > >  [<c0415a20>] (drm_fbdev_generic_setup) from [<c043f060>] (sun4i_drv_bind+0x128/0x160)
> > >  [<c043f060>] (sun4i_drv_bind) from [<c044b598>] (try_to_bring_up_master+0x164/0x1a0)
> > >  [<c044b598>] (try_to_bring_up_master) from [<c044b668>] (__component_add+0x94/0x140)
> > >  [<c044b668>] (__component_add) from [<c0445e1c>] (sun6i_dsi_probe+0x144/0x234)
> > >  [<c0445e1c>] (sun6i_dsi_probe) from [<c0452ef4>] (platform_drv_probe+0x48/0x9c)
> > >  [<c0452ef4>] (platform_drv_probe) from [<c04512cc>] (really_probe+0x1dc/0x2c8)
> > >  [<c04512cc>] (really_probe) from [<c0451518>] (driver_probe_device+0x60/0x160)
> > >  [<c0451518>] (driver_probe_device) from [<c044f7a4>] (bus_for_each_drv+0x74/0xb8)
> > >  [<c044f7a4>] (bus_for_each_drv) from [<c045107c>] (__device_attach+0xd0/0x13c)
> > >  [<c045107c>] (__device_attach) from [<c0450474>] (bus_probe_device+0x84/0x8c)
> > >  [<c0450474>] (bus_probe_device) from [<c0450900>] (deferred_probe_work_func+0x64/0x90)
> > >  [<c0450900>] (deferred_probe_work_func) from [<c0135970>] (process_one_work+0x204/0x420)
> > >  [<c0135970>] (process_one_work) from [<c013690c>] (worker_thread+0x274/0x5a0)
> > >  [<c013690c>] (worker_thread) from [<c013b3d8>] (kthread+0x11c/0x14c)
> > >  [<c013b3d8>] (kthread) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
> > >  Exception stack(0xde539fb0 to 0xde539ff8)
> > >  9fa0:                                     00000000 00000000 00000000 00000000
> > >  9fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
> > >  9fe0: 00000000 00000000 00000000 00000000 00000013 00000000
> > >  ---[ end trace 495200a78b24980e ]---
> > >  random: fast init done
> > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CRTC:46:crtc-0] flip_done timed out
> > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CONNECTOR:48:DSI-1] flip_done timed out
> > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [PLANE:30:plane-0] flip_done timed out
> > >
> > > But the expected video start delay value is 513 which states that
> > > the second parameter on the computation is "front porch" value
> > > (no sync timings included).
> > >
> > > This is clearly confirmed from the legacy [1] and new [2] bsp codes
> > > that the second parameter on the video start delay is "front porch"
> > >
> > > Here is the detailed evidence for calculating front porch as per
> > > bsp code.
> > >
> > > vfp = panel->lcd_vt - panel->lcd_y - panel->lcd_vbp
> > > => (panel->lcd_vt) - panel->lcd_y - panel->lcd_vbp
> > > => (tt->ver_front_porch + lcdp->panel_info.lcd_vbp
> > >     + lcdp->panel_info.lcd_y) -  panel->lcd_y - panel->lcd_vbp
> > > => tt->ver_front_porch
> >
> > The comment on patch 1 still applies on this patch
>
> Thanks, I have responded on that. Same applies here.

So this patch fixes the misinterpretation of Allwinner's back porch value,
much like patch 1, but this one is for the vertical back porch. So I think
you should follow the same advice I gave you for patch 1.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
