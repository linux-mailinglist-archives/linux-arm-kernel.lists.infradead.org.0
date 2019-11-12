Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7736DF9585
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 17:24:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BkBzKvY7ZMiDadwyC6BFSxmTPMAyrgw8UPCY+mXzg4c=; b=GJ770UcTgZpKF18rT6xvaMjmU
	cRwOM0OvWYGquuh0QpUAmHGGL6iaUJ+3V2DyUesCO1xXECRuhbCY4pncDet1W4DUkORt98OhtzxeJ
	7B2rE9Kr0J4lRUZLbJQgkX07A9L1aQJEDbg8jw2zVcLG+pfEIEuSiXm84uTRlVf8NOFi+1Ag2Msm9
	3uutLvE4OhzhN84Z0LGcTK+ZnY4untOIyCrn6oYoaHTx5eM9oi0yeXVKjk+S5LQFTaeHDhp+Gwog/
	7aHZZsKRm0dCyy70r93rSRLnj4GmpkHSL3k0jxVcJogGYa+c/ZTuW5R0E07oXA3P7SPZa9mtPYOUP
	tKzFL5ccg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUYyJ-00017T-8C; Tue, 12 Nov 2019 16:24:51 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUYyB-00015J-5G
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 16:24:44 +0000
Received: from lhreml703-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 5885442030B8FF11AA90;
 Tue, 12 Nov 2019 16:24:33 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml703-cah.china.huawei.com (10.201.108.44) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 12 Nov 2019 16:24:32 +0000
Received: from [127.0.0.1] (10.202.226.46) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Tue, 12 Nov
 2019 16:24:32 +0000
Subject: Re: [PATCH] arm64: Kconfig: add a choice for endianess
To: Anders Roxell <anders.roxell@linaro.org>, <catalin.marinas@arm.com>
References: <20191112160144.8357-1-anders.roxell@linaro.org>
From: John Garry <john.garry@huawei.com>
Message-ID: <e44db1ec-e562-18c4-ca6f-96e4279564ed@huawei.com>
Date: Tue, 12 Nov 2019 16:24:31 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20191112160144.8357-1-anders.roxell@linaro.org>
Content-Language: en-US
X-Originating-IP: [10.202.226.46]
X-ClientProxiedBy: lhreml713-chm.china.huawei.com (10.201.108.64) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_082443_348510_EAA71C2F 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
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
Cc: will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/11/2019 16:01, Anders Roxell wrote:
> When building allmodconfig KCONFIG_ALLCONFIG=$(pwd)/arch/arm64/configs/defconfig
> CONFIG_CPU_BIG_ENDIAN gets enabled. Which tends not to be what most
> people wants. Another concern that thas come up is that ACPI in't built

/s/wants/want/, s/thas/has/, s/in't/isn't/

> for an allmodconfig kernel today since that also depends on !CPU_BIG_ENDIAN.
> 
> Rework so that we introduce a 'choice' and default the choice to
> CPU_LITTLE_ENDIAN. That means that when we build an allmodconfig kernel
> it will default to CPU_LITTLE_ENDIAN that most people tends to want.
> 
> Signed-off-by: Anders Roxell <anders.roxell@linaro.org>

FWIW, apart from spelling mistakes:

Reviewed-by: John Garry <john.garry@huawei.com>

> ---
>   arch/arm64/Kconfig | 13 +++++++++++++
>   1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 64764ca92fca..62f83c234a61 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -877,11 +877,24 @@ config ARM64_PA_BITS
>   	default 48 if ARM64_PA_BITS_48
>   	default 52 if ARM64_PA_BITS_52
>   
> +choice
> +	prompt "Endianess"

Should this be "Endianness"?

> +	default CPU_LITTLE_ENDIAN
> +	help
> +	  Choose what mode you plan on running your kernel in.
> +
>   config CPU_BIG_ENDIAN
>          bool "Build big-endian kernel"
>          help
>            Say Y if you plan on running a kernel in big-endian mode.
>   
> +config CPU_LITTLE_ENDIAN
> +	bool "Build little-endian kernel"
> +	help
> +	  Say Y if you plan on running a kernel in little-endian mode.
> +
> +endchoice
> +
>   config SCHED_MC
>   	bool "Multi-core scheduler support"
>   	help
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
