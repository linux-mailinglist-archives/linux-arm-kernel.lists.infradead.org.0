Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5A1CE968
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 18:38:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8yTXGUxWi8agFX2xPlW/MN1nJIUTN+L5faHyry3kTg=; b=VHRCKqtKpjAVlT
	cHXJlbsSN2K5y0tulme0UOfLdpQaYFRRNAJ8T4QG3nsWxrzAA7uSJbUiON8gjIY7HAu50vTKS+qnt
	GlPWWDwM6dtrf0JMzsCbnPEutGHEY88sa1zeoBpbJXItoRhgICF7iMPcPm/FYBgt9oYuzT1Auo1y4
	d9snVhIExmc/o8agYYoSuZ3nBRgiE5xtggmEAtOrwkn5/OCtCsWqRRjY7Bw11mi5JXcxmZ4twDzxj
	AFGOTNmryl+731NE+YmCyYDVJHzQQ2ls62FunkCRV0949wQT/MrPaI58NMtsCTM8EqDxtN3UjH4Zp
	AUOJUrp8JXoMyQ572cxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHW1w-00086x-HM; Mon, 07 Oct 2019 16:38:40 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHW1h-00082o-PR
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 16:38:27 +0000
Received: by mail-yb1-xb41.google.com with SMTP id m1so4901041ybm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 09:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FzqVNr7tcxlwpcYADlhda0qZOie+lz7LOX/589zfMus=;
 b=fxB9cPqg4HqUGdYDivJJPdLacJmb3vp4VEHC//Z5ObTlsNu+ii6NbHEEOfwrQeRYHX
 rk9Jb8c/1D5BKy/LV/oDJUA6MnC9WVmwmt3fSMpUNLRxWG7ZP3rRNW4/ClVWqlZbovZy
 As3Gj9d4k//dQ6J9KSx8hENX+9aQYBCkzmyixVJHF7sf7hj6lmE9pUqAM43YZOgedk1y
 eawFwM01quT63JTy3IF4txAahS6VVT4G3O1ZwheamhN+J4JnEqmVqpUwPmZxqwgvAOzM
 I7psY1x+jCMxZFFJuHBb0X2S9SPae9WZjlXUS1+DbdH7W4YHGmcjuUR0yuC9HHwjsVvw
 tZ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FzqVNr7tcxlwpcYADlhda0qZOie+lz7LOX/589zfMus=;
 b=rK6qTyShSIdnFWsDPQO3QAfQEo3dYRbXAMDYt8zqP0TTSaaLteUV5wXDowxCo9CjMo
 4xsdXbRmAu+54aH4D9F8NLCgpzqYIWoCkCQz1Io0WAXyYAib7fvNYtTx2KiUHWOeU44y
 lzq0kJUV5bWpsqSd5baAOIKLrL6LYI6I7QrfZMt0ujafeRa0zEHRdyPv3XCDRNkSpfk8
 5YwmEjfLi2Ns2+rHaPoc1dIPZraMHuRiMuB62JN/LcQosNqk1DhnW4yt71kTLxLzqvGP
 ZRthjeVZ3HxE4QINLNWRPnIp8gzG2HnsEwDHS1A0WDWpczPtFoYrTnA4W+gTtmcs+dL8
 L7ow==
X-Gm-Message-State: APjAAAXRDwMAnNxnWu5TnwQaJtqW1pNPi2r8ahLaJZQOdilrLyCiPr7e
 0O9A+cDnoziYtd4mOVVFzF77YQ==
X-Google-Smtp-Source: APXvYqww9OLyqPatL8zc7IngE43C3NP4GfhRl0dthKOPI8ogAAGGRmA5omVo9qg/Jiq5DILIRaCmMg==
X-Received: by 2002:a25:bfc3:: with SMTP id q3mr4652388ybm.507.1570466303991; 
 Mon, 07 Oct 2019 09:38:23 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id g20sm3932702ywe.98.2019.10.07.09.38.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 09:38:23 -0700 (PDT)
Date: Mon, 7 Oct 2019 12:38:22 -0400
From: Sean Paul <sean@poorly.run>
To: Derek Basehore <dbasehore@chromium.org>
Subject: Re: [PATCH v8 1/4] drm/panel: Add helper for reading DT rotation
Message-ID: <20191007163822.GA126146@art_vandelay>
References: <20190925225833.7310-1-dbasehore@chromium.org>
 <20190925225833.7310-2-dbasehore@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925225833.7310-2-dbasehore@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_093825_845642_91EF3094 
X-CRM114-Status: GOOD (  23.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sam Ravnborg <sam@ravnborg.org>,
 intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Jani Nikula <jani.nikula@linux.intel.com>,
 David Airlie <airlied@linux.ie>, Thierry Reding <thierry.reding@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 03:58:30PM -0700, Derek Basehore wrote:
> This adds a helper function for reading the rotation (panel
> orientation) from the device tree.
> 
> Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

The patch LGTM, but I don't see it used anywhere later in the patch? Is there a
panel driver incoming?

Sean

> ---
>  drivers/gpu/drm/drm_panel.c | 43 +++++++++++++++++++++++++++++++++++++
>  include/drm/drm_panel.h     |  9 ++++++++
>  2 files changed, 52 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> index 6b0bf42039cf..0909b53b74e6 100644
> --- a/drivers/gpu/drm/drm_panel.c
> +++ b/drivers/gpu/drm/drm_panel.c
> @@ -264,6 +264,49 @@ struct drm_panel *of_drm_find_panel(const struct device_node *np)
>  	return ERR_PTR(-EPROBE_DEFER);
>  }
>  EXPORT_SYMBOL(of_drm_find_panel);
> +
> +/**
> + * of_drm_get_panel_orientation - look up the orientation of the panel through
> + * the "rotation" binding from a device tree node
> + * @np: device tree node of the panel
> + * @orientation: orientation enum to be filled in
> + *
> + * Looks up the rotation of a panel in the device tree. The orientation of the
> + * panel is expressed as a property name "rotation" in the device tree. The
> + * rotation in the device tree is counter clockwise.
> + *
> + * Return: 0 when a valid rotation value (0, 90, 180, or 270) is read or the
> + * rotation property doesn't exist. -EERROR otherwise.
> + */
> +int of_drm_get_panel_orientation(const struct device_node *np,
> +				 enum drm_panel_orientation *orientation)
> +{
> +	int rotation, ret;
> +
> +	ret = of_property_read_u32(np, "rotation", &rotation);
> +	if (ret == -EINVAL) {
> +		/* Don't return an error if there's no rotation property. */
> +		*orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
> +		return 0;
> +	}
> +
> +	if (ret < 0)
> +		return ret;
> +
> +	if (rotation == 0)
> +		*orientation = DRM_MODE_PANEL_ORIENTATION_NORMAL;
> +	else if (rotation == 90)
> +		*orientation = DRM_MODE_PANEL_ORIENTATION_RIGHT_UP;
> +	else if (rotation == 180)
> +		*orientation = DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP;
> +	else if (rotation == 270)
> +		*orientation = DRM_MODE_PANEL_ORIENTATION_LEFT_UP;
> +	else
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(of_drm_get_panel_orientation);
>  #endif
>  
>  MODULE_AUTHOR("Thierry Reding <treding@nvidia.com>");
> diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> index 624bd15ecfab..d16158deacdc 100644
> --- a/include/drm/drm_panel.h
> +++ b/include/drm/drm_panel.h
> @@ -34,6 +34,8 @@ struct drm_device;
>  struct drm_panel;
>  struct display_timing;
>  
> +enum drm_panel_orientation;
> +
>  /**
>   * struct drm_panel_funcs - perform operations on a given panel
>   *
> @@ -165,11 +167,18 @@ int drm_panel_get_modes(struct drm_panel *panel);
>  
>  #if defined(CONFIG_OF) && defined(CONFIG_DRM_PANEL)
>  struct drm_panel *of_drm_find_panel(const struct device_node *np);
> +int of_drm_get_panel_orientation(const struct device_node *np,
> +				 enum drm_panel_orientation *orientation);
>  #else
>  static inline struct drm_panel *of_drm_find_panel(const struct device_node *np)
>  {
>  	return ERR_PTR(-ENODEV);
>  }
> +static inline int of_drm_get_panel_orientation(const struct device_node *np,
> +		enum drm_panel_orientation *orientation)
> +{
> +	return -ENODEV;
> +}
>  #endif
>  
>  #endif
> -- 
> 2.23.0.351.gc4317032e6-goog
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
