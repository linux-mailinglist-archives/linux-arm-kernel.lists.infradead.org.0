Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5120F8FFFC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 12:24:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1RCMF5EnO0AG9yV7aP2uxYBkH5oQCXggnw1/fDOYohU=; b=B0gMlCkU0FqfH2
	FRrGWY8bIKxEKB9fomyNncEVG4jk/Ezbri/0LolMhEHrN9jKARs20SzgEVX9l0cqmmFb7pBQpUXkh
	nSSrYBO2Wle19Qj0/6VS9H9rvg9ffH+o+mbNxI335YDfgu/q32UOpkjbl3WJJmspzuCjKDSfTpZkI
	5/nYPyrNvKnVS9EUcJHeO+LrJQgtSdW+qrvTaFqZYEiudSdtbuL1KfQNpa0HTkATUYkyt+iYvKXVP
	WY0unz30lacL3EvxSa/FLw+9p3+vmEr30/gUVAKsONOS2Zwx5RayuS/1GPuNMpLGqPkxs0C9poew3
	x6zMIDvltI+eOO30mkEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyZPa-0003Fx-FO; Fri, 16 Aug 2019 10:24:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyZPI-0003FF-Do
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 10:24:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ADC1228;
 Fri, 16 Aug 2019 03:24:27 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 08AC63F706; Fri, 16 Aug 2019 03:24:26 -0700 (PDT)
Date: Fri, 16 Aug 2019 11:24:24 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 2/2] arm64: Don't use KPTI where we have E0PD
Message-ID: <20190816102424.GA28874@arrakis.emea.arm.com>
References: <20190814183103.33707-1-broonie@kernel.org>
 <20190814183103.33707-3-broonie@kernel.org>
 <20190815163541.yngqvjmehpuf74ye@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815163541.yngqvjmehpuf74ye@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_032428_640578_406210C6 
X-CRM114-Status: GOOD (  28.07  )
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 05:35:42PM +0100, Will Deacon wrote:
> On Wed, Aug 14, 2019 at 07:31:03PM +0100, Mark Brown wrote:
> > diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
> > index fd6161336653..85552f6fceda 100644
> > --- a/arch/arm64/include/asm/mmu.h
> > +++ b/arch/arm64/include/asm/mmu.h
> > @@ -38,6 +38,7 @@ static inline bool arm64_kernel_unmapped_at_el0(void)
> >  static inline bool arm64_kernel_use_ng_mappings(void)
> >  {
> >  	bool tx1_bug;
> > +	u64 ftr;
> >  
> >  	/* What's a kpti? Use global mappings if we don't know. */
> >  	if (!IS_ENABLED(CONFIG_UNMAP_KERNEL_AT_EL0))
> > @@ -59,7 +60,7 @@ static inline bool arm64_kernel_use_ng_mappings(void)
> >  	 * KASLR is enabled so we're going to be enabling kpti on non-broken
> >  	 * CPUs regardless of their susceptibility to Meltdown. Rather
> >  	 * than force everybody to go through the G -> nG dance later on,
> > -	 * just put down non-global mappings from the beginning.
> > +	 * just put down non-global mappings from the beginning...
> >  	 */
> >  	if (!IS_ENABLED(CONFIG_CAVIUM_ERRATUM_27456)) {
> >  		tx1_bug = false;
> > @@ -74,6 +75,16 @@ static inline bool arm64_kernel_use_ng_mappings(void)
> >  		tx1_bug = __cpus_have_const_cap(ARM64_WORKAROUND_CAVIUM_27456);
> >  	}
> >  
> > +	/*
> > +	 * ...unless we have E0PD in which case we may use that in
> > +	 * preference to unmapping the kernel.
> > +	 */
> > +	if (IS_ENABLED(CONFIG_ARM64_E0PD)) {
> > +		ftr = read_sysreg_s(SYS_ID_AA64MMFR2_EL1);
> > +		if ((ftr >> ID_AA64MMFR2_E0PD_SHIFT) & 0xf)
> > +			return false;
> > +	}

What I don't particularly like here is that on big.LITTLE this hunk may
have a different behaviour depending on which CPU you run it on. In
general, such CPUID access should only be done in a non-preemptible
context.

We probably get away with this during early boot (before CPU caps have
been set up) when arm64_kernel_unmapped_at_el0() is false since we only
have a single CPU running. Later on at run-time, we either have
arm64_kernel_unmapped_at_el0() true, meaning that some CPU is missing
E0PD with kaslr_offset() > 0, or the kernel is mapped at EL0 with all
CPUs having E0PD. But I find it hard to reason about.

Could we move the above hunk in this block:

	} else if (!static_branch_likely(&arm64_const_caps_ready)) {
		...
	}

and reshuffle the rest of the function to only rely on
arm64_kernel_unmapped_at_el0() when the caps are ready (at run-time)?

> > +
> >  	return !tx1_bug && kaslr_offset() > 0;
> 
> I'm still unsure as to how this works with the kaslr check in
> kpti_install_ng_mappings(). Imagine you have a big.LITTLE system using
> kaslr where the boot CPU has E0PD but the secondary CPU doesn't, and
> requires kpti.
> 
> In this case, I think we'll:
> 
> 	1. Start off with global mappings installed by the boot CPU
> 	2. Detect KPTI as being required on the secondary CPU
> 	3. Avoid rewriting the page tables because kaslr_offset > 0
> 
> At this point, we've got exposed global mappings on the secondary CPU.
> 
> Thinking about this further, I think we can simply move all of the
> 'kaslr_offset() > 0' checks used by the kpti code (i.e. in
> arm64_kernel_unmapped_at_el0(), kpti_install_ng_mappings() and
> unmap_kernel_at_el0()) into a helper function which does the check for
> E0PD as well. Perhaps 'kaslr_requires_kpti()' ?

I agree, this needs some refactoring as we have this decision in three
separate places.

Trying to put my thoughts together. At run-time, with capabilities fully
enabled, we want:

  arm64_kernel_use_ng_mappings() == arm64_kernel_unmapped_at_el0()

  KPTI is equivalent to arm64_kernel_unmapped_at_el0()

At boot time, it's a best effort but we can only move from G to nG
mappings. We start with nG if the primary CPU requires it to avoid
unnecessary page table rewriting. For your above scenario,
kpti_install_ng_mappings() needs to know the boot CPU G/nG state and
skip the rewriting if already nG. If we have a kaslr_requires_kpti()
that only checks the current CPU, it wouldn't know whether kpti was
already applied at boot.

I think kaslr_requires_kpti() should access the raw CPUID registers (for
E0PD, TX1 bug) and be called only by unmap_kernel_at_el0() and
arm64_kernel_use_ng_mappings(), the latter if !arm64_const_caps_ready.
The boot CPU should store kaslr_requires_kpti() value somewhere and
kpti_install_ng_mappings() should check this variable before deciding to
skip the page table rewrite.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
