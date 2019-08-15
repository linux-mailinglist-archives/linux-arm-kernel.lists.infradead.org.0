Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0948F0AF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 18:36:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ecDyuOnzjb9X8XdwgBBpS9EDEg2/mk8FXck0hy4JtRg=; b=dYQ0wsbpOJMlP+
	YSlLOt6K4KjobBwvhl8u43erA3lc2VTBi0TQDQijBLwQgHJJzoCVeeRgWWa8io2sPRTvD/4QGCEo2
	sqVP7PwjYtbmUiYgN7tkVBLQa3v8J7KyyP7Syqh95vFDbDlmIXR/Z+cvPf2UMxdJjQ8CUml5LZedB
	rDEbzsPGXYMtPmPzG6ZaRAGqOSNc0w9nTW6CzXsBXniNwlFY7c/XZe+k9EJBXZmvSvuvDFHX+VhYD
	J1MbmoShu7AIA8X5IPPHhBtd7amAA7R6BDtGkM9NHTff+lsqUpXglyHT0o55//xXWexLj6Kez+b8M
	otjCcXMjOUihc9Fo2Xxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyIjO-0005Ey-La; Thu, 15 Aug 2019 16:36:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyIj8-0005Cr-1y
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 16:35:56 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C1F520578;
 Thu, 15 Aug 2019 16:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565886948;
 bh=2/C9dweay0QJVT9H48n+05J/5vsY45PrfGi+6ZHPCxY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u9iRb8JtfZjMZxhOFLWTJefqtwDQF9RmG+kOiNtzVfGQVAEHfwKOy+jxXqzFC779j
 y48MwvxQjsAosXozs1nMg+lJq/Z3o03AT5wwoukRHaKY5KjNRpJ3/ypeR3G9U1Gjd5
 wVeia17fQN//CfpoDjaE46YLVQvv788aZp7mk0bA=
Date: Thu, 15 Aug 2019 17:35:42 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 2/2] arm64: Don't use KPTI where we have E0PD
Message-ID: <20190815163541.yngqvjmehpuf74ye@willie-the-truck>
References: <20190814183103.33707-1-broonie@kernel.org>
 <20190814183103.33707-3-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814183103.33707-3-broonie@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_093550_124970_7AC4C7DD 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

Thanks for respinning. Comments below...

On Wed, Aug 14, 2019 at 07:31:03PM +0100, Mark Brown wrote:
> diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
> index fd6161336653..85552f6fceda 100644
> --- a/arch/arm64/include/asm/mmu.h
> +++ b/arch/arm64/include/asm/mmu.h
> @@ -38,6 +38,7 @@ static inline bool arm64_kernel_unmapped_at_el0(void)
>  static inline bool arm64_kernel_use_ng_mappings(void)
>  {
>  	bool tx1_bug;
> +	u64 ftr;
>  
>  	/* What's a kpti? Use global mappings if we don't know. */
>  	if (!IS_ENABLED(CONFIG_UNMAP_KERNEL_AT_EL0))
> @@ -59,7 +60,7 @@ static inline bool arm64_kernel_use_ng_mappings(void)
>  	 * KASLR is enabled so we're going to be enabling kpti on non-broken
>  	 * CPUs regardless of their susceptibility to Meltdown. Rather
>  	 * than force everybody to go through the G -> nG dance later on,
> -	 * just put down non-global mappings from the beginning.
> +	 * just put down non-global mappings from the beginning...
>  	 */
>  	if (!IS_ENABLED(CONFIG_CAVIUM_ERRATUM_27456)) {
>  		tx1_bug = false;
> @@ -74,6 +75,16 @@ static inline bool arm64_kernel_use_ng_mappings(void)
>  		tx1_bug = __cpus_have_const_cap(ARM64_WORKAROUND_CAVIUM_27456);
>  	}
>  
> +	/*
> +	 * ...unless we have E0PD in which case we may use that in
> +	 * preference to unmapping the kernel.
> +	 */
> +	if (IS_ENABLED(CONFIG_ARM64_E0PD)) {
> +		ftr = read_sysreg_s(SYS_ID_AA64MMFR2_EL1);
> +		if ((ftr >> ID_AA64MMFR2_E0PD_SHIFT) & 0xf)
> +			return false;
> +	}
> +
>  	return !tx1_bug && kaslr_offset() > 0;

I'm still unsure as to how this works with the kaslr check in
kpti_install_ng_mappings(). Imagine you have a big.LITTLE system using
kaslr where the boot CPU has E0PD but the secondary CPU doesn't, and
requires kpti.

In this case, I think we'll:

	1. Start off with global mappings installed by the boot CPU
	2. Detect KPTI as being required on the secondary CPU
	3. Avoid rewriting the page tables because kaslr_offset > 0

At this point, we've got exposed global mappings on the secondary CPU.

Thinking about this further, I think we can simply move all of the
'kaslr_offset() > 0' checks used by the kpti code (i.e. in
arm64_kernel_unmapped_at_el0(), kpti_install_ng_mappings() and
unmap_kernel_at_el0()) into a helper function which does the check for
E0PD as well. Perhaps 'kaslr_requires_kpti()' ?

I think that should simplify your patch as well. What do you think?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
