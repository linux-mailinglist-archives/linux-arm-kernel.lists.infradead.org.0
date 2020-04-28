Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 202481BC68C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 19:24:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E9ai+06UgqbYu6eZIta7XL8FCXQjsfRG45mdvTY0d+U=; b=IB+UGChx8LhP6U
	IvNYhf78xM6KsAovcNec3wWio0NrQOldBBJNmV/T1LIpl6vqGiTNLaEOP0c+0cptWheF96Vk3MU7I
	A6eFj32UUsj7eo5im5dW6Wx9hy+bQp25/mAdHY+qU7hQ1vSXs6vaULXrDVJvZdgw8IQoDhQk4ye4S
	Z5KmBO53IaXkVHL4AOVPNbk1ZMM/YB6P5IrD4W16R0lF3wACsXpH1wgd7OEJrLNoMSfZgXfVLxRWV
	PZH4+uot4tYE/iknzssUnvWaSCU39/xEWBxUMe4w93IyRlNTqfWnIuAddAyYQpDzXZcahDTi+2W7r
	Ncz4IVyeu64qiN0Amwxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTyT-0005oc-OV; Tue, 28 Apr 2020 17:24:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTyG-0005oG-1S
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 17:24:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6009DC14;
 Tue, 28 Apr 2020 10:24:35 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 822833F305;
 Tue, 28 Apr 2020 10:24:34 -0700 (PDT)
Date: Tue, 28 Apr 2020 18:24:32 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 04/10] arm64: Set GP bit in kernel page tables to enable
 BTI for the kernel
Message-ID: <20200428172432.GB18257@gaia>
References: <20200415130750.18645-1-broonie@kernel.org>
 <20200415130750.18645-5-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415130750.18645-5-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_102436_120539_2882CD1E 
X-CRM114-Status: GOOD (  12.14  )
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
Cc: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Kees Cook <keescook@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 02:07:43PM +0100, Mark Brown wrote:
> diff --git a/arch/arm64/include/asm/pgtable-prot.h b/arch/arm64/include/asm/pgtable-prot.h
> index 1305e28225fc..7213117ff538 100644
> --- a/arch/arm64/include/asm/pgtable-prot.h
> +++ b/arch/arm64/include/asm/pgtable-prot.h
> @@ -50,7 +53,9 @@ extern bool arm64_use_ng_mappings;
>  #define PAGE_KERNEL		__pgprot(PROT_NORMAL)
>  #define PAGE_KERNEL_RO		__pgprot((PROT_NORMAL & ~PTE_WRITE) | PTE_RDONLY)
>  #define PAGE_KERNEL_ROX		__pgprot((PROT_NORMAL & ~(PTE_WRITE | PTE_PXN)) | PTE_RDONLY)
> +#define PAGE_KERNEL_ROX_GP	__pgprot((PROT_NORMAL & ~(PTE_WRITE | PTE_PXN)) | PTE_RDONLY | PTE_GP)
>  #define PAGE_KERNEL_EXEC	__pgprot(PROT_NORMAL & ~PTE_PXN)
> +#define PAGE_KERNEL_EXEC_GP	__pgprot((PROT_NORMAL & ~PTE_PXN) | PTE_GP)
>  #define PAGE_KERNEL_EXEC_CONT	__pgprot((PROT_NORMAL & ~PTE_PXN) | PTE_CONT)

Are the PAGE_*_GP defines used anywhere in this series?

> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 9793d3aa9d98..84fea674856f 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -1800,7 +1800,11 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
>  	{
>  		.desc = "Branch Target Identification",
>  		.capability = ARM64_BTI,
> +#ifdef CONFIG_ARM64_BTI_KERNEL
> +		.type = ARM64_CPUCAP_STRICT_BOOT_CPU_FEATURE,
> +#else
>  		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
> +#endif

As with PtrAuth, I'm tempted to have a single config for both user and
kernel. Not a strong opinion though, just looking for some consistency.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
