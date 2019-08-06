Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A0D8313D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 14:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qgIMKqFLY4Nzvv/zVrnAimI2s7lzCqSvK2ZLXJGVi50=; b=RlySacOv+S/AFE
	Is43Zy6I8CaJV6U7WvJkpIhDS0BJpfZaC+Vfx55LvkUO8q4EPXtO31cqKk4tIg3p8zT3uPs5owRy5
	9lPXIEafrj2jLmRnD5ww6KNdcg7G3z6NGctP7WapQjX3KTsqShWQglFXPEZUCbwTMn/XZCknY8OYr
	idhcsVGh5LRT3wX2bpvuxlhExhFCo/NCUuHFTjnrlUgoShbt34mr/gjoZmGQ+Pbn4crkbZNmbn2FB
	Kh13bbKSSXao+B5GBdSgREwJcue+6igpnz4+PQpD8mzaGYs0rMljkNIWu1+ytdzZBFXdeMGEO/Drm
	DwpHtpzXF4DOqWkySE6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huyQE-0006Al-HV; Tue, 06 Aug 2019 12:18:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1huyQ1-0006AS-5P
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 12:18:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 29E7028;
 Tue,  6 Aug 2019 05:18:20 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CA6EE3F694;
 Tue,  6 Aug 2019 05:18:18 -0700 (PDT)
Date: Tue, 6 Aug 2019 13:18:16 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v4.4 V2 24/43] arm64: Add skeleton to harden the branch
 predictor against aliasing attacks
Message-ID: <20190806121816.GD475@lakrids.cambridge.arm.com>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
 <4349161f0ed572bbc6bff64bad94aa96d07b27ff.1562908075.git.viresh.kumar@linaro.org>
 <20190731164556.GI39768@lakrids.cambridge.arm.com>
 <20190801052011.2hrei36v4zntyfn5@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801052011.2hrei36v4zntyfn5@vireshk-i7>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_051821_287566_EC3ECC66 
X-CRM114-Status: GOOD (  20.30  )
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 10:50:11AM +0530, Viresh Kumar wrote:
> On 31-07-19, 17:45, Mark Rutland wrote:
> > On Fri, Jul 12, 2019 at 10:58:12AM +0530, Viresh Kumar wrote:
> > > From: Will Deacon <will.deacon@arm.com>
> > > 
> > > commit 0f15adbb2861ce6f75ccfc5a92b19eae0ef327d0 upstream.
> > > 
> > > Aliasing attacks against CPU branch predictors can allow an attacker to
> > > redirect speculative control flow on some CPUs and potentially divulge
> > > information from one context to another.
> > > 
> > > This patch adds initial skeleton code behind a new Kconfig option to
> > > enable implementation-specific mitigations against these attacks for
> > > CPUs that are affected.
> > > 
> > > Co-developed-by: Marc Zyngier <marc.zyngier@arm.com>
> > > Signed-off-by: Will Deacon <will.deacon@arm.com>
> > > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > > [ v4.4: Changes made according to 4.4 codebase ]
> > > Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> > 
> > [...]
> > 
> > >  /* id_aa64pfr0 */
> > > +#define ID_AA64PFR0_CSV2_SHIFT		56
> > 
> > Note: CSV3 is bits 63-60, 
> > 
> > > diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> > > index 474b34243521..040a42d79990 100644
> > > --- a/arch/arm64/kernel/cpufeature.c
> > > +++ b/arch/arm64/kernel/cpufeature.c
> > > @@ -83,7 +83,8 @@ static struct arm64_ftr_bits ftr_id_aa64isar0[] = {
> > >  };
> > >  
> > >  static struct arm64_ftr_bits ftr_id_aa64pfr0[] = {
> > > -	ARM64_FTR_BITS(FTR_STRICT, FTR_EXACT, 32, 32, 0),
> > > +	ARM64_FTR_BITS(FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64PFR0_CSV2_SHIFT, 4, 0),
> > > +	ARM64_FTR_BITS(FTR_STRICT, FTR_EXACT, 32, 28, 0),
> > 
> > This line should be:
> > 
> > 	ARM64_FTR_BITS(FTR_STRICT, FTR_EXACT, 32, 24, 0),
> > 
> > ... as it was in the v4.9 backbort, making it cover bits 55:32. As in
> > this patch, it covers 59:32, overlapping with CSV2.
> 
> Fixed thanks.
> 
> > We also need to cater for bits 63:60. In the v4.9 backport, the meltdown
> > bits were applied first, so nothing special was necessary.
> > 
> > What's the plan w.r.t. meltdown mitigations and v4.4?
> 
> I haven't started looking at meltdown patches yet and so that will be
> done at a later point of time, if at all done by me. I have been asked
> to backport both Spectre and Meltdown though to 4.4.

Upstream and in v4.9, the meltdown patches came before the spectre
patches, and doing this in the opposite order causes context problems
like the above.

Given that, I think it would be less surprising to do the meltdown
backport first, though I apprecaite that's more work to get these
patches in. :/

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
