Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBECB1EA619
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 16:46:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PuPM85TzyXH26R0DqL+9teTBVuvXDQRAufpLz71sQn0=; b=Kl8qggqszIZ3vF
	UJQX5M1o8b2oK8Kiux+AIWsfb9yvprMpPMF2ezlvZ4Z/QtMMqw3XQuRRothXnpdowm+AINfgLfef1
	sZT/midRMSU7QtQvFh/WvBusGWMwfnvgnuq7uxrGnV+pbGjoENF2WSAGriO3RvUaNOV6YrzCnoNBx
	0A4X+fddMt4aKrd1G1MtL0w1L4emPNMY4h+k0oSQMvcISMm+/B4KG7JkCYhNL+gYTCIZsvaEzFbRA
	RGqyRdkPqSyyLGDrjgJLVm27fmhWQxNuNbt1q0Qkz9iQlyAG4Bc/+QvF2MYNXkaxG5kFQGPyhjGaR
	kNkIJcObVc6G4mfMcOUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jflhN-0008Gj-5z; Mon, 01 Jun 2020 14:45:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jflhG-0008GB-At
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 14:45:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2804455D;
 Mon,  1 Jun 2020 07:45:49 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 78FC73F305;
 Mon,  1 Jun 2020 07:45:47 -0700 (PDT)
Date: Mon, 1 Jun 2020 15:45:45 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v4 11/26] arm64: mte: Add PROT_MTE support to mmap() and
 mprotect()
Message-ID: <20200601144544.GC23419@gaia>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
 <20200515171612.1020-12-catalin.marinas@arm.com>
 <CAMn1gO5ApcHOgQ_oLjiGDdCx9znz7N50w-BbzGPYpAzPQC3OQQ@mail.gmail.com>
 <20200528091445.GA2961@gaia> <20200528110509.GA18623@arm.com>
 <20200528163412.GC2961@gaia> <20200601085536.GV5031@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200601085536.GV5031@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_074550_463765_064CF304 
X-CRM114-Status: GOOD (  28.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, nd@arm.com,
 Peter Collingbourne <pcc@google.com>, Evgenii Stepanov <eugenis@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 01, 2020 at 09:55:38AM +0100, Dave P Martin wrote:
> On Thu, May 28, 2020 at 05:34:13PM +0100, Catalin Marinas wrote:
> > On Thu, May 28, 2020 at 12:05:09PM +0100, Szabolcs Nagy wrote:
> > > The 05/28/2020 10:14, Catalin Marinas wrote:
> > > > On Wed, May 27, 2020 at 11:57:39AM -0700, Peter Collingbourne wrote:
> > > > > Should the userspace stack always be mapped as if with PROT_MTE if the
> > > > > hardware supports it? Such a change would be invisible to non-MTE
> > > > > aware userspace since it would already need to opt in to tag checking
> > > > > via prctl. This would let userspace avoid a complex stack
> > > > > initialization sequence when running with stack tagging enabled on the
> > > > > main thread.
> > > > 
> > > > I don't think the stack initialisation is that difficult. On program
> > > > startup (can be the dynamic loader). Something like (untested):
> > > > 
> > > > 	register unsigned long stack asm ("sp");
> > > > 	unsigned long page_sz = sysconf(_SC_PAGESIZE);
> > > > 
> > > > 	mprotect((void *)(stack & ~(page_sz - 1)), page_sz,
> > > > 		 PROT_READ | PROT_WRITE | PROT_MTE | PROT_GROWSDOWN);
> > > > 
> > > > (the essential part it PROT_GROWSDOWN so that you don't have to specify
> > > > a stack lower limit)
> > > 
> > > does this work even if the currently mapped stack is more than page_sz?
> > > determining the mapped main stack area is i think non-trivial to do in
> > > userspace (requires parsing /proc/self/maps or similar).
> > 
> > Because of PROT_GROWSDOWN, the kernel adjusts the start of the range
> > down automatically. It is potentially problematic if the top of the
> > stack is more than a page away and you want the whole stack coloured. I
> > haven't run a test but my reading of the kernel code is that the stack
> > vma would be split in this scenario, so the range beyond sp+page_sz
> > won't have PROT_MTE set.
> > 
> > My assumption is that if you do this during program start, the stack is
> > smaller than a page. Alternatively, could we use argv or envp to
> > determine the top of the user stack (the bottom is taken care of by the
> > kernel)?
> 
> I don't think you can easily know when the stack ends, but perhaps it
> doesn't matter.
> 
> From memory, the initial stack looks like:
> 
> 	argv/env strings
> 	AT_NULL
> 	auxv
> 	NULL
> 	env
> 	NULL
> 	argv
> 	argc	<--- sp
> 
> If we don't care about tagging the strings correctly, we could step to
> the end of auxv and tag down from there.
> 
> If we do care about tagging the strings, there's probably no good way
> to find the end of the string area, other than looking up sp in
> /proc/self/maps.  I'm not sure we should trust all past and future
> kernels to spit out the strings in a predictable order.

I don't think we care about tagging whatever the kernel places on the
stack since the argv/envp pointers are untagged. An mprotect(PROT_MTE)
may or may not cover the environment but it shouldn't matter as the
kernel clears the tags on the corresponding pages anyway.

AFAIK stack tagging works by colouring a stack frame on function entry
and clearing the tags on return. We would only hit a problem if the
function issuing mprotect(sp, PROT_MTE) on and its callers already
assumed a PROT_MTE stack. Without PROT_MTE, an STG would be
write-ignore, so subsequently turning it on would lead to a mismatch
between the pointer and the allocation tags.

So PROT_MTE turning on should happen very early in the user process
startup code before any code with stack tagging enabled. Whether you
reach the top of the stack with such mprotect() doesn't really matter
since up to that point there should not be any use of stack tagging. If
that's not possible, for example the glibc code setting up the stack was
compiled to stack tagging itself, the kernel would have to enable it
when the user process starts. However, I'd only do this based on some
ELF note.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
