Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7973214CE95
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 17:43:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Va2D90KuuHep2MReFrKOOVv7OZ2BGAO6qlpz+Y0q3LA=; b=achX8v/VIZ8gzn
	wV1IHkWY/jUYOlAq9CxjQR2vT2XK0anTS3lub9xisdM/eD2Hs3/a7Fjdug+AALsFCP1tLG1ZX0w2/
	WXGMpCLgvfTYmwJmrZfGkBYhWQiUeLO/uEtauzrnQaXEYxcRL4n98PjzI/zYnikJ4WR7iN8smEbEY
	92m9K6B9RoLJ3pDJWMVwk45dxI1m+paSS0rIkBv4HsTD+35cFn8QAq/U7EwtIe0QV9pf8m0+hK5gF
	5oNyhgtSPRBqI7igg8WnGDSZRLUHqq5skJP4fWCZ2jpDtyaCDDouvF2f4ZaC6TKN9Hv9y+fq0eqTG
	JuNVU76rkeMe5iMDKu1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwqQc-0008AF-E8; Wed, 29 Jan 2020 16:42:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwqQR-00089U-CY
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 16:42:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A1D1328;
 Wed, 29 Jan 2020 08:42:44 -0800 (PST)
Received: from localhost (unknown [10.1.198.81])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AD8723F52E;
 Wed, 29 Jan 2020 08:42:43 -0800 (PST)
Date: Wed, 29 Jan 2020 16:42:42 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v2 1/6] arm64: add support for the AMU extension v1
Message-ID: <20200129164242.GA5251@arm.com>
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
 <20191218182607.21607-2-ionela.voinescu@arm.com>
 <2b62c575-3396-3332-2e39-1c3cce2c4bf0@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2b62c575-3396-3332-2e39-1c3cce2c4bf0@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_084247_517429_EACF2893 
X-CRM114-Status: GOOD (  23.06  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: infradead.org]
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
Cc: mark.rutland@arm.com, maz@kernel.org, linux-doc@vger.kernel.org,
 peterz@infradead.org, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 mingo@redhat.com, ggherdovich@suse.cz, sudeep.holla@arm.com, will@kernel.org,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On Tuesday 28 Jan 2020 at 16:34:24 (+0000), Suzuki Kuruppassery Poulose wrote:
> > --- a/arch/arm64/kernel/cpufeature.c
> > +++ b/arch/arm64/kernel/cpufeature.c
> > @@ -156,6 +156,7 @@ static const struct arm64_ftr_bits ftr_id_aa64pfr0[] = {
> >   	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64PFR0_CSV3_SHIFT, 4, 0),
> >   	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64PFR0_CSV2_SHIFT, 4, 0),
> >   	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR0_DIT_SHIFT, 4, 0),
> > +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64PFR0_AMU_SHIFT, 4, 0),
> >   	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_SVE),
> >   				   FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR0_SVE_SHIFT, 4, 0),
> >   	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR0_RAS_SHIFT, 4, 0),
> > @@ -314,10 +315,11 @@ static const struct arm64_ftr_bits ftr_id_mmfr4[] = {
> >   };
> >   static const struct arm64_ftr_bits ftr_id_pfr0[] = {
> > -	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 12, 4, 0),		/* State3 */
> > -	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 8, 4, 0),		/* State2 */
> > -	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 4, 4, 0),		/* State1 */
> > -	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 0, 4, 0),		/* State0 */
> > +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_PFR0_AMU_SHIFT, 4, 0),
> 
> Why is this STRICT while the aa64pfr0 field is NON_STRICT ? On the other
> hand, do we need this entry ? Do we plan to support 32bit guests using
> AMU counters ? If we do, we may need to cap this field for the guests.
>

No, we do not need this entry at all. This is an artifact left from
testing which I'll remove. The ID register is already modified to hide
the presence of AMU for both 32bit and 64bit guests (patch 3/6), and
this was supposed to be here just to validate that the capping of this
field for the guest does its job.

> Also, fyi, please note that there may be conflicts with another series from
> Anshuman which cleans up the tables and "naming" the shifts. [1].
> [1] purposefully hides the AMU from ID_PFR0 due to the above reasoning.
> 

Thanks, that's fine.

> > +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_PFR0_STATE3_SHIFT, 4, 0),
> > +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_PFR0_STATE2_SHIFT, 4, 0),
> > +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_PFR0_STATE1_SHIFT, 4, 0),
> > +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_PFR0_STATE0_SHIFT, 4, 0),
> >   	ARM64_FTR_END,
> >   };
> > @@ -1150,6 +1152,59 @@ static bool has_hw_dbm(const struct arm64_cpu_capabilities *cap,
> >   #endif
> > +#ifdef CONFIG_ARM64_AMU_EXTN
> > +
> > +/*
> > + * This per cpu variable only signals that the CPU implementation supports
> > + * the Activity Monitors Unit (AMU) but does not provide information
> > + * regarding all the events that it supports.
> > + * When this amu_feat per CPU variable is true, the user of this feature
> > + * can only rely on the presence of the 4 fixed counters. But this does
> > + * not guarantee that the counters are enabled or access to these counters
> > + * is provided by code executed at higher exception levels.
> > + *
> > + * Also, to ensure the safe use of this per_cpu variable, the following
> > + * accessor is defined to allow a read of amu_feat for the current cpu only
> > + * from the current cpu.
> > + *  - cpu_has_amu_feat()
> > + */
> > +static DEFINE_PER_CPU_READ_MOSTLY(u8, amu_feat);
> > +
> > +inline bool cpu_has_amu_feat(void)
> > +{
> > +	return !!this_cpu_read(amu_feat);
> > +}
> > +
> 
> minor nit: Or you may use a cpumask_t set of CPUs where AMU is
> available. But if you plan to extend this for the future AMU version
> tracking the mask may not be sufficient.
> 

To be honest, I would like not to have to use information about AMU
version for future support, but yes, it would be good to have the
possibility, just in case.


> [1] http://lists.infradead.org/pipermail/linux-arm-kernel/2020-January/708287.html
> 
> 
> The rest looks fine to me.
> 
> Suzuki

Thank you very much for the review,
Ionela.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
