Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FC639B29
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 06:50:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U7MTI580NbTutdE4Gg5vTd984M6XRYpESlD+hc00Rdk=; b=Z+0z193gQZ8UFu
	l6heB+zzrRv2v9njNrnOfPACB3VoqrQfj37FNfdc7UOaemsnkWH2LuYyXxCvutffKuT4Ft2qP37aA
	WNTqhe2CydzSiZmo7D7tvFXxgYBwtcr/qqEy3MQwkaAawJL8i3mlKzyap4DPfMfW2pzGPen/3am9y
	JOQ/5l4A2unZzSRLZAxxy9UcTvcd5Bicm/NPMEpnDnlTNM1uK4MVqBlOTx5gxFv9Gvp/0xlmtjAuA
	yZjvhUl3Jtx5Nqw06ThUiyZrN2X+xGPnRLV5xbHZY7JAlVQlmAfWHq0nbd9J2xSH6EMrLrZAHaD/z
	OgVmavr46ybvxxNov/6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZTJ3-0004a6-7Y; Sat, 08 Jun 2019 04:50:17 +0000
Received: from static-50-53-52-16.bvtn.or.frontiernet.net ([50.53.52.16]
 helo=dragon.dunlab)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hZTIq-0003jj-6K; Sat, 08 Jun 2019 04:50:04 +0000
Subject: Re: [PATCHv16 3/3] ARM:drm ivip Intel FPGA Video and Image Processing
 Suite
To: "Hean-Loong, Ong" <hean.loong.ong@intel.com>,
 Rob Herring <robh+dt@kernel.org>, Dinh Nguyen <dinguyen@kernel.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
References: <20190607143022.427-1-hean.loong.ong@intel.com>
 <20190607143022.427-4-hean.loong.ong@intel.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <bc42cad0-8c03-4e22-4475-c25f2e824944@infradead.org>
Date: Fri, 7 Jun 2019 21:50:01 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190607143022.427-4-hean.loong.ong@intel.com>
Content-Language: en-US
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
Cc: devicetree@vger.kernel.org, chin.liang.see@intel.com, Ong@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/7/19 7:30 AM, Hean-Loong, Ong wrote:
> diff --git a/drivers/gpu/drm/ivip/Kconfig b/drivers/gpu/drm/ivip/Kconfig
> new file mode 100644
> index 000000000000..1b2af85fe757
> --- /dev/null
> +++ b/drivers/gpu/drm/ivip/Kconfig
> @@ -0,0 +1,14 @@
> +config DRM_IVIP
> +        tristate "Intel FGPA Video and Image Processing"
> +        depends on DRM && OF
> +        select DRM_GEM_CMA_HELPER
> +        select DRM_KMS_HELPER
> +        select DRM_KMS_FB_HELPER
> +        select DRM_KMS_CMA_HELPER
> +        help
> +		Choose this option if you have an Intel FPGA Arria 10 system
> +		and above with an Intel Display Port IP. This does not support
> +		legacy Intel FPGA Cyclone V display port. Currently only single
> +		frame buffer is supported. Note that ACPI and X_86 architecture
> +		is not supported for Arria10. If M is selected the module will be
> +		called ivip.

According to Documentation/process/coding-style.rst, Kconfig help text should be
indented with 1 tab + 2 spaces, not 2 tabs.

-- 
~Randy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
