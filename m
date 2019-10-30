Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BFAEE98E0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 10:09:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OmCO0ItsYbVeRIvDPSCUcxZ7NNNsLn2/03kWkstH/Zw=; b=PHu2l63Jk7bPHt8YpjaIurHEA
	pN9jGdwPkBNy6qdl6Z2LOKyx5WInhSqhI265TkqzL9ph+N2g4QD+UPUCxyKxkxMcs5eRwnui448DB
	GAnC+wzZtD68j/ycrMXc8Pnde4NilMvh7stm3X4uvflx+9lLGdCXjju8IhAfFkQl1YB6G700qlQEz
	n/bnlBL4nuQ0AnYc66Ee/RDz37uqWsAV09FRGOm06yHLLSpdVUrN/lIcf3WdKnHndHPzYsQWqhrFY
	/zTxud0QkrossHfnaFk+ffdRgcPgVJqLwb62ZXdM5wdrzTe0Cnb67dFEFix7XfhDnJ3jyXYvbGOZh
	7h3iAJs4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPjz6-00083z-W2; Wed, 30 Oct 2019 09:09:45 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPjyu-00082A-6L
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 09:09:33 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 1D2C7455219B66472DC8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 17:09:25 +0800 (CST)
Received: from [127.0.0.1] (10.57.101.250) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Wed, 30 Oct 2019
 17:09:17 +0800
Subject: Re: [PATCH] ARM: hisi: drop useless depend on ARCH_MULTI_V7
To: Kefeng Wang <wangkefeng.wang@huawei.com>
References: <20190527155128.192006-1-wangkefeng.wang@huawei.com>
From: Wei Xu <xuwei5@hisilicon.com>
Message-ID: <5DB9533D.6040802@hisilicon.com>
Date: Wed, 30 Oct 2019 17:09:17 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <20190527155128.192006-1-wangkefeng.wang@huawei.com>
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_020932_424697_332E386C 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/5/27 23:51, Kefeng Wang wrote:
> The ARCH_HISI depends on ARCH_MULTI_V7, no need to add this depend
> to each sub-menu config, and use tabs where possible.
>
> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>

Thanks!
Applied to the hisilicon armv7 SoC tree.

Best Regards,
Wei

> ---
>   arch/arm/mach-hisi/Kconfig | 16 ++++++----------
>   1 file changed, 6 insertions(+), 10 deletions(-)
>
> diff --git a/arch/arm/mach-hisi/Kconfig b/arch/arm/mach-hisi/Kconfig
> index 98338a489921..3b010fe7c0e9 100644
> --- a/arch/arm/mach-hisi/Kconfig
> +++ b/arch/arm/mach-hisi/Kconfig
> @@ -15,7 +15,6 @@ menu "Hisilicon platform type"
>   
>   config ARCH_HI3xxx
>   	bool "Hisilicon Hi36xx family"
> -	depends on ARCH_MULTI_V7
>   	select CACHE_L2X0
>   	select HAVE_ARM_SCU if SMP
>   	select HAVE_ARM_TWD if SMP
> @@ -25,17 +24,15 @@ config ARCH_HI3xxx
>   	  Support for Hisilicon Hi36xx SoC family
>   
>   config ARCH_HIP01
> -       bool "Hisilicon HIP01 family"
> -       depends on ARCH_MULTI_V7
> -       select HAVE_ARM_SCU if SMP
> -       select HAVE_ARM_TWD if SMP
> -       select ARM_GLOBAL_TIMER
> -       help
> -         Support for Hisilicon HIP01 SoC family
> +	bool "Hisilicon HIP01 family"
> +	select HAVE_ARM_SCU if SMP
> +	select HAVE_ARM_TWD if SMP
> +	select ARM_GLOBAL_TIMER
> +	help
> +	  Support for Hisilicon HIP01 SoC family
>   
>   config ARCH_HIP04
>   	bool "Hisilicon HiP04 Cortex A15 family"
> -	depends on ARCH_MULTI_V7
>   	select ARM_ERRATA_798181 if SMP
>   	select HAVE_ARM_ARCH_TIMER
>   	select MCPM if SMP
> @@ -46,7 +43,6 @@ config ARCH_HIP04
>   
>   config ARCH_HIX5HD2
>   	bool "Hisilicon X5HD2 family"
> -	depends on ARCH_MULTI_V7
>   	select CACHE_L2X0
>   	select HAVE_ARM_SCU if SMP
>   	select HAVE_ARM_TWD if SMP



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
