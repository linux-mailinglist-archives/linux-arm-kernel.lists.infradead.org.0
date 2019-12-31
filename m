Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E50D12D833
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 12:24:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xomo2X027+GRVZLi7m54ifJArF4b85Y0TVFSAtNlS4s=; b=P/l72vCH6kNRl1
	j++umU6ZNF2SDAZYOt54ldxIzEY+EZsU/pVbgrl5P2ArCdZg3/ONMAIH8v4bzJDGUv5LHYtYJ2Hi7
	qJmEoYD2pBrJ6jJZ7ykzvAjotZOQ6WmbHElCYvsr8R+9YWTVoB/qX/QTmZ69fIhus3D3uuX7eKiGL
	kFIMAbEeuw+3WvfRfrxLF8O93Xozs/+KWFH5z6rUXdYdzXPRAfZCE1nLMP7na1adYxB0R0bPW3zP4
	m7FPXvuuv4MPyGd9RzWkc4rBsAAKyOSA+NuNRqHLDP+79v10ze27uVPTlEfzSJyCKJTmb6Pkvtt0F
	dCejMFc1FnUU3fZ9TheA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imFdN-0004bQ-7Q; Tue, 31 Dec 2019 11:24:21 +0000
Received: from mailoutvs4.siol.net ([185.57.226.195] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imFdD-0004aw-37
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 11:24:13 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id A35B1523032;
 Tue, 31 Dec 2019 12:24:04 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id mVev96vKAiOH; Tue, 31 Dec 2019 12:24:04 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 4A6DB523035;
 Tue, 31 Dec 2019 12:24:04 +0100 (CET)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 01118523020;
 Tue, 31 Dec 2019 12:24:03 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: mripard@kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 roman.stratiienko@globallogic.com
Subject: Re: [PATCH v2 2/4] drm/sun4i: Add mode_set callback to the engine
Date: Tue, 31 Dec 2019 12:24:03 +0100
Message-ID: <2843589.CbtlEUcBR6@jernej-laptop>
In-Reply-To: <20191229162828.3326-2-roman.stratiienko@globallogic.com>
References: <20191229162828.3326-1-roman.stratiienko@globallogic.com>
 <20191229162828.3326-2-roman.stratiienko@globallogic.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_032411_290603_76211A38 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Roman Stratiienko <roman.stratiienko@globallogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

Dne nedelja, 29. december 2019 ob 17:28:26 CET je 
roman.stratiienko@globallogic.com napisal(a):
> From: Roman Stratiienko <roman.stratiienko@globallogic.com>
> 
> Create callback to update engine's registers on mode change.
> 
> Signed-off-by: Roman Stratiienko <roman.stratiienko@globallogic.com>

Reviewed-by: Jernej Skrabec <jernej.skrabec@siol.net>

Best regards,
Jernej

> ---
> v2:
> - Split commit in 2 parts.
> - Add description to mode_set callback
> - Dropped 1 line from sun4i_crtc_mode_set_nofb()
> - Add struct drm_display_mode declaration (fix build warning)
> ---
>  drivers/gpu/drm/sun4i/sun4i_crtc.c   |  3 +++
>  drivers/gpu/drm/sun4i/sunxi_engine.h | 12 ++++++++++++
>  2 files changed, 15 insertions(+)
> 
> diff --git a/drivers/gpu/drm/sun4i/sun4i_crtc.c
> b/drivers/gpu/drm/sun4i/sun4i_crtc.c index 3a153648b369..f9c627d601c3
> 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_crtc.c
> +++ b/drivers/gpu/drm/sun4i/sun4i_crtc.c
> @@ -141,6 +141,9 @@ static void sun4i_crtc_mode_set_nofb(struct drm_crtc
> *crtc) struct sun4i_crtc *scrtc = drm_crtc_to_sun4i_crtc(crtc);
> 
>  	sun4i_tcon_mode_set(scrtc->tcon, encoder, mode);
> +
> +	if (scrtc->engine->ops->mode_set)
> +		scrtc->engine->ops->mode_set(scrtc->engine, mode);
>  }
> 
>  static const struct drm_crtc_helper_funcs sun4i_crtc_helper_funcs = {
> diff --git a/drivers/gpu/drm/sun4i/sunxi_engine.h
> b/drivers/gpu/drm/sun4i/sunxi_engine.h index 548710a936d5..44102783ee3c
> 100644
> --- a/drivers/gpu/drm/sun4i/sunxi_engine.h
> +++ b/drivers/gpu/drm/sun4i/sunxi_engine.h
> @@ -9,6 +9,7 @@
>  struct drm_plane;
>  struct drm_device;
>  struct drm_crtc_state;
> +struct drm_display_mode;
> 
>  struct sunxi_engine;
> 
> @@ -108,6 +109,17 @@ struct sunxi_engine_ops {
>  	 * This function is optional.
>  	 */
>  	void (*vblank_quirk)(struct sunxi_engine *engine);
> +
> +	/**
> +	 * @mode_set:
> +	 *
> +	 * This callback is used to update engine registers that
> +	 * responsible for display frame size other mode attributes.
> +	 *
> +	 * This function is optional.
> +	 */
> +	void (*mode_set)(struct sunxi_engine *engine,
> +			 struct drm_display_mode *mode);
>  };
> 
>  /**





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
