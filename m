Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E809D8DBEC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 19:32:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VlV9I8+ndY1kRU/omHKDmolRYG3spj0gQU3SNZSQ/Wk=; b=hvQUjZAsOAJXIy
	7wLNwxH35fT0kAf0OjDdB+dSm6InWPPRGTlp3dn6i2LcyBfMZDENP4vuf1iuvvN2ScDls5GOozj37
	/sgqyDb4sUaPyWZEoFplWk7dhNNV2Jym1OPsvWo9X9EZ5rm83PU7zknxvjOLk+9Esj1dyS20j9PEL
	s5x98wijx4V2vXNSjSL1wsfSZ8rTR5rYJMZiBgHLJm0rK6UqXgfInU0WpnCwrg0/apmS70ZKB+s9X
	dDhk450Q1Qd8o6Q96Z3Je83JFaE9UcxO0Mtgnddo2EOda/4RMiFcynxrYgxLVn7NxZXhKMpJlVV9R
	0PMaYl7owj6TvdP0v9Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxx8B-0000Q5-1r; Wed, 14 Aug 2019 17:32:15 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxx7w-0000Pj-A8
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 17:32:01 +0000
Received: by mail-ed1-x541.google.com with SMTP id g8so1536491edm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 10:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=Qm6tCEyYHljYJCx+l7YOn3eiOVSI2Q6xsqKk/Szr8xk=;
 b=k/gxraMcIYfFKbabTJ1uwZwJ8VES3yQLUNViHQMA+d1o/fXBUmn8Xlra/WXeXV9OK6
 oIRMcB4HXQV1z1V493ABRs1dndtGFVbP9eicDVkQRWohVqSbxdWxsF3LaxECADogDqgb
 PIOsIK/y/ZmlDZ6O+dGhdkqTrvL9DfZPgNEz8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=Qm6tCEyYHljYJCx+l7YOn3eiOVSI2Q6xsqKk/Szr8xk=;
 b=oKpJeLGjCU1Il1CMDXaULoc9yXOiF5xjaeJZBSuAKJTPEN/c1M2TRlwDMKtu0wLQav
 Tw+3+YG2GsDTQP3fTe5bsunphcwpLIxZJANnYF5IGX+kMHriSLEieJFOEMf3T2RiPP+M
 u68BwbvTSqA0Nekj7reo2+VBVioZF17p5crT9HHHp3YROF4pdZqTSf9j9bYHHPNu2R4h
 MTb37wux8UC3Fsnep/8lO8EM+gtpV+etjaMiTTR1RiiGrnttkKQAT/VlkKObrS8jZZ2E
 wLZYFbj/R4ll8hxnYlGQBnkBr5yClMtENftIwsi744rLWWzQT11t7lcfxWrxgaVnFMS6
 feCg==
X-Gm-Message-State: APjAAAXVKh9EWHeXaWuF8Ayji5V5RjPsoOPU7meyw9+TYoUatLsk85j0
 h+h2wogPVhiUZJKLXRorCcb7/g==
X-Google-Smtp-Source: APXvYqwRn9v1KmyAl7iLql4TVsuC4BlSbySrQOJ2/+/4v8L1EDdXOOJ8MyXwatv64FQ4zcha8koF8Q==
X-Received: by 2002:aa7:c353:: with SMTP id j19mr858899edr.292.1565803918776; 
 Wed, 14 Aug 2019 10:31:58 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id f6sm74361edn.63.2019.08.14.10.31.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 14 Aug 2019 10:31:58 -0700 (PDT)
Date: Wed, 14 Aug 2019 19:31:55 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Robert Chiras <robert.chiras@nxp.com>
Subject: Re: [PATCH v2 07/15] drm/mxsfb: Fix the vblank events
Message-ID: <20190814173155.GR7444@phenom.ffwll.local>
Mail-Followup-To: Robert Chiras <robert.chiras@nxp.com>,
 Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
 Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1565779731-1300-1-git-send-email-robert.chiras@nxp.com>
 <1565779731-1300-8-git-send-email-robert.chiras@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565779731-1300-8-git-send-email-robert.chiras@nxp.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_103200_355737_9C773689 
X-CRM114-Status: GOOD (  23.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Marek Vasut <marex@denx.de>, Mark Rutland <mark.rutland@arm.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
 linux-kernel@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 01:48:43PM +0300, Robert Chiras wrote:
> Currently, the vblank support is not correctly implemented in MXSFB_DRM
> driver. The call to drm_vblank_init is made with mode_config.num_crtc
> which at that time is 0. Because of this, vblank is not activated, so
> there won't be any vblank event submitted.
> For example, when running modetest with the '-v' parameter will result
> in an astronomical refresh rate (10000+ Hz), because of that.

Uh, that sounds a bit like a bug somewhere. If vblank doesn't work, we
should give userspace an error back.

Maybe we need more checks in drm_vblank_init()? Can you pls look into
that?

> 
> Signed-off-by: Robert Chiras <robert.chiras@nxp.com>
> ---
>  drivers/gpu/drm/mxsfb/mxsfb_drv.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.c b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> index 2743975..829abec 100644
> --- a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> +++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> @@ -38,6 +38,9 @@
>  #include "mxsfb_drv.h"
>  #include "mxsfb_regs.h"
>  
> +/* The eLCDIF max possible CRTCs */
> +#define MAX_CRTCS 1
> +
>  enum mxsfb_devtype {
>  	MXSFB_V3,
>  	MXSFB_V4,
> @@ -138,6 +141,8 @@ static void mxsfb_pipe_enable(struct drm_simple_display_pipe *pipe,
>  		mxsfb->connector = &mxsfb->panel_connector;
>  	}
>  
> +	drm_crtc_vblank_on(&pipe->crtc);
> +
>  	pm_runtime_get_sync(drm->dev);
>  	drm_panel_prepare(mxsfb->panel);
>  	mxsfb_crtc_enable(mxsfb);
> @@ -164,6 +169,8 @@ static void mxsfb_pipe_disable(struct drm_simple_display_pipe *pipe)
>  	}
>  	spin_unlock_irq(&drm->event_lock);
>  
> +	drm_crtc_vblank_off(&pipe->crtc);
> +
>  	if (mxsfb->connector != &mxsfb->panel_connector)
>  		mxsfb->connector = NULL;
>  }
> @@ -246,7 +253,7 @@ static int mxsfb_load(struct drm_device *drm, unsigned long flags)
>  
>  	pm_runtime_enable(drm->dev);
>  
> -	ret = drm_vblank_init(drm, drm->mode_config.num_crtc);
> +	ret = drm_vblank_init(drm, MAX_CRTCS);
>  	if (ret < 0) {
>  		dev_err(drm->dev, "Failed to initialise vblank\n");
>  		goto err_vblank;
> @@ -269,6 +276,8 @@ static int mxsfb_load(struct drm_device *drm, unsigned long flags)
>  		goto err_vblank;
>  	}
>  
> +	drm_crtc_vblank_off(&mxsfb->pipe.crtc);

Are you sure you need this one here? vblanks should be off after
drm_vblank_init() is called.

Thanks, Daniel

> +
>  	/*
>  	 * Attach panel only if there is one.
>  	 * If there is no panel attach, it must be a bridge. In this case, we
> -- 
> 2.7.4
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
