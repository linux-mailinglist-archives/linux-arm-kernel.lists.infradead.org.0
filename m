Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F5A1C51C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 11:20:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xSsDxkKLdeYF5uPlQSkeFe/TnqYJOQHn30foqWGWcqM=; b=fioFsooycO33VJqZG/63WbK21
	4qi/rB5oOgt/+tZ8y6U7xwyZfthscJnkOIgop4q4GWbkH9p2p/z2ZnCSMbIiJvnonlDAFfQuLUt4x
	KeB/72uypCO6sT4pMh3Yq5YNcZf6kheOYsJ9TXEItoVTR8ohOWqjh+zYXtC3b+WUIIii/AHmfAtZl
	waWi+seUkS8LBwBRI98As59btOKG7uakFE6gPifdYO16n36TLYE1r65cDZ5AlLqqimpWctiUU/ppK
	TlcnJjUWM6JC3TxPdNh6a+fxUnBws4TrFBiRo5MyC/WLVW6l5isXrjGQbpJ3Xyzv4PYvcToGx0gWw
	AhnuySSDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVtkP-0004fw-KB; Tue, 05 May 2020 09:20:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVtkH-0003cg-Hk
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 09:20:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A5F2A30E;
 Tue,  5 May 2020 02:20:06 -0700 (PDT)
Received: from [10.37.12.10] (unknown [10.37.12.10])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EC9973F305;
 Tue,  5 May 2020 02:20:02 -0700 (PDT)
Subject: Re: [PATCH V3 11/16] arm64/cpufeature: Add remaining feature bits in
 ID_AA64PFR1 register
To: anshuman.khandual@arm.com, linux-arm-kernel@lists.infradead.org
References: <1588426445-24344-1-git-send-email-anshuman.khandual@arm.com>
 <1588426445-24344-12-git-send-email-anshuman.khandual@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <4c6e9f6e-fffa-8fdf-ad1a-f0c6514c3571@arm.com>
Date: Tue, 5 May 2020 10:24:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1588426445-24344-12-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_022009_640374_6EBCCF68 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/02/2020 02:34 PM, Anshuman Khandual wrote:
> Enable the following features bits in ID_AA64PFR1 register as per ARM DDI
> 0487F.a specification.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> 
> Suggested-by: Will Deacon <will@kernel.org>
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
>   arch/arm64/include/asm/sysreg.h | 4 ++++
>   arch/arm64/kernel/cpufeature.c  | 4 ++++
>   2 files changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index c93ea6613f51..f1c0d874220a 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -666,7 +666,11 @@
>   #define ID_AA64PFR0_EL0_32BIT_64BIT	0x2
>   
>   /* id_aa64pfr1 */
> +#define ID_AA64PFR1_MPAMFRAC_SHIFT	16
> +#define ID_AA64PFR1_RASFRAC_SHIFT	12
> +#define ID_AA64PFR1_MTE_SHIFT		8
>   #define ID_AA64PFR1_SSBS_SHIFT		4
> +#define ID_AA64PFR1_BT_SHIFT		0
>   
>   #define ID_AA64PFR1_SSBS_PSTATE_NI	0
>   #define ID_AA64PFR1_SSBS_PSTATE_ONLY	1
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index f5a39e040804..181e09d62147 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -233,7 +233,11 @@ static const struct arm64_ftr_bits ftr_id_aa64pfr0[] = {
>   };
>   
>   static const struct arm64_ftr_bits ftr_id_aa64pfr1[] = {
> +	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR1_MPAMFRAC_SHIFT, 4, 0),
> +	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR1_RASFRAC_SHIFT, 4, 0),

These should be hidden as well.

> +	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR1_MTE_SHIFT, 4, 0),
>   	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR1_SSBS_SHIFT, 4, ID_AA64PFR1_SSBS_PSTATE_NI),
> +	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR1_BT_SHIFT, 4, 0),

I would say remove the MTE, BTI fields for now. As they must be VISIBLE, 
but with the kernel support for these merged. They will be added with 
their respective series.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
