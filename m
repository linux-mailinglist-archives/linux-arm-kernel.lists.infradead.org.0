Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDE222FB9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 11:07:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tucaqFvyhrh2JzGnU4OcDLubrKuEtkh7jeKt2haZm4k=; b=uMtQG2wEq/mWty
	s1kE0czdLMCA8/pw3rdTBRkZFOBiJf4CeACdVHbyR+urpjPuswYzRW0yIbzxz6UZ5A9dGKRXYsAI5
	z+iRijspt4/OQ1qkUnWqMtyWi7eyufrSWD1Dpn1yitEElbCxFfrwGhIa2I/fM3iPc+ekrnI4ObzHK
	T0gZBKiwSYI74VQ0cstp5Xbkwb91Y8kgN5LDgY16vi2TySBWxLwUJJpZzphgJewQSJr8GW6Fq0Mnd
	n5vWkfNttRQ+1+vr1MgtRVziK70sfbZbLgUNLeGAxa5EBjNC3xNBlex0Ll2/xaT6//OQGKGvXV3zu
	LyReN5aaCHqaO2SNeJlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSeGb-0002TL-Cv; Mon, 20 May 2019 09:07:33 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSeGM-0002IX-5y
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 09:07:21 +0000
Received: by mail-pg1-x541.google.com with SMTP id z16so6473300pgv.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 02:07:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=f8TMcXIdAGJzNv/R9JRXO6fjRcOJSJIXQUyqy5meT6c=;
 b=WCUUST4dq7ijeKPPxtUbr6aO58WNqDBsBlXXSQOyJpeIfn6f2NuzttBKnDaOZig/Ux
 yzsGhc6TWQwa/YBgxrQ+Gxxmu5oo4FVdpv6uYcCEhs9nQx7tUqkL4AgNvXd4xik2e9Ui
 vl6ja/ZwFJ8M7INXF3s66b9ZWiXctkZ9OvVjU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=f8TMcXIdAGJzNv/R9JRXO6fjRcOJSJIXQUyqy5meT6c=;
 b=TDCLUtK5wHWRFt1Lt2YMX81mvHZf3khMjHSp0M3iAcpYZDIQw69F7LH8LPWj8H5TZK
 sJrWeW4fBgRVpgMQ59DqQsOzw3kQFEk20DEDHa2O+70W8+SQnLe43wRjjK1Fffj936vf
 yaPKsLVqCK9gNvRQCm6oWHaY0PFFNrE9DiKrNOIxHnYgxsRHOjsVLLjIX2OceC5N4TJm
 7VtKX9BwQkokzKfhJymIhgHv3uPv4hccd6Qf557aP8sYOgjlDOcFnaTXhCFyv8ixhHky
 Yd1ychI5ySCJTCUElb1QadivDb71H2J9sizJeVdGbG6DQxQQgcZP2t5oWhhUTp5Hseyi
 ZR2A==
X-Gm-Message-State: APjAAAWTY/Ml6MM0kdEYsoQeI8iqfcaM8SUKcUrHjjBPgkW/Twpq1MAX
 j/3xtmP7ia0G7x8A0IHlZqDscw==
X-Google-Smtp-Source: APXvYqyKk8wCu7LBJcthmTjkBK6xP9b9V3c5tRC6Ze10fUn4I/KWpBr8obPsSADT+KChssojzWHjfg==
X-Received: by 2002:aa7:93c6:: with SMTP id y6mr25628819pff.0.1558343237216;
 Mon, 20 May 2019 02:07:17 -0700 (PDT)
Received: from localhost.localdomain ([183.82.227.193])
 by smtp.gmail.com with ESMTPSA id d15sm51671614pfm.186.2019.05.20.02.07.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 02:07:16 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v10 01/11] drm/sun4i: dsi: Fix TCON DRQ set bits
Date: Mon, 20 May 2019 14:33:08 +0530
Message-Id: <20190520090318.27570-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190520090318.27570-1-jagan@amarulasolutions.com>
References: <20190520090318.27570-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_020718_464725_76C3B330 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: bshah@mykolab.com, powerpan@qq.com, linux-sunxi@googlegroups.com,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to "DRM kernel-internal display mode structure" in
include/drm/drm_modes.h the current driver is trying to include
sync timings along with front porch value while checking and
computing drq set bits in non-burst mode.

mode->hsync_end - mode->hdisplay => horizontal front porch + sync

With adding additional sync timings, the dsi controller leads to
wrong drq set bits for "bananapi,s070wv20-ct16" panel which indeed
trigger panel flip_done timed out as:

 WARNING: CPU: 0 PID: 31 at drivers/gpu/drm/drm_atomic_helper.c:1429 drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0
 [CRTC:46:crtc-0] vblank wait timed out
 Modules linked in:
 CPU: 0 PID: 31 Comm: kworker/0:1 Not tainted 5.1.0-next-20190514-00026-g01f0c75b902d-dirty #13
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
 ---[ end trace b57eb1e5c64c6b8b ]---
 random: fast init done
 [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CRTC:46:crtc-0] flip_done timed out
 [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CONNECTOR:48:DSI-1] flip_done timed out
 [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [PLANE:30:plane-0] flip_done timed out

But according to Allwinner A33, A64 BSP code [1] [3] the TCON DRQ for
non-burst DSI mode can be computed based on "horizontal front porch"
value only (no sync timings included).

Detailed evidence for drq set bits based on A33 BSP [1] [2]

=> panel->lcd_ht - panel->lcd_x - panel->lcd_hbp - 20
=> (tt->hor_front_porch + lcdp->panel_info.lcd_hbp +
lcdp->panel_info.lcd_x) - panel->lcd_x - panel->lcd_hbp - 20
=> tt->hor_front_porch - 20

Which is mode->hsync_start - mode->hdisplay as per
"DRM kernel-internal display mode structure" in include/drm/drm_modes.h

So, This patch update the DRQ set bits to use front porch value.

[3] https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/lowlevel_sun50iw1/de_dsi.c#L774
[2] https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/disp_lcd.c#L2031
[1] https://github.com/BPI-SINOVOIP/BPI-M2M-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp/de/lowlevel_sun8iw5/de_dsi.c#L851

Tested-by: Merlijn Wajer <merlijn@wizzup.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index a9ed87956f6d..c5bec0096b7c 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -436,9 +436,9 @@ static void sun6i_dsi_setup_burst(struct sun6i_dsi *dsi,
 			     SUN6I_DSI_BURST_LINE_SYNC_POINT(SUN6I_DSI_SYNC_POINT));
 
 		val = SUN6I_DSI_TCON_DRQ_ENABLE_MODE;
-	} else if ((mode->hsync_end - mode->hdisplay) > 20) {
+	} else if ((mode->hsync_start - mode->hdisplay) > 20) {
 		/* Maaaaaagic */
-		u16 drq = (mode->hsync_end - mode->hdisplay) - 20;
+		u16 drq = (mode->hsync_start - mode->hdisplay) - 20;
 
 		drq *= mipi_dsi_pixel_format_to_bpp(device->format);
 		drq /= 32;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
