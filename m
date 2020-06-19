Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E22D200264
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 09:02:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m6aSHrD9QhkHL+WtWtJOwjlhXhgLwOjS1r8FfW50l6A=; b=If1+/XeVm78NKI
	CwP5Iw33EIuJ3HRZZiIO8FMiuQD9o/YKl5NsEkzbaxBNA/TNdY4JXC8t2o8kKfNsknzc1gvZU4sCi
	RunLZlza7+/wR2a8tTq47dHGcOv1oebNvQBtLTQ5vhEuwj1MBic+1FEuyNPDPzq9agX24IP8PiPYY
	dsd5zdrcyKbbcAnToxGRYncHvot2vqKbiWl8h72LjlGBzlYZghUcUS6jZ2QmeKMeYwGiQ2gr1tmA6
	Uo55S+dcBQiZZz+e/obRDlUoOpOU5S2Cr3GLbgTZKDDehVoeAkluhZ8bXIj8upxMi2ZGwEZ9m+3u2
	/ouWy3xevCBgWyYkbcbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmB2x-00070i-Tj; Fri, 19 Jun 2020 07:02:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmB2l-0006zX-97; Fri, 19 Jun 2020 07:02:35 +0000
Received: from p5b127c2f.dip0.t-ipconnect.de ([91.18.124.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jmB2d-00087c-5B; Fri, 19 Jun 2020 09:02:23 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: vop: fix vop full rgb24 r/b color error
Date: Fri, 19 Jun 2020 09:02:22 +0200
Message-ID: <2786595.VspqIdsi2r@phil>
In-Reply-To: <20200619021251.22991-1-hjc@rock-chips.com>
References: <20200619021251.22991-1-hjc@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_000234_097041_74F0EEBF 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: huangtao@rock-chips.com, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 andy.yan@rock-chips.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sandy,

Am Freitag, 19. Juni 2020, 04:12:51 CEST schrieb Sandy Huang:
> RGB888 format msb is red component and the lsb is blue component,
> at vop full platform this is swapped, and this is different from vop
> lite and vop next, so add this patch to fix it.

just me struggling with color formats ... and wondering why this never
came up so far - with Version 3 being all major SoCs of the last years.

So I guess the reason that nobody noticed so far is, that most things
will use ARGB888 instead of RGB888?

One implementation nit below as well.

> Signed-off-by: Sandy Huang <hjc@rock-chips.com>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index c80f7d9fd13f..1c17048ad737 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -132,6 +132,7 @@ struct vop_win {
>  
>  struct rockchip_rgb;
>  struct vop {
> +	uint32_t version;
>  	struct drm_crtc crtc;
>  	struct device *dev;
>  	struct drm_device *drm_dev;
> @@ -989,6 +990,12 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
>  	VOP_WIN_SET(vop, win, dsp_st, dsp_st);
>  
>  	rb_swap = has_rb_swapped(fb->format->format);
> +	/*
> +	 * VOP full need to do rb swap to show rgb888/bgr888 format color correctly
> +	 */

one-line-comment?
	/* VOP-full needs rb_swap for correctly showing rgb888/bgr888 */

> +	if ((fb->format->format == DRM_FORMAT_RGB888 || fb->format->format == DRM_FORMAT_BGR888) &&
> +	    VOP_MAJOR(vop->version) == 3)
> +		rb_swap = !rb_swap;

can we move this into the existing has_rb_swapped() function?
Like doing
	rb_swap = has_rb_swapped(vop, fb->format->format)
and adding your conditional to the end there?


Thanks
Heiko


>  	VOP_WIN_SET(vop, win, rb_swap, rb_swap);
>  
>  	/*
> @@ -2091,6 +2098,7 @@ static int vop_bind(struct device *dev, struct device *master, void *data)
>  	vop->dev = dev;
>  	vop->data = vop_data;
>  	vop->drm_dev = drm_dev;
> +	vop->version = vop_data->version;
>  	dev_set_drvdata(dev, vop);
>  
>  	vop_win_init(vop);
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
