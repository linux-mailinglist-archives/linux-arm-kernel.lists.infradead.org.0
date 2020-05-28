Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6261E56FA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 07:47:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vBOZdgjYcQ7DaFHrHcKurE6ButHuFc2wGTXNeaMaRDo=; b=V/U1r/T1Py+hJw
	g9oXzFStdwyMKw9q74rjycp60WyGHyk21AzDPMwpx6KHrp+x0rF5n23itNNBGt595d4nefbdgyWAX
	vMFWyjRhKljR/SsH6PXjoqoDS/pK4esxulVT7AZ4ncMlDxMvFYZX38pQ96qtT9seMellCdaiHnBzn
	MaHFAxBZl2UpJbdNd39M56BAfx0j6O4sZ4ArjaWD/bfEu3c6T6jBm61/PI6HdxnoQcRxmv6i20OxN
	NIn6PvsMGiKEL/41EQ1epmeCwLJ9bMrz6Uli3o82b14oI5x8qC839E1IbaxZy4qwnnDAAF/qKQ5+z
	zfj0SwagbFmVSOUbV2PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeBNc-00062R-Ed; Thu, 28 May 2020 05:47:00 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeBNQ-000625-IL
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 05:46:50 +0000
Received: by mail-wm1-x343.google.com with SMTP id n5so1892426wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 22:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Ippx2MHf4bBIL8gswP/FHgb+jqJ3Lt0DInexFTWRZ30=;
 b=IJNgsJJOTWhZyjqt5tRNB2c6yFml1Jns6RP9JQv6paJ9WNg/5Slp2PlqulABwgH/X4
 bSPPL+ig62+FFK7mdLOMQcqWiZIY2PrwNwGL+rycfovS2EvIzNRcFKLT/DhDqWso4J9j
 Jv0FD0G8cxcC1AwI65zh8L7k71+qRo873c7jY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Ippx2MHf4bBIL8gswP/FHgb+jqJ3Lt0DInexFTWRZ30=;
 b=Sao0v/CtU8tFKYWdq0DV4CJuReSO47SmUI5JAOQF/SrphhzUdBS4d/UAlArq3M95co
 LZSRJ51TxdpvU0tEx5sclNetOJFQsM22QYAPVtqY12vlWoiibR0WcgtoBTH4HBISYYFN
 7To57ptHaK/Bq3oFwVBm3Ll3mUIQ/tKZsl0ow3Jp/Yn03HO04gf2U2ugbJWdwwDCOVnE
 dJ3IyQFVedPMtMko7yv2CJZo9m8q38+R4z1Qb6ZqB9RBin/DtIj1IEOnxYvFKvKrw9A0
 Fw1PDITvKi2VQu46t3xS/HXhnSjaHlcoxJGkd8dFsocQRkp/Opo39E3jIxiQpxwITZD6
 jqWw==
X-Gm-Message-State: AOAM532ssZGe/GxkqjiJcPAI7DQiLe1Sg3vOGD59zbjXGICVvNKscF+I
 zuVORGDUXUZ5P8od4rv8VY4b/A==
X-Google-Smtp-Source: ABdhPJwuag71of/p+Z9jCVFiTwZqc0Sg36w1Cu6Df/y3upnKUUn7+x132HaZweIfbIdVnWbpjuQAeQ==
X-Received: by 2002:a1c:22d7:: with SMTP id i206mr1583884wmi.186.1590644806739; 
 Wed, 27 May 2020 22:46:46 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 5sm4905641wmd.19.2020.05.27.22.46.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 22:46:45 -0700 (PDT)
Date: Thu, 28 May 2020 07:46:44 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/mxsfb: Call drm_crtc_vblank_on/off
Message-ID: <20200528054643.GQ206103@phenom.ffwll.local>
References: <20200527094757.1414174-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527094757.1414174-1-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_224648_608825_A9D41170 
X-CRM114-Status: GOOD (  18.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Stefan Agner <stefan@agner.ch>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 11:47:56AM +0200, Daniel Vetter wrote:
> mxsfb has vblank support, is atomic, but doesn't call
> drm_crtc_vblank_on/off as it should. Not good.
> 
> With my next patch to add the drm_crtc_vblank_reset to helpers this
> means not even the very first crtc enabling will vblanks work anymore,
> since they'll just stay off forever.
> 
> Since mxsfb doesn't have any vblank waits of its own in the
> enable/disable flow, nor an enable/disable_vblank callback we can do
> the on/off as the first respectively last operation, and it should all
> work.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Marek Vasut <marex@denx.de>
> Cc: Stefan Agner <stefan@agner.ch>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: linux-arm-kernel@lists.infradead.org

Ping for some ack/review on this one here, it's holding up the subsystem
wide fix in patch 2.

Thanks, Daniel

> ---
>  drivers/gpu/drm/mxsfb/mxsfb_drv.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.c b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> index 497cf443a9af..1891cd6deb2f 100644
> --- a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> +++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> @@ -124,6 +124,7 @@ static void mxsfb_pipe_enable(struct drm_simple_display_pipe *pipe,
>  	drm_panel_prepare(mxsfb->panel);
>  	mxsfb_crtc_enable(mxsfb);
>  	drm_panel_enable(mxsfb->panel);
> +	drm_crtc_vblank_on(&pipe->crtc);
>  }
>  
>  static void mxsfb_pipe_disable(struct drm_simple_display_pipe *pipe)
> @@ -133,6 +134,7 @@ static void mxsfb_pipe_disable(struct drm_simple_display_pipe *pipe)
>  	struct drm_crtc *crtc = &pipe->crtc;
>  	struct drm_pending_vblank_event *event;
>  
> +	drm_crtc_vblank_off(&pipe->crtc);
>  	drm_panel_disable(mxsfb->panel);
>  	mxsfb_crtc_disable(mxsfb);
>  	drm_panel_unprepare(mxsfb->panel);
> -- 
> 2.26.2
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
