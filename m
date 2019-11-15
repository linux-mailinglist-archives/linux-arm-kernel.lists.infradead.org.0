Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7AC1FD962
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 10:33:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ml/1IcTMydBUz7ei0M/6D8VcJbhq+vmx1CZDoWB9nM4=; b=mBd/W23sjw49J0
	NhwrKF2sF539zYt5iFkUeQZHE6GK/67wJM9szfzDczTz7iqdujQGEjhT6cKpj/R/LhYyPmM9N11Up
	peHNL4CWtjXEs2i22gziV/oD2wZ8G86i99zjta0T8EHCdHd3snBHXSXCKrdtwqGrE/AetRLC6nza4
	PQ6iFFw5hKdNEpKfXtnzLUOPNIVL9H/dqEZzj9U6ax9hDrH/3T8WDLUuUdFIrtz97wqEBwcd0PgkF
	/x2op2yEWxvtapODsBVU1bAbxqYq2ahh9BVxpCbD7+6baQ8qAWA8vV9p0i0Fq44BarvPWHdazc4bX
	H16voyerPdMhn6b94acw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVXz3-0006en-Ct; Fri, 15 Nov 2019 09:33:41 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVXyv-0006dv-6h
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 09:33:34 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C3CCB291BDE;
 Fri, 15 Nov 2019 09:33:27 +0000 (GMT)
Date: Fri, 15 Nov 2019 10:33:24 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [PATCH 2/8] drm/atmel: ditch fb_create wrapper
Message-ID: <20191115103324.1fbeca63@collabora.com>
In-Reply-To: <20191115092120.4445-3-daniel.vetter@ffwll.ch>
References: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
 <20191115092120.4445-3-daniel.vetter@ffwll.ch>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_013333_375767_8B27E12E 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 15 Nov 2019 10:21:14 +0100
Daniel Vetter <daniel.vetter@ffwll.ch> wrote:

> Spotted while looking through them all.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Boris Brezillon <bbrezillon@kernel.org>

Acked-by: Boris Brezillon <boris.brezillon@collabora.com>

> Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c | 8 +-------
>  1 file changed, 1 insertion(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
> index 92640298ad41..8dc917a1270b 100644
> --- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
> +++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
> @@ -557,12 +557,6 @@ static irqreturn_t atmel_hlcdc_dc_irq_handler(int irq, void *data)
>  	return IRQ_HANDLED;
>  }
>  
> -static struct drm_framebuffer *atmel_hlcdc_fb_create(struct drm_device *dev,
> -		struct drm_file *file_priv, const struct drm_mode_fb_cmd2 *mode_cmd)
> -{
> -	return drm_gem_fb_create(dev, file_priv, mode_cmd);
> -}
> -
>  struct atmel_hlcdc_dc_commit {
>  	struct work_struct work;
>  	struct drm_device *dev;
> @@ -657,7 +651,7 @@ static int atmel_hlcdc_dc_atomic_commit(struct drm_device *dev,
>  }
>  
>  static const struct drm_mode_config_funcs mode_config_funcs = {
> -	.fb_create = atmel_hlcdc_fb_create,
> +	.fb_create = drm_gem_fb_create,
>  	.atomic_check = drm_atomic_helper_check,
>  	.atomic_commit = atmel_hlcdc_dc_atomic_commit,
>  };


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
