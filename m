Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1835614CEA2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 17:43:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=quzmAzhDr5v9FCS2Ur2rP0aSs+/52c8bNhipFoqASxQ=; b=aX5PFFgF2eCFex
	eIXhLdZhep/uZ0Wb4Mg2O8ubp2mUMM5ed9twymwRARmnXMaASiI/P6qofcdCzvfFoYVZo8jpiRKS6
	3GfUReycr1P2wNF7xWqj6KtXOeK2C0HQJzLgWi8ZCEAbz9DlNKGD6nhRPFIvAJyq9M3eT1MfLJSx7
	w9NI8RWnPZcgV8ouacUB+13CHpqtZVDMWX8vQZAMl7EkWzpxYKK76ZCWZ8IenHOoNGVQFG0JRMpPC
	zpsZSbnxaz1xwu1805diAJ2jh6xehhNlWqWFeuSsgZKjxieqmA8ALyLcjOVw6pUbnjo3ZYlMigKF9
	z09dQ2lDxwv7wQmfN+BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwqRL-0008RT-7K; Wed, 29 Jan 2020 16:43:43 +0000
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwqR9-0008Q3-AK
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 16:43:32 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id E8A8073A;
 Wed, 29 Jan 2020 11:43:24 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Wed, 29 Jan 2020 11:43:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=wVzq7A1mRlnA44nVMIvtmOwiqIc
 +jpFRZC1MsfkyksU=; b=VthOtP0DvyThBwtvX6HaFcbEMTcSArV4Azqiv8KpPlD
 50QKi/8mlb2CCFnvsKBl1sLQYzejzFwOzg53M+fo3tndBhFTG58xStEyKTu5FCQH
 mrP+vFew0q+304HhwRf0hZaS9IXsnKVsMnEkg+eslmhGPeaVvL7wqq97VYtBHXmI
 KIfDEuglk2ZvNRcNnwynNy/NqfNgnheN5TnuZpOM87ZUvQqZo1irT+suVx/d+t0i
 N+FxgG7oOmHW4cwAFub2wg+GNxf/2gzKrOGPvcaLzT1X7Iq41LimQJeYz8m6ab2S
 iQBARgG9hJUbfIgdstm7Z06X+CxVGUbSafW4dHCgVdA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=wVzq7A
 1mRlnA44nVMIvtmOwiqIc+jpFRZC1MsfkyksU=; b=qqytq1Yf31pUWzGdkKoti4
 Ov3jOUxIbpFlDCoJapv/9+GsHth0RMKmc34TB1zE7RjKgDm/7LU4puM630p0rC+R
 fZqoXn+0hZvktfbhzDeYJUx3Pm4NdiBkXzQjI7UVQZEgzbytALwfyseOxZ4+zRkz
 5PwdhI56hqtwD/qh9kXtSCjJTc8vr9L1a3BEgKltoKa6THTNijP2kPDV9uMIe5NQ
 rJUt6RwxGeamRrJZaKDfPZDY8pwZ2S34YUoeGhLJgqddlcuAfhDUglC2CjMtymRZ
 WmQXUOjbUiSBtSBwcv+HqxyQ0KW9AYf/32c+fcCe4gv+286by/b9XkcmLzn6KXoQ
 ==
X-ME-Sender: <xms:K7YxXpQ7Fze2-w6LiBtLU5-rg0hFUh_yVGdqBeHSCuUHfvTHxe5ItQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrfeeigdeltdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:K7YxXu0G2pW7Q-Z_7L5EJQ3Q_0-F2HSRt6rp7LaCQhz4QDAXlnBWzw>
 <xmx:K7YxXqLW-PGmXsZzP9x85jXy1zifo0OFbY9yelJS6McPDnZfkm_B9g>
 <xmx:K7YxXv9LjfUa8O82HPWK5BxXQzDbVlBIdpO3RSUDz2xJ1mv6XzZyrQ>
 <xmx:LLYxXtRhIUP1D-BmKu7jflKrRsEL2xZ8SJ-oVgX_bjJt6KBChsgFJg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7C10B3060B27;
 Wed, 29 Jan 2020 11:43:23 -0500 (EST)
Date: Wed, 29 Jan 2020 17:43:21 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Stefan Mavrodiev <stefan@olimex.com>
Subject: Re: [PATCH v3 1/1] drm: sun4i: hdmi: Add support for sun4i HDMI
 encoder audio
Message-ID: <20200129164321.34mornbi3xvx5dys@gilmour.lan>
References: <20200128140642.8404-1-stefan@olimex.com>
 <20200128140642.8404-2-stefan@olimex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128140642.8404-2-stefan@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_084331_399491_7807414E 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Chen-Yu Tsai <wens@csie.org>, Daniel Vetter <daniel@ffwll.ch>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, Jan 28, 2020 at 04:06:42PM +0200, Stefan Mavrodiev wrote:
> diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
> index 68d4644ac2dc..4cd35c97c503 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
> +++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
> @@ -23,6 +23,8 @@
>  #include <drm/drm_print.h>
>  #include <drm/drm_probe_helper.h>
>
> +#include <sound/soc.h>
> +
>  #include "sun4i_backend.h"
>  #include "sun4i_crtc.h"
>  #include "sun4i_drv.h"
> @@ -87,6 +89,10 @@ static void sun4i_hdmi_disable(struct drm_encoder *encoder)
>
>  	DRM_DEBUG_DRIVER("Disabling the HDMI Output\n");
>
> +#ifdef CONFIG_DRM_SUN4I_HDMI_AUDIO
> +	sun4i_hdmi_audio_destroy(hdmi);
> +#endif
> +
>  	val = readl(hdmi->base + SUN4I_HDMI_VID_CTRL_REG);
>  	val &= ~SUN4I_HDMI_VID_CTRL_ENABLE;
>  	writel(val, hdmi->base + SUN4I_HDMI_VID_CTRL_REG);
> @@ -114,6 +120,11 @@ static void sun4i_hdmi_enable(struct drm_encoder *encoder)
>  		val |= SUN4I_HDMI_VID_CTRL_HDMI_MODE;
>
>  	writel(val, hdmi->base + SUN4I_HDMI_VID_CTRL_REG);
> +
> +#ifdef CONFIG_DRM_SUN4I_HDMI_AUDIO
> +	if (hdmi->hdmi_audio && sun4i_hdmi_audio_create(hdmi))
> +		DRM_ERROR("Couldn't create the HDMI audio adapter\n");
> +#endif

I really don't think we should be creating / removing the audio card
at enable / disable time.

To fix the drvdata pointer, you just need to use the card pointer in
the unbind, and that's it.

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
