Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E58F66201C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 16:09:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DAPjXzZp0MFz1L6UHLRt1odwp4ivErdJIhxGMGIFAxM=; b=rf87KlLsF+mghF
	ffWTVU6bCXhDV0lZ5BuObYuHRF/lRJ7fwHXZJVrWFgtcQ217WOGSVR1QrwuSK/U5UtSe7QeHCMI6G
	zlpAx138qJfi6ZY/8Gu56CYWjsqYIkVErC2DCwKcqzRYpWVjjiiVAtD/JEipexGWG9OHc4lbBqXJ9
	TXJzJdziqhqN/oEGFTA8iSuQ0f14x5XrfMl0ZN+OWx8fIitxd2pUQCmIzRpjwc2Ivk/AjgEppn90j
	WSnP0Mb7C4cKCqN4e0q6s/K1IWW+aTmOlpGaN0iMupTnCfw3EMo8qAajKDsWOiCDqDf9f5pYwd7N7
	M0z9vBUV3UB6DxPRhTVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkUKd-0007rp-Ja; Mon, 08 Jul 2019 14:09:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkUKR-0007qe-3o
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 14:09:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8CA772B;
 Mon,  8 Jul 2019 07:09:12 -0700 (PDT)
Received: from [33.8.37.10] (unknown [10.37.8.33])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 08B6B3F59C;
 Mon,  8 Jul 2019 07:09:08 -0700 (PDT)
Subject: Re: [PATCH] drm/exynos: add CONFIG_MMU dependency
To: Arnd Bergmann <arnd@arndb.de>, Inki Dae <inki.dae@samsung.com>,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
References: <20190708134707.538501-1-arnd@arndb.de>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <ea185bd7-3ac7-dc38-1c0e-78cb1cffa6a0@arm.com>
Date: Mon, 8 Jul 2019 15:09:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190708134707.538501-1-arnd@arndb.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_070915_204358_5F76D4F9 
X-CRM114-Status: GOOD (  20.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-samsung-soc@vger.kernel.org, Jingoo Han <jingoohan1@gmail.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>, Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/8/19 2:46 PM, Arnd Bergmann wrote:
> Compile-testing this driver on a NOMMU configuration shows a link failure:
> 
> drivers/gpu/drm/exynos/exynos_drm_gem.o: In function `exynos_drm_gem_fault':
> exynos_drm_gem.c:(.text+0x484): undefined reference to `vmf_insert_mixed'
> 
> Add a CONFIG_MMU dependency to ensure we only enable this in configurations
> that build correctly.
> 
> Many other drm drivers have the same dependency. It would be nice to
> make this work in MMU-less configurations, but evidently nobody has
> ever needed this so far.
> 
> Fixes: 156bdac99061 ("drm/exynos: trigger build of all modules")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/gpu/drm/exynos/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/exynos/Kconfig b/drivers/gpu/drm/exynos/Kconfig
> index 60ce4a8ad9e1..6f7d3b3b3628 100644
> --- a/drivers/gpu/drm/exynos/Kconfig
> +++ b/drivers/gpu/drm/exynos/Kconfig
> @@ -2,6 +2,7 @@
>  config DRM_EXYNOS
>  	tristate "DRM Support for Samsung SoC EXYNOS Series"
>  	depends on OF && DRM && (ARCH_S3C64XX || ARCH_S5PV210 || ARCH_EXYNOS || ARCH_MULTIPLATFORM || COMPILE_TEST)
> +	depends on MMU
>  	select DRM_KMS_HELPER
>  	select VIDEOMODE_HELPERS
>  	select SND_SOC_HDMI_CODEC if SND_SOC
> 

I seen

ERROR: "vmf_insert_mixed" [drivers/gpu/drm/exynos/exynosdrm.ko] undefined!

with older kernels when driver was build as a module, so FWIW

Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>

Cheers
Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
