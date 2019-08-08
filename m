Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B22863C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 15:57:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nYQtS8ekPosg6iohbkCNwAko5K4xIFMWihVlmSC0P/g=; b=Qs9306IWrAxUTH5SWC7VLOulq
	6iwslj2btW0Lzgz6CE8WNDI3pytPpa9H275i+VKZdZv88l5q6iT0XhGYH4xMrN2b+FEhaBOsPH1HY
	Gte47JwqXJlTBXSuS3yeBB6PrCrFmz9vARnBeairlmq1KkBAtdupAHF74pglhyV7UummTHSJ6IwVR
	qfIn+QZG24P9ZI2P6coXVr7eqoPrv9fjQoSlbXXSbkBeVEAJZ/NxtaDQFvhpsvtwflj8NB7pTjtV5
	6y6kG4/MdOPfMQG3eTotPUT/lmT2dx4DD9iLNbT5YdJqY2Per3251vAgsdSSHJZy5QH1AH4dNpI36
	MVcA6kQ9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hviuv-0002ZB-EZ; Thu, 08 Aug 2019 13:57:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hviuj-0002Yl-KV
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 13:57:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A7D1915A2;
 Thu,  8 Aug 2019 06:57:08 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1A48C3F694;
 Thu,  8 Aug 2019 06:57:07 -0700 (PDT)
Subject: Re: [PATCH v2] arm64: Clarify when cpu_enable() is called
To: broonie@kernel.org, will@kernel.org, catalin.marinas@arm.com
References: <20190808135328.12655-1-broonie@kernel.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <e94ce1d2-30ad-a365-9461-cb27c07eced7@arm.com>
Date: Thu, 8 Aug 2019 14:57:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190808135328.12655-1-broonie@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_065709_840894_F975AFB5 
X-CRM114-Status: GOOD (  21.20  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 08/08/2019 14:53, Mark Brown wrote:
> Strengthen the wording in the documentation for cpu_enable() to make it
> more obvious to readers not already familiar with the code when the core
> will call this callback and that this is intentional.
> 

Looks good to me, except for some minor space related issues below.

> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
> 
> v2: Much more verbose wording from Suzuki.
> 
>   arch/arm64/include/asm/cpufeature.h | 14 +++++++++++---
>   1 file changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
> index cf65a47ee6b4..2447d4afbf54 100644
> --- a/arch/arm64/include/asm/cpufeature.h
> +++ b/arch/arm64/include/asm/cpufeature.h
> @@ -289,9 +289,17 @@ struct arm64_cpu_capabilities {
>   	u16 type;
>   	bool (*matches)(const struct arm64_cpu_capabilities *caps, int scope);
>   	/*
> -	 * Take the appropriate actions to enable this capability for this CPU.
> -	 * For each successfully booted CPU, this method is called for each
> -	 * globally detected capability.
> +	 * Take the appropriate actions to configure this capability
> +	 * for this CPU.  If the capability is detected by the kernel

minor nit: double space ^^

> +	 * this will be called on all the CPUs in the system,
> +	 * including the hotplugged CPUs, regardless of if the
> +	 * capability was *available* on that specific CPU. This is
> +	 * useful for some capabilities (e.g, working around CPU
> +	 * errata), where all the CPUs must take some action (e.g,
> +	 * changing system control/configuration).  Thus, if an action

and here before "Thus".

> +	 * is required only if the CPU has the capability then the
> +	 * routine must check it before taking any action.
> +

spurious new line ?

>   	 */
>   	void (*cpu_enable)(const struct arm64_cpu_capabilities *cap);
>   	union {
> 

With the above addressed,

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
