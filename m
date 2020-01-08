Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E35013492E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 18:22:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MUBnooYZsmxWC1Piow5eiPi2L9jAbg3t3pcaeu05oL8=; b=lMYO0nKl/xDb0D
	3vwQ1rjH6AlKkS/in907UDQpWc9zLShMOlQ/JLtKRqYFk218VVf/U2Hda+SI8Wn6ZAlS8Z/JptDWC
	1a/st7dbuB6jb/DX+X7XR/4xRXBq4EZ/pfuwfmvdfAY6QINVmLtv3P9J9X9RF/QbtBgvqHdG9+/VT
	Ehf8j/JtK/EU3EsiTfMkFqDvKQgj6OGtKxkdmAWjmUjt4frNAP0EEI9Toy4SJK4b3zz+SFHOlS+SA
	TbRzEJj7EyvIYVGzdvRzMz+XijeERaSP4ihbyfVhblJd/wGFeBhuGHi9DbRC3WdQyaXF09kS7YpzJ
	wB1E2iWaU1kpnjhD9mAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipF22-0001qL-FM; Wed, 08 Jan 2020 17:22:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipF1v-0001py-Jx
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 17:22:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9F15A1FB;
 Wed,  8 Jan 2020 09:22:02 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A06DC3F534;
 Wed,  8 Jan 2020 09:22:01 -0800 (PST)
Date: Wed, 8 Jan 2020 17:21:59 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v8 3/3] arm64: Use v8.5-RNG entropy for KASLR seed
Message-ID: <20200108172159.GJ49203@lakrids.cambridge.arm.com>
References: <20200107183540.54794-1-broonie@kernel.org>
 <20200107183540.54794-4-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107183540.54794-4-broonie@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_092203_701068_F1AB68D5 
X-CRM114-Status: GOOD (  17.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: suzuki.poulose@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 ard.biesheuvel@linaro.org, Richard Henderson <richard.henderson@linaro.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 07, 2020 at 06:35:40PM +0000, Mark Brown wrote:
> When seeding KALSR on a system where we have architecture level random
> number generation make use of that entropy, mixing it in with the seed
> passed by the bootloader. Since this is run very early in init before
> feature detection is complete we open code rather than use archrandom.h.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/kernel/kaslr.c | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
> index 2a11a962e571..fc38c4c25eb6 100644
> --- a/arch/arm64/kernel/kaslr.c
> +++ b/arch/arm64/kernel/kaslr.c
> @@ -81,7 +81,8 @@ static __init const u8 *kaslr_get_cmdline(void *fdt)
>  u64 __init kaslr_early_init(u64 dt_phys)
>  {
>  	void *fdt;
> -	u64 seed, offset, mask, module_range;
> +	u64 seed, offset, mask, module_range, ftr;
> +	unsigned long raw;
>  	const u8 *cmdline, *str;
>  	int size;
>  
> @@ -120,6 +121,18 @@ u64 __init kaslr_early_init(u64 dt_phys)
>  		return 0;
>  	}
>  
> +	/*
> +	 * Mix in any entropy obtainable architecturally, open coded
> +	 * since this runs extremely early.
> +	 */
> +	if (IS_ENABLED(CONFIG_ARCH_RANDOM)) {
> +		ftr = read_sysreg_s(SYS_ID_AA64ISAR0_EL1);
> +		if ((ftr >> ID_AA64ISAR0_RNDR_SHIFT) & 0xf) {
> +			if (__arm64_rndr(&raw))
> +				seed += raw;
> +		}
> +	}

This looks good. If we add the helper I suggest in patch 2, we can
reduce this down to:

	/* Mix in any entropy obtainable architecturally */
	if (__early_cpu_has_rndr()) {
		unsigned long raw;
		if (__arm64_rndr(&raw))
			seed += raw;
	}

... which keeps all the RNG bits in one place.

Thanks,
Mark.

> +
>  	if (!seed) {
>  		kaslr_status = KASLR_DISABLED_NO_SEED;
>  		return 0;
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
