Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BF3558AA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 22:23:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OoNmMg4TQdgXmLheC54TiAHo0/L5EpmW0zDnEblPUvA=; b=GUomXo89Eximjt
	MgbtkYfi6YiJuYC95YZaobyB//eqIkT0ReeTrSwf/+OdIkBs5GAgb+LM11yernP3XVKeentjgzHqc
	OxO93xqxPbClo7xbJdcUK7FaWGJQ4c0ZZ/QazJvQW52JfBIi1m9z2BKkhLZQvYg44fFpt4NDZR3Wa
	lll4tpQDvh51Wc+RQNLIPYUbRJILXRoCRg8oCWfsbKwEUESgHESI0MFPFLuuLNHFVNUerNj48x5hW
	vIBd7kkYSP15Ts+TChxI+aje8LI4IeLwAMTUcClde6Gh83daBzov5gre9eJZmWioxBxv9SHfPBThl
	w+SHyIhlboetm2/ZmQRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfry3-0008Mo-OQ; Tue, 25 Jun 2019 20:23:03 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfrxp-0008MR-K0
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 20:22:50 +0000
Received: by mail-ed1-x541.google.com with SMTP id m10so29047744edv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 13:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=IbaPTmVSK1Auuensg5mZK66IsBxApH2FblnD8ib5Dg0=;
 b=DZxe9WXKrsmxaaroa2rbKK1EsEntZAaqVR/+UjyyI7hGgL3bekEganJsyf+fyFbk0X
 PktDQ/QOboGkcqQb2mlJEWZ60RRAFBy6DQixbZ+b8tm+c4oLCvC4oKBiMlUvm+ludtHT
 A88M05J210TfYPMN3036eGm3lcpipS7i2woEk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=IbaPTmVSK1Auuensg5mZK66IsBxApH2FblnD8ib5Dg0=;
 b=VbPAXfE1tgYpL2A49CvNmfnCJEZ5ZyaOt6Xxnq70AA5gdXB56p3LatbLn8PlhVCxwT
 TCh0HrCMhSgq3OA4DMTnfnJFdd7Y/wLb3mK/vjQGSswzHDGQ4Gna6bxAeXdLYDF9sHwo
 B97oAu/Eb1MP9Am7pKVUZKy9vG805oeUlzPjNtZeBich8Xs91VwRCBdgr1YQIVbDQ8I2
 n0OiYPezPERaCmkSdw7F2/FI6Eq7VYMl5Kb2Npddq4vs1F4CqL9g4/DG3ZIWDXtOQ/bH
 zEMTU897052JgZtwiR0zvoFUyQOjrtnQcs4D01CmSTUUq9Bf6ovvmJ7bWtJGAWZNC3cj
 pdiw==
X-Gm-Message-State: APjAAAWX+OTRqpV7g4XB11wX46QgV0QpylUbs3yAGbi36xloxGVYQT1x
 wXNrORWvhh0bwCZcwVRTqeSwtQ==
X-Google-Smtp-Source: APXvYqzf4IQVb9h7Dov4iMeSGmus3NKT567mUeCO3NbEkQYOBEowGMzZ7rMIdDBuAYAw+tichO+cdg==
X-Received: by 2002:a17:906:b211:: with SMTP id
 p17mr410520ejz.11.1561494168042; 
 Tue, 25 Jun 2019 13:22:48 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id s5sm4839873edh.3.2019.06.25.13.22.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 13:22:47 -0700 (PDT)
Date: Tue, 25 Jun 2019 22:22:44 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Robert Beckett <bob.beckett@collabora.com>
Subject: Re: [PATCH v3 4/4] drm/imx: only send event on crtc disable if kept
 disabled
Message-ID: <20190625202244.GG12905@phenom.ffwll.local>
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
 <6599f538740632c5524bab86514b8ba026798537.1561483965.git.bob.beckett@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6599f538740632c5524bab86514b8ba026798537.1561483965.git.bob.beckett@collabora.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_132249_661345_65109A0D 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
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

On Tue, Jun 25, 2019 at 06:59:15PM +0100, Robert Beckett wrote:
> The event will be sent as part of the vblank enable during the modeset
> if the crtc is not being kept disabled.
> 
> Fixes: 5f2f911578fb ("drm/imx: atomic phase 3 step 1: Use atomic configuration")
> 
> Signed-off-by: Robert Beckett <bob.beckett@collabora.com>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/imx/ipuv3-crtc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/imx/ipuv3-crtc.c b/drivers/gpu/drm/imx/ipuv3-crtc.c
> index e04d6efff1b5..c436a28d50e4 100644
> --- a/drivers/gpu/drm/imx/ipuv3-crtc.c
> +++ b/drivers/gpu/drm/imx/ipuv3-crtc.c
> @@ -94,7 +94,7 @@ static void ipu_crtc_atomic_disable(struct drm_crtc *crtc,
>  	drm_crtc_vblank_off(crtc);
>  
>  	spin_lock_irq(&crtc->dev->event_lock);
> -	if (crtc->state->event) {
> +	if (crtc->state->event && !crtc->state->active) {
>  		drm_crtc_send_vblank_event(crtc, crtc->state->event);
>  		crtc->state->event = NULL;
>  	}
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
