Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 126171D173C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:13:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YXgLsL/pJ4R8mmPf6m/Gcf2l3UjMpcdulEyvZM2XfUQ=; b=HlvjQ7oA6I/+so
	clL0waSSHIFwwzn8RLn7VPV9k4ctnFuFOEmI+gm3rLBoUpvmZ3X0GxVWoCrrA9R1h3iJgIg2j0t0q
	Ai2PI36EB0n4AWQw/qHeAQkwNuZkPYdoImqOyf6agTG96qzQy/l07f7UbdtOfZSWqza7jD1SH0pCF
	TbVD+v2Rx7Om1R7FmFqueFcmFOMfSVHgqOYNw9KtFmBbaTQzrNEJt2IPQGisVGLq9UmewyeIG2rMD
	MpaIQlbIvE3s9wT4+IFKZoD43YTWcDpfwtCFsVrMWC2rDV5YfeCgpvhcwgQfOjWLBi1FNUOtBRDyb
	RiJhxC+7q+zVboWOrO+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYs8O-0001r3-UJ; Wed, 13 May 2020 14:13:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYs79-000186-Ox
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:12:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 626EA31B;
 Wed, 13 May 2020 07:11:56 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 92A333F71E;
 Wed, 13 May 2020 07:11:54 -0700 (PDT)
Date: Wed, 13 May 2020 15:11:48 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Luis Machado <luis.machado@linaro.org>
Subject: Re: [PATCH v3 19/23] arm64: mte: Add PTRACE_{PEEK,POKE}MTETAGS support
Message-ID: <20200513141147.GD2719@gaia>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-20-catalin.marinas@arm.com>
 <a7569985-eb85-497b-e3b2-5dce0acb1332@linaro.org>
 <20200513104849.GC2719@gaia>
 <3d2621ac-9d08-53ea-6c22-c62532911377@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3d2621ac-9d08-53ea-6c22-c62532911377@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_071203_940848_4EF4290A 
X-CRM114-Status: GOOD (  34.44  )
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
 Omair Javaid <omair.javaid@linaro.org>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Alan Hayward <Alan.Hayward@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 09:52:52AM -0300, Luis Machado wrote:
> On 5/13/20 7:48 AM, Catalin Marinas wrote:
> > On Tue, May 12, 2020 at 04:05:15PM -0300, Luis Machado wrote:
> > > On 4/21/20 11:25 AM, Catalin Marinas wrote:
> > > > Add support for bulk setting/getting of the MTE tags in a tracee's
> > > > address space at 'addr' in the ptrace() syscall prototype. 'data' points
> > > > to a struct iovec in the tracer's address space with iov_base
> > > > representing the address of a tracer's buffer of length iov_len. The
> > > > tags to be copied to/from the tracer's buffer are stored as one tag per
> > > > byte.
> > > > 
> > > > On successfully copying at least one tag, ptrace() returns 0 and updates
> > > > the tracer's iov_len with the number of tags copied. In case of error,
> > > > either -EIO or -EFAULT is returned, trying to follow the ptrace() man
> > > > page.
> > > > 
> > > > Note that the tag copying functions are not performance critical,
> > > > therefore they lack optimisations found in typical memory copy routines.
> > > > 
> > > > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > > > Cc: Will Deacon <will@kernel.org>
> > > > Cc: Alan Hayward <Alan.Hayward@arm.com>
> > > > Cc: Luis Machado <luis.machado@linaro.org>
> > > > Cc: Omair Javaid <omair.javaid@linaro.org>
> > > 
> > > I started working on MTE support for GDB and I'm wondering if we've already
> > > defined a way to check for runtime MTE support (as opposed to a HWCAP2-based
> > > check) in a traced process.
> > > 
> > > Originally we were going to do it via empty-parameter ptrace calls, but you
> > > had mentioned something about a proc-based method, if I'm not mistaken.
> > 
> > We could expose more information via proc_pid_arch_status() but that
> > would be the tagged address ABI and tag check fault mode and intended
> > for human consumption mostly. We don't have any ptrace interface that
> > exposes HWCAPs. Since the gdbserver runs on the same machine as the
> > debugged process, it can check the HWCAPs itself, they are the same for
> > all processes.
> 
> Sorry, I think i haven't made it clear. I already have access to HWCAP2 both
> from GDB's and gdbserver's side. But HWCAP2 only indicates the availability
> of a particular feature in a CPU, it doesn't necessarily means the traced
> process is actively using MTE, right?

Right, but "actively" is not well defined either. The only way to tell
whether a process is using MTE is to look for any PROT_MTE mappings. You
can access these via /proc/<pid>/maps. In theory, one can use MTE
without enabling the tagged address ABI or even tag checking (i.e. no
prctl() call).

> So GDB/gdbserver would need runtime checks to be able to tell if a process
> is using MTE, in which case the tools will pay attention to tags and
> additional MTE-related registers (sctlr and gcr) we plan to make available
> to userspace.

I'm happy to expose GCR_EL1.Excl and the SCTLR_EL1.TCF0 bits via ptrace
as a thread state. The tags, however, are a property of the memory range
rather than a per-thread state. That's what makes it different from
other register-based features like SVE.

> The original proposal was to have GDB send PTRACE_PEEKMTETAGS with a NULL
> address and check the result. Then GDB would be able to decide if the
> process is using MTE or not.

We don't store this information in the kernel as a bool and I don't
think it would be useful either. I think gdb, when displaying memory,
should attempt to show tags as well if the corresponding range was
mapped with PROT_MTE. Just probing whether a thread ever used MTE
doesn't help since you need to be more precise on which address supports
tags.

> > BTW, in my pre-v4 patches (hopefully I'll post v4 this week), I changed
> > the ptrace tag access slightly to return an error (and no tags copied)
> > if the page has not been mapped with PROT_MTE. The other option would
> > have been read-as-zero/write-ignored as per the hardware behaviour.
> > Either option is fine by me but I thought the write-ignored part would
> > be more confusing for the debugger. If you have any preference here,
> > please let me know.
> 
> I think erroring out is a better alternative, as long as the debugger can
> tell what the error means, like, for example, "this particular address
> doesn't make use of tags".

And you could use this for probing whether the range has tags or not.
With my current patches it returns -EFAULT but happy to change this to
-EOPNOTSUPP or -EINVAL. Note that it only returns an error if no tags
copied. If gdb asks for a range of two pages and only the first one has
PROT_MTE, it will return 0 and set the number of tags copied equivalent
to the first page. A subsequent call would return an error.

In my discussion with Dave on the documentation patch, I thought retries
wouldn't be needed but in the above case it may be useful to get an
error code. That's unless we change the interface to return an error and
also update the user iovec structure.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
