Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2650D191855
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 18:59:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=84/X5iyc1duxC4xItNyENvGbK13gD72A5hxB1JaORPc=; b=WMzZ70xQxCQUHF
	/2Q1qx9Y9pWea1A+gZlr31cAi9wiXFacsMHVpP9bUsmx+1it1hAfKtG5C/uurVmGDhs/+iyIgjccl
	hHXRbb5S+8Es5WMI1FSsyLmkwEkbLsukU9iWKMFmyZbKsBhjvbR7DJXwLGDOcsZBKQy9n8d17QDuq
	Nru6q04HLrvG4gDaTGdCE0vkw7BlAHJsRShqXaXdXkTVRvE1h2LVpuKmDIe79lLqyfQ0FnmVHLDDW
	cWJrF/x0yH123+CH5e6KtUGMXZH3DUaNnFUEbsqQDMAw+F+Fn4sZZ8t0FGQCMsdsL1S3wGxxdhYHx
	VxcKQMK6YJMZV3K/JgqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGnpU-0007WG-21; Tue, 24 Mar 2020 17:59:08 +0000
Received: from mailoutvs53.siol.net ([185.57.226.244] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGnpM-0007Vn-9q
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 17:59:02 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 9520952458E;
 Tue, 24 Mar 2020 18:58:57 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id scDAk1DWhDMx; Tue, 24 Mar 2020 18:58:57 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 39BA152458F;
 Tue, 24 Mar 2020 18:58:57 +0100 (CET)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 928FE52458E;
 Tue, 24 Mar 2020 18:58:56 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: mripard@kernel.org, wens@csie.org,
 Roman Stratiienko <r.stratiienko@gmail.com>
Subject: Re: [PATCH v4 4/4] RFC: drm/sun4i: Process alpha channel of most
 bottom layer
Date: Tue, 24 Mar 2020 18:58:56 +0100
Message-ID: <2979815.5fSG56mABF@jernej-laptop>
In-Reply-To: <20200302103138.17916-5-r.stratiienko@gmail.com>
References: <20200302103138.17916-5-r.stratiienko@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_105900_499929_A3AF6880 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.244 listed in list.dnswl.org]
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
Cc: airlied@linux.ie, Roman Stratiienko <r.stratiienko@gmail.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

Dne ponedeljek, 02. marec 2020 ob 11:31:38 CET je Roman Stratiienko 
napisal(a):
> Allwinner display engine blender consists of 3 pipelined blending units.
> 
> PIPE0->\
>         BLD0-\
> PIPE1->/      BLD1-\
> PIPE2->------/      BLD2->OUT
> PIPE3->------------/
> 
> This pipeline produces incorrect composition if PIPE0 buffer has alpha.

I always thought that if bottom layer has alpha, it's blended with background 
color, which is set to opaque black. If that is not the case, can you solve 
this by changing blending formula located in BLD control registers (offsets 
0x90, 0x94, 0x98 and 0x9c)?

Best regards,
Jernej

> Correct solution is to add one more blending step and mix PIPE0 with
> background, but it is not supported by the hardware.
> 
> Use premultiplied alpha buffer of PIPE0 overlay channel as is.
> In this case we got same effect as mixing PIPE0 with black background.
> 
> Signed-off-by: Roman Stratiienko <r.stratiienko@gmail.com>
> 
> ---
> 
> v4:
> - Initial version, depends on other unmerged patches in the patchset.
> ---
>  drivers/gpu/drm/sun4i/sun8i_ui_layer.c | 2 +-
>  drivers/gpu/drm/sun4i/sun8i_vi_layer.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
> b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c index dd6145f80c36..d94f4d8b9128
> 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
> @@ -106,7 +106,7 @@ static void sun8i_ui_layer_update_alpha(struct
> sun8i_mixer *mixer, int channel, regmap_update_bits(mixer->engine.regs,
>  			   SUN8I_MIXER_BLEND_PREMULTIPLY(bld_base),
>  			   SUN8I_MIXER_BLEND_PREMULTIPLY_EN(zpos),
> -			   SUN8I_MIXER_BLEND_PREMULTIPLY_EN(zpos));
> +			   zpos ? 
SUN8I_MIXER_BLEND_PREMULTIPLY_EN(zpos) : 0);
>  }
> 
>  static int sun8i_ui_layer_update_coord(struct sun8i_mixer *mixer, int
> channel, diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
> b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c index e6d8a539614f..68a6843db4ab
> 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
> @@ -108,7 +108,7 @@ static void sun8i_vi_layer_update_alpha(struct
> sun8i_mixer *mixer, int channel, regmap_update_bits(mixer->engine.regs,
>  			   SUN8I_MIXER_BLEND_PREMULTIPLY(bld_base),
>  			   SUN8I_MIXER_BLEND_PREMULTIPLY_EN(zpos),
> -			   (mixer->cfg->is_de3) ?
> +			   (zpos != 0 && mixer->cfg->is_de3) ?
>  				
SUN8I_MIXER_BLEND_PREMULTIPLY_EN(zpos) : 0);
> 
>  }





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
