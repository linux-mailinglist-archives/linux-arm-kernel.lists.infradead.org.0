Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1157F55855
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 22:03:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QVulZvZP0BjOLcGnmAkYBk4wraHYw46A7yIQ85p6szg=; b=bXu/5RJbqZuxPq
	WFO5q+NrAGCNiZKcjrBm1D3GGQMoQcrxQyfc1mk7JWCEan8hRAL6ppkO+ofmmJsT98R6iXkmerzdF
	MEHCbydtygAGYoEODpvE/iDiRZBjiybPkI7IkclhHzFFIXm5gPAIrVr6dVnlETQSSYWa++Sn3USf8
	Q6yLAaI4DDypujxKWiM6VWSfb4EZRzZXC4tLrDQRrdjo59V0cqieooDhtTLrs+LFuPYECVcyfIzlu
	etVRo9Gpl/Q8dZTu94QDrwRSQH/MabS8agesoxhYZ6pFK++xvCn2+LGGKmZxatKYmyKpyDJsU+t2O
	LpGHn2McBf256UHw/o5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfrfN-0001FJ-Gu; Tue, 25 Jun 2019 20:03:45 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfrf7-0001Et-Gx
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 20:03:31 +0000
Received: by mail-ed1-x543.google.com with SMTP id w20so21354148edd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 13:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=KHs83YFBfNQZy/EqTIBWhIx/tAhxAnDwbcWzGiKotfU=;
 b=Z2+2CN1JavLtWBr2T1//ZKUDoABAKJ5zKuNVyzePsNE9TasWyMzfPaevhIMmrD1UeR
 z3wJRNgVVcilRdlu2CiBDWSpt9mkj8kL0YPZVtYExVwxhnkjrlPzT7uJx62fHhu9DMsP
 /uTZQQ2TO6IaS17xbaMUGi+TXmRL+dEuxiPOI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=KHs83YFBfNQZy/EqTIBWhIx/tAhxAnDwbcWzGiKotfU=;
 b=aqDwA86G16RrrfzSucrs6FpDMWloqQEySRvrpCzV+jYPcxAZPYjAVTH8ycNI4j5KQG
 E7Q6/holoT/RY9v/qb7ZNXlD6NnbmMOpw5pGyVq9JGn4omS2vVCg0ng79cAACIUVnpas
 q2hEAUmfuYnh/C3X5EbDdbKdBESQYLtvVLXbIcvy4ozw9fHOhuFWjF0M7wDAiUwzElNx
 6c3YhsB5TVDKmg17YXYfr3Rg1LEW7LjGiYVp7RoBvVpMRhbGGC6ULzdlL/vqofGFfR8Q
 UkU+HRjO593gjFbnXEdqIvltqAqKGKmPzzK4sb7nla6PimNuMjc3bHxQu0JVXmLSqKN4
 lnVA==
X-Gm-Message-State: APjAAAVn5PKQB4CMqE7Lb73vyrWa52FQkPPHiXGbdsfKLlragiWKY6zL
 LHJu8Nl7PvpDXdLnNiNYBRLkvg==
X-Google-Smtp-Source: APXvYqzWmKDhdveaUADlwWBYeUgo7D5urxpoW3hfNOobLVUCSmkrF5iNrK07R4dKXM7pAl9426NJYQ==
X-Received: by 2002:a17:906:5c4a:: with SMTP id
 c10mr338323ejr.15.1561493007994; 
 Tue, 25 Jun 2019 13:03:27 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id z22sm5063953edz.6.2019.06.25.13.03.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 13:03:27 -0700 (PDT)
Date: Tue, 25 Jun 2019 22:03:25 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Robert Beckett <bob.beckett@collabora.com>
Subject: Re: [PATCH v3 2/4] drm/imx: notify drm core before sending event
 during crtc disable
Message-ID: <20190625200324.GE12905@phenom.ffwll.local>
Mail-Followup-To: Robert Beckett <bob.beckett@collabora.com>,
 dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <cover.1561483965.git.bob.beckett@collabora.com>
 <066eb916ec920e0515367548e4af2ee28f9d0a43.1561483965.git.bob.beckett@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <066eb916ec920e0515367548e4af2ee28f9d0a43.1561483965.git.bob.beckett@collabora.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_130329_559843_9EC287F6 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Fabio Estevam <festevam@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sean Paul <sean@poorly.run>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 06:59:13PM +0100, Robert Beckett wrote:
> Notify drm core before sending pending events during crtc disable.
> This fixes the first event after disable having an old stale timestamp
> by having drm_crtc_vblank_off update the timestamp to now.
> 
> This was seen while debugging weston log message:
> Warning: computed repaint delay is insane: -8212 msec
> 
> This occured due to:
> 1. driver starts up
> 2. fbcon comes along and restores fbdev, enabling vblank
> 3. vblank_disable_fn fires via timer disabling vblank, keeping vblank
> seq number and time set at current value
> (some time later)
> 4. weston starts and does a modeset
> 5. atomic commit disables crtc while it does the modeset
> 6. ipu_crtc_atomic_disable sends vblank with old seq number and time
> 
> Fixes: a474478642d5 ("drm/imx: fix crtc vblank state regression")
> 
> Signed-off-by: Robert Beckett <bob.beckett@collabora.com>

Now that I understand what's going on here:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/imx/ipuv3-crtc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/imx/ipuv3-crtc.c b/drivers/gpu/drm/imx/ipuv3-crtc.c
> index 9cc1d678674f..e04d6efff1b5 100644
> --- a/drivers/gpu/drm/imx/ipuv3-crtc.c
> +++ b/drivers/gpu/drm/imx/ipuv3-crtc.c
> @@ -91,14 +91,14 @@ static void ipu_crtc_atomic_disable(struct drm_crtc *crtc,
>  	ipu_dc_disable(ipu);
>  	ipu_prg_disable(ipu);
>  
> +	drm_crtc_vblank_off(crtc);
> +
>  	spin_lock_irq(&crtc->dev->event_lock);
>  	if (crtc->state->event) {
>  		drm_crtc_send_vblank_event(crtc, crtc->state->event);
>  		crtc->state->event = NULL;
>  	}
>  	spin_unlock_irq(&crtc->dev->event_lock);
> -
> -	drm_crtc_vblank_off(crtc);
>  }
>  
>  static void imx_drm_crtc_reset(struct drm_crtc *crtc)
> -- 
> 2.18.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
