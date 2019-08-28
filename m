Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1442FA0205
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 14:40:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Z+juxzH5AKsGpiLHnuCGSeT4qZvMiHEbNCHWF4JDkU=; b=lud2UlK9sZ4/mi
	r0o12NGWOOZJhwgn1WgPrIwN9tKwX9lnF1l8sMTm1UcG9ToTZG4cJHS/gaFdOuL93KX1wwT+P4T6L
	S96rJBHMW6e81Y0kGg1TQcWoLuP0TG7ZqK24lob6aOZ4z2w40Ms1qGEfV2yOySASnvRfMuwf15qyC
	D4DK3DbPtggVUxdE92CRksG+TO0lmJl5WwowbyD/mAqeyBqKVWySpsxdOXDTQEvNdyRHIllcbHfCS
	XeRQC6/CpYy0t5gp417eVNfmpvTMGnq/dWrr9mkt5FI6GsluRuUF86Q0tclKI511npD4+BAmTgtTE
	oPAtfJbKt0y3YyWuI9Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2xFh-0001ay-GB; Wed, 28 Aug 2019 12:40:41 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2xFV-0001a9-ET
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 12:40:30 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 05:40:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,441,1559545200"; d="scan'208";a="210152703"
Received: from deyangko-mobl.ccr.corp.intel.com ([10.249.168.35])
 by fmsmga002.fm.intel.com with ESMTP; 28 Aug 2019 05:40:23 -0700
Message-ID: <63b8753a2a58688e75f6e03c46c84a064a123d85.camel@intel.com>
Subject: Re: [PATCH v5 03/18] thermal: fix indentation in makefile
From: Zhang Rui <rui.zhang@intel.com>
To: Yangtao Li <tiny.windzz@gmail.com>, edubezval@gmail.com, 
 daniel.lezcano@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com, 
 maxime.ripard@bootlin.com, wens@csie.org, mchehab+samsung@kernel.org, 
 davem@davemloft.net, gregkh@linuxfoundation.org,
 Jonathan.Cameron@huawei.com,  nicolas.ferre@microchip.com
Date: Wed, 28 Aug 2019 20:40:33 +0800
In-Reply-To: <20190810052829.6032-4-tiny.windzz@gmail.com>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
 <20190810052829.6032-4-tiny.windzz@gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_054029_526549_5AAE3741 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 2019-08-10 at 05:28 +0000, Yangtao Li wrote:
> To unify code style.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>

the later patches in this series does not change Makefile.
So this seems to be a cleanup patch independent of this patch set.
It's better to remove this patch from this patch series.

thanks,
rui
> ---
>  drivers/thermal/Makefile | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/thermal/Makefile b/drivers/thermal/Makefile
> index fa6f8b206281..d7eafb5ef8ef 100644
> --- a/drivers/thermal/Makefile
> +++ b/drivers/thermal/Makefile
> @@ -5,7 +5,7 @@
>  
>  obj-$(CONFIG_THERMAL)		+= thermal_sys.o
>  thermal_sys-y			+= thermal_core.o
> thermal_sysfs.o \
> -					thermal_helpers.o
> +				   thermal_helpers.o
>  
>  # interface to/from other layers providing sensors
>  thermal_sys-$(CONFIG_THERMAL_HWMON)		+= thermal_hwmon.o
> @@ -25,11 +25,11 @@ thermal_sys-$(CONFIG_CPU_THERMAL)	+=
> cpu_cooling.o
>  thermal_sys-$(CONFIG_CLOCK_THERMAL)	+= clock_cooling.o
>  
>  # devfreq cooling
> -thermal_sys-$(CONFIG_DEVFREQ_THERMAL) += devfreq_cooling.o
> +thermal_sys-$(CONFIG_DEVFREQ_THERMAL) 	+= devfreq_cooling.o
>  
>  # platform thermal drivers
>  obj-y				+= broadcom/
> -obj-$(CONFIG_THERMAL_MMIO)		+= thermal_mmio.o
> +obj-$(CONFIG_THERMAL_MMIO)	+= thermal_mmio.o
>  obj-$(CONFIG_SPEAR_THERMAL)	+= spear_thermal.o
>  obj-$(CONFIG_SUN8I_THERMAL)     += sun8i_thermal.o
>  obj-$(CONFIG_ROCKCHIP_THERMAL)	+= rockchip_thermal.o
> @@ -50,7 +50,7 @@ obj-$(CONFIG_TI_SOC_THERMAL)	+= ti-soc-
> thermal/
>  obj-y				+= st/
>  obj-$(CONFIG_QCOM_TSENS)	+= qcom/
>  obj-y				+= tegra/
> -obj-$(CONFIG_HISI_THERMAL)     += hisi_thermal.o
> +obj-$(CONFIG_HISI_THERMAL)     	+= hisi_thermal.o
>  obj-$(CONFIG_MTK_THERMAL)	+= mtk_thermal.o
>  obj-$(CONFIG_GENERIC_ADC_THERMAL)	+= thermal-generic-adc.o
>  obj-$(CONFIG_ZX2967_THERMAL)	+= zx2967_thermal.o


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
