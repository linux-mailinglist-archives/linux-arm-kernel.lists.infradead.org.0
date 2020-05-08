Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 141361CA57A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 09:54:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=99IszxPWnZpa9oNpk+FQY1G1H0GK1KS267IabPQZhqM=; b=nGB/S+wvwV/88j
	ME/LlBgxGMUMQ4CJ4oTDkrdS+xld34VGvLnkEQHiXfAvalAlDDuoUXQEYsJXEs3c9c7EvWQWgfXLM
	mjCX1mASpiW4EccTlkmYwgOn2PafN4E7awspQQFyOgHqr141XOZzc/CT+079heae6qxNtQ9xHiWU2
	dOPuceXE5RI58K0sjCLyJdlS8buGhGewZ6aujRWAGLnV0QcSQI2V7JQnyNfc53TiXp4Ga8v7CS6md
	Z11Hw+T3PbWQuWztCy4zzX0orDV9W5lK3s7rwwtG5FOGBARXVjn2n5k97P6lE4LLTL00YDU/2ecGr
	Yi/hCVoNXdq6LVC3kLdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWxq5-00020i-Rs; Fri, 08 May 2020 07:54:33 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWxpy-0001t4-97
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 07:54:28 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 7451980503;
 Fri,  8 May 2020 09:52:17 +0200 (CEST)
Date: Fri, 8 May 2020 09:52:10 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Bernard <bernard@vivo.com>
Subject: Re: [PATCH] drm/exynos: remove no need devm_kfree in probe [re-send, 
 welcome any comments]
Message-ID: <20200508075210.GA8789@ravnborg.org>
References: <AMkACAAICCLCcgaekrYcyKoA.1.1588769343436.Hmail.bernard@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AMkACAAICCLCcgaekrYcyKoA.1.1588769343436.Hmail.bernard@vivo.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=MOBOZvRl c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=kj9zAlcOel0A:10 a=1WtWmnkvAAAA:8 a=7gkXJVJtAAAA:8 a=e5mUnYsNAAAA:8
 a=BHcMzYUn60HY1PDIBp0A:9 a=CjuIK1q_8ugA:10 a=-_UHfarfsM-RsASml2Jt:22
 a=E9Po1WZjFZOl8hwRPBS3:22 a=Vxmtnl_E_bksehYqCbjh:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_005426_496119_31E1FE6F 
X-CRM114-Status: GOOD (  21.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: opensource.kernel@vivo.com, linux-samsung-soc@vger.kernel.org,
 Joonyoung Shim <jy0922.shim@samsung.com>, David Airlie <airlied@linux.ie>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Inki Dae <inki.dae@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bernard.

On Wed, May 06, 2020 at 08:49:03PM +0800, Bernard wrote:
> Remove no need devm_kfree in probe.
> The change is to make the code a bit more readable
> 
> Signed-off-by: Bernard Zhao <bernard@vivo.com>

Could you take a closer look and fix similar patterns
in the rest of the driver?
For example in exynos_dpi_probe()

Is would be nice to only have to review for this
type of changes once, so one patch-set is preferred
over single patches over time.

You can add:
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

to this patch when you re-send a new series.

Thanks,
	Sam

> ---
>  drivers/gpu/drm/exynos/exynos_drm_dpi.c | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/exynos/exynos_drm_dpi.c b/drivers/gpu/drm/exynos/exynos_drm_dpi.c
> index 43fa0f26c052..e06f7d7a6695 100644
> --- a/drivers/gpu/drm/exynos/exynos_drm_dpi.c
> +++ b/drivers/gpu/drm/exynos/exynos_drm_dpi.c
> @@ -181,10 +181,8 @@ static int exynos_dpi_parse_dt(struct exynos_dpi *ctx)
>  			return -ENOMEM;
>  
>  		ret = of_get_videomode(dn, vm, 0);
> -		if (ret < 0) {
> -			devm_kfree(dev, vm);
> +		if (ret < 0)
>  			return ret;
> -		}
>  
>  		ctx->vm = vm;
>  
> @@ -233,10 +231,8 @@ struct drm_encoder *exynos_dpi_probe(struct device *dev)
>  	ctx->dev = dev;
>  
>  	ret = exynos_dpi_parse_dt(ctx);
> -	if (ret < 0) {
> -		devm_kfree(dev, ctx);
> -		return NULL;
> -	}
> +	if (ret < 0)
> +		return ERR_PTR(ret);
>  
>  	if (ctx->panel_node) {
>  		ctx->panel = of_drm_find_panel(ctx->panel_node);
> -- 
> 2.26.2
> 
> 
> [re-send, welcome any comments]
> Regards,
> Bernard
> 
> 
> 
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
