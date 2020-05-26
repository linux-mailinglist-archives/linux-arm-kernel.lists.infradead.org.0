Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A312D1C404B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 18:43:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2bBJSR30LjiImxbf4LpROKGI85OAwt/Rp68J6GLIs8=; b=MC2gErs6XPO3dQ
	uWfwoikhd6FaqQ9l1K37zeH+ig7oDVnsX5wV5B7LVVPk1FjWQZcSxdHPlaMrOepYQm3vWd1gw9N6O
	2VWuQnp+hTfpo+N342Lr8f4reZccLJ1ciotZbAORIsq2qWvhm2hwkwgnOOxzTnNGkzGsNoHtIqL3x
	4gfx8aqjnLT/4635V9lDztmMn8uu3fhhPqWEy4K8pULH7VezDMZLtSG1LaZ5DMhCPGwbw1MrxxNoU
	WCHFq6MC0MpFR87ql2Rv7Rxh4SORUE0BDqKMtyikUqBiUqGq1DUrmPrVGzhfw8gHnTLTHD684lF+8
	4xumXtDdh7pFU2EnFMFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVeBb-0006Ho-SQ; Mon, 04 May 2020 16:43:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVe9E-0004Hb-D8
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 16:40:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3C080101E;
 Mon,  4 May 2020 09:40:51 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 450893F68F;
 Mon,  4 May 2020 09:40:49 -0700 (PDT)
Date: Mon, 4 May 2020 17:40:47 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v3 19/23] arm64: mte: Add PTRACE_{PEEK,POKE}MTETAGS support
Message-ID: <20200504164046.GI30377@arm.com>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-20-catalin.marinas@arm.com>
 <20200429164607.GE30377@arm.com> <20200430102132.GF2717@gaia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430102132.GF2717@gaia>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_094052_575475_FC88DAC9 
X-CRM114-Status: GOOD (  27.65  )
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Luis Machado <luis.machado@linaro.org>, Omair Javaid <omair.javaid@linaro.org>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Alan Hayward <Alan.Hayward@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 11:21:32AM +0100, Catalin Marinas wrote:
> On Wed, Apr 29, 2020 at 05:46:07PM +0100, Dave P Martin wrote:
> > On Tue, Apr 21, 2020 at 03:25:59PM +0100, Catalin Marinas wrote:
> > > Add support for bulk setting/getting of the MTE tags in a tracee's
> > > address space at 'addr' in the ptrace() syscall prototype. 'data' points
> > > to a struct iovec in the tracer's address space with iov_base
> > > representing the address of a tracer's buffer of length iov_len. The
> > > tags to be copied to/from the tracer's buffer are stored as one tag per
> > > byte.
> > > 
> > > On successfully copying at least one tag, ptrace() returns 0 and updates
> > > the tracer's iov_len with the number of tags copied. In case of error,
> > > either -EIO or -EFAULT is returned, trying to follow the ptrace() man
> > > page.
> > > 
> > > Note that the tag copying functions are not performance critical,
> > > therefore they lack optimisations found in typical memory copy routines.
> > 
> > Doesn't quite belong here, but:
> > 
> > Can we dump the tags and possible the faulting mode etc. when dumping
> > core?
> 
> Yes, a regset containing GCR_EL1 and SCTLR_EL1.TCF0 bits, maybe
> TFSRE_EL1 could be useful. Discussing with Luis M (cc'ed, working on gdb
> support), he didn't have an immediate need for this but it can be added
> as a new patch.
> 
> Also coredump containing the tags may also be useful, I just have to
> figure out how.
> 
> > These could probably be added later, though.
> 
> Yes, it wouldn't be a (breaking) ABI change if we do them later, just an
> addition.

Agreed

> > > diff --git a/arch/arm64/kernel/mte.c b/arch/arm64/kernel/mte.c
> > > index fa4a4196b248..0cb496ed9bf9 100644
> > > --- a/arch/arm64/kernel/mte.c
> > > +++ b/arch/arm64/kernel/mte.c
> > > @@ -133,3 +138,125 @@ long get_mte_ctrl(void)
> > >  
> > >  	return ret;
> > >  }
> > > +
> > > +/*
> > > + * Access MTE tags in another process' address space as given in mm. Update
> > > + * the number of tags copied. Return 0 if any tags copied, error otherwise.
> > > + * Inspired by __access_remote_vm().
> > > + */
> > > +static int __access_remote_tags(struct task_struct *tsk, struct mm_struct *mm,
> > > +				unsigned long addr, struct iovec *kiov,
> > > +				unsigned int gup_flags)
> > > +{
> > > +	struct vm_area_struct *vma;
> > > +	void __user *buf = kiov->iov_base;
> > > +	size_t len = kiov->iov_len;
> > > +	int ret;
> > > +	int write = gup_flags & FOLL_WRITE;
> > > +
> > > +	if (down_read_killable(&mm->mmap_sem))
> > > +		return -EIO;
> > > +
> > > +	if (!access_ok(buf, len))
> > > +		return -EFAULT;
> > 
> > Leaked down_read()?
> 
> Ah, wrongly placed access_ok() check.
> 
> > > +int mte_ptrace_copy_tags(struct task_struct *child, long request,
> > > +			 unsigned long addr, unsigned long data)
> > > +{
> > > +	int ret;
> > > +	struct iovec kiov;
> > > +	struct iovec __user *uiov = (void __user *)data;
> > > +	unsigned int gup_flags = FOLL_FORCE;
> > > +
> > > +	if (!system_supports_mte())
> > > +		return -EIO;
> > > +
> > > +	if (get_user(kiov.iov_base, &uiov->iov_base) ||
> > > +	    get_user(kiov.iov_len, &uiov->iov_len))
> > > +		return -EFAULT;
> > > +
> > > +	if (request == PTRACE_POKEMTETAGS)
> > > +		gup_flags |= FOLL_WRITE;
> > > +
> > > +	/* align addr to the MTE tag granule */
> > > +	addr &= MTE_ALLOC_MASK;
> > > +
> > > +	ret = access_remote_tags(child, addr, &kiov, gup_flags);
> > > +	if (!ret)
> > > +		ret = __put_user(kiov.iov_len, &uiov->iov_len);
> > 
> > Should this be put_user()?  We didn't use __get_user() above, and I
> > don't see what guards the access.
> 
> It doesn't make any difference on arm64 (it's just put_user) but we had
> get_user() to check the access to &uiov->iov_len already above.

Given that this isn't a critical path, I'd opt for now relying on side-
effects, since this could lead to mismaintenance in the future -- or
badly educate people who read the code.

That's just my preference though.

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
