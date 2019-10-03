Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 110B7C988C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 08:47:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xKjdHY7sIwiambdVFZEwlyvub6AoGaWS1pbK/fvjr70=; b=hPDqNMy3WgYWPq
	ewnJMtlHTpo8lx8AcBVYjZJcIf7FK248ZsNuWj9Zhja4yXZ0g7FNRxADCgxk23JYAqowcsou4res6
	W3P59+hIHnbeWrhfHEg7SXowCMftiAKkhLyYrcyZgXiPA9IJbaaqBb/KuaXPYq8ET5R+YeZtzZIBk
	nBzkIidgw8GwmhBrELtnxD+L6b9dxCTayKbn1RrxHh8mXk9jnj9gNVNeU/7Sf/a+sk/Qgdn/8xiRT
	SrJX6YVlDSj7aCOXPldGZQz1fPT1HiAWZIeKNmS1EB98GfJgrzSTHgLhmYKEd9+537GY05KZG8JKk
	RAwZfPSgSQ9J0eTfG2mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFutN-0005c2-Dk; Thu, 03 Oct 2019 06:47:13 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFusO-0003tV-KB
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 06:46:18 +0000
Received: by mail-pg1-x543.google.com with SMTP id y35so1155882pgl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 23:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZBYzNQrrCI+/d9BDyqt6dmiGAFdmQJ5LcStNQH+f9vk=;
 b=Iki2atwP++jngWkgd/oyQfLKI6P2KdEDs3m/1JI4TZpay8OMRqq3po8gbUurBi6un1
 gIiOhqhG5TqrUwCbYqzyRf8ett7wVmwOkiZOka3NSjYBmjxzkIgbnBNHdfIyV77eSnUw
 260Gy+jyfS1F7qZTeL22jyCEQMDBUU4FQGk64=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZBYzNQrrCI+/d9BDyqt6dmiGAFdmQJ5LcStNQH+f9vk=;
 b=HoGsfRej/Z+/mIB6Rf94o5bxKjxNEL9DJWPT6En8T8O2Kv67wxRG0eATwWs/mQzrux
 ttTadE8haBXYGvqDl0cgqixwby/kyIsdBVMnrv7wGQsEjgmimYSa6NWCf4K+RVi8mg0H
 EFwenuQZ69Qp82WnEPj57ZXBnEjHnrncUQ7KonrznceMz5kTUyvuxy9NKA+q0CY4QG3U
 14+4EaNBETOb74MVTaTdA69v3gFeWUUmhaKn2njg5ys1GZm/mWZLo6eqvCKNCZ1rS0M8
 5VS4HkAugXWF/hBoyaYoWO80MWqdvjMV45k/pOUlTcAz6K/g6XAQWMlVWzO99F4zk76m
 Qy9w==
X-Gm-Message-State: APjAAAXngjvvK1+4+S0EQkuPNHWhPZt6Qdl6WYqc0Ue0dZFosQJuZsk1
 ZBRdKHUjnuK1WQvTgP6Zll3fOQ==
X-Google-Smtp-Source: APXvYqwKKy1Oiu6vAMil6tRs2Bd6zJY2DNrs4tO0aVc7kA2MQrUw+mpc155pUel3CS1Wa5t/szdQiA==
X-Received: by 2002:a17:90a:77c9:: with SMTP id
 e9mr8524950pjs.99.1570085171525; 
 Wed, 02 Oct 2019 23:46:11 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.121])
 by smtp.gmail.com with ESMTPSA id b18sm1423294pfi.157.2019.10.02.23.46.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 23:46:11 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH v11 3/7] drm/sun4i: dsi: Fix video start delay computation
Date: Thu,  3 Oct 2019 12:15:23 +0530
Message-Id: <20191003064527.15128-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191003064527.15128-1-jagan@amarulasolutions.com>
References: <20191003064527.15128-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_234612_698704_50B1B9D0 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The LCD timing definitions between Linux DRM vs Allwinner are different,
below diagram shows this clear differences.

           Active                 Front           Sync           Back
           Region                 Porch                          Porch
<-----------------------><----------------><--------------><-------------->
  //////////////////////|
 ////////////////////// |
//////////////////////  |..................                ................
                                           ________________
<----- [hv]display ----->
<------------- [hv]sync_start ------------>
<--------------------- [hv]sync_end ---------------------->
<-------------------------------- [hv]total ------------------------------>

<----- lcd_[xy] -------->		  <- lcd_[hv]spw ->
					  <---------- lcd_[hv]bp --------->
<-------------------------------- lcd_[hv]t ------------------------------>

The DSI driver misinterpreted the vbp term from the BSP code to refer
only to the backporch, when in fact it was backporch + sync. Thus the
driver incorrectly used the vertical front porch plus sync in its
calculation of the DRQ set bit value, when it should not have included
the sync timing.

Including additional sync timings leads to flip_done timed out as:

WARNING: CPU: 0 PID: 31 at drivers/gpu/drm/drm_atomic_helper.c:1429 drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0
[CRTC:46:crtc-0] vblank wait timed out
Modules linked in:
CPU: 0 PID: 31 Comm: kworker/0:1 Not tainted 5.1.0-next-20190514-00029-g09e5b0ed0a58 #18
Hardware name: Allwinner sun8i Family
Workqueue: events deferred_probe_work_func
[<c010ed54>] (unwind_backtrace) from [<c010b76c>] (show_stack+0x10/0x14)
[<c010b76c>] (show_stack) from [<c0688c70>] (dump_stack+0x84/0x98)
[<c0688c70>] (dump_stack) from [<c011d9e4>] (__warn+0xfc/0x114)
[<c011d9e4>] (__warn) from [<c011da40>] (warn_slowpath_fmt+0x44/0x68)
[<c011da40>] (warn_slowpath_fmt) from [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0)
[<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1) from [<c040e694>] (drm_atomic_helper_commit_tail_rpm+0x5c/0x6c)
[<c040e694>] (drm_atomic_helper_commit_tail_rpm) from [<c040e4dc>] (commit_tail+0x40/0x6c)
[<c040e4dc>] (commit_tail) from [<c040e5cc>] (drm_atomic_helper_commit+0xbc/0x128)
[<c040e5cc>] (drm_atomic_helper_commit) from [<c0411b64>] (restore_fbdev_mode_atomic+0x1cc/0x1dc)
[<c0411b64>] (restore_fbdev_mode_atomic) from [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked+0x54/0xa0)
[<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked) from [<c0415774>] (drm_fb_helper_set_par+0x30/0x54)
[<c0415774>] (drm_fb_helper_set_par) from [<c03ad450>] (fbcon_init+0x560/0x5ac)
[<c03ad450>] (fbcon_init) from [<c03eb8a0>] (visual_init+0xbc/0x104)
[<c03eb8a0>] (visual_init) from [<c03ed1b8>] (do_bind_con_driver+0x1b0/0x390)
[<c03ed1b8>] (do_bind_con_driver) from [<c03ed780>] (do_take_over_console+0x13c/0x1c4)
[<c03ed780>] (do_take_over_console) from [<c03ad800>] (do_fbcon_takeover+0x74/0xcc)
[<c03ad800>] (do_fbcon_takeover) from [<c013c9c8>] (notifier_call_chain+0x44/0x84)
[<c013c9c8>] (notifier_call_chain) from [<c013cd20>] (__blocking_notifier_call_chain+0x48/0x60)
[<c013cd20>] (__blocking_notifier_call_chain) from [<c013cd50>] (blocking_notifier_call_chain+0x18/0x20)
[<c013cd50>] (blocking_notifier_call_chain) from [<c03a6e44>] (register_framebuffer+0x1e0/0x2f8)
[<c03a6e44>] (register_framebuffer) from [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock+0x2fc/0x50c)
[<c04153c0>] (__drm_fb_helper_initial_config_and_unlock) from [<c04158c8>] (drm_fbdev_client_hotplug+0xe8/0x1b8)
[<c04158c8>] (drm_fbdev_client_hotplug) from [<c0415a20>] (drm_fbdev_generic_setup+0x88/0x118)
[<c0415a20>] (drm_fbdev_generic_setup) from [<c043f060>] (sun4i_drv_bind+0x128/0x160)
[<c043f060>] (sun4i_drv_bind) from [<c044b598>] (try_to_bring_up_master+0x164/0x1a0)
[<c044b598>] (try_to_bring_up_master) from [<c044b668>] (__component_add+0x94/0x140)
[<c044b668>] (__component_add) from [<c0445e1c>] (sun6i_dsi_probe+0x144/0x234)
[<c0445e1c>] (sun6i_dsi_probe) from [<c0452ef4>] (platform_drv_probe+0x48/0x9c)
[<c0452ef4>] (platform_drv_probe) from [<c04512cc>] (really_probe+0x1dc/0x2c8)
[<c04512cc>] (really_probe) from [<c0451518>] (driver_probe_device+0x60/0x160)
[<c0451518>] (driver_probe_device) from [<c044f7a4>] (bus_for_each_drv+0x74/0xb8)
[<c044f7a4>] (bus_for_each_drv) from [<c045107c>] (__device_attach+0xd0/0x13c)
[<c045107c>] (__device_attach) from [<c0450474>] (bus_probe_device+0x84/0x8c)
[<c0450474>] (bus_probe_device) from [<c0450900>] (deferred_probe_work_func+0x64/0x90)
[<c0450900>] (deferred_probe_work_func) from [<c0135970>] (process_one_work+0x204/0x420)
[<c0135970>] (process_one_work) from [<c013690c>] (worker_thread+0x274/0x5a0)
[<c013690c>] (worker_thread) from [<c013b3d8>] (kthread+0x11c/0x14c)
[<c013b3d8>] (kthread) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
Exception stack(0xde539fb0 to 0xde539ff8)
9fa0:                                     00000000 00000000 00000000 00000000
9fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
9fe0: 00000000 00000000 00000000 00000000 00000013 00000000
---[ end trace 495200a78b24980e ]---
random: fast init done
[drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CRTC:46:crtc-0] flip_done timed out
[drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CONNECTOR:48:DSI-1] flip_done timed out
[drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [PLANE:30:plane-0] flip_done timed out

With the terms(as described in above diagram) fixed, the panel
displays correctly without any timeouts.

Tested-by: Merlijn Wajer <merlijn@wizzup.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index c9c99c52bf1e..446dc56cc44b 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -376,7 +376,7 @@ static u16 sun6i_dsi_get_video_start_delay(struct sun6i_dsi *dsi,
 	 * working in DSI panels available in mainline.
 	 */
 	u8 start = 1;
-	u16 delay = mode->vtotal - (mode->vsync_end - mode->vdisplay) + start;
+	u16 delay = mode->vtotal - (mode->vsync_start - mode->vdisplay) + start;
 
 	if (delay > mode->vtotal)
 		delay = delay % mode->vtotal;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
