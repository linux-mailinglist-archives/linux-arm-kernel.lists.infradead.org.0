Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 157A51BDFE2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 16:02:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fEIISfwD1lnvVQTUrmzJTScGNNrecKXxOXPeVkkmuSc=; b=Ry6DDBwWjGmNJu
	3sh+mGo8cFhgqDGTnxhKpBt7Tu50gZ9DDjgGOzbIMWNT4IbD73N/EQ5G+3jV2wDqw8Xjp9GpyW8Mv
	W0F/td9ZP5ldoMisMF3t/kkaw1RReJ+5slHUMQI/Cs8Dg23+gb47b57deaT/662y38HkikP+aYgsg
	+5h22oU3BBbzzbDEyZZbChaICI1HzZF/9VE4yCfCBxMGjGFKReZe14NR7o642xmevbgPJJ0PVb/mX
	+fXvgeYlpo/0TGTNzwcge/80mydE56lDwRoUl8QpVG0LYCC4YnSNColwROO0FUnX313UALFiV2uJo
	aym52mX+UN7aZ1drK+Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTnII-0007gg-Ch; Wed, 29 Apr 2020 14:02:34 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTnI7-0007gB-71; Wed, 29 Apr 2020 14:02:24 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id CB2E32A05D5
Subject: Re: [PATCH v3 -next] drm/mediatek: Fix Kconfig warning
To: YueHaibing <yuehaibing@huawei.com>, chunkuang.hu@kernel.org,
 p.zabel@pengutronix.de, airlied@linux.ie, daniel@ffwll.ch,
 matthias.bgg@gmail.com, ck.hu@mediatek.com
References: <20200420135045.27984-1-yuehaibing@huawei.com>
 <20200429071337.49528-1-yuehaibing@huawei.com>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <178db061-7068-e688-dd5a-0d767e57c22c@collabora.com>
Date: Wed, 29 Apr 2020 16:02:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200429071337.49528-1-yuehaibing@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_070223_384698_CE2C43D8 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.orc,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi YueHaibing,

Thank you for your patch.

On 29/4/20 9:13, YueHaibing wrote:
> WARNING: unmet direct dependencies detected for MTK_MMSYS
>   Depends on [n]: (ARCH_MEDIATEK [=y] || COMPILE_TEST [=n]) && COMMON_CLK_MT8173_MMSYS [=n]
>   Selected by [y]:
>   - DRM_MEDIATEK [=y] && HAS_IOMEM [=y] && DRM [=y] && (ARCH_MEDIATEK [=y] || ARM && COMPILE_TEST [=n]) && COMMON_CLK [=y] && HAVE_ARM_SMCCC [=y] && OF [=y]
> 
> Make DRM_MEDIATEK depend on MTK_MMSYS to fix this.
> 
> Fixes: 2c758e301ed9 ("soc / drm: mediatek: Move routing control to mmsys device")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Definitively we shouldn't select the MTK_MMSYS and we should depend on MTK_MMSYS
instead, so

Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

> ---
> v3: make DRM_MEDIATEK depends on MTK_MMSYS
> v2: select COMMON_CLK_MT8173_MMSYS instead of adding DRM_MEDIATEK dependency  
> ---
>  drivers/gpu/drm/mediatek/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/Kconfig b/drivers/gpu/drm/mediatek/Kconfig
> index c420f5a3d33b..aa74aac3cbcc 100644
> --- a/drivers/gpu/drm/mediatek/Kconfig
> +++ b/drivers/gpu/drm/mediatek/Kconfig
> @@ -6,12 +6,12 @@ config DRM_MEDIATEK
>  	depends on COMMON_CLK
>  	depends on HAVE_ARM_SMCCC
>  	depends on OF
> +	depends on MTK_MMSYS
>  	select DRM_GEM_CMA_HELPER
>  	select DRM_KMS_HELPER
>  	select DRM_MIPI_DSI
>  	select DRM_PANEL
>  	select MEMORY
> -	select MTK_MMSYS
>  	select MTK_SMI
>  	select VIDEOMODE_HELPERS
>  	help
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
