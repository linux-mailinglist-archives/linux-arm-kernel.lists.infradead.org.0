Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F7613B1FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 19:24:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oh1QMbqa05XRezWHrAFqyijvvLrAK472Zkg3UD1K20w=; b=uyOgA2ohNbtegS
	jIvOw7V3KqZGwtCLm66kUTwjEaty5ulplVjj9yBkMCVCmZaMiIUfnmS5V6ABP91YPObsBW7B4w+xj
	19iGsUGO6iT15icLhEtWNKaBMysnK0/Ies2hQo2MpTCW6FBqLfF4bFGVJbaDOIqz7IWFXgJ2hNNak
	UArQaXXG0o7hNo5x6n+c93rriGxIlKm8EzBxKMqst3kHAOJVu10I54mNI4S5LcA+rTgX/FmRPtKR5
	QICEbw9RMJ1yLa9PlIt+L3Qm3mV6uq4Xr7HjwTCyuDSodKNOPoiVYa0HeiTyt6HMCcjfXO8LQUqYZ
	yUfSmQ1xZwxJ6hbr5xmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irQrv-0005VO-6d; Tue, 14 Jan 2020 18:24:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irQrj-0005Ux-AR
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 18:24:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6224B1396;
 Tue, 14 Jan 2020 10:24:29 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D11D23F68E;
 Tue, 14 Jan 2020 10:24:27 -0800 (PST)
Date: Tue, 14 Jan 2020 18:24:22 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 05/17] arm64: entry: add a call_on_stack helper
Message-ID: <20200114182422.GA27165@lakrids.cambridge.arm.com>
References: <20200108185634.1163-1-mark.rutland@arm.com>
 <20200108185634.1163-6-mark.rutland@arm.com>
 <98534fbd-5600-5ae2-a117-3bad76ddbe04@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <98534fbd-5600-5ae2-a117-3bad76ddbe04@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_102435_407172_ECE8CF78 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: keescook@chromium.org, maz@kernel.org, robin.murphy@arm.com,
 broonie@kernel.org, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 catalin.marinas@arm.com, labbott@redhat.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, alex.popov@linux.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 01:30:02PM +0530, Anshuman Khandual wrote:
> 
> 
> On 01/09/2020 12:26 AM, Mark Rutland wrote:
> > In some cases, we want to call a function from C code, using an
> > alternative stack. Add a helper that we can use in such cases.
> > 
> > Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: James Morse <james.morse@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > ---
> >  arch/arm64/include/asm/exception.h |  2 ++
> >  arch/arm64/kernel/entry.S          | 21 +++++++++++++++++++++
> >  2 files changed, 23 insertions(+)
> > 
> > diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
> > index b87c6e276ab1..a49038fa4faf 100644
> > --- a/arch/arm64/include/asm/exception.h
> > +++ b/arch/arm64/include/asm/exception.h
> > @@ -31,6 +31,8 @@ static inline u32 disr_to_esr(u64 disr)
> >  	return esr;
> >  }
> >  
> > +asmlinkage void call_on_stack(struct pt_regs *, void (*)(struct pt_regs *),
> > +			      unsigned long);
> >  asmlinkage void enter_from_user_mode(void);
> >  void do_mem_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs);
> >  void do_sp_pc_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs);
> > diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> > index 53ce1877a4aa..184313c773ea 100644
> > --- a/arch/arm64/kernel/entry.S
> > +++ b/arch/arm64/kernel/entry.S
> > @@ -901,6 +901,27 @@ ENTRY(ret_from_fork)
> >  ENDPROC(ret_from_fork)
> >  NOKPROBE(ret_from_fork)
> >  
> > +/*
> > + * x0 = argument to function
> 
> A small nit. Though the definition here itself does not limit the
> argument type, it might worth to mention that to be struct pt_regs
> per the previous declaration.
> 

True.

To make this clearer, I've given the C prototype instead, as we do for the
SMCCC wrappers:

/*
 * void call_on_stack(struct pt_regs *regs,
 *                    void (*func)(struct pt_regs *),
 *                    unsigned long new_sp)
 *
 * Calls func(regs) using new_sp as the initial stack pointer.
 */

> > +ENTRY(call_on_stack)
> > +	/* Create a frame record to save our LR and SP (implicit in FP) */
> > +	stp	x29, x30, [sp, #-16]!
> > +	mov	x29, sp
> > +
> > +	/* Move to the new stack and call the function there */
> > +	mov	sp, x2
> > +	blr	x1
> > +
> > +	/* Restore SP from the FP, FP and LR from the record, and return */
> > +	mov	sp, x29
> > +	ldp	x29, x30, [sp], #16
> > +	ret
> > +ENDPROC(call_on_stack)
> > +NOKPROBE(call_on_stack)
> > +
> >  #ifdef CONFIG_ARM_SDE_INTERFACE
> >  
> >  #include <asm/sdei.h>
> > 
> 
> Reviewed-by: Anshuman Khandual <anshuman.khandual@arm.com>

Thanks!

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
