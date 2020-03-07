Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E841817CD3E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 10:26:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QIVirz0MpJ57FSexOsOrxzAIun4xkYz0gdPaMdBLG5Q=; b=S+6D2uroAnUL0B
	zypvqFzge0qni/9JJuzxcAjsZ6oFaZWUr2jxim8n0nDFsLmMu2ZDwmuLzX7NF0rU78PZubvgb0V5x
	4zEQl3hvGZfe77nmB9QWVTSDuiIj/XSOFm553lIsjV2w/kCUW1w9a35SFgitV3hywx5l03Hf2Rj/J
	yElaN0WXq+vMoz+tY9f+DBmUHEtujO6IhPO+Vb+JkiAvtpd95RYUih19gtguKR9qsbud+ecwh18GJ
	TXb9bOdZ0GXyM98lfLLwT4/dhScE2Sl6G6/adeM29SGvuectUVDlsly9j32NQzbn5EXFAvo3wHZCg
	a04UYZyGljwuPr/tAKgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAViU-00017d-05; Sat, 07 Mar 2020 09:25:54 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAViK-00017D-Lz
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 09:25:47 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 9AF258050C;
 Sat,  7 Mar 2020 10:25:40 +0100 (CET)
Date: Sat, 7 Mar 2020 10:25:39 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [PATCH 38/51] drm/stm: Drop explicit drm_mode_config_cleanup call
Message-ID: <20200307092539.GG28810@ravnborg.org>
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
 <20200302222631.3861340-39-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302222631.3861340-39-daniel.vetter@ffwll.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=XpTUx2N9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8
 a=8b9GpE9nAAAA:8 a=P1BnusSwAAAA:8 a=QyXUC8HyAAAA:8 a=KKAkSRfTAAAA:8
 a=pGLkceISAAAA:8 a=phlkwaE_AAAA:8 a=JfrnYn6hAAAA:8 a=e5mUnYsNAAAA:8
 a=2cXivglsN4UzH7uZjNsA:9 a=m2WR8TVE0Z7MX67Z:21 a=-yedZiAf9xy0JtVK:21
 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22 a=T3LWEMljR5ZiDmsYVIUa:22
 a=D0XLA9XvdZm18NrgonBM:22 a=cvBusfyB2V15izCimMoJ:22
 a=uKTQOUHymn4LaG7oTSIC:22 a=1CNFftbPRP8L7MoqJWF3:22
 a=Vxmtnl_E_bksehYqCbjh:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_012545_087569_9126B807 
X-CRM114-Status: GOOD (  19.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Philippe Cornu <philippe.cornu@st.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Yannick Fertre <yannick.fertre@st.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 02, 2020 at 11:26:18PM +0100, Daniel Vetter wrote:
> It's right above the drm_dev_put().
> 
> This is made possible by a preceeding patch which added a drmm_
> cleanup action to drm_mode_config_init(), hence all we need to do to
> ensure that drm_mode_config_cleanup() is run on final drm_device
> cleanup is check the new error code for _init().
> 
> Aside: Another driver with a bit much devm_kzalloc, which should
> probably use drmm_kzalloc instead ...
> 
> v2: Explain why this cleanup is possible (Laurent).
> 
> v3: Use drmm_mode_config_init() for more clarity (Sam, Thomas)
> 
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Acked-by: Philippe Cornu <philippe.cornu@st.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Yannick Fertre <yannick.fertre@st.com>
> Cc: Philippe Cornu <philippe.cornu@st.com>
> Cc: Benjamin Gaignard <benjamin.gaignard@linaro.org>
> Cc: Vincent Abriou <vincent.abriou@st.com>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Cc: linux-arm-kernel@lists.infradead.org

Acked-by: Sam Ravnborg <sam@ravnborg.org>

> ---
>  drivers/gpu/drm/stm/drv.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/stm/drv.c b/drivers/gpu/drm/stm/drv.c
> index ea9fcbdc68b3..0f85dd86cafa 100644
> --- a/drivers/gpu/drm/stm/drv.c
> +++ b/drivers/gpu/drm/stm/drv.c
> @@ -88,7 +88,9 @@ static int drv_load(struct drm_device *ddev)
>  
>  	ddev->dev_private = (void *)ldev;
>  
> -	drm_mode_config_init(ddev);
> +	ret = drmm_mode_config_init(ddev);
> +	if (ret)
> +		return ret;
>  
>  	/*
>  	 * set max width and height as default value.
> @@ -103,7 +105,7 @@ static int drv_load(struct drm_device *ddev)
>  
>  	ret = ltdc_load(ddev);
>  	if (ret)
> -		goto err;
> +		return ret;
>  
>  	drm_mode_config_reset(ddev);
>  	drm_kms_helper_poll_init(ddev);
> @@ -111,9 +113,6 @@ static int drv_load(struct drm_device *ddev)
>  	platform_set_drvdata(pdev, ddev);
>  
>  	return 0;
> -err:
> -	drm_mode_config_cleanup(ddev);
> -	return ret;
>  }
>  
>  static void drv_unload(struct drm_device *ddev)
> @@ -122,7 +121,6 @@ static void drv_unload(struct drm_device *ddev)
>  
>  	drm_kms_helper_poll_fini(ddev);
>  	ltdc_unload(ddev);
> -	drm_mode_config_cleanup(ddev);
>  }
>  
>  static __maybe_unused int drv_suspend(struct device *dev)
> -- 
> 2.24.1
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
