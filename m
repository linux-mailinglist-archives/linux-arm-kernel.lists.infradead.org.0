Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B8912C212
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 10:11:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EFZg0/mW93QjvZKs6T9dGZkLwVTN5EXLFog0cSY/0nk=; b=Xk8vmCGnJ7BEAx
	TOL+Iqy05OPBMyg10xuhYQNEd1HaNM1Aq4cqnfKA80y8NQbf/IRjCto5L7QLBK9yfZ37VYGXD4lko
	09RnYTzP10h2QR6UOWiXMgOI/MfpRqXTFwhn9ULbDwL0YiowvTBtAFx36JkBoKkX1TQi7sF4enVFX
	74nnWwZ9Yszs/7N6u8BTT7Ro7UTVWUXOF6Fis5pIOajCeOcZXtThpdVvK+Pb08W4cKsM6Dp4CFxnW
	qjWHt19ufO9jmvxN7+JGO5wMTp+pLU0QzthrI2fK++JotGan8H1m2QhhBVRgowAi20JgcnSnL11pO
	7NoqOQ7JUHbA3ql3OMSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilUbt-0000tA-9s; Sun, 29 Dec 2019 09:11:41 +0000
Received: from mailoutvs62.siol.net ([185.57.226.253] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilUbk-0000sI-UG
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 09:11:35 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 02CDE52154E;
 Sun, 29 Dec 2019 10:11:22 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id qbCTLp6YsYnV; Sun, 29 Dec 2019 10:11:21 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 98855521C67;
 Sun, 29 Dec 2019 10:11:21 +0100 (CET)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Zimbra) with ESMTPA id 4286F52154E;
 Sun, 29 Dec 2019 10:11:20 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: mripard@kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 roman.stratiienko@globallogic.com
Subject: Re: [RFC 1/4] drm/sun4i: Wait for previous mixing process finish
 before committing next
Date: Sun, 29 Dec 2019 10:11:19 +0100
Message-ID: <7696383.T7Z3S40VBb@jernej-laptop>
In-Reply-To: <20191228202818.69908-2-roman.stratiienko@globallogic.com>
References: <20191228202818.69908-1-roman.stratiienko@globallogic.com>
 <20191228202818.69908-2-roman.stratiienko@globallogic.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_011133_133679_D28FD131 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Dne sobota, 28. december 2019 ob 21:28:15 CET je 
roman.stratiienko@globallogic.com napisal(a):
> From: Roman Stratiienko <roman.stratiienko@globallogic.com>
> 
> Screen composition that requires dynamic layout modification,
> especially scaling is corrupted when layout changes.
> 
> For example if one of the layer scales down, misaligned lines can be
> observed, and dynamic increasing of destination area makes mixer to hang
> and draw nothing after drawing modified layer.
> 
> After deep investigation it turns that scaler double-buffered registers
> are not latched by GLB_DBUFFER bit, instead thay are latched immidiately.
> 
> Only way to avoid artifacts is to change the registers after mixer finish
> previous frame.
> 
> Similar was made in sunxi BSP - scaler register values was stored into RAM,
> and moved into registers at sync together with GLB_DBUFFER.
> 
> Signed-off-by: Roman Stratiienko <roman.stratiienko@globallogic.com>

Nice catch! However, I'm a bit worried about blocking nature of this solution. 
What about shadowing scaler registers and applying them in "finish_irq" 
handler? You see, VI scaler can in some cases consume almost all time between 
two VSync events. That issue came up on A64 mixer1 with downscaling 4K videos 
in real time. I imagine that this solution might block for too long in this 
case.

Check VI coarse scaling code:
https://elixir.bootlin.com/linux/v5.5-rc3/source/drivers/gpu/drm/sun4i/
sun8i_vi_layer.c#L144

> ---
>  drivers/gpu/drm/sun4i/sun8i_mixer.c | 15 +++++++++++++++
>  drivers/gpu/drm/sun4i/sun8i_mixer.h |  2 ++
>  2 files changed, 17 insertions(+)
> 
> diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c
> b/drivers/gpu/drm/sun4i/sun8i_mixer.c index 8b803eb903b8..eea4813602b7
> 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
> @@ -257,6 +257,20 @@ const struct de2_fmt_info *sun8i_mixer_format_info(u32
> format) return NULL;
>  }
> 
> +static void sun8i_atomic_begin(struct sunxi_engine *engine,
> +			       struct drm_crtc_state *old_state)
> +{
> +	int reg, ret;
> +
> +	ret = regmap_read_poll_timeout(engine->regs, 
SUN8I_MIXER_GLOBAL_STATUS,
> +				       reg,
> +				       !(reg & 
SUN8I_MIXER_GLOBAL_STATUS_BUSY),
> +				       200, 100000);
> +
> +	if (ret)
> +		pr_warn("%s: Wait for frame finish timeout\n", __func__);

Newly introduced drm_warn() should be used here.

Best regards,
Jernej

> +}
> +
>  static void sun8i_mixer_commit(struct sunxi_engine *engine)
>  {
>  	DRM_DEBUG_DRIVER("Committing changes\n");
> @@ -310,6 +324,7 @@ static struct drm_plane **sun8i_layers_init(struct
> drm_device *drm, static const struct sunxi_engine_ops sun8i_engine_ops = {
>  	.commit		= sun8i_mixer_commit,
>  	.layers_init	= sun8i_layers_init,
> +	.atomic_begin	= sun8i_atomic_begin,
>  };
> 
>  static struct regmap_config sun8i_mixer_regmap_config = {
> diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.h
> b/drivers/gpu/drm/sun4i/sun8i_mixer.h index c6cc94057faf..915479cc3077
> 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_mixer.h
> +++ b/drivers/gpu/drm/sun4i/sun8i_mixer.h
> @@ -25,6 +25,8 @@
> 
>  #define SUN8I_MIXER_GLOBAL_DBUFF_ENABLE		BIT(0)
> 
> +#define SUN8I_MIXER_GLOBAL_STATUS_BUSY		BIT(4)
> +
>  #define DE2_MIXER_UNIT_SIZE			0x6000
>  #define DE3_MIXER_UNIT_SIZE			0x3000





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
