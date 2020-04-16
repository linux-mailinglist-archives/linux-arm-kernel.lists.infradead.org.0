Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 888A01ACF66
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 20:12:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=011pyjJGmbADVFstSAz1VI5F6rWfoBUnPerRW+t3qDs=; b=GdJxfj3W52Zr3P
	HdC/O1DHJnZQuarRuwn0EdQbPNeh719jUKwqcNeZeb9QlKbQwm57H37CwL9Hs82cFrnaY6Cr10WEn
	tqtwF8aDl2tIqdqj2OgS2k1Qq8AezPdRNS3Q5bT5TjJyzW40P8fYt1QrjUXCsLLHVhjgbfLVo2/K0
	gRnWWTzyk1wGoY6O09BuIRTMK61ynK8qnW6uQpTSRPZJEieQmgnBuuPkB8DZlKqSW8cM9eWVeU/gA
	hiFpyxNiIUXEanZtl9O3SzKG2HoCX45gN7pmwoAeNHlq0UVSB4dtqoeqgHdLSojyNJ6kSmI3vBUMh
	Ar94HZ9Q59mrPvUYB6Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP8zp-0000un-Gt; Thu, 16 Apr 2020 18:12:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP8zh-0000uM-L3
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 18:12:11 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C3ABA21924;
 Thu, 16 Apr 2020 18:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587060728;
 bh=dKS+MG0CSg/HtNkZGsr/L3wWaajOLzH1Y3yCvJSHGCc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xUUF9lrCWR6yVbI1xTXNYLK0+Ii7L54BmGYZLumlSKYcxHZYf8JpjLlMCQHNwZ+OU
 eOq0PU0fnjPkw6ZxU2hk5HoIZ05Ascu5Ju5BuZ66j+6k4NXJy1ScW1Xj0I2R0mun8p
 wOEXfVb0pm+hDIVscbNID/It1oZgbhjKIOWY6vxQ=
Date: Thu, 16 Apr 2020 19:12:03 +0100
From: Will Deacon <will@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH 8/8] arm64: cpufeature: Add an overview comment for the
 cpufeature framework
Message-ID: <20200416181202.GA3739@willie-the-truck>
References: <20200414213114.2378-1-will@kernel.org>
 <20200414213114.2378-9-will@kernel.org>
 <96dd797d-ccfe-c867-0a70-65eccacde3cd@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <96dd797d-ccfe-c867-0a70-65eccacde3cd@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_111209_731467_2052ECEC 
X-CRM114-Status: GOOD (  32.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, saiprakash.ranjan@codeaurora.org,
 anshuman.khandual@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 dianders@chromium.org, catalin.marinas@arm.com, kernel-team@android.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 03:59:39PM +0100, Suzuki K Poulose wrote:
> On 04/14/2020 10:31 PM, Will Deacon wrote:
> > Now that Suzuki isn't within throwing distance, I thought I'd better add
> > a rough overview comment to cpufeature.c so that it doesn't take me days
> > to remember how it works next time.
> > 
> > Signed-off-by: Will Deacon <will@kernel.org>
> > ---
> >   arch/arm64/kernel/cpufeature.c | 43 ++++++++++++++++++++++++++++++++++
> >   1 file changed, 43 insertions(+)
> > 
> > diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> > index 680a453ca8c4..421ca99dc8fc 100644
> > --- a/arch/arm64/kernel/cpufeature.c
> > +++ b/arch/arm64/kernel/cpufeature.c
> > @@ -3,6 +3,49 @@
> >    * Contains CPU feature definitions
> >    *
> >    * Copyright (C) 2015 ARM Ltd.
> > + *
> > + * A note for the weary kernel hacker: the code here is confusing and hard to
> > + * follow! That's partly because it's solving a nasty problem, but also because
> > + * there's a little bit of over-abstraction that tends to obscure what's going
> > + * on behind a maze of helper functions and macros.
> 
> Thanks for writing this up !

It's purely a selfish thing ;)

> > + * The basic problem is that hardware folks have started gluing together CPUs
> > + * with distinct architectural features; in some cases even creating SoCs where
> > + * user-visible instructions are available only on a subset of the available
> > + * cores. We try to address this by snapshotting the feature registers of the
> > + * boot CPU and comparing these with the feature registers of each secondary
> > + * CPU when bringing them up. If there is a mismatch, then we update the
> > + * snapshot state to indicate the lowest-common denominator of the feature,
> > + * known as the "safe" value. This snapshot state can be queried to view the
> 
> I am not sure if the following is implied above.
> 
>   1) Against the "snapshot" state, where mismatches triggers updating
>      the "snapshot" state to reflect the "safe" value.
> 
>   2) Compared against the CPU feature registers of *the boot CPU* for
>     "FTR_STRICT" fields and any mismatch triggers TAINT_CPU_OUT_OF_SPEC.
>      This makes sure that warning is generated for each OUT_OF_SPEC
>      secondary CPU.

I was trying to avoid talking about the consequences of a mismatch in that
paragraph, and instead cover them below:

> > + * The sanitised register values are used to decide which capabilities we
> > + * have in the system. These may be in the form of traditional "hwcaps"
> > + * advertised to userspace or internal "cpucaps" which are used to configure
> > + * things like alternative patching and static keys. While a feature mismatch
> > + * may result in a TAINT_CPU_OUT_OF_SPEC kernel taint, a capability mismatch
> > + * may prevent a CPU from being onlined at all.

Do you think something is missing here?

> > + *
> > + * Some implementation details worth remembering:
> > + *
> > + * - Mismatched features are *always* sanitised to a "safe" value, which
> > + *   usually indicates that the feature is not supported.
> > + *
> > + * - A mismatched feature marked with FTR_STRICT will cause a "SANITY CHECK"
> > + *   warning when onlining an offending CPU and the kernel will be tainted
> > + *   with TAINT_CPU_OUT_OF_SPEC.
> 
> As mentioned above, this check is against that of the "boot CPU"
> register state, which may not be implicit from the statement.

Hmm, I'm trying to figure out if this matters. I suppose this means you
get a SANITY CHECK warning for every mismatching secondary CPU, but that's
implied by the above. Is there something else I'm missing?

> > + *
> > + * - Features marked as FTR_VISIBLE have their sanitised value visible to
> > + *   userspace. FTR_VISIBLE features in registers that are only visible
> > + *   to EL0 by trapping *must* have a corresponding HWCAP so that late
> > + *   onlining of CPUs cannot lead to features disappearing at runtime.
> > + *
> 
> As you mentioned in the other response we could add information about
> the guest view, something like :
> 
>       - KVM exposes the sanitised value of the feature registers to the
> 	guests and is not affected by the FTR_VISIBLE. However,
> 	depending on the individual feature support in the hypervisor,
> 	some of the fields may be capped/limited.

In light of Marc's comment, I'll add something here along the lines of:

  "KVM exposes its own view of the feature registers to guest operating
   systems regardless of FTR_VISIBLE. This is typically driven from the
   sanitised register values to allow virtual CPUs to be migrated between
   arbitrary physical CPUs, but some features not present on the host are
   also advertised and emulated. Look at sys_reg_descs[] for the gory
   details."

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
