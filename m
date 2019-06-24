Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F214505D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 11:35:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=clMlXzE6xbI6jgBuy6KqdJsNjayQ67SXldCchLiezwE=; b=mEcp2TNE968jfe
	v3lqXmAcTy6ONuXRGiwzwD9HQnlqueqaN7sD0v4lzV4yZO9s+rJgE1RaUVH1tvyC3jmRdSrJVrCmi
	fjgisoGqhIFl0yz5KVjhXtnvFP0BMWjx78hX+xrPJpKi/S4ycNnygjlB0PYfJJxw1p7NrX0+3zBqJ
	k6M2r/bT8nvbLAsqb3oUg7R9CCvmAIAM9QzFaRbOoVUIfATd4BgnckPwI09OcEIftSUz8BgEyBmEy
	Su3lIpzbwQReCbD30motGYSTjn4QrX58Cbk1i9OCHP2zHXdrYUC8EyEto/v/h+0+Zbdgkiq/thc+f
	LK1mnfmotFa8tQFeuXkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfLNL-00030v-GV; Mon, 24 Jun 2019 09:34:59 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfLMt-0002qq-3r
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 09:34:33 +0000
Received: by mail-ed1-f68.google.com with SMTP id m10so20810433edv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 02:34:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aVa47P92BemoaLBZOvSqv4LRSbGGjo9/5yhYubtSxi8=;
 b=aT5+17xRQN00YnqU5wz13+OInwy/fmK+yB6yL80G2u67I/+16VIOu1S9yxASYzbJe/
 jCGEcZjSnjUOh+FnLpSI4Bjgnc8xjyQmjbDF7ZtZ+3NRVvPojbVehIJpfLUnDwC7LUjt
 RedIfgZGpBX2nJZBM40BZthiJX4CoORYSb47sNTpm0/QECqh8NDSKdG76FWGY9p6g6Rd
 EvNPL0vbmin1vIrbFp9DNVwBnMzSTJwBCzcLhdcW8gl/HnkpKxN+OwWEHsJE7ltrkTBO
 Hc6HhY33rJ9bbxqhtVx2Fj4o8HKU2Ra6L86DUet0OfR87cW/oLhM6hugc47QsLP8sFKb
 llTA==
X-Gm-Message-State: APjAAAU+uTcd/w5iV4FN6UMztjX5qefiI3zw5FcjTYjbEOss+JHhGFW+
 maeM4UFXW7dRH8hcGbeHCjssTXExZvE=
X-Google-Smtp-Source: APXvYqwS/dWcmP0ksiCNRDMkNuQ8jwiBdY3Whritg6ghEQfO3hoJ2zATYCFaKlQWmRNKdxkx8BD4/w==
X-Received: by 2002:a17:906:c315:: with SMTP id
 s21mr108953973ejz.238.1561368868742; 
 Mon, 24 Jun 2019 02:34:28 -0700 (PDT)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com.
 [209.85.221.51])
 by smtp.gmail.com with ESMTPSA id w24sm904084edb.90.2019.06.24.02.34.27
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 02:34:28 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id n4so13062368wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 02:34:27 -0700 (PDT)
X-Received: by 2002:a05:6000:114b:: with SMTP id
 d11mr41793692wrx.167.1561368867466; 
 Mon, 24 Jun 2019 02:34:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190520090318.27570-1-jagan@amarulasolutions.com>
 <20190520090318.27570-3-jagan@amarulasolutions.com>
In-Reply-To: <20190520090318.27570-3-jagan@amarulasolutions.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 24 Jun 2019 17:34:16 +0800
X-Gmail-Original-Message-ID: <CAGb2v67wWUTpjNncOhv=69WzywJ2ueDdFSbiD-UAPSwkzcW5xQ@mail.gmail.com>
Message-ID: <CAGb2v67wWUTpjNncOhv=69WzywJ2ueDdFSbiD-UAPSwkzcW5xQ@mail.gmail.com>
Subject: Re: [PATCH v10 02/11] drm/sun4i: dsi: Update start value in video
 start delay
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_023431_306372_4D3C66D1 
X-CRM114-Status: GOOD (  27.30  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Hi,

On Mon, May 20, 2019 at 5:07 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> start value in video start delay computation done in below commit
> is as per the legacy bsp drivers/video/sunxi/legacy..
> "drm/sun4i: dsi: Change the start delay calculation"
> (sha1: da676c6aa6413d59ab0a80c97bbc273025e640b2)

There is a standard format for referencing commits. Please use it.
The format is:

    ... commit <leading 12 characters of commit hash> ("commit subject") ...

So your commit message should read:

    start value in video start delay was changed in commit
da676c6aa641 ("drm/sun4i:
    dsi: Change the start delay calculation") to match the legacy BSP
driver [1].

>
> This existing start delay computation gives start value of 35,
> for "bananapi,s070wv20-ct16" panel timings which indeed trigger
> panel flip_done timed out as:
>
>  WARNING: CPU: 0 PID: 31 at drivers/gpu/drm/drm_atomic_helper.c:1429 drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0
>  [CRTC:46:crtc-0] vblank wait timed out
>  Modules linked in:
>  CPU: 0 PID: 31 Comm: kworker/0:1 Tainted: G        W         5.1.0-next-20190514-00025-gf928bc7cc146 #15
>  Hardware name: Allwinner sun8i Family
>  Workqueue: events deferred_probe_work_func
>  [<c010ed54>] (unwind_backtrace) from [<c010b76c>] (show_stack+0x10/0x14)
>  [<c010b76c>] (show_stack) from [<c0688c90>] (dump_stack+0x84/0x98)
>  [<c0688c90>] (dump_stack) from [<c011d9e4>] (__warn+0xfc/0x114)
>  [<c011d9e4>] (__warn) from [<c011da40>] (warn_slowpath_fmt+0x44/0x68)
>  [<c011da40>] (warn_slowpath_fmt) from [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0)
>  [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1) from [<c040e694>] (drm_atomic_helper_commit_tail_rpm+0x5c/0x6c)
>  [<c040e694>] (drm_atomic_helper_commit_tail_rpm) from [<c040e4dc>] (commit_tail+0x40/0x6c)
>  [<c040e4dc>] (commit_tail) from [<c040e5cc>] (drm_atomic_helper_commit+0xbc/0x128)
>  [<c040e5cc>] (drm_atomic_helper_commit) from [<c0411b64>] (restore_fbdev_mode_atomic+0x1cc/0x1dc)
>  [<c0411b64>] (restore_fbdev_mode_atomic) from [<c0411cb0>] (drm_fb_helper_pan_display+0xac/0x1d0)
>  [<c0411cb0>] (drm_fb_helper_pan_display) from [<c03a4e84>] (fb_pan_display+0xcc/0x134)
>  [<c03a4e84>] (fb_pan_display) from [<c03b1214>] (bit_update_start+0x14/0x30)
>  [<c03b1214>] (bit_update_start) from [<c03afe94>] (fbcon_switch+0x3d8/0x4e0)
>  [<c03afe94>] (fbcon_switch) from [<c03ec930>] (redraw_screen+0x174/0x238)
>  [<c03ec930>] (redraw_screen) from [<c03aceb4>] (fbcon_prepare_logo+0x3c4/0x400)
>  [<c03aceb4>] (fbcon_prepare_logo) from [<c03ad2b8>] (fbcon_init+0x3c8/0x5ac)
>  [<c03ad2b8>] (fbcon_init) from [<c03eb8a0>] (visual_init+0xbc/0x104)
>  [<c03eb8a0>] (visual_init) from [<c03ed1b8>] (do_bind_con_driver+0x1b0/0x390)
>  [<c03ed1b8>] (do_bind_con_driver) from [<c03ed780>] (do_take_over_console+0x13c/0x1c4)
>  [<c03ed780>] (do_take_over_console) from [<c03ad800>] (do_fbcon_takeover+0x74/0xcc)
>  [<c03ad800>] (do_fbcon_takeover) from [<c013c9c8>] (notifier_call_chain+0x44/0x84)
>  [<c013c9c8>] (notifier_call_chain) from [<c013cd20>] (__blocking_notifier_call_chain+0x48/0x60)
>  [<c013cd20>] (__blocking_notifier_call_chain) from [<c013cd50>] (blocking_notifier_call_chain+0x18/0x20)
>  [<c013cd50>] (blocking_notifier_call_chain) from [<c03a6e44>] (register_framebuffer+0x1e0/0x2f8)
>  [<c03a6e44>] (register_framebuffer) from [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock+0x2fc/0x50c)
>  [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock) from [<c04158c8>] (drm_fbdev_client_hotplug+0xe8/0x1b8)
>  [<c04158c8>] (drm_fbdev_client_hotplug) from [<c0415a20>] (drm_fbdev_generic_setup+0x88/0x118)
>  [<c0415a20>] (drm_fbdev_generic_setup) from [<c043f060>] (sun4i_drv_bind+0x128/0x160)
>  [<c043f060>] (sun4i_drv_bind) from [<c044b5b0>] (try_to_bring_up_master+0x164/0x1a0)
>  [<c044b5b0>] (try_to_bring_up_master) from [<c044b680>] (__component_add+0x94/0x140)
>  [<c044b680>] (__component_add) from [<c0445e1c>] (sun6i_dsi_probe+0x144/0x234)
>  [<c0445e1c>] (sun6i_dsi_probe) from [<c0452f0c>] (platform_drv_probe+0x48/0x9c)
>  [<c0452f0c>] (platform_drv_probe) from [<c04512e4>] (really_probe+0x1dc/0x2c8)
>  [<c04512e4>] (really_probe) from [<c0451530>] (driver_probe_device+0x60/0x160)
>  [<c0451530>] (driver_probe_device) from [<c044f7bc>] (bus_for_each_drv+0x74/0xb8)
>  [<c044f7bc>] (bus_for_each_drv) from [<c0451094>] (__device_attach+0xd0/0x13c)
>  [<c0451094>] (__device_attach) from [<c045048c>] (bus_probe_device+0x84/0x8c)
>  [<c045048c>] (bus_probe_device) from [<c0450918>] (deferred_probe_work_func+0x64/0x90)
>  [<c0450918>] (deferred_probe_work_func) from [<c0135970>] (process_one_work+0x204/0x420)
>  [<c0135970>] (process_one_work) from [<c013690c>] (worker_thread+0x274/0x5a0)
>  [<c013690c>] (worker_thread) from [<c013b3d8>] (kthread+0x11c/0x14c)
>  [<c013b3d8>] (kthread) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
>  Exception stack(0xde539fb0 to 0xde539ff8)
>  9fa0:                                     00000000 00000000 00000000 00000000
>  9fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
>  9fe0: 00000000 00000000 00000000 00000000 00000013 00000000
>  ---[ end trace 755e10f62b83f396 ]---
>  Console: switching to colour frame buffer device 100x30
>  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CRTC:46:crtc-0] flip_done timed out
>  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CONNECTOR:48:DSI-1] flip_done timed out
>  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [PLANE:30:plane-0] flip_done timed out
>
> But the expected start delay value is 1 which is confirmed from
> new bsp [2].
>
> The important and unclear note on legacy and new bsp codes [1] [2]
> is both use similar start computation initially but it later reassign
> it to 1 in new bsp.
>
> Unfortunately we don't have any evidence or documentation for this
> reassignment to 1 in new bsp, but it is working with all supported
> panels in A33, A64.
>
> So, use the start as per new bsp code since it is working in all
> the supported panels.

It would be better to actually list the panels you tested. The list of
"supported panels" is nowhere to be found, and would change from release
to release anyways. It would be hard for anyone to realize which ones
were actually tested.

It would also help if others want to verify your fix, and/or test other
hardware.

Also I suggest following a similar pattern to the suggestions I gave for patch 1
for writing your commit logs:

  1. Describe what you observe to be not working.

     In this case, the display is not working, with the provided traceback
     and kernel logs.

  2. Describe what you think went wrong.

     This could be a git bisect result, or in this case, you are
providing evidence
     from the BSP with links and actual results from hardware running
the BSP. For
     actual running BSP, it would be better to provide the actual
hardware combinations
     you are running on, in addition to the BSP links. Last, the best
piece of concrete
     evidence might be relevant register values from functioning hardware.

  3. Explain that the fix corrects the issue for you, and list the hardware
     that it works on.

  4. Optional. Any other thoughts on the subject matter, such as suspicion of
     other broken hardware, or the fix might not be complete.

> [2] https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/lowlevel_sun8iw5/de_dsi.c#L807
> [1] https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/legacy/disp/de_bsp/de/ebios/de_dsi.c#L682

Please list your references in increasing order:

    [1] https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/legacy/disp/de_bsp/de/ebios/de_dsi.c#L682
    [2] https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/lowlevel_sun8iw5/de_dsi.c#L807

It is otherwise confusing. I believe Maxime might have mixed up the two.

Otherwise I believe the commit message matches the intent of the code.
I'm afraid I don't know enough about DSI in general or the hardware to
comment on why this works and if it's the right fix though.

Regards,
ChenYu

> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> index c5bec0096b7c..b3ca85410b2c 100644
> --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> @@ -364,7 +364,17 @@ static void sun6i_dsi_inst_init(struct sun6i_dsi *dsi,
>  static u16 sun6i_dsi_get_video_start_delay(struct sun6i_dsi *dsi,
>                                            struct drm_display_mode *mode)
>  {
> -       u16 start = clamp(mode->vtotal - mode->vdisplay - 10, 8, 100);
> +       /**
> +        * Allwinner legacy (drivers/video/sunxi/legacy),
> +        * new (drivers/video/sunxi/disp/de/lowlevel_sun8iw5) bsp drivers
> +        * are evaluating start as:
> +        *
> +        *      vtotal - vdisplay - 10
> +        *
> +        * but the new drivers are reassigning start to 1, which seems to be
> +        * working in all supported panels as of now.
> +        */
> +       u8 start = 1;
>         u16 delay = mode->vtotal - (mode->vsync_end - mode->vdisplay) + start;
>
>         if (delay > mode->vtotal)
> --
> 2.18.0.321.gffc6fa0e3
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
