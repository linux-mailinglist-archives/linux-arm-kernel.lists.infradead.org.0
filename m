Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1241A4DF45
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 05:14:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vkIgZv1vVWo0dadPLxT1c08is77yxhAsm3fuq/+hvxY=; b=d2z0l2bYuoafB0
	Am/ytNv0P5vslWjxhuA2z+J4ydxNmKMdq/xtdJh9PL/9QOyb9mhfRMwPAN8kgCc6YfBohIEeMEbHJ
	SDxQm7r8P0Diiz4c1oe8BZwBd+Iq4uNBCOfaP9id7TIe23D8VndBXM6M4UVd6+itzal7ZFARlew26
	LYVA6dNNSSeFi0Ge5YuRe3OlkD8JxkFyZVC8zFl1d6sh3gFoRBJ1rYL51D8cCtZCBnonBlVBq4BSG
	5BFd5yLhTHRYphrRo6PbCPurVKhZuVKplOFeZFiYL0DNnkAqCNrbNf5eDrvjaUMhQQ4wPtL9NZ8se
	5gi3PHzgOj2YUP+nyjLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heA0N-0006Om-Hu; Fri, 21 Jun 2019 03:14:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heA0B-0006Nr-QV
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 03:14:14 +0000
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3CFF720B1F
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 03:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561086845;
 bh=xIh99WcTC0hVI6CXEimYwuAnqqCPU1DE5HA8KthNOyo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=r6jfmr9aB7aqulMrlsANZe2CGGxaio95PieVPl0xyP7xljl6HsNi0ZrsLndyj4zAP
 Wzxt83OqUcJy0SwZbb/PKZbNHOaa4GOGOOFmDd8pHngatEel4TDgtyeSDCuVQcXrcD
 CE/zJHnC8HoQPY5tQCDB6KaBQRnXALxJavWzx8Gc=
Received: by mail-wr1-f46.google.com with SMTP id v14so5017331wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 20:14:05 -0700 (PDT)
X-Gm-Message-State: APjAAAUobIiHtSHODVjGKorqPNxHmtb1/9vJ5kmftKClqPVKvZYkctwP
 UchXsNh7OznXoHXrKgadY89/tToq6J34u74+pCQ=
X-Google-Smtp-Source: APXvYqy853hCZFBjQMQoLlV7zgCSOxyk0nz8DcMFMhJBdXQoBaXvrLFM575cIgskO+P1tB2UKZ7tKD/GMsmXnLvqqlI=
X-Received: by 2002:a5d:4311:: with SMTP id h17mr97510215wrq.9.1561086843666; 
 Thu, 20 Jun 2019 20:14:03 -0700 (PDT)
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
 <CAMty3ZANkmf=ih4snh1xCLxJaFvPoBPvzpD=aZQCiuSM004UVw@mail.gmail.com>
 <CAGb2v64gBGcgxXDB0Xd1oxE_jX4kWp4dGE0uORFSYW=PAFAEvA@mail.gmail.com>
 <CAMty3ZC_CSNP_oJboExZPyzw7Z8MoCc3OfGLsXtLQf_Reyb8fw@mail.gmail.com>
In-Reply-To: <CAMty3ZC_CSNP_oJboExZPyzw7Z8MoCc3OfGLsXtLQf_Reyb8fw@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 21 Jun 2019 11:13:51 +0800
X-Gmail-Original-Message-ID: <CAGb2v67RZXuKrzqVNMjZ2XODCY+Xn9ijs8bO-eFSg39HowCvEA@mail.gmail.com>
Message-ID: <CAGb2v67RZXuKrzqVNMjZ2XODCY+Xn9ijs8bO-eFSg39HowCvEA@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v10 01/11] drm/sun4i: dsi: Fix TCON DRQ
 set bits
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_201411_903880_2ABA5537 
X-CRM114-Status: GOOD (  29.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Michael Trimarchi <michael@amarulasolutions.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Daniel Vetter <daniel@ffwll.ch>,
 Chen-Yu Tsai <wens@kernel.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 2:51 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> On Tue, Jun 18, 2019 at 8:15 PM Chen-Yu Tsai <wens@csie.org> wrote:
> >
> > On Tue, Jun 18, 2019 at 8:11 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> > >
> > > On Tue, Jun 18, 2019 at 5:13 PM Chen-Yu Tsai <wens@csie.org> wrote:
> > > >
> > > > On Tue, Jun 18, 2019 at 6:51 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> > > > >
> > > > > On Fri, Jun 14, 2019 at 8:15 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > >
> > > > > > On Fri, Jun 14, 2019 at 12:03:13PM +0530, Jagan Teki wrote:
> > > > > > > On Thu, Jun 13, 2019 at 6:56 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > > >
> > > > > > > > On Wed, Jun 05, 2019 at 01:17:11PM +0530, Jagan Teki wrote:
> > > > > > > > > On Tue, Jun 4, 2019 at 3:30 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > > > > >
> > > > > > > > > > On Wed, May 29, 2019 at 11:44:56PM +0530, Jagan Teki wrote:
> > > > > > > > > > > On Wed, May 29, 2019 at 8:24 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > > > > > > >
> > > > > > > > > > > > On Fri, May 24, 2019 at 03:48:51PM +0530, Jagan Teki wrote:
> > > > > > > > > > > > > On Fri, May 24, 2019 at 2:04 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > > > > > > > > >
> > > > > > > > > > > > > > On Mon, May 20, 2019 at 02:33:08PM +0530, Jagan Teki wrote:
> > > > > > > > > > > > > > > According to "DRM kernel-internal display mode structure" in
> > > > > > > > > > > > > > > include/drm/drm_modes.h the current driver is trying to include
> > > > > > > > > > > > > > > sync timings along with front porch value while checking and
> > > > > > > > > > > > > > > computing drq set bits in non-burst mode.
> > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > mode->hsync_end - mode->hdisplay => horizontal front porch + sync
> > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > With adding additional sync timings, the dsi controller leads to
> > > > > > > > > > > > > > > wrong drq set bits for "bananapi,s070wv20-ct16" panel which indeed
> > > > > > > > > > > > > > > trigger panel flip_done timed out as:
> > > > > > > > > > > > > > >
> > > > > > > > > > > > > > >  WARNING: CPU: 0 PID: 31 at drivers/gpu/drm/drm_atomic_helper.c:1429 drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0
> > > > > > > > > > > > > > >  [CRTC:46:crtc-0] vblank wait timed out
> > > > > > > > > > > > > > >  Modules linked in:
> > > > > > > > > > > > > > >  CPU: 0 PID: 31 Comm: kworker/0:1 Not tainted 5.1.0-next-20190514-00026-g01f0c75b902d-dirty #13
> > > > > > > > > > > > > > >  Hardware name: Allwinner sun8i Family
> > > > > > > > > > > > > > >  Workqueue: events deferred_probe_work_func
> > > > > > > > > > > > > > >  [<c010ed54>] (unwind_backtrace) from [<c010b76c>] (show_stack+0x10/0x14)
> > > > > > > > > > > > > > >  [<c010b76c>] (show_stack) from [<c0688c70>] (dump_stack+0x84/0x98)
> > > > > > > > > > > > > > >  [<c0688c70>] (dump_stack) from [<c011d9e4>] (__warn+0xfc/0x114)
> > > > > > > > > > > > > > >  [<c011d9e4>] (__warn) from [<c011da40>] (warn_slowpath_fmt+0x44/0x68)
> > > > > > > > > > > > > > >  [<c011da40>] (warn_slowpath_fmt) from [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0)
> > > > > > > > > > > > > > >  [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1) from [<c040e694>] (drm_atomic_helper_commit_tail_rpm+0x5c/0x6c)
> > > > > > > > > > > > > > >  [<c040e694>] (drm_atomic_helper_commit_tail_rpm) from [<c040e4dc>] (commit_tail+0x40/0x6c)
> > > > > > > > > > > > > > >  [<c040e4dc>] (commit_tail) from [<c040e5cc>] (drm_atomic_helper_commit+0xbc/0x128)
> > > > > > > > > > > > > > >  [<c040e5cc>] (drm_atomic_helper_commit) from [<c0411b64>] (restore_fbdev_mode_atomic+0x1cc/0x1dc)
> > > > > > > > > > > > > > >  [<c0411b64>] (restore_fbdev_mode_atomic) from [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked+0x54/0xa0)
> > > > > > > > > > > > > > >  [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked) from [<c0415774>] (drm_fb_helper_set_par+0x30/0x54)
> > > > > > > > > > > > > > >  [<c0415774>] (drm_fb_helper_set_par) from [<c03ad450>] (fbcon_init+0x560/0x5ac)
> > > > > > > > > > > > > > >  [<c03ad450>] (fbcon_init) from [<c03eb8a0>] (visual_init+0xbc/0x104)
> > > > > > > > > > > > > > >  [<c03eb8a0>] (visual_init) from [<c03ed1b8>] (do_bind_con_driver+0x1b0/0x390)
> > > > > > > > > > > > > > >  [<c03ed1b8>] (do_bind_con_driver) from [<c03ed780>] (do_take_over_console+0x13c/0x1c4)
> > > > > > > > > > > > > > >  [<c03ed780>] (do_take_over_console) from [<c03ad800>] (do_fbcon_takeover+0x74/0xcc)
> > > > > > > > > > > > > > >  [<c03ad800>] (do_fbcon_takeover) from [<c013c9c8>] (notifier_call_chain+0x44/0x84)
> > > > > > > > > > > > > > >  [<c013c9c8>] (notifier_call_chain) from [<c013cd20>] (__blocking_notifier_call_chain+0x48/0x60)
> > > > > > > > > > > > > > >  [<c013cd20>] (__blocking_notifier_call_chain) from [<c013cd50>] (blocking_notifier_call_chain+0x18/0x20)
> > > > > > > > > > > > > > >  [<c013cd50>] (blocking_notifier_call_chain) from [<c03a6e44>] (register_framebuffer+0x1e0/0x2f8)
> > > > > > > > > > > > > > >  [<c03a6e44>] (register_framebuffer) from [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock+0x2fc/0x50c)
> > > > > > > > > > > > > > >  [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock) from [<c04158c8>] (drm_fbdev_client_hotplug+0xe8/0x1b8)
> > > > > > > > > > > > > > >  [<c04158c8>] (drm_fbdev_client_hotplug) from [<c0415a20>] (drm_fbdev_generic_setup+0x88/0x118)
> > > > > > > > > > > > > > >  [<c0415a20>] (drm_fbdev_generic_setup) from [<c043f060>] (sun4i_drv_bind+0x128/0x160)
> > > > > > > > > > > > > > >  [<c043f060>] (sun4i_drv_bind) from [<c044b598>] (try_to_bring_up_master+0x164/0x1a0)
> > > > > > > > > > > > > > >  [<c044b598>] (try_to_bring_up_master) from [<c044b668>] (__component_add+0x94/0x140)
> > > > > > > > > > > > > > >  [<c044b668>] (__component_add) from [<c0445e1c>] (sun6i_dsi_probe+0x144/0x234)
> > > > > > > > > > > > > > >  [<c0445e1c>] (sun6i_dsi_probe) from [<c0452ef4>] (platform_drv_probe+0x48/0x9c)
> > > > > > > > > > > > > > >  [<c0452ef4>] (platform_drv_probe) from [<c04512cc>] (really_probe+0x1dc/0x2c8)
> > > > > > > > > > > > > > >  [<c04512cc>] (really_probe) from [<c0451518>] (driver_probe_device+0x60/0x160)
> > > > > > > > > > > > > > >  [<c0451518>] (driver_probe_device) from [<c044f7a4>] (bus_for_each_drv+0x74/0xb8)
> > > > > > > > > > > > > > >  [<c044f7a4>] (bus_for_each_drv) from [<c045107c>] (__device_attach+0xd0/0x13c)
> > > > > > > > > > > > > > >  [<c045107c>] (__device_attach) from [<c0450474>] (bus_probe_device+0x84/0x8c)
> > > > > > > > > > > > > > >  [<c0450474>] (bus_probe_device) from [<c0450900>] (deferred_probe_work_func+0x64/0x90)
> > > > > > > > > > > > > > >  [<c0450900>] (deferred_probe_work_func) from [<c0135970>] (process_one_work+0x204/0x420)
> > > > > > > > > > > > > > >  [<c0135970>] (process_one_work) from [<c013690c>] (worker_thread+0x274/0x5a0)
> > > > > > > > > > > > > > >  [<c013690c>] (worker_thread) from [<c013b3d8>] (kthread+0x11c/0x14c)
> > > > > > > > > > > > > > >  [<c013b3d8>] (kthread) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
> > > > > > > > > > > > > > >  Exception stack(0xde539fb0 to 0xde539ff8)
> > > > > > > > > > > > > > >  9fa0:                                     00000000 00000000 00000000 00000000
> > > > > > > > > > > > > > >  9fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
> > > > > > > > > > > > > > >  9fe0: 00000000 00000000 00000000 00000000 00000013 00000000
> > > > > > > > > > > > > > >  ---[ end trace b57eb1e5c64c6b8b ]---
> > > > > > > > > > > > > > >  random: fast init done
> > > > > > > > > > > > > > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CRTC:46:crtc-0] flip_done timed out
> > > > > > > > > > > > > > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CONNECTOR:48:DSI-1] flip_done timed out
> > > > > > > > > > > > > > >  [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [PLANE:30:plane-0] flip_done timed out
> > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > But according to Allwinner A33, A64 BSP code [1] [3] the TCON DRQ for
> > > > > > > > > > > > > > > non-burst DSI mode can be computed based on "horizontal front porch"
> > > > > > > > > > > > > > > value only (no sync timings included).
> > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > Detailed evidence for drq set bits based on A33 BSP [1] [2]
> > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > => panel->lcd_ht - panel->lcd_x - panel->lcd_hbp - 20
> > > > > > > > > > > > > > > => (tt->hor_front_porch + lcdp->panel_info.lcd_hbp +
> > > > > > > > > > > > > > > lcdp->panel_info.lcd_x) - panel->lcd_x - panel->lcd_hbp - 20
> > > > > > > > > > > > > > > => tt->hor_front_porch - 20
> > > > > > > > > > > > > >
> > > > > > > > > > > > > > The thing is, while your explanation on the DRM side is sound,
> > > > > > > > > > > > > > Allwinner has been using the hbp field of their panel description to
> > > > > > > > > > > > > > store what DRM calls the backporch and the sync period.
> > > > > > > > > > > > >
> > > > > > > > > > > > > Exactly, hbp = backporch + sync
> > > > > > > > > > > > > https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L2046
> > > > > > > > > > > > >
> > > > > > > > > > > > > And the above computation is rely on that as well. If you can see the
> > > > > > > > > > > > > final out of the above computation you can get the front porch value
> > > > > > > > > > > > > (w/o sync )
> > > > > > > > > > > >
> > > > > > > > > > > > As I was saying, you are explaining it well for DRM, but in order for
> > > > > > > > > > > > your last formula (the one coming from the BSP) to make sense, you
> > > > > > > > > > > > have to explain that the horizontal back porch for Allwinner contains
> > > > > > > > > > > > the sync period, otherwise your expansion of lcd_ht doesn't make
> > > > > > > > > > > > sense.
> > > > > > > > > > >
> > > > > > > > > > > I'm not sure why we need to take care of back porch since the formula
> > > > > > > > > > > clearly evaluating a result as front porch, without sync timing (as
> > > > > > > > > > > current code included this sync), I keep the hbp and trying to
> > > > > > > > > > > substitute the lcd_ht value so the end result would cancel hbp.
> > > > > > > > > >
> > > > > > > > > > Because it changes how lcd_ht expands. In the DRM case, it will expand
> > > > > > > > > > to the displayed area, the front porch, the sync period and the back
> > > > > > > > > > porch.
> > > > > > > > > >
> > > > > > > > > > In your case, you expand it to the displayed area, the front porch and
> > > > > > > > > > the back porch, precisely because in Allwinner's case, the back porch
> > > > > > > > > > has the sync period.
> > > > > > > > >
> > > > > > > > > I understand the point, but technically it matter about the final
> > > > > > > > > computation result.  May be we can even manage the same computation in
> > > > > > > > > back porch, but I'm not sure. Since the final output doesn't involve
> > > > > > > > > any sync length, why we can include that ie what I'm not sure.
> > > > > > > >
> > > > > > > > We have the following formula:
> > > > > > > > lcd_ht - lcd_x - lcd_hbp - 20
> > > > > > > >
> > > > > > > > Using the concepts as they are defined in DRM, this expands to:
> > > > > > > > x + hbp + hsync + hfp - x - hbp - 20
> > > > > > >
> > > > > > > Here is diff between allwinner hbp vs hbp in DRM.
> > > > > > >
> > > > > > > Say hbp in DRM can call it hbackporch, so
> > > > > > >
> > > > > > > => x + hbackporch + hsync + hfp - -x - hbp - 20
> > > > > > >
> > > > > > > (and here we need to substitute hbp formula from allwinner since the
> > > > > > > actual equation would coming from there
> > > > > > > https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L2046)
> > > > > >
> > > > > > And this is precisely what needs to be said, with an explanation about
> > > > > > where that hor_back_porch is being used later on, and what impact it
> > > > > > could have.
> > > > >
> > > > > Yes, it an equation and the mathematical equations can be substitute
> > > > > to variety kind I did agree with that, whether you can use hbackporch
> > > > > or not or use another-way the final resulting value is equivalent to
> > > > > the value of front porch. In that case we can solve based on what I
> > > > > explained above. If you still dought me, please run BSP and check the
> > > > > resulting value on this check, you can get the front porch value.
> > > >
> > > > Maxime is not doubting you. He is saying that you need to include the
> > > > detailed explanation in your commit log, and not just reference pieces
> > > > of code. This is separate from the requirement of having a correct patch.
> > > >
> > > > Providing just a mathematical formula isn't enough either, because it
> > > > is not clear to the average reader which term expanded into what. A
> > >
> > > Not sure whether you see my commit log on this version or not. Each
> > > one has it's own way of providing the details and explanation and at
> > > the end people in ML should understand it. I'm not proving a simple
> > > formula here (like I did it in initial version) instead I'm giving all
> > > the respective information along with the bug log, and the bsp links
> > > where it comes from etc. This is easier way for everyone to
> > > understand.
> >
> > I did, and I'm telling you it's not easy to follow.
> >
> > > Just a bit to explain what I've mentioned in the log.
> > >
> > > Paragraph 1:
> > >
> > > "
> > > According to "DRM kernel-internal display mode structure" in
> > > include/drm/drm_modes.h the current driver is trying to include
> > > sync timings along with front porch value while checking and
> > > computing drq set bits in non-burst mode.
> > >
> > > mode->hsync_end - mode->hdisplay => horizontal front porch + sync
> > > "
> > >
> > > This paragraph explains what the existing code is using according to
> > > DRM, which indeed help new users to understand by providing
> > > include/drm/drm_modes.h file.
> >
> > This at the beginning makes no sense. It would be better placed with
> > the formula after
> > the bug report
> >
> > > Paragraph 2:
> > >
> > > "
> > > With adding additional sync timings, the dsi controller leads to
> > > wrong drq set bits for "bananapi,s070wv20-ct16" panel which indeed
> > > trigger panel flip_done timed out as:
> > > "
> > >
> > > This paragraph explains what is the relevant issue with existing change.
> > >
> > > Paragraph 3:
> > >
> > > BUG or WARNING log
> >
> > You should lead with these two. These explain "why".
> >
> > > Paragraph 4:
> > >
> > > "
> > > But according to Allwinner A33, A64 BSP code [1] [3] the TCON DRQ for
> > > non-burst DSI mode can be computed based on "horizontal front porch"
> > > value only (no sync timings included).
> > > "
> > >
> > > This paragraph explains what is BSP is using compared with mainline.
> > >
> > > Paragraph 5:
> > >
> > > "
> > > Detailed evidence for drq set bits based on A33 BSP [1] [2]
> > >
> > > => panel->lcd_ht - panel->lcd_x - panel->lcd_hbp - 20
> > > => (tt->hor_front_porch + lcdp->panel_info.lcd_hbp +
> > > lcdp->panel_info.lcd_x) - panel->lcd_x - panel->lcd_hbp - 20
> > > => tt->hor_front_porch - 20
> > > "
> > >
> > > This paragraph explains the detailed steps of equation evaluation by
> > > providing BSP links.
> >
> > This actually makes it harder to read. For example it takes a couple passes
> > to realize lcd_ht expands to the stuff in the parenthesis. All the while I
> > still have no idea what all these variables mean or where they came from.
> > As I said, please don't ask users to open links and dig through code.
>
> The main reasons I have included this information and the BSP links
> are for future reference, to know the real proofs if anyone would want
> to. and even the timeout log. My idea of formula evaluation here just
> like what you refer in the diagram in previous mail. I thought
> mathematical equations are much easier to understand and provable.

Unfortunately the plain-text formatting sometimes doesn't help. Simple
text descriptions work better in most cases, diffs in others. You can
still include the formula as a reference, but it is better to explain
it outright in simple sentences, rather than providing the formula and
guiding the reader through it.

ChenYu

> > You should provide a simple explanation about what went wrong. As I
> > mentioned, you could have simply stated that when the driver was
> > reimplemented, the DRQ formula (which you can provide in its original
> > form) was incorrectly expanded because Allwinner's definition of "hbp"
> > is actually "hbp + sync" in DRM terms. That is actually the root cause,
> > which I believe is what Maxime wants detailed in the commit log.
> > This immediately points out what went wrong and how it went wrong,
> > without jumping through hoops.
> >
> > Again the diagram helps immensely. (Well, maybe not for screen readers.)
> > It also directly shows why you replaced hsync_end with hsync_start.
>
> True, this indeed has different and direct understanding of what went
> wrong. thanks for this.
>
> >
> > > Paragraph 6:
> > >
> > > "
> > > Which is mode->hsync_start - mode->hdisplay as per
> > > "DRM kernel-internal display mode structure" in include/drm/drm_modes.h
> > > "
> > >
> > > This paragraph give fix details in according to Linux DRM.
> >
> > Yes, and first you need to understand the formula you gave, which I
> > already mentioned is a bit hard.
> >
> > On the side, going through the code and understanding it actually is quite
> > hard as I already did it a couple times before and it was really taxing.
> >
> > > So, all the explanation which I'm trying to provide here will help to
> > > understand, what is the issue with existing code and BUG log, how it
> > > handle in BSP, with justification of equations and links where it
> > > refers. Please note that I'm providing bug log and before that I've
> > > mentioned this timeout because of additional sync. why is the timeout
> > > with additional sync time, which I'm unaware since we don't have
> > > associated datasheets for this but we have working BSP's to prove
> > > that.
> > >
> > > Frankly, I still didn't understand what I missed here to explain the
> > > issue. request for help if you see any issues on this format or
> > > information.
> >
> > The one thing you missed, and that Maxime requested, was how hbp, and
> > the misinterpretation of it plays into all of this. In fact the different
> > definitions of terms between DRM and Allwinner code / FEX files is what
> > led to all this. The rest is, well, somewhat hard to read. I already
> > shared my way of explaining everything above.
>
> Okay, will try to re-arrange the commit in next version. hope this
> time will more cleaner. thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
