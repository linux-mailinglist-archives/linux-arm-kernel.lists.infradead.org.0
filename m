Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B6045BFA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:00:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3JmNQPPqnkz/+ULL/XvlG+e6ziMUvbo4S/pOPrtgBc=; b=lKhiAuW1n3g3eB
	dQm1Xvihg1s2rbfrY9uTvFhz2SHSnUv5sRtSuDXIbPjh3Xj5C3M54DvBN1NOkoxKNqA0lDpyXhluj
	rgeIif1y3I42jmRl/JzKD1P4hvcaYtrMfV5Ni2T5STUhdSWnfI6ZtPPGpoPK4TMf9jIvloinFDWHW
	CmOn62m7YTM3IeSlzlOu5f+S9sqG6Q1U2ozd75WA98/1zZLENUEdgjDbJ4bTd6BfsgHY59Un0B5la
	eGWEFKMyvI+kbQO0yPMYj7uuSbqalv0Rd7FnIfP76118UjHuXg5Ln9M1VDc3aEi6/gMHwOAJxqjIi
	m1UUPXQmDx/aiwZ3o+YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbksU-0005on-DH; Fri, 14 Jun 2019 12:00:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbksL-0005fF-Bq
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:00:10 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbksE-0004tR-OY; Fri, 14 Jun 2019 14:00:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: sandor.yu@nxp.com
Subject: Re: [PATCH] DRM: Rockchip: correct rate in the struct drm_dp_link
 assignment
Date: Fri, 14 Jun 2019 14:00:02 +0200
Message-ID: <2220301.J5gVQTtD0X@phil>
In-Reply-To: <20190605080424.28731-1-sandor.yu@nxp.com>
References: <20190605080424.28731-1-sandor.yu@nxp.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_050009_558932_788ED1E1 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: airlied@linux.ie, Sandor Yu <Sandor.yu@nxp.com>, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Am Mittwoch, 5. Juni 2019, 10:04:24 CEST schrieb sandor.yu@nxp.com:
> From: Sandor Yu <Sandor.yu@nxp.com>
> 
> variable of rate in the struct drm_dp_link should assign to
> 162000/270000/540000/810000.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>

applied to drm-misc-next after fixing patch subject and description
to be in line with subsystem conventions:
https://cgit.freedesktop.org/drm/drm-misc/commit/?id=de85ec271a864c05e99ad5ffbed9e95d1b65c757

Thanks
Heiko

> ---
>  drivers/gpu/drm/rockchip/cdn-dp-reg.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/cdn-dp-reg.c b/drivers/gpu/drm/rockchip/cdn-dp-reg.c
> index 6c8b14f..0a2aebe 100644
> --- a/drivers/gpu/drm/rockchip/cdn-dp-reg.c
> +++ b/drivers/gpu/drm/rockchip/cdn-dp-reg.c
> @@ -543,7 +543,7 @@ static int cdn_dp_get_training_status(struct cdn_dp_device *dp)
>  	if (ret)
>  		goto err_get_training_status;
>  
> -	dp->link.rate = status[0];
> +	dp->link.rate = drm_dp_bw_code_to_link_rate(status[0]);
>  	dp->link.num_lanes = status[1];
>  
>  err_get_training_status:
> @@ -647,7 +647,7 @@ int cdn_dp_config_video(struct cdn_dp_device *dp)
>  	bit_per_pix = (video->color_fmt == YCBCR_4_2_2) ?
>  		      (video->color_depth * 2) : (video->color_depth * 3);
>  
> -	link_rate = drm_dp_bw_code_to_link_rate(dp->link.rate) / 1000;
> +	link_rate = dp->link.rate / 1000;
>  
>  	ret = cdn_dp_reg_write(dp, BND_HSYNC2VSYNC, VIF_BYPASS_INTERLACE);
>  	if (ret)
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
