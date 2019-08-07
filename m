Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E9085026
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 17:42:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g6LM1FLSk3myQYs/tresYzxFDeHu4gIQPK46r+aBRI8=; b=adWiW+gYxxzFaS
	aFmskRn/dL6cHFrMxoi5I/hcMoxkaAmh5MxEWTlPlCUlLPv0iSJtT3De5o6TWAPc+ps2UeCXK628z
	274PiPv7exNnj74/KCd8d+Gt1rcQa98FAX7IITTFcR/dOjRNjomcZQP8ojhzdwkdlG2QBFjmy6N0T
	IVeK/tdPj3PLw/ibKsLyGfYUhN1SqzA3hCA1RO/xHYqJ4AnBVi+mNcDHSM7plO4DtB3fXqE3bcpIc
	k290+7mKRP9XFYRozoA36oj3joTveGuubgjuQaPeeRr/tjeENd0EtsCbZcoZxDyuLuObZxM5dRVtj
	LoXZ0s4h7lqcGuPVHSEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvO5I-0000j6-60; Wed, 07 Aug 2019 15:42:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvO54-0000hy-0j
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 15:42:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 769C8344;
 Wed,  7 Aug 2019 08:42:23 -0700 (PDT)
Received: from queper01-lin (queper01-lin.cambridge.arm.com [10.1.195.48])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 72BB53F706;
 Wed,  7 Aug 2019 08:42:21 -0700 (PDT)
Date: Wed, 7 Aug 2019 16:42:20 +0100
From: Quentin Perret <quentin.perret@arm.com>
To: edubezval@gmail.com, rui.zhang@intel.com, javi.merino@kernel.org,
 viresh.kumar@linaro.org, amit.kachhap@gmail.com, rjw@rjwysocki.net,
 catalin.marinas@arm.com, will@kernel.org, daniel.lezcano@linaro.org,
 lkp@intel.com
Subject: Re: [PATCH v6 3/3] thermal: cpu_cooling: Migrate to using the EM
 framework
Message-ID: <20190807154217.a4rxvj4uerptq52r@queper01-lin>
References: <20190801124643.17112-1-quentin.perret@arm.com>
 <20190801124643.17112-4-quentin.perret@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801124643.17112-4-quentin.perret@arm.com>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_084226_099156_098EF6EB 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, mka@chromium.org,
 ionela.voinescu@arm.com, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

On Thursday 01 Aug 2019 at 13:46:43 (+0100), Quentin Perret wrote:
> diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
> index 9966364a6deb..340853a3ca48 100644
> --- a/drivers/thermal/Kconfig
> +++ b/drivers/thermal/Kconfig
> @@ -144,6 +144,7 @@ config THERMAL_GOV_USER_SPACE
>  
>  config THERMAL_GOV_POWER_ALLOCATOR
>  	bool "Power allocator thermal governor"
> +	depends on ENERGY_MODEL
>  	help
>  	  Enable this to manage platform thermals by dynamically
>  	  allocating and limiting power to devices.

FYI, the kbuild bot just reported a randconfig build issue with this.
THERMAL_DEFAULT_GOV_POWER_ALLOCATOR 'select' THERMAL_GOV_POWER_ALLOCATOR
unconditionally. And I just learned 'select' will force the option ON
and totally ignore its dependencies. That is, we can end up with IPA
force-compiled in, and no PM_EM, which is broken.

So I guess the simplest fix is to do 'select ENERGY_MODEL' in this
patch, instead of depending on it.

I'll send a v7 with this fixed shortly.

Thanks,
Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
