Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D281F8792
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 09:49:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wq2j5pRYzoQRZyVd5rW3H/cs1XcU6f/Q5U0PVtAAq1E=; b=an2m55tllM24W0
	pZaI2w9RZdaB0YaO/giAJmJ7aYhcwJ7XWkGxfZgdIxqTQGqhooZySM/BWV2tJHIs6K4oAll3FQXUx
	+bCn/44/ZNUVjZx2F0dvxGhuYDF5i4/a6/RjuozqkEz2wp+0zqY5HryL+qmznKU3TmoEQ1U4F+HrY
	S6uDhqDH/J1n6Orszcm/3Lbp7iRW9r7DPTmlHgZ8JSFJu3aCbtzukSjbQs08+kylFfLI7xOl1WnqC
	wPD8aaKFL9GMZalT2+8BMmNDivKjBTyJkagmrrS20hzOu3X3YTzvOT1EiAGkMNiaLv9KMY1zDRY2W
	9yrp+PlxbNWotk0vPrrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkNNz-0005iA-2w; Sun, 14 Jun 2020 07:48:59 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkNNr-0005hq-7w
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 07:48:52 +0000
Received: from ravnborg.org (unknown [188.228.123.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 29D488052B;
 Sun, 14 Jun 2020 09:48:49 +0200 (CEST)
Date: Sun, 14 Jun 2020 09:48:47 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 2/2] drm: mcde: Fix forgotten user of drm->dev_private
Message-ID: <20200614074847.GB220677@ravnborg.org>
References: <20200613223027.4189309-1-linus.walleij@linaro.org>
 <20200613223027.4189309-2-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200613223027.4189309-2-linus.walleij@linaro.org>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=G88y7es5 c=1 sm=1 tr=0
 a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
 a=kj9zAlcOel0A:10 a=KKAkSRfTAAAA:8 a=7gkXJVJtAAAA:8 a=e5mUnYsNAAAA:8
 a=Asabxd5-pIFabpSqRscA:9 a=CjuIK1q_8ugA:10 a=cvBusfyB2V15izCimMoJ:22
 a=E9Po1WZjFZOl8hwRPBS3:22 a=Vxmtnl_E_bksehYqCbjh:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_004851_467384_5D57E7C7 
X-CRM114-Status: GOOD (  18.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, dri-devel@lists.freedesktop.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 14, 2020 at 12:30:27AM +0200, Linus Walleij wrote:
> We forgot one call site directly using drm->dev_private.
> This leads to a crash like this:
> 
> 8<--- cut here ---
> Unable to handle kernel NULL pointer dereference at virtual address 00000918
> pgd = (ptrval)
> [00000918] *pgd=00000000
> Internal error: Oops: 5 [#1] SMP ARM
> Modules linked in:
> CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.7.0-15001-gfa384b50b96b-dirty #514
> Hardware name: ST-Ericsson Ux5x0 platform (Device Tree Support)
> PC is at mcde_display_enable+0x78/0x7c0
> LR is at mcde_display_enable+0x78/0x7c0
> 
> Fix this by using to_mcde() as in other functions.
> 
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Fixes: fd7ee85cfe7b ("drm/mcde: Don't use drm_device->dev_private")
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

This is the last hit for "git grep dev_private".
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

> ---
>  drivers/gpu/drm/mcde/mcde_display.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/mcde/mcde_display.c b/drivers/gpu/drm/mcde/mcde_display.c
> index b319a474f801..212aee60cf61 100644
> --- a/drivers/gpu/drm/mcde/mcde_display.c
> +++ b/drivers/gpu/drm/mcde/mcde_display.c
> @@ -838,7 +838,7 @@ static void mcde_display_enable(struct drm_simple_display_pipe *pipe,
>  	struct drm_crtc *crtc = &pipe->crtc;
>  	struct drm_plane *plane = &pipe->plane;
>  	struct drm_device *drm = crtc->dev;
> -	struct mcde *mcde = drm->dev_private;
> +	struct mcde *mcde = to_mcde(drm);
>  	const struct drm_display_mode *mode = &cstate->mode;
>  	struct drm_framebuffer *fb = plane->state->fb;
>  	u32 format = fb->format->format;
> -- 
> 2.26.2
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
