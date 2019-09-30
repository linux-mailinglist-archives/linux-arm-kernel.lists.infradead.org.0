Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A08FBC1F4F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 12:40:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4eXzO9I1fuVPSKISVAe7yT/iMsj7j3nEV2FyOx0QlDw=; b=NULnAC1x4wjaxw
	OZu//XqCMr6eao5x54Wkc63lvjPFw9YF1mHSt+pcvxhVF1YxZnBDAp414p530AbF+5NDrSICITDYC
	b44okoEfTEE3lhLHLsn87XAuJ58I6WkwUfF3qvdDame9GXhzr6LcxZTPJsldU7oXFe0hvqCkVQTBn
	cL26QOz3ao2cXGSuGoY45Q4HB2jnrPaJmfRBLHls43RJsZ7FPRgiNAM2I4HB0JHDyQ2XKx9pGKXmj
	/C8j3fovbjuC/V3I05VdweOaGebFnoXfCY/02BF/XmFlqis/m5m+CCHzYJ0ayDBdkawvBykruAzuR
	+PTfqguaetNGiK3S+Ovg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEt5s-0000sa-NN; Mon, 30 Sep 2019 10:39:52 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEt5k-0000rP-3v
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 10:39:45 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Sep 2019 03:39:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,565,1559545200"; d="scan'208";a="202839979"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 30 Sep 2019 03:39:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Sep 2019 13:39:31 +0300
Date: Mon, 30 Sep 2019 13:39:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jeykumar Sankaran <jsanka@codeaurora.org>
Subject: Re: [PATCH] drm: add fb max width/height fields to drm_mode_config
Message-ID: <20190930103931.GZ1208@intel.com>
References: <1569634131-13875-1-git-send-email-jsanka@codeaurora.org>
 <1569634131-13875-2-git-send-email-jsanka@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569634131-13875-2-git-send-email-jsanka@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_033944_172981_CCBBFF99 
X-CRM114-Status: GOOD (  23.39  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, seanpaul@chromium.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 narmstrong@baylibre.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 06:28:51PM -0700, Jeykumar Sankaran wrote:
> The mode_config max width/height values determine the maximum
> resolution the pixel reader can handle.

Not according to the docs I "fixed" a while ago.

> But the same values are
> used to restrict the size of the framebuffer creation. Hardware's
> with scaling blocks can operate on framebuffers larger/smaller than
> that of the pixel reader resolutions by scaling them down/up before
> rendering.
> =

> This changes adds a separate framebuffer max width/height fields
> in drm_mode_config to allow vendors to set if they are different
> than that of the default max resolution values.

If you're going to change the meaning of the old values you need
to fix the drivers too.

Personally I don't see too much point in this since you most likely
want to validate all the other timings as well, and so likely need
some kind of mode_valid implementation anyway. Hence to validate
modes there's not much benefit of having global min/max values.

> =

> Vendors setting these fields should fix their mode_set paths too
> by filtering and validating the modes against the appropriate max
> fields in their mode_valid() implementations.
> =

> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> Signed-off-by: Jeykumar Sankaran <jsanka@codeaurora.org>
> ---
>  drivers/gpu/drm/drm_framebuffer.c | 15 +++++++++++----
>  include/drm/drm_mode_config.h     |  3 +++
>  2 files changed, 14 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/drm_framebuffer.c b/drivers/gpu/drm/drm_fram=
ebuffer.c
> index 5756431..2083168 100644
> --- a/drivers/gpu/drm/drm_framebuffer.c
> +++ b/drivers/gpu/drm/drm_framebuffer.c
> @@ -300,14 +300,21 @@ struct drm_framebuffer *
>  		return ERR_PTR(-EINVAL);
>  	}
>  =

> -	if ((config->min_width > r->width) || (r->width > config->max_width)) {
> +	if ((config->min_width > r->width) ||
> +	    (!config->max_fb_width && r->width > config->max_width) ||
> +	    (config->max_fb_width && r->width > config->max_fb_width)) {
>  		DRM_DEBUG_KMS("bad framebuffer width %d, should be >=3D %d && <=3D %d\=
n",
> -			  r->width, config->min_width, config->max_width);
> +			r->width, config->min_width, config->max_fb_width ?
> +			config->max_fb_width : config->max_width);
>  		return ERR_PTR(-EINVAL);
>  	}
> -	if ((config->min_height > r->height) || (r->height > config->max_height=
)) {
> +
> +	if ((config->min_height > r->height) ||
> +	    (!config->max_fb_height && r->height > config->max_height) ||
> +	    (config->max_fb_height && r->height > config->max_fb_height)) {
>  		DRM_DEBUG_KMS("bad framebuffer height %d, should be >=3D %d && <=3D %d=
\n",
> -			  r->height, config->min_height, config->max_height);
> +			r->height, config->min_height, config->max_fb_width ?
> +			config->max_fb_height : config->max_height);
>  		return ERR_PTR(-EINVAL);
>  	}
>  =

> diff --git a/include/drm/drm_mode_config.h b/include/drm/drm_mode_config.h
> index 3bcbe30..c6394ed 100644
> --- a/include/drm/drm_mode_config.h
> +++ b/include/drm/drm_mode_config.h
> @@ -339,6 +339,8 @@ struct drm_mode_config_funcs {
>   * @min_height: minimum fb pixel height on this device
>   * @max_width: maximum fb pixel width on this device
>   * @max_height: maximum fb pixel height on this device
> + * @max_fb_width: maximum fb buffer width if differs from max_width
> + * @max_fb_height: maximum fb buffer height if differs from  max_height
>   * @funcs: core driver provided mode setting functions
>   * @fb_base: base address of the framebuffer
>   * @poll_enabled: track polling support for this device
> @@ -523,6 +525,7 @@ struct drm_mode_config {
>  =

>  	int min_width, min_height;
>  	int max_width, max_height;
> +	int max_fb_width, max_fb_height;
>  	const struct drm_mode_config_funcs *funcs;
>  	resource_size_t fb_base;
>  =

> -- =

> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project
> =

> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
