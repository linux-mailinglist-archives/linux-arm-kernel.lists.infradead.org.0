Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C5CC369F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 16:04:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OOVKdjX30CQ6VF5mhwXP7fWZmIgztWm4WDOmPb16Dx0=; b=BggkK6Zz0AocMIf6MvOdkTGX2
	KlCoDVr7s0E+9IJ/KO7vWZHIx/sKTKmL+qViy7b5tZqFuH8NLTHo+/X0cF7n/iybGbLQZmDNd/+dJ
	OZVQ7TmOEgX0tRS3YJui2oyDXXZfnRBrtxj1XOhtIxWl9HMQT2klMv3SJWi+4Jq3q0Qd4vKLYEVc/
	P9Aopeblahw5LloqyB6Nreu+3zm4enLxQRzgVPgvSEWtLt3I0PfOMMJ6QZu4Dq9W5po71+qU/TUev
	rJAhVhtX/TyWi7MkLkMggtoqFn4ykRqGZMu2dZXfuzoihPvO5CH97Vb8AOoA08zgH3gPDIB6zfzMS
	MfPQLDElw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFIlq-000880-GU; Tue, 01 Oct 2019 14:04:54 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFIlj-00086H-00
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 14:04:48 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id D19F5D31F20412817C8C;
 Tue,  1 Oct 2019 22:04:41 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.179) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 1 Oct 2019 22:04:36 +0800
Subject: Re: [PATCH 3/3] arm64: configs: unset CPU_BIG_ENDIAN
To: Anders Roxell <anders.roxell@linaro.org>, <catalin.marinas@arm.com>,
 <will@kernel.org>
References: <20190926193030.5843-1-anders.roxell@linaro.org>
 <20190926193030.5843-5-anders.roxell@linaro.org>
From: John Garry <john.garry@huawei.com>
Message-ID: <bf5db3a5-96da-752c-49ea-d0de899882d5@huawei.com>
Date: Tue, 1 Oct 2019 15:04:32 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20190926193030.5843-5-anders.roxell@linaro.org>
X-Originating-IP: [10.202.227.179]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_070447_204680_1041A580 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26/09/2019 20:30, Anders Roxell wrote:
> When building allmodconfig KCONFIG_ALLCONFIG=$(pwd)/arch/arm64/configs/defconfig
> CONFIG_CPU_BIG_ENDIAN gets enabled. Which tends not to be what most
> people wants.

Today allmodconfig does not enable CONFIG_ACPI due to BE config, which 
is quite unfortunate, I'd say.

>
> Rework so that we disable CONFIG_CPU_BIG_ENDIAN in the defcinfig file so

defconfig

> it doesn't get enabled when building allmodconfig kernels. When doing a
> 'make savedefconfig' CONFIG_CPU_BIG_ENDIAN will be dropped.

So without having to pass KCONFIG_ALLCONFIG or do anything else, what 
about a config for CONFIG_CPU_LITTLE_ENDIAN instead? I'm not sure if 
that was omitted for a specific reason.

Thanks,
John

>
> Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 878f379d8d84..c9aa6b9ee996 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -855,3 +855,4 @@ CONFIG_DEBUG_KERNEL=y
>  # CONFIG_SCHED_DEBUG is not set
>  CONFIG_MEMTEST=y
>  # CONFIG_CMDLINE_FORCE is not set
> +# CONFIG_CPU_BIG_ENDIAN is not set
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
