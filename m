Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 483091545AA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 15:02:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NsLa2+/oNXybm/WZuHfW7ZgC6YBnIqGNTPwJ3uruyT4=; b=FElrOSd3ywXDuQ
	VA/kh5PFFQtH7Nc47XyWH6jaB579f6JsRygj7LnZL+2ioteTAHHLjixQkjOYvcu28YNArZNRdd81b
	6aMHodJ3ph4Xfy+5Lmt+SxzEkYC+36cEt641AX6i/Z8hPX0I8HLbMjWBn6ogQkpJ1fWoUYqekDhcg
	cYzyLOVXx9uB7qVReHPBj4TO6vYpkNVhmNEfYzp8aEwRV275E+F9a0mZODB5D+EAEl2MPD4nELi3F
	FpnEtCX0+lwa2bxb06EtygBrjMJL3mP4CyZ2QH14W+pJUwXiNyIYKXOTQTS42caKQrK3drpmz06Bc
	fQrz48nEKd8O2rqAAbqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izhj8-0002v2-IQ; Thu, 06 Feb 2020 14:01:54 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izhiy-0002sm-P9
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 14:01:48 +0000
Received: by mail-yw1-xc41.google.com with SMTP id i190so5106343ywc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 06:01:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DRB074YSrrw/Ajxbs86TrGm+cCr0lMPv565TdcUESKg=;
 b=SNO7Opxbqqr4USlH83nYZoF8Y/k3VNM1/AJNyi744lvue8HQAM51fJoc9sEosvRjFg
 +c0VwftSCxrSYWER5VkCTAr0Cp7KG6d7nYGuIIxKGAqI6ZGBKo7ozDQJtTYjTi+DGKlm
 0rBl1XN6C7x96HGnj20QkKLpYjFIpo4atXb42xL1763ihEgyuOKUrjWnpyX3U8OUzNqU
 XGs69QadXJG9DpydCEOZVMCXzdJxlo5m6s4QNFnxlfglpt+ktXv5yjdu60b/9FUaW6gF
 sg6Sik5l1eiN65KhjjBywlodgftu087eQ1BUGc+m6Z4vpsdUGq7x2/FE6s7ulU5gqIij
 1YpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DRB074YSrrw/Ajxbs86TrGm+cCr0lMPv565TdcUESKg=;
 b=XJBCWt5loVvac8EFtGmzYIzIJUst1AMHkIZwiHonQJQ1bl3Z3h2U1SY1Vv2XoesxTP
 fs+2sQNGWLV3yHCNYvNuUXHEuLV9/HNG9Ll1nYpYMUWDXckaP/7VuE3siWOxAIjv/8GB
 AGAyvkZfoz83BXpQlAsJzOG2o3NDqWwzkaeSyYjijQddO+EOhiezMX5LEDBSDjHcoi3/
 dgQL6RaoyNFnwXMfLOu+ru+Il8XUZCaoLVoFRqgvSgMcyyvXjgqioLGqyEAGJSDst5WN
 5tUStUL4BjxP1rZVKlmwQP7S8f7DBBQSqpt68a/Lr+kBN9pm+rjt3FpaISVDICIMW2Ho
 FrDw==
X-Gm-Message-State: APjAAAW7FKVykdS08z5O81zA8Kz6SJcfWt/uABCdmp+Ps3c/LphHKLyA
 fDqeHn5K77KcCKnVuW1BDwfWZw==
X-Google-Smtp-Source: APXvYqxJ+qRIn5vw9ovBPy9eJ6PeFCEu6ye2FTwRuxN+5nN5TWx37YeBqVpz08U44oMti/32NqN4jw==
X-Received: by 2002:a81:37d3:: with SMTP id e202mr3220444ywa.292.1580997703374; 
 Thu, 06 Feb 2020 06:01:43 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id m137sm1471226ywd.108.2020.02.06.06.01.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 06:01:42 -0800 (PST)
Date: Thu, 6 Feb 2020 09:01:40 -0500
From: Sean Paul <sean@poorly.run>
To: evanbenn@google.com
Subject: Re: [PATCH] drm/mediatek: Ensure the cursor plane is on top of other
 overlays
Message-ID: <20200206140140.GA18465@art_vandelay>
References: <1580441226.9516.1.camel@mtksdaap41>
 <20200206065951.213862-1-evanbenn@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200206065951.213862-1-evanbenn@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_060145_379140_1D4CC28F 
X-CRM114-Status: GOOD (  22.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dcastagna@chromium.org, evanbenn@gmail.com, evanbenn@chromium.org,
 dri-devel@lists.freedesktop.org, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, p.zabel@pengutronix.de, ck.hu@mediatek.com,
 seanpaul@chromium.org, sean@poorly.run, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 06, 2020 at 05:59:51PM +1100, evanbenn@google.com wrote:
> From: Sean Paul <seanpaul@chromium.org>
> 
> Currently the cursor is placed on the first overlay plane, which means
> it will be at the bottom of the stack when the hw does the compositing
> with anything other than primary plane. Since mtk doesn't support plane
> zpos, change the cursor location to the top-most plane.
> 
> Signed-off-by: Evan Benn <evanbenn@chromium.org>

Hi Evan,
Thanks for spotting the issue! I think this should probably be 2 patches, one to
fix crtc init and then the cursor patch on top of that. We generally try to only
do one thing per patch.

A few other nits below..

> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 29 +++++++++++++++++--------
>  1 file changed, 20 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index 7b392d6c71cc..d4078c2089e0 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -658,10 +658,21 @@ static const struct drm_crtc_helper_funcs mtk_crtc_helper_funcs = {
>  
>  static int mtk_drm_crtc_init(struct drm_device *drm,
>  			     struct mtk_drm_crtc *mtk_crtc,
> -			     struct drm_plane *primary,
> -			     struct drm_plane *cursor, unsigned int pipe)
> +			     unsigned int pipe)
>  {
> -	int ret;
> +	int i, ret;
> +

extra line

> +	struct drm_plane *primary = NULL;
> +	struct drm_plane *cursor = NULL;

These should be on top of the int declaration

> +
> +	for (i = 0; i < mtk_crtc->layer_nr; ++i) {

We don't really do pre-increment in kernel for loops

> +		if (!primary && mtk_crtc->planes[i].type ==
> +				DRM_PLANE_TYPE_PRIMARY)

Line breaks should be around '&&':

                if (!primary &&
                    mtk_crtc->planes[i].type == DRM_PLANE_TYPE_PRIMARY)

> +			primary = &mtk_crtc->planes[i];
> +		if (!cursor && mtk_crtc->planes[i].type ==

else if?

> +				DRM_PLANE_TYPE_CURSOR)
> +			cursor = &mtk_crtc->planes[i];


Since we can only have one primary and one cursor, the NULL checks on primary
and cursor are unnecessary, you can just blindly assign them when you hit a
plane of the right type. If the driver creates multiples the behavior is
undefined anyways.

> +	}
>  
>  	ret = drm_crtc_init_with_planes(drm, &mtk_crtc->base, primary, cursor,
>  					&mtk_crtc_funcs, NULL);
> @@ -711,11 +722,12 @@ static int mtk_drm_crtc_num_comp_planes(struct mtk_drm_crtc *mtk_crtc,
>  }
>  
>  static inline
> -enum drm_plane_type mtk_drm_crtc_plane_type(unsigned int plane_idx)
> +enum drm_plane_type mtk_drm_crtc_plane_type(unsigned int plane_idx,
> +					    unsigned int num_planes)
>  {
>  	if (plane_idx == 0)
>  		return DRM_PLANE_TYPE_PRIMARY;
> -	else if (plane_idx == 1)
> +	else if (plane_idx == (num_planes - 1))
>  		return DRM_PLANE_TYPE_CURSOR;
>  	else
>  		return DRM_PLANE_TYPE_OVERLAY;
> @@ -734,7 +746,8 @@ static int mtk_drm_crtc_init_comp_planes(struct drm_device *drm_dev,
>  		ret = mtk_plane_init(drm_dev,
>  				&mtk_crtc->planes[mtk_crtc->layer_nr],
>  				BIT(pipe),
> -				mtk_drm_crtc_plane_type(mtk_crtc->layer_nr),
> +				mtk_drm_crtc_plane_type(mtk_crtc->layer_nr,
> +							num_planes),
>  				mtk_ddp_comp_supported_rotations(comp));
>  		if (ret)
>  			return ret;
> @@ -830,9 +843,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>  			return ret;
>  	}
>  
> -	ret = mtk_drm_crtc_init(drm_dev, mtk_crtc, &mtk_crtc->planes[0],
> -				mtk_crtc->layer_nr > 1 ? &mtk_crtc->planes[1] :
> -				NULL, pipe);
> +	ret = mtk_drm_crtc_init(drm_dev, mtk_crtc, pipe);
>  	if (ret < 0)
>  		return ret;
>  
> -- 
> 2.25.0.341.g760bfbb309-goog
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
