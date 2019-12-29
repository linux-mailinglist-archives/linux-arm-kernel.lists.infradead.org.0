Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 783F512C219
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 10:25:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mDYuatxAZ4+iG1iqhmKC1cx7Aol/IqCnVVzSbOFYEBo=; b=RiQH65cW25LMCd
	uQDaw4ogFoeVuN3dafmRmP3H5ONG0UbxPDuIYWPaDRDI0wulKa+M4zYt/2+yW+My06YxUm246a5wm
	P/mSTQOgB1iwwLCTTRMaR6+5VjDxIHsX6eTDT18bMNO7frCSt9yTGouq4Jl2jbitdZxYJ7ibEOMqp
	I0I5mIgreii/BA+aYAvJlz99Sfr1bRRRqu4WH8zoH0Bu2qt56VOYhr6f2NQp/tTjrY2qui/05Bdcm
	iT5ieqjScKrQTEe6ecQVkL8+oBwJadqi0nowJNdHS6FB0g/+l0IMVVkDYUSVUgKEZ3zdM1j6Vfnz3
	KN/k8U/5oUpkqKfSLGWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilUpA-0006P4-Mg; Sun, 29 Dec 2019 09:25:24 +0000
Received: from mailoutvs52.siol.net ([185.57.226.243] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilUp2-0006OA-7q
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 09:25:17 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 345CD5209D1;
 Sun, 29 Dec 2019 10:25:13 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id xV8-l4oTnBLS; Sun, 29 Dec 2019 10:25:12 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id D585B5209D2;
 Sun, 29 Dec 2019 10:25:12 +0100 (CET)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 96D045209D1;
 Sun, 29 Dec 2019 10:25:12 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: mripard@kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 roman.stratiienko@globallogic.com
Subject: Re: [RFC 4/4] drm/sun4i: Update mixer's internal registers after
 initialization
Date: Sun, 29 Dec 2019 10:25:12 +0100
Message-ID: <2960593.5fSG56mABF@jernej-laptop>
In-Reply-To: <20191228202818.69908-5-roman.stratiienko@globallogic.com>
References: <20191228202818.69908-1-roman.stratiienko@globallogic.com>
 <20191228202818.69908-5-roman.stratiienko@globallogic.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_012516_438338_3D9DF2BE 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.243 listed in list.dnswl.org]
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

Dne sobota, 28. december 2019 ob 21:28:18 CET je 
roman.stratiienko@globallogic.com napisal(a):
> From: Roman Stratiienko <roman.stratiienko@globallogic.com>
> 
> At system start blink of u-boot ghost framebuffer can be observed.
> Fix it.

Reviewed-by: Jernej Skrabec <jernej.skrabec@siol.net>

Please note that U-Boot to Linux handover may not be without issues. I noticed 
that in some cases, HDMI EDID readout is broken. I guess already initialized 
HDMI controller doesn't like to be reinitialized. Or it may have something to 
do with the fact that U-Boot HDMI driver sets I2C timing and Linux kernel uses 
default one.

Best regards,
Jernej

> 
> Signed-off-by: Roman Stratiienko <roman.stratiienko@globallogic.com>
> ---
>  drivers/gpu/drm/sun4i/sun8i_mixer.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c
> b/drivers/gpu/drm/sun4i/sun8i_mixer.c index da84fccf7784..b906b8cc464e
> 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
> @@ -588,6 +588,9 @@ static int sun8i_mixer_bind(struct device *dev, struct
> device *master, regmap_update_bits(mixer->engine.regs,
> SUN8I_MIXER_BLEND_PIPE_CTL(base), SUN8I_MIXER_BLEND_PIPE_CTL_EN_MSK, 0);
> 
> +	regmap_write(mixer->engine.regs, SUN8I_MIXER_GLOBAL_DBUFF,
> +		     SUN8I_MIXER_GLOBAL_DBUFF_ENABLE);
> +
>  	return 0;
> 
>  err_disable_bus_clk:





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
