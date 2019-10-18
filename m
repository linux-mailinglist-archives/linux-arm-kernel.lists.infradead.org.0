Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF52DC447
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 14:01:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/lFp21wlyXK9x+dlAiD4d4ms9I3zCpOFtjHNZRAWMOQ=; b=ABkJPZOh4VFc6U
	g2hIH7a1Mne6QYprpxEGwp+qsaSmWMizGGZ2R1ad9bcq0zp0Q+RpdFL9uko8IBT4rmb/ovisS1itX
	QQAh8BhtCTN8QQjyI4H/Bm6Hx42tjO+voUTHVcUJI8KqmlVWsi4ge8Ymgx5+raGNLLFynuaslvSMq
	C5F2R/sWAhX+wr28biT7J6b8AoQvuEt1Yms2fRyqFe0AUb0eEdLrix7Ri+38KPjhn32fSSFuepz8A
	nHKAmMywA84XX54Ax/mMTKhxlQupE3rN/SZb3ZED3mmbgJVJjSEdAGO5kE29JolsqWSI5k0CFGnvc
	rU5SgD3I0ZgQCzfdYTow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLQwf-0000Pe-2O; Fri, 18 Oct 2019 12:01:25 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLQwW-0000OZ-Bq
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 12:01:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 64211CA3;
 Fri, 18 Oct 2019 05:01:05 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 CD3653F6C4; Fri, 18 Oct 2019 05:01:04 -0700 (PDT)
Date: Fri, 18 Oct 2019 13:01:02 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 1/3] arm64: Factor out checks for KASLR in KPTI code
 into separate function
Message-ID: <20191018120102.GA55431@arrakis.emea.arm.com>
References: <20191016151421.27708-1-broonie@kernel.org>
 <20191016151421.27708-2-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016151421.27708-2-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_050116_447358_4CF9D7FA 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 04:14:19PM +0100, Mark Brown wrote:
> +static inline bool arm64_kernel_use_ng_mappings(void)
> +{
>  	/* What's a kpti? Use global mappings if we don't know. */
>  	if (!IS_ENABLED(CONFIG_UNMAP_KERNEL_AT_EL0))
>  		return false;
> @@ -52,29 +79,21 @@ static inline bool arm64_kernel_use_ng_mappings(void)
>  	if (arm64_kernel_unmapped_at_el0())
>  		return true;
>  
> -	if (!IS_ENABLED(CONFIG_RANDOMIZE_BASE))
> +	/*
> +	 * Once we are far enough into boot for capabilities to be
> +	 * ready we will have confirmed if we are using non-global
> +	 * mappings so don't need to consider anything else here.
> +	 */
> +	if (static_branch_likely(&arm64_const_caps_ready))
>  		return false;
>  
>  	/*
>  	 * KASLR is enabled so we're going to be enabling kpti on non-broken
>  	 * CPUs regardless of their susceptibility to Meltdown. Rather
>  	 * than force everybody to go through the G -> nG dance later on,
> -	 * just put down non-global mappings from the beginning.
> +	 * just put down non-global mappings from the beginning
>  	 */
> -	if (!IS_ENABLED(CONFIG_CAVIUM_ERRATUM_27456)) {
> -		tx1_bug = false;
> -#ifndef MODULE
> -	} else if (!static_branch_likely(&arm64_const_caps_ready)) {
> -		extern const struct midr_range cavium_erratum_27456_cpus[];
> -
> -		tx1_bug = is_midr_in_range_list(read_cpuid_id(),
> -						cavium_erratum_27456_cpus);
> -#endif
> -	} else {
> -		tx1_bug = __cpus_have_const_cap(ARM64_WORKAROUND_CAVIUM_27456);
> -	}
> -
> -	return !tx1_bug && kaslr_offset() > 0;
> +	return kaslr_requires_kpti();
>  }

While that's a step in the right direction, I'd like to see
{PTE,PMD}_MAYBE_NG move away from the current use of
arm64_kernel_use_ng_mappings(). These macros are used during early
during boot and we seem to rely on cpu_hwcaps not being populated yet
(arm64_kernel_unmapped_at_el0() checking it via cpus_have_const_cap()).

Could we have a global variable (boot or a pgtable attr type) which we
populate during early boot and subsequently use in the PTE_MAYBE_NG
macro?

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
