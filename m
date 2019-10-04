Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F5DCB694
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 10:42:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qlp/O1Km85rw691YCCXZF0y9+wQCGQW96EGDou1spK8=; b=HKOusm7d59jG/rcZ9xXxWpiPM
	EsDsI2Kli/HRfeAMNn4WuJaZC9Fxi+3Ge2PGipFLzF2B3bsh74KGjN5E4E0WoUIS97o+H/Vlso+qo
	FbfM2gBoTAkAXXQvp6abH3Cw+GKp75JoxYUGqJD4L2m8qBfOJMSKHmecrr3055K8j6nNfC/hk8H+i
	qyFpp+a2CYOoLlTot6Xw80ANI7KDMMFihJbQOyXYiRzltPIzkVcIQY1MiU0fg77XvsySuvjdwBXnr
	WVRHrjpLswhtdES45dnYNPiVglwfJaTezQoo6DoVOFm7tpH7zNwidOWpoOzAMKx67uTF3sm9yb7Qv
	vmuwhtyQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGJAM-0001q0-8l; Fri, 04 Oct 2019 08:42:22 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGJAF-0001pS-4F
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 08:42:16 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x948g1lt013759;
 Fri, 4 Oct 2019 03:42:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1570178521;
 bh=7GfWdysTbWv4kzHlurdLL/jJt+BcoAZEb2L+lCANjKQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Eo83z6zEo4/5fQjemH9UPOAnk0HJZNEc1ZFz7fTJEDd0g+/ydf0W9ZaNIjMGs+oeR
 nmqbmyrumdUQQwLwAYJl/VhHWEVd8UI0xV2gjTyI5afBtc31Ah9SiBJeKQP9SQEg8Y
 kaJ923DN5LObBPzNIAsEmGjy5P4LFx1C+RWvsD/k=
Received: from DFLE110.ent.ti.com (dfle110.ent.ti.com [10.64.6.31])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x948g1eP116713
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 4 Oct 2019 03:42:01 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 4 Oct
 2019 03:42:00 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 4 Oct 2019 03:42:00 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x948fxMO032434;
 Fri, 4 Oct 2019 03:41:59 -0500
Subject: Re: [PATCH] ARM: omap2plus_defconfig: Fix selected panels after
 generic panel changes
To: Tony Lindgren <tony@atomide.com>, <linux-omap@vger.kernel.org>
References: <20191003165539.50318-1-tony@atomide.com>
From: Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <03ca02c1-2816-17cd-03fd-5b72e5d0ec96@ti.com>
Date: Fri, 4 Oct 2019 11:41:58 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191003165539.50318-1-tony@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_014215_315490_D9C1CDC8 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Jyri Sarha <jsarha@ti.com>, linux-arm-kernel@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/10/2019 19:55, Tony Lindgren wrote:
> The old omapdrm panels got removed for v5.4 in favor of generic panels,
> and the Kconfig options changed. Let's update omap2plus_defconfig
> accordingly so the same panels are still enabled.
> 
> Cc: Jyri Sarha <jsarha@ti.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>   arch/arm/configs/omap2plus_defconfig | 12 ++++++------
>   1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
> --- a/arch/arm/configs/omap2plus_defconfig
> +++ b/arch/arm/configs/omap2plus_defconfig
> @@ -356,14 +356,14 @@ CONFIG_DRM_OMAP_CONNECTOR_HDMI=m
>   CONFIG_DRM_OMAP_CONNECTOR_ANALOG_TV=m
>   CONFIG_DRM_OMAP_PANEL_DPI=m
>   CONFIG_DRM_OMAP_PANEL_DSI_CM=m
> -CONFIG_DRM_OMAP_PANEL_SONY_ACX565AKM=m
> -CONFIG_DRM_OMAP_PANEL_LGPHILIPS_LB035Q02=m
> -CONFIG_DRM_OMAP_PANEL_SHARP_LS037V7DW01=m
> -CONFIG_DRM_OMAP_PANEL_TPO_TD028TTEC1=m
> -CONFIG_DRM_OMAP_PANEL_TPO_TD043MTEA1=m
> -CONFIG_DRM_OMAP_PANEL_NEC_NL8048HL11=m
>   CONFIG_DRM_TILCDC=m
>   CONFIG_DRM_PANEL_SIMPLE=m
> +CONFIG_DRM_PANEL_LG_LB035Q02=m
> +CONFIG_DRM_PANEL_NEC_NL8048HL11=m
> +CONFIG_DRM_PANEL_SHARP_LS037V7DW01=m
> +CONFIG_DRM_PANEL_SONY_ACX565AKM=m
> +CONFIG_DRM_PANEL_TPO_TD028TTEC1=m
> +CONFIG_DRM_PANEL_TPO_TD043MTEA1=m
>   CONFIG_FB=y
>   CONFIG_FIRMWARE_EDID=y
>   CONFIG_FB_MODE_HELPERS=y

Sorry, I didn't remember to update these. Some additions:

These can be dropped, they no longer exist:

CONFIG_DRM_OMAP_ENCODER_TFP410=m
CONFIG_DRM_OMAP_CONNECTOR_DVI=m
CONFIG_DRM_OMAP_PANEL_DPI=m

This can be added to get the DVI output working on many of the boards:

CONFIG_DRM_TI_TFP410=m

  Tomi

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
