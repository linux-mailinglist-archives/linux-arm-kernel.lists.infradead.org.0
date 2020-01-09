Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F42135BA5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:47:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hkltuBbEPEKqOw/GVjj/1v0qYozSEdZ3C5GPGAzVnuA=; b=KZcwJhMkBjbmgY
	t++jM22+WtEqcl9xaQ57zKYK/+UXIlOtSXXw8AZC5ZCqGX4BJZVFNVaN9ZrmF0SrnJvqinV9WSWYJ
	h8RNd1wkWg6UUHBsLs3NajUXXfDCWh0jEo3KvDcuBHILlE3Mgh/KVgAkJNUMPNIqxuVb4St6DFDsI
	lrYfcRcol3IHeXN0GZk8F2rJLakgxKB1lP4ctJnitKmTFz2NWWJXWE9njt0uVWwmLGvsp9kBK8XWW
	JvhYQXB5w565BP3cm+mSBtx5UJAqHjhU1bJ4/BwSReenJES1XraSd8menP1rNlGVIHLEXiUaFHtpH
	aYW6RZLCkEYhHPTDtrFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipZ5g-0001Sx-TM; Thu, 09 Jan 2020 14:47:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipZ5H-0001FJ-L5
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 14:46:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9E1571FB;
 Thu,  9 Jan 2020 06:46:50 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 26D383F534;
 Thu,  9 Jan 2020 06:46:49 -0800 (PST)
Date: Thu, 9 Jan 2020 14:46:47 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Laura Abbott <labbott@redhat.com>
Subject: Re: [PATCH 05/17] arm64: entry: add a call_on_stack helper
Message-ID: <20200109144646.GF3112@lakrids.cambridge.arm.com>
References: <20200108185634.1163-1-mark.rutland@arm.com>
 <20200108185634.1163-6-mark.rutland@arm.com>
 <5fdf8bfe-a0a9-350c-e3f5-6621ce4fc564@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5fdf8bfe-a0a9-350c-e3f5-6621ce4fc564@redhat.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_064651_729300_6C9A4BB5 
X-CRM114-Status: GOOD (  18.06  )
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
Cc: keescook@chromium.org, catalin.marinas@arm.com, robin.murphy@arm.com,
 broonie@kernel.org, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 maz@kernel.org, will@kernel.org, linux-arm-kernel@lists.infradead.org,
 alex.popov@linux.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 09:30:13AM -0500, Laura Abbott wrote:
> On 1/8/20 1:56 PM, Mark Rutland wrote:
> > In some cases, we want to call a function from C code, using an
> > alternative stack. Add a helper that we can use in such cases.
> > 
> > Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: James Morse <james.morse@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > ---
> >   arch/arm64/include/asm/exception.h |  2 ++
> >   arch/arm64/kernel/entry.S          | 21 +++++++++++++++++++++
> >   2 files changed, 23 insertions(+)
> > 
> > diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
> > index b87c6e276ab1..a49038fa4faf 100644
> > --- a/arch/arm64/include/asm/exception.h
> > +++ b/arch/arm64/include/asm/exception.h
> > @@ -31,6 +31,8 @@ static inline u32 disr_to_esr(u64 disr)
> >   	return esr;
> >   }
> > +asmlinkage void call_on_stack(struct pt_regs *, void (*)(struct pt_regs *),
> > +			      unsigned long);
> >   asmlinkage void enter_from_user_mode(void);
> >   void do_mem_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs);
> >   void do_sp_pc_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs);
> > diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> > index 53ce1877a4aa..184313c773ea 100644
> > --- a/arch/arm64/kernel/entry.S
> > +++ b/arch/arm64/kernel/entry.S
> > @@ -901,6 +901,27 @@ ENTRY(ret_from_fork)
> >   ENDPROC(ret_from_fork)
> >   NOKPROBE(ret_from_fork)
> > +/*
> > + * x0 = argument to function
> > + * x1 = function to call
> > + * x2 = new stack pointer
> > + */
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
> >   #ifdef CONFIG_ARM_SDE_INTERFACE
> >   #include <asm/sdei.h>
> > 
> 
> I'm a little worried this makes a very tempting gadget for
> attackers to use. Maybe future security features will
> make this less vulnerable?

With BTI we'll have to add a target identifier to the start of the
function, but that's about it.

As a gadget, I think it's similar to the existing cpu_switch_to(). If we
could protect assembly functions with CFI somehow that'd be great for
both.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
