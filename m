Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B28C5C9CE4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 13:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l4+KSJLsQmORBN/9V+CG7D5bFQLB7JhsI8/wtNFJVxM=; b=Vjt+YKOzd+WgB1
	YZZ0j7/ddTENY+q5TiGQnPgVYMbUa4CnSYgb7255cFl+IRNAnH8AC3PhVzD2JKwDDRb5JsOuc1uLf
	PJdCATElyUP7Nc9a99kbkIQsskIgY0kVvxz2IdQICJmofAW45mCpDIfRD9/QJbhXobeF/TShYzQ67
	gIrFQZF7b+in7xzGfFUPBZwnsO22h//V74Wmc4o+NRlTVkQ2TsYp2lfPiFSLWHcmq6BL6+NVgENOA
	LlNI36ggqMK+6WK0QKquGad15Yc06mCk8HvvxCTmMmL0b7mVlrDFR+I8OdZ7HmTsM4Z6sjNXo2txZ
	eXYV9J+V8Owg7QX/k/rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFz0p-0006tP-It; Thu, 03 Oct 2019 11:11:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFz0h-0006sX-TC
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 11:11:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 426411000;
 Thu,  3 Oct 2019 04:11:03 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 245143F706;
 Thu,  3 Oct 2019 04:11:02 -0700 (PDT)
Subject: Re: [PATCH 5/5] arm64: Enable and document ARM errata 1319367 and
 1319537
To: Marc Zyngier <maz@kernel.org>
References: <20190925111941.88103-1-maz@kernel.org>
 <20190925111941.88103-6-maz@kernel.org>
From: James Morse <james.morse@arm.com>
Message-ID: <6d41efac-3606-328a-0a18-f86ed070932c@arm.com>
Date: Thu, 3 Oct 2019 12:11:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190925111941.88103-6-maz@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_041103_984258_27B1625B 
X-CRM114-Status: GOOD (  15.04  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 25/09/2019 12:19, Marc Zyngier wrote:
> Now that everything is in place, let's get the ball rolling
> by allowing the corresponding config option to be selected.
> Also add the required information to silicon_arrata.rst.

> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 3adcec05b1f6..c50cd4f83bc4 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -523,6 +523,16 @@ config ARM64_ERRATUM_1286807
>  	  invalidated has been observed by other observers. The
>  	  workaround repeats the TLBI+DSB operation.
>  
> +config ARM64_ERRATUM_1319367
> +	bool "Cortex-A57/A72: Speculative AT instruction using out-of-context translation regime could cause subsequent request to generate an incorrect translation"
> +	default y
> +	help
> +	  This option adds work arounds for ARM Cortex-A57 erratum 1319537
> +	  and A72 erratum 1319367
> +
> +	  Cortex-A57 and A72 cores could end-up with corrupted TLBs by
> +	  speculating an AT instruction during a guest context switch.
> +
>  	  If unsure, say Y.
>  
>  config ARM64_ERRATUM_1463225
> 

Nit: You pinched someone elses "If unsure, say Y."!



Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
