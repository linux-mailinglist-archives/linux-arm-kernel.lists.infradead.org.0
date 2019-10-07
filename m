Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DED68CE9A2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 18:46:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPplMuGjaevSDqyi80wFcFbyPB7hsAyZp4n1rTO0hDs=; b=qk9zsSeJodYySy
	+YLBie+TXKhQlPRIoPA3I4UnRTJOheiXgCQqjEuUo+umwZ6e1ghxAlLd+qnfcpc5dqUnhk0fdHMTV
	g0e37bHovax0YWXpU3vvpOy8qZ/Psl/URaETyvJBcJxQ1nsr3IW5dIdK9vcyjTqcF6uL6Z0NYdjNu
	gCNVwnZ3oisfoexWtpQCrtqgtgPvQynVY96OnbDsSw9Sr7QKH6q+v9ppIp8PmXAOJUHbd6QIpJh7L
	gkj2HhejhcmFe0SLeHcfLnMFg44xBg0DgroUIZxVhh8ceety3rE5cTsA1DeEjC8f5R0E5dZZb/E4G
	jwuS3fYsPu0U69uVhWqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHW9B-0003jv-KR; Mon, 07 Oct 2019 16:46:09 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHW8x-0003i3-JT
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 16:45:58 +0000
Received: by mail-yw1-xc42.google.com with SMTP id e205so5364280ywc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 09:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uEyShXTm+JB/9yQz06mq2i1GCRkvjAHHbIYroAF3Vr0=;
 b=Tk5DQyTRms31VYqgiblUm3XBadR+cInO4hstTpWWznvGEhyMDevpPGQMjKyumlw69b
 9jpcL/P8lseJkQuJd31PZ15bFTzbsRCuw/eEYKrUWHcLJyJYwne6cc06GDvjHQTJWiQ0
 RviTBIL/8SB90UPyTdnJUJcfqfA2Hc50CxITCPPF7ftBI8eCKooT/lEs76OOabmC512H
 6pleyCDi/nG9STxP4KFNi0XhXIBgvlLpGD6wwkdjrztDaOMgMIJRxTpfvHGFhc9zaA8y
 dygwEkT2aHOY8LvO0ztCqW0LZrR+YfCMwYb02vQckOACq45Bsi+XwIhOU4Q76grOv/HL
 etCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uEyShXTm+JB/9yQz06mq2i1GCRkvjAHHbIYroAF3Vr0=;
 b=l3QcsZF2PtW3o1WRB+eVKSFGOF5h5G7kTeH9Ne860B4I9jcIVXXkBXaqu0bMdYVktX
 CgILJSb/1hFiPVIoBZ4Gcvra/2Libzhk8acHExODQWaDdCsHTeOJEoRDYHvKRc+lBQom
 3W61KyCt2WdtuSqfGJLj8mq0rAw+XBfMUYT0Kl7GgH2ipOdUPlUKUKmXrmeZ8alY3lhS
 7v/K1uQaglYn1s0Oqr9ZuexI9PFW6x8lAosJrQIL1GsUJ7gvk5b42xY5v6zOMLOYpl5Q
 G6B6AzUgAw4uYCxn3+YbL4PtHybeV6XLi1L2fFLFLLf7QbSC4Q6l5okK9maYyCf/AOOG
 gTug==
X-Gm-Message-State: APjAAAVHHxBLbKYVgNfagSndQyfjF3fK0IdA7KtywgxJh1ISinsYSobW
 I/2D+fQwmhEIhF2Zj7AS52ATAA==
X-Google-Smtp-Source: APXvYqxYNV4BfGQcvE7fKKbfOFn6gRKJ4xfGQW2Cm3ncGszU5Tg91sABL7qjuz4H/GsDeDQDffiWNw==
X-Received: by 2002:a81:6589:: with SMTP id
 z131mr19011625ywb.262.1570466752240; 
 Mon, 07 Oct 2019 09:45:52 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id k6sm4135994ywh.60.2019.10.07.09.45.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 09:45:51 -0700 (PDT)
Date: Mon, 7 Oct 2019 12:45:51 -0400
From: Sean Paul <sean@poorly.run>
To: Derek Basehore <dbasehore@chromium.org>
Subject: Re: [PATCH v8 3/4] drm/connector: Split out orientation quirk
 detection
Message-ID: <20191007164551.GC126146@art_vandelay>
References: <20190925225833.7310-1-dbasehore@chromium.org>
 <20190925225833.7310-4-dbasehore@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925225833.7310-4-dbasehore@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_094555_647392_7BBDDE36 
X-CRM114-Status: GOOD (  23.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
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

On Wed, Sep 25, 2019 at 03:58:32PM -0700, Derek Basehore wrote:
> Not every platform needs quirk detection for panel orientation, so
> split the drm_connector_init_panel_orientation_property into two
> functions. One for platforms without the need for quirks, and the
> other for platforms that need quirks.
> 
> Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> Acked-by: Sam Ravnborg <sam@ravnborg.org>

Reviewed-by: Sean Paul <seanpaul@chromium.org>

> ---
>  drivers/gpu/drm/drm_connector.c         | 45 ++++++++++++++++++-------
>  drivers/gpu/drm/i915/display/icl_dsi.c  |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c |  4 +--
>  drivers/gpu/drm/i915/display/vlv_dsi.c  |  2 +-
>  include/drm/drm_connector.h             |  2 ++
>  5 files changed, 39 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> index 4c766624b20d..faef25683faf 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -1989,31 +1989,23 @@ EXPORT_SYMBOL(drm_connector_set_vrr_capable_property);
>   * drm_connector_init_panel_orientation_property -
>   *	initialize the connecters panel_orientation property
>   * @connector: connector for which to init the panel-orientation property.
> - * @width: width in pixels of the panel, used for panel quirk detection
> - * @height: height in pixels of the panel, used for panel quirk detection
>   *
>   * This function should only be called for built-in panels, after setting
>   * connector->display_info.panel_orientation first (if known).
>   *
> - * This function will check for platform specific (e.g. DMI based) quirks
> - * overriding display_info.panel_orientation first, then if panel_orientation
> - * is not DRM_MODE_PANEL_ORIENTATION_UNKNOWN it will attach the
> - * "panel orientation" property to the connector.
> + * This function will check if the panel_orientation is not
> + * DRM_MODE_PANEL_ORIENTATION_UNKNOWN. If not, it will attach the "panel
> + * orientation" property to the connector.
>   *
>   * Returns:
>   * Zero on success, negative errno on failure.
>   */
>  int drm_connector_init_panel_orientation_property(
> -	struct drm_connector *connector, int width, int height)
> +	struct drm_connector *connector)
>  {
>  	struct drm_device *dev = connector->dev;
>  	struct drm_display_info *info = &connector->display_info;
>  	struct drm_property *prop;
> -	int orientation_quirk;
> -
> -	orientation_quirk = drm_get_panel_orientation_quirk(width, height);
> -	if (orientation_quirk != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
> -		info->panel_orientation = orientation_quirk;
>  
>  	if (info->panel_orientation == DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
>  		return 0;
> @@ -2036,6 +2028,35 @@ int drm_connector_init_panel_orientation_property(
>  }
>  EXPORT_SYMBOL(drm_connector_init_panel_orientation_property);
>  
> +/**
> + * drm_connector_init_panel_orientation_property_quirk -
> + *	initialize the connecters panel_orientation property with a quirk
> + *	override
> + * @connector: connector for which to init the panel-orientation property.
> + * @width: width in pixels of the panel, used for panel quirk detection
> + * @height: height in pixels of the panel, used for panel quirk detection
> + *
> + * This function will check for platform specific (e.g. DMI based) quirks
> + * overriding display_info.panel_orientation first, then if panel_orientation
> + * is not DRM_MODE_PANEL_ORIENTATION_UNKNOWN it will attach the
> + * "panel orientation" property to the connector.
> + *
> + * Returns:
> + * Zero on success, negative errno on failure.
> + */
> +int drm_connector_init_panel_orientation_property_quirk(
> +	struct drm_connector *connector, int width, int height)
> +{
> +	int orientation_quirk;
> +
> +	orientation_quirk = drm_get_panel_orientation_quirk(width, height);
> +	if (orientation_quirk != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
> +		connector->display_info.panel_orientation = orientation_quirk;
> +
> +	return drm_connector_init_panel_orientation_property(connector);
> +}
> +EXPORT_SYMBOL(drm_connector_init_panel_orientation_property_quirk);
> +
>  int drm_connector_set_obj_prop(struct drm_mode_object *obj,
>  				    struct drm_property *property,
>  				    uint64_t value)
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 6e398c33a524..483287984090 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1538,7 +1538,7 @@ static void icl_dsi_add_properties(struct intel_connector *connector)
>  
>  	connector->base.display_info.panel_orientation =
>  			intel_dsi_get_panel_orientation(connector);
> -	drm_connector_init_panel_orientation_property(&connector->base,
> +	drm_connector_init_panel_orientation_property_quirk(&connector->base,
>  				connector->panel.fixed_mode->hdisplay,
>  				connector->panel.fixed_mode->vdisplay);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 921ad0a2f7ba..419413fa8165 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -7076,8 +7076,8 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  	intel_panel_setup_backlight(connector, pipe);
>  
>  	if (fixed_mode)
> -		drm_connector_init_panel_orientation_property(
> -			connector, fixed_mode->hdisplay, fixed_mode->vdisplay);
> +		drm_connector_init_panel_orientation_property_quirk(connector,
> +				fixed_mode->hdisplay, fixed_mode->vdisplay);
>  
>  	return true;
>  
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index a71b22bdd95b..46cfb0821c17 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -1634,7 +1634,7 @@ static void vlv_dsi_add_properties(struct intel_connector *connector)
>  
>  		connector->base.display_info.panel_orientation =
>  			vlv_dsi_get_panel_orientation(connector);
> -		drm_connector_init_panel_orientation_property(
> +		drm_connector_init_panel_orientation_property_quirk(
>  				&connector->base,
>  				connector->panel.fixed_mode->hdisplay,
>  				connector->panel.fixed_mode->vdisplay);
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index 681cb590f952..e3416ac11478 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -1540,6 +1540,8 @@ void drm_connector_set_link_status_property(struct drm_connector *connector,
>  void drm_connector_set_vrr_capable_property(
>  		struct drm_connector *connector, bool capable);
>  int drm_connector_init_panel_orientation_property(
> +	struct drm_connector *connector);
> +int drm_connector_init_panel_orientation_property_quirk(
>  	struct drm_connector *connector, int width, int height);
>  int drm_connector_attach_max_bpc_property(struct drm_connector *connector,
>  					  int min, int max);
> -- 
> 2.23.0.351.gc4317032e6-goog
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
