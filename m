Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D65158185
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 18:38:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RPbb+I4dzcOPdWNiX7bFM2RkZTaq06oAd2zmSZl1VfA=; b=JSwGmGIlbOl10i
	wdWgHcqb4I6ItnwlkEH6cAIL7tG/ODMJNus77Bjcbmeu/9bcANWiatrDncCuMTJr0ORVmz0GXi+id
	WnuHnzZzCQStR0WkqYf6eWeuaX3grTF169nLTvClc0sQlny2MK3orqgX8UJJ8deJdtO434VtyhBGb
	fRWxvH/O6OIxaDNK5n9kbjZta/i8rBY/SPSEnpFu6cn1keklDUYMJhFz3n81Y3R6UhuOWG4dWMG6H
	HtoMKRRxa/uytDa5GtkVwL+2WSxrIB3MpoCwX3gXGj1Iga+sJgf/c3g1Iaz0NJyv7l9exC12AeUVq
	i+HTlPSC2kKamVyD5SlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1D0R-0006uW-OY; Mon, 10 Feb 2020 17:37:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1D0L-0006tr-EP
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 17:37:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8EF8B1FB;
 Mon, 10 Feb 2020 09:37:52 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 741C93F68F;
 Mon, 10 Feb 2020 09:37:51 -0800 (PST)
Date: Mon, 10 Feb 2020 17:37:44 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH 1/2] arm64: cpufeature: add cpus_have_final_cap()
Message-ID: <20200210173744.GA20840@lakrids.cambridge.arm.com>
References: <20200210122708.38826-1-mark.rutland@arm.com>
 <20200210122708.38826-2-mark.rutland@arm.com>
 <047f1cd2-3537-6671-233c-69f1758684bf@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <047f1cd2-3537-6671-233c-69f1758684bf@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_093753_572124_32B1985D 
X-CRM114-Status: GOOD (  23.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: catalin.marinas@arm.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, maz@kernel.org, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 04:37:53PM +0000, Suzuki Kuruppassery Poulose wrote:
> On 10/02/2020 12:27, Mark Rutland wrote:
> > When cpus_have_const_cap() was originally introduced it was intended to
> > be safe in hyp context, where it is not safe to access the cpu_hwcaps
> > array as cpus_have_cap() did. For more details see commit:
> > 
> >    a4023f682739439b ("arm64: Add hypervisor safe helper for checking constant capabilities")
> > 
> > We then made use of cpus_have_const_cap() throughout the kernel.
> > 
> > Subsequently, we had to defer updating the static_key associated with
> > each capability in order to avoid lockdep complaints. To avoid breaking
> > kernel-wide usage of cpus_have_const_cap(), this was updated to fall
> > back to the cpu_hwcaps array if called before the static_keys were
> > updated. As the kvm hyp code was only called later than this, the
> > fallback is redundant but not functionally harmful. For more details,
> > see commit:
> > 
> >    63a1e1c95e60e798 ("arm64/cpufeature: don't use mutex in bringup path")
> > 
> > Today we have more users of cpus_have_const_cap() which are only called
> > once the relevant static keys are initialized, and it would be
> > beneficial to avoid the redundant code.
> > 
> > To that end, this patch adds a new cpus_have_final_cap(), helper which
> > is intend to be used in code which is only run once capabilities have
> > been finalized, and will never check the cpus_hwcap array. This helps
> > the compiler to generate better code as it no longer needs to generate
> > code to address and test the cpus_hwcap array. To help catch misuse,
> > cpus_have_final_cap() will BUG() if called before capabilities are
> > finalized.
> > 
> > In hyp context, BUG() will result in a hyp panic, but the specific BUG()
> > instance will not be identified in the usual way.
> > 
> > Comments are added to the various cpus_have_*_cap() helpers to describe
> > the constraints on when they can be used. For clarity cpus_have_cap() is
> > moved above the other helpers.
> > 
> > Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Marc Zyngier <maz@kernel.org>
> > Cc: Suzuki Poulose <suzuki.poulose@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > ---
> 
> ...
> 
> > +/*
> > + * Test for a capability without a runtime check.
> > + *
> > + * Before capabilities are finalized, this will BUG().
> > + * After capabilities are finalized, this is patched to avoid a runtime check.
> > + *
> > + * @num must be a compile-time constant.
> > + */
> > +static __always_inline bool cpus_have_final_cap(int num)
> > +{
> > +	if (static_branch_likely(&arm64_const_caps_ready))
> 
> We have introduced system_capabilities_finalized() helper and may be
> it is a good idea to use it here, to make it more clear.

Sure thing. There are a few existing uses that could be moved over, so I
can move that up for v2.

> Either ways :
> 
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

Thanks!

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
