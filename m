Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4981DCE0EB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 13:52:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7T1GHaw34A+IriFDTkFrtE1KcarplJduYUxW30JuK7s=; b=GovZ7B1TJBIrAH/Y5ObDfr6ns
	HZ7fE/kNSFclCY30YCXWFeBvwm8nCLFtEj1wljpgCf5/V0YLjvrFk1Wzle6G664NdiRwKYa6y625C
	+NK9HIYBzYxCqcfj/pZzX9TWvzioGfTndj2UGzij26W9ZDshxR6GYBxOmrdyajHYigFM30k/6Oqo9
	Kx6mCfaxhhsJAmbUYXWIiGs8t7ThUNEV8nIRDMrT77oRyPm1bvsblcllqPRxkSXzBWtFgzIEzrw8E
	fkHA9rpmm83SKCad1omQTFK7yDe0pswJcbEEEEglHTwvKD+VX/C2zzX/OpHbt+F0rt4CoBAYBHtjj
	nlo3c3iTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHRYw-0006a5-D5; Mon, 07 Oct 2019 11:52:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHRYN-0006GZ-Af
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 11:51:53 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 435C9206C2;
 Mon,  7 Oct 2019 11:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570449110;
 bh=NxqMa2fK6t/d1ElaNHjGh/HPXo2f714iDYRP59YB2SQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j8fLsx4MPnXnRMS/JtkqUyGl3MPCBW6gOr8mWXxREtm1cmaEO3GGM/7G/CI3duZVE
 gSWbfLgytGFa0hw4+z3MishM6Y2I0RLIf0Cfol0b6PT4j8QY+sb2rqRRq/+t5X5aU7
 7D/Jf1lK9vfCQ72ibemx20yd7Pbz18ZmvLAYN55Q=
Date: Mon, 7 Oct 2019 13:51:48 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v2 1/3] drm/sun4i: dsi: Fix video start delay computation
Message-ID: <20191007115148.vlu2ptmrfyng4p3r@gilmour>
References: <20191006160303.24413-1-icenowy@aosc.io>
 <20191006160303.24413-2-icenowy@aosc.io>
MIME-Version: 1.0
In-Reply-To: <20191006160303.24413-2-icenowy@aosc.io>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_045151_489869_00EFBC86 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Chen-Yu Tsai <wens@csie.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Daniel Vetter <daniel@ffwll.ch>, Merlijn Wajer <merlijn@wizzup.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3501041892674526384=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3501041892674526384==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mvyysf4wnnowwhd4"
Content-Disposition: inline


--mvyysf4wnnowwhd4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 07, 2019 at 12:03:00AM +0800, Icenowy Zheng wrote:
> From: Jagan Teki <jagan@amarulasolutions.com>
>
> The LCD timing definitions between Linux DRM vs Allwinner are different,
> below diagram shows this clear differences.
>
>            Active                 Front           Sync           Back
>            Region                 Porch                          Porch
> <-----------------------><----------------><--------------><-------------->
>   //////////////////////|
>  ////////////////////// |
> //////////////////////  |..................                ................
>                                            ________________
> <----- [hv]display ----->
> <------------- [hv]sync_start ------------>
> <--------------------- [hv]sync_end ---------------------->
> <-------------------------------- [hv]total ------------------------------>
>
> <----- lcd_[xy] -------->		  <- lcd_[hv]spw ->
> 					  <---------- lcd_[hv]bp --------->
> <-------------------------------- lcd_[hv]t ------------------------------>
>
> The DSI driver misinterpreted the vbp term from the BSP code to refer
> only to the backporch, when in fact it was backporch + sync. Thus the
> driver incorrectly used the vertical front porch plus sync in its
> calculation of the DRQ set bit value, when it should not have included
> the sync timing.
>
> Including additional sync timings leads to flip_done timed out as:
>
> WARNING: CPU: 0 PID: 31 at drivers/gpu/drm/drm_atomic_helper.c:1429 drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0
> [CRTC:46:crtc-0] vblank wait timed out
> Modules linked in:
> CPU: 0 PID: 31 Comm: kworker/0:1 Not tainted 5.1.0-next-20190514-00029-g09e5b0ed0a58 #18
> Hardware name: Allwinner sun8i Family
> Workqueue: events deferred_probe_work_func
> [<c010ed54>] (unwind_backtrace) from [<c010b76c>] (show_stack+0x10/0x14)
> [<c010b76c>] (show_stack) from [<c0688c70>] (dump_stack+0x84/0x98)
> [<c0688c70>] (dump_stack) from [<c011d9e4>] (__warn+0xfc/0x114)
> [<c011d9e4>] (__warn) from [<c011da40>] (warn_slowpath_fmt+0x44/0x68)
> [<c011da40>] (warn_slowpath_fmt) from [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1+0x298/0x2a0)
> [<c040cd50>] (drm_atomic_helper_wait_for_vblanks.part.1) from [<c040e694>] (drm_atomic_helper_commit_tail_rpm+0x5c/0x6c)
> [<c040e694>] (drm_atomic_helper_commit_tail_rpm) from [<c040e4dc>] (commit_tail+0x40/0x6c)
> [<c040e4dc>] (commit_tail) from [<c040e5cc>] (drm_atomic_helper_commit+0xbc/0x128)
> [<c040e5cc>] (drm_atomic_helper_commit) from [<c0411b64>] (restore_fbdev_mode_atomic+0x1cc/0x1dc)
> [<c0411b64>] (restore_fbdev_mode_atomic) from [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked+0x54/0xa0)
> [<c04156f8>] (drm_fb_helper_restore_fbdev_mode_unlocked) from [<c0415774>] (drm_fb_helper_set_par+0x30/0x54)
> [<c0415774>] (drm_fb_helper_set_par) from [<c03ad450>] (fbcon_init+0x560/0x5ac)
> [<c03ad450>] (fbcon_init) from [<c03eb8a0>] (visual_init+0xbc/0x104)
> [<c03eb8a0>] (visual_init) from [<c03ed1b8>] (do_bind_con_driver+0x1b0/0x390)
> [<c03ed1b8>] (do_bind_con_driver) from [<c03ed780>] (do_take_over_console+0x13c/0x1c4)
> [<c03ed780>] (do_take_over_console) from [<c03ad800>] (do_fbcon_takeover+0x74/0xcc)
> [<c03ad800>] (do_fbcon_takeover) from [<c013c9c8>] (notifier_call_chain+0x44/0x84)
> [<c013c9c8>] (notifier_call_chain) from [<c013cd20>] (__blocking_notifier_call_chain+0x48/0x60)
> [<c013cd20>] (__blocking_notifier_call_chain) from [<c013cd50>] (blocking_notifier_call_chain+0x18/0x20)
> [<c013cd50>] (blocking_notifier_call_chain) from [<c03a6e44>] (register_framebuffer+0x1e0/0x2f8)
> [<c03a6e44>] (register_framebuffer) from [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock+0x2fc/0x50c)
> [<c04153c0>] (__drm_fb_helper_initial_config_and_unlock) from [<c04158c8>] (drm_fbdev_client_hotplug+0xe8/0x1b8)
> [<c04158c8>] (drm_fbdev_client_hotplug) from [<c0415a20>] (drm_fbdev_generic_setup+0x88/0x118)
> [<c0415a20>] (drm_fbdev_generic_setup) from [<c043f060>] (sun4i_drv_bind+0x128/0x160)
> [<c043f060>] (sun4i_drv_bind) from [<c044b598>] (try_to_bring_up_master+0x164/0x1a0)
> [<c044b598>] (try_to_bring_up_master) from [<c044b668>] (__component_add+0x94/0x140)
> [<c044b668>] (__component_add) from [<c0445e1c>] (sun6i_dsi_probe+0x144/0x234)
> [<c0445e1c>] (sun6i_dsi_probe) from [<c0452ef4>] (platform_drv_probe+0x48/0x9c)
> [<c0452ef4>] (platform_drv_probe) from [<c04512cc>] (really_probe+0x1dc/0x2c8)
> [<c04512cc>] (really_probe) from [<c0451518>] (driver_probe_device+0x60/0x160)
> [<c0451518>] (driver_probe_device) from [<c044f7a4>] (bus_for_each_drv+0x74/0xb8)
> [<c044f7a4>] (bus_for_each_drv) from [<c045107c>] (__device_attach+0xd0/0x13c)
> [<c045107c>] (__device_attach) from [<c0450474>] (bus_probe_device+0x84/0x8c)
> [<c0450474>] (bus_probe_device) from [<c0450900>] (deferred_probe_work_func+0x64/0x90)
> [<c0450900>] (deferred_probe_work_func) from [<c0135970>] (process_one_work+0x204/0x420)
> [<c0135970>] (process_one_work) from [<c013690c>] (worker_thread+0x274/0x5a0)
> [<c013690c>] (worker_thread) from [<c013b3d8>] (kthread+0x11c/0x14c)
> [<c013b3d8>] (kthread) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
> Exception stack(0xde539fb0 to 0xde539ff8)
> 9fa0:                                     00000000 00000000 00000000 00000000
> 9fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
> 9fe0: 00000000 00000000 00000000 00000000 00000013 00000000
> ---[ end trace 495200a78b24980e ]---
> random: fast init done
> [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CRTC:46:crtc-0] flip_done timed out
> [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [CONNECTOR:48:DSI-1] flip_done timed out
> [drm:drm_atomic_helper_wait_for_dependencies] *ERROR* [PLANE:30:plane-0] flip_done timed out
>
> With the terms(as described in above diagram) fixed, the panel
> displays correctly without any timeouts.
>
> Tested-by: Merlijn Wajer <merlijn@wizzup.org>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

you should have your SoB here.

All the patches look fine, so there's no need to resend a new
version. I'll add it if you can give it.

Maxime

--mvyysf4wnnowwhd4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZsm1AAKCRDj7w1vZxhR
xc9VAPsEb55VR99Kw0sCcM0i8dH+KxAOHTdQo/I+My1hhiSzzQEAsGt/j9E+Lstn
zXlCA4KDXC8Mtusd9AHycGI3RcLAqw4=
=pIhD
-----END PGP SIGNATURE-----

--mvyysf4wnnowwhd4--


--===============3501041892674526384==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3501041892674526384==--

