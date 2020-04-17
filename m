Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE76D1AE08E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 17:08:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZNi4xeNssbofHOTrXnl/GUfmys/KaOCYA52flHv7kI=; b=qV8/Wga1lDOTvh
	RDVSG/eLFlvMg1+JxFrf2DF5cIcPMpjMYXZNCXbopb6su0PU4rvtnBigg8J50vxUHqG1vuXn9fec1
	LUHPAqYczrbXQOaw5VxKsBEURML03qThJyvOW4QKSG+Kd1kbGY9Jqo6jmSubiOHWEK27jhZ0CNu0W
	Od/1N8wWup9PWzhK2BXV9n1h4mK1UP4okgtj6XNrFuO6FV4RE36FXebQ6bPdTl98gklkV/mX0AjRk
	jOPdUpQxdIvpGSlfFfnDmWfOypbRCXlUSRNM0vwtVHyZqvxwJUMWQeLZle+G4e87WGvqfgsdwaJQS
	bBDLkvpWSsfMooHfQ+Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPSbk-00026y-VJ; Fri, 17 Apr 2020 15:08:44 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPSab-00017y-Vz
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 15:07:37 +0000
Received: by mail-wm1-x343.google.com with SMTP id a81so3338099wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 08:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=rUsEOWcAvFI1LhmxsMY2a1aelPmLjYCMdOuX/AykuqQ=;
 b=W8XbGSMaun0zeoA8+/rTue3oyunGjJ8y8t1sqAjRYfl2ZjbJu7x1v8CbcoQ2PXclqN
 jHizuTlK37ShCu5D3pAd9a2PZ6tX7bUa7Sm/9v5VHQKGkMpfm/wFbGc0IUPQdVXgEus7
 6L0SjeWPa0EFheYB0mTYZ9OWzgz479sg+VgK4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=rUsEOWcAvFI1LhmxsMY2a1aelPmLjYCMdOuX/AykuqQ=;
 b=jm8bEpbtGGP1uxs1Hs85bmidPo7ubKBUVnXCK2rCHZf+IV6qOtDvyWg2gD6XacPngD
 a5Aj35wA7Ekp/EgUhHDA36IJCsi7anl/zMqRG4vxZiMJqF0f/EoVkyP+/TsWlWk9dEqc
 3X9MDXTAD6jUqcsFqGXFBG14DtJq9/lnBE4JlaxQ3QGa0f4Lp+5PWIj5TyZTTKE284aA
 CCg29ne0Lrn2u9VxQ9EXB1OmWofKvN0LLf/PgUHFfYg25BHJTKBHfD8cdXDqBW6qnHLz
 Kix8tt4OiHIC7KOEZBG027DCYEL7rfeQo+A8PpEJbXnbMughKjzLpMoHSTJt2pDqP3XN
 2q9A==
X-Gm-Message-State: AGi0PubLYwFnxEM/WWpA7YiWNmKHbAH/7QmFZ60KtezzBXytDuedC6f7
 TIjGNtJ5X86JtUyDwIkaiPpN/Q==
X-Google-Smtp-Source: APiQypItQkdmBtoPoPH/+hxfLHTGNVt03vOKK3QD/jt5bfi7N0gV8HkoQH1eX+9YKTT2bj2qlCwvYg==
X-Received: by 2002:a7b:c959:: with SMTP id i25mr3795237wml.20.1587136052084; 
 Fri, 17 Apr 2020 08:07:32 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y18sm8934564wmc.45.2020.04.17.08.07.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 08:07:31 -0700 (PDT)
Date: Fri, 17 Apr 2020 17:07:29 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v5 1/8] drm/fourcc: Add modifier definitions for
 describing Amlogic Video Framebuffer Compression
Message-ID: <20200417150729.GP3456981@phenom.ffwll.local>
Mail-Followup-To: Neil Armstrong <narmstrong@baylibre.com>,
 dri-devel@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Kevin Hilman <khilman@baylibre.com>
References: <20200416152500.29429-1-narmstrong@baylibre.com>
 <20200416152500.29429-2-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416152500.29429-2-narmstrong@baylibre.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_080734_510556_6BD318BD 
X-CRM114-Status: GOOD (  22.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 05:24:53PM +0200, Neil Armstrong wrote:
> Amlogic uses a proprietary lossless image compression protocol and format
> for their hardware video codec accelerators, either video decoders or
> video input encoders.
> 
> It considerably reduces memory bandwidth while writing and reading
> frames in memory.
> 
> The underlying storage is considered to be 3 components, 8bit or 10-bit
> per component, YCbCr 420, single plane :
> - DRM_FORMAT_YUV420_8BIT
> - DRM_FORMAT_YUV420_10BIT
> 
> This modifier will be notably added to DMA-BUF frames imported from the V4L2
> Amlogic VDEC decoder.
> 
> This introduces the basic layout composed of:
> - a body content organized in 64x32 superblocks with 4096 bytes per
>   superblock in default mode.
> - a 32 bytes per 128x64 header block
> 
> This layout is tranferrable between Amlogic SoCs supporting this modifier.
> 
> Tested-by: Kevin Hilman <khilman@baylibre.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  include/uapi/drm/drm_fourcc.h | 39 +++++++++++++++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
> index 8bc0b31597d8..a1b163a5641f 100644
> --- a/include/uapi/drm/drm_fourcc.h
> +++ b/include/uapi/drm/drm_fourcc.h
> @@ -309,6 +309,7 @@ extern "C" {
>  #define DRM_FORMAT_MOD_VENDOR_BROADCOM 0x07
>  #define DRM_FORMAT_MOD_VENDOR_ARM     0x08
>  #define DRM_FORMAT_MOD_VENDOR_ALLWINNER 0x09
> +#define DRM_FORMAT_MOD_VENDOR_AMLOGIC 0x0a
>  
>  /* add more to the end as needed */
>  
> @@ -804,6 +805,44 @@ extern "C" {
>   */
>  #define DRM_FORMAT_MOD_ALLWINNER_TILED fourcc_mod_code(ALLWINNER, 1)
>  
> +/*
> + * Amlogic Video Framebuffer Compression modifiers
> + *
> + * Amlogic uses a proprietary lossless image compression protocol and format
> + * for their hardware video codec accelerators, either video decoders or
> + * video input encoders.
> + *
> + * It considerably reduces memory bandwidth while writing and reading
> + * frames in memory.
> + *
> + * The underlying storage is considered to be 3 components, 8bit or 10-bit
> + * per component YCbCr 420, single plane :
> + * - DRM_FORMAT_YUV420_8BIT
> + * - DRM_FORMAT_YUV420_10BIT
> + *
> + * The first 8 bits of the mode defines the layout, then the following 8 bits
> + * defines the options changing the layout.

None of the modifiers you're doing seem to have these other 8 bits
defined anywhere. And it's not encoded in your modifiers. Can't we just
enumerate the ones we have/need and done?

> + *
> + * Not all combinations are valid, and different SoCs may support different
> + * combinations of layout and options.
> + */
> +#define DRM_FORMAT_MOD_AMLOGIC_FBC(__modes) fourcc_mod_code(AMLOGIC, __modes)
> +
> +/* Amlogic FBC Layouts */
> +#define DRM_FORMAT_MOD_AMLOGIC_FBC_LAYOUT_MASK		(0xf << 0)
> +
> +/*
> + * Amlogic FBC Basic Layout
> + *
> + * The basic layout is composed of:
> + * - a body content organized in 64x32 superblocks with 4096 bytes per
> + *   superblock in default mode.
> + * - a 32 bytes per 128x64 header block
> + *
> + * This layout is transferrable between Amlogic SoCs supporting this modifier.
> + */
> +#define DRM_FORMAT_MOD_AMLOGIC_FBC_LAYOUT_BASIC		(1ULL << 0)

This is kinda confusing, since this isn't actually the modifier, but the
mode of the modifer. Generally what we do is only define the former, with
maybe some macros to extract stuff.

To make this more mistake-proof I'd only define the full modifier code.
Definitely don't add a #define with the DRM_FORMAT_MOD_ prefix which isn't
actually a full modifier code.
-Daniel

> +
>  #if defined(__cplusplus)
>  }
>  #endif
> -- 
> 2.22.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
