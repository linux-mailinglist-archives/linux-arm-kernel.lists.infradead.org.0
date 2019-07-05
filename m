Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F233860CB7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 22:47:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FCR0ABXjMb9tGcgFWtKApoRJZ48miPhMY+fogud5dX8=; b=eUxrbl/nIw04oT
	Rg7ZuHgDbElk6HzdLUvl9PnwF1LCaq1OzyOTiHUVc/uK74dq5wWjlDFx4doPYHBPBrlPg60Jc/ayi
	QDwFBLliz6iA10PWMZvHEDNokkmTEpmVki8UOZyBI0jMKYDlBkntDjMXvp7+N4Ur+jez2q4cWxaaC
	hTkAplIYaJyWlsoVzwMuvBHloPzGbdX3esWVG94+pd2+nvZCgU0bO49TWeSflnMBxy6AbDDUIcghy
	aEpnF/HeaBPyqZEzqMwlazwcXM7Isod0tc0R4MYrGvu5591yiiZRqiewzIEnSXmluzkA7erXwz4RX
	yluqpGRwQHVeXMzXIQ5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjV7U-0001tt-Ag; Fri, 05 Jul 2019 20:47:48 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjV7G-0001qb-9U
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 20:47:36 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id B85FB5C196C;
 Fri,  5 Jul 2019 22:47:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1562359650;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PK3ptpXL+6EQDm5MdQcRM1YN5Qm3Xj2/bquU6AuhNh0=;
 b=Ms9S2tJux0M9tti93aDZh2U5GZQMbDh+QNyPQ1b/5ipbnjAtiotGGqVn4ZvliwI9QI6+NT
 fJf/mI4hNeolSS07QDmV5AhLxR6ox5PmgtalPFphtHzIcvdex6C96S5eko+z7GJNG8PENs
 Fs0TeapfmsDNiNxGTZpShwQsHSI9JMM=
MIME-Version: 1.0
Date: Fri, 05 Jul 2019 22:47:30 +0200
From: Stefan Agner <stefan@agner.ch>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 05/33] drm/mxsfb: drop use of drmP.h
In-Reply-To: <20190630061922.7254-6-sam@ravnborg.org>
References: <20190630061922.7254-1-sam@ravnborg.org>
 <20190630061922.7254-6-sam@ravnborg.org>
Message-ID: <a2727131814fe53ed162853f1215ba45@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_134734_782312_710C1000 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Marek Vasut <marex@denx.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Sam Ravnborg <sam.ravnborg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-06-30 08:18, Sam Ravnborg wrote:
> Drop use of the deprecated drmP.h header file.
> 
> While touching the list of include files divided them
> in blocks and sort them within each block.
> Fixed fallout in the relevant files.
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Marek Vasut <marex@denx.de>
> Cc: Stefan Agner <stefan@agner.ch>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: linux-arm-kernel@lists.infradead.org


Acked-by: Stefan Agner <stefan@agner.ch>

--
Stefan

> ---
> The list of cc: was too large to add all recipients to the cover letter.
> Please find cover letter here:
> https://lists.freedesktop.org/archives/dri-devel/2019-June/thread.html
> Search for "drm: drop use of drmp.h in drm-misc"
> 
>         Sam
> 
>  drivers/gpu/drm/mxsfb/mxsfb_crtc.c | 16 +++++++++-------
>  drivers/gpu/drm/mxsfb/mxsfb_drv.c  | 11 +++++++----
>  drivers/gpu/drm/mxsfb/mxsfb_out.c  |  1 -
>  3 files changed, 16 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
> b/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
> index 93f413345e0d..12421567af89 100644
> --- a/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
> +++ b/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
> @@ -8,21 +8,23 @@
>   * Copyright (C) 2008 Embedded Alley Solutions, Inc All Rights Reserved.
>   */
>  
> -#include <drm/drmP.h>
> +#include <linux/clk.h>
> +#include <linux/iopoll.h>
> +#include <linux/of_graph.h>
> +#include <linux/platform_data/simplefb.h>
> +
> +#include <video/videomode.h>
> +
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_crtc.h>
> -#include <drm/drm_fb_helper.h>
>  #include <drm/drm_fb_cma_helper.h>
> +#include <drm/drm_fb_helper.h>
>  #include <drm/drm_gem_cma_helper.h>
>  #include <drm/drm_of.h>
>  #include <drm/drm_plane_helper.h>
>  #include <drm/drm_probe_helper.h>
>  #include <drm/drm_simple_kms_helper.h>
> -#include <linux/clk.h>
> -#include <linux/iopoll.h>
> -#include <linux/of_graph.h>
> -#include <linux/platform_data/simplefb.h>
> -#include <video/videomode.h>
> +#include <drm/drm_vblank.h>
>  
>  #include "mxsfb_drv.h"
>  #include "mxsfb_regs.h"
> diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> index 6d6a0b3e2bb0..878ef6822812 100644
> --- a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> +++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> @@ -8,29 +8,32 @@
>   * Copyright (C) 2008 Embedded Alley Solutions, Inc All Rights Reserved.
>   */
>  
> -#include <linux/module.h>
> -#include <linux/spinlock.h>
>  #include <linux/clk.h>
>  #include <linux/component.h>
> +#include <linux/dma-mapping.h>
>  #include <linux/list.h>
> +#include <linux/module.h>
>  #include <linux/of_device.h>
>  #include <linux/of_graph.h>
>  #include <linux/of_reserved_mem.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/reservation.h>
> +#include <linux/spinlock.h>
>  
> -#include <drm/drmP.h>
>  #include <drm/drm_atomic.h>
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_crtc.h>
> -#include <drm/drm_fb_helper.h>
> +#include <drm/drm_drv.h>
>  #include <drm/drm_fb_cma_helper.h>
> +#include <drm/drm_fb_helper.h>
>  #include <drm/drm_gem_cma_helper.h>
>  #include <drm/drm_gem_framebuffer_helper.h>
> +#include <drm/drm_irq.h>
>  #include <drm/drm_of.h>
>  #include <drm/drm_panel.h>
>  #include <drm/drm_probe_helper.h>
>  #include <drm/drm_simple_kms_helper.h>
> +#include <drm/drm_vblank.h>
>  
>  #include "mxsfb_drv.h"
>  #include "mxsfb_regs.h"
> diff --git a/drivers/gpu/drm/mxsfb/mxsfb_out.c
> b/drivers/gpu/drm/mxsfb/mxsfb_out.c
> index 91e76f9cead6..231d016c6f47 100644
> --- a/drivers/gpu/drm/mxsfb/mxsfb_out.c
> +++ b/drivers/gpu/drm/mxsfb/mxsfb_out.c
> @@ -15,7 +15,6 @@
>  #include <drm/drm_plane_helper.h>
>  #include <drm/drm_probe_helper.h>
>  #include <drm/drm_simple_kms_helper.h>
> -#include <drm/drmP.h>
>  
>  #include "mxsfb_drv.h"

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
