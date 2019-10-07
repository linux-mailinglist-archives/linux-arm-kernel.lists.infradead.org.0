Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEDE7CDE74
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 11:48:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZPIzBaW1a6fMeBFMNWbf4pbL5Bv+M4qUKu4uNPzkG/s=; b=R/+rkJgJ9YmPxDQIDmbSOMlzl
	jsb+CYvbZrSb6pskHmHK1Q0328Qtyfp1PntdkY6b7sgA/yQnKFw7BZ16tmi0g3CebGqsds75VM0EI
	xBUmVCSjLO28+d0rmJ+kVxBvPe/eNdqzoSuq3Z1LRnzJG+Jbo6E2KNRWZ3f9kItbkTwTazAZ3HJ+j
	8djhrUquU6wNiCs9J2HwqbglXkksHvtbrB8HatrBKv6RWKv2HYNCaFKIKvB66ijaMDsgpWyNqEeiV
	gCvJ9yNWD3s3NK8m2i4q+4+/jeJiRZOmc4NNRaEtcJ8Q2hXQUdaRKMrTP99bhl0UeYF6l+TeCnrF9
	QzdI7p0sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHPd4-0007hf-Sa; Mon, 07 Oct 2019 09:48:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHPcv-0007hD-QB
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 09:48:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 11ECB15BE;
 Mon,  7 Oct 2019 02:48:25 -0700 (PDT)
Received: from [10.1.197.116] (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7B1A43F68E;
 Mon,  7 Oct 2019 02:48:24 -0700 (PDT)
Subject: Re: [PATCH 2/4] arm64: Fake the IminLine size on systems affected by
 Neoverse-N1 #1542419
To: James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
References: <20191002094935.48848-1-james.morse@arm.com>
 <20191002094935.48848-3-james.morse@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <f6fb7ef1-0130-c5ea-23f7-692c0933ce3b@arm.com>
Date: Mon, 7 Oct 2019 10:48:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191002094935.48848-3-james.morse@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_024825_892771_472B7602 
X-CRM114-Status: GOOD (  20.13  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 02/10/2019 10:49, James Morse wrote:
> Systems affected by Neoverse-N1 #1542419 support DIC so do not need to
> perform icache maintenance once new instructions are cleaned to the PoU.
> For the errata workaround, the kernel hides DIC from user-space, so that
> the unnecessary cache maintenance can be trapped by firmware.
> 
> To reduce the number of traps, produce a fake IminLine value based on
> PAGE_SIZE.
> 
> Signed-off-by: James Morse <james.morse@arm.com>
> ---
>   arch/arm64/include/asm/cache.h | 3 ++-
>   arch/arm64/kernel/traps.c      | 6 +++++-
>   2 files changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/cache.h b/arch/arm64/include/asm/cache.h
> index 43da6dd29592..806e9dc2a852 100644
> --- a/arch/arm64/include/asm/cache.h
> +++ b/arch/arm64/include/asm/cache.h
> @@ -11,6 +11,7 @@
>   #define CTR_L1IP_MASK		3
>   #define CTR_DMINLINE_SHIFT	16
>   #define CTR_IMINLINE_SHIFT	0
> +#define CTR_IMINLINE_MASK	0xf
>   #define CTR_ERG_SHIFT		20
>   #define CTR_CWG_SHIFT		24
>   #define CTR_CWG_MASK		15
> @@ -18,7 +19,7 @@
>   #define CTR_DIC_SHIFT		29
>   
>   #define CTR_CACHE_MINLINE_MASK	\
> -	(0xf << CTR_DMINLINE_SHIFT | 0xf << CTR_IMINLINE_SHIFT)
> +	(0xf << CTR_DMINLINE_SHIFT | CTR_IMINLINE_MASK << CTR_IMINLINE_SHIFT)
>   
>   #define CTR_L1IP(ctr)		(((ctr) >> CTR_L1IP_SHIFT) & CTR_L1IP_MASK)
>   
> diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> index 465f0a0f8f0a..991647a65fe8 100644
> --- a/arch/arm64/kernel/traps.c
> +++ b/arch/arm64/kernel/traps.c
> @@ -470,9 +470,13 @@ static void ctr_read_handler(unsigned int esr, struct pt_regs *regs)
>   	int rt = ESR_ELx_SYS64_ISS_RT(esr);
>   	unsigned long val = arm64_ftr_reg_user_value(&arm64_ftr_reg_ctrel0);
>   
> -	if (cpus_have_const_cap(ARM64_WORKAROUND_1542419))
> +	if (cpus_have_const_cap(ARM64_WORKAROUND_1542419)) {
>   		val &= ~BIT(CTR_DIC_SHIFT);
>   
> +		val &= ~CTR_IMINLINE_MASK;
> +		val |= PAGE_SHIFT - 2;

nit: I would do :
		val |= (PAGE_SHIFT - 2) & CTR_IMINLINE_MASK;

minor nit: Also do we need a comment here to say why we do the IMINLINE bit ? I
understand it is part of the commit, but having it here may be helpful.

Either way:

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
