Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4AD1EDFD3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 10:32:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4u6FvBJai59FHCKyCHcsZYXF3vEkSMo01kHH6hf4PE=; b=SVb8Hm5lpzEhnM
	pRI24Psptz+zEMFuettT99xaEyiqUwXLr4unqJXKnv7Vj9lXlM12t5FSF5u1KxD1cv7W/5P2DqptV
	AknQjP5M/Aa52hm/0auDqQZeC+W8TRBi/o3+NG/AT/RfP+Qqfi/RrGI5cOZKoSefqa7gYvO8s8aHN
	fzd3L6wbC9Trtviek3RsvTT/JCyMhMfJyqwi/x/U1uJ7JAn+x51Un/f/ou/vs44T9wpqn3BSReVIK
	6Hn6r3rTNIPx4rdYqe9t4Sm3XuR/49bj3+wZByIGPD7Yjo20Z5skJTZdj8bibaIQmHqCKoOSqgia6
	6BI131XP3zYDhAtoyPBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jglIY-00017t-F7; Thu, 04 Jun 2020 08:32:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jglIO-00017X-FM
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 08:32:18 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A6C3C205CB;
 Thu,  4 Jun 2020 08:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591259535;
 bh=TeLh2MiZ+WUxHMvaCtKZTxDIsCftRerNXDtI9fGV3Sg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UDhYNUWvn+7bl1nUHVyK4S2RiDzX1XbFt+qd2f5x8/Um9Efh3qpLHtMFo/yhf7hp9
 xfp81JtLYDElEdw5NmJMXeUW7YDTFqB5PVszSvzQQy4wn2kovD12Sx4YDnU+0KOhjq
 6q5L/2HDpjYDs/gN5ANjMJ/135rC/beZZd520g6A=
Date: Thu, 4 Jun 2020 09:32:11 +0100
From: Will Deacon <will@kernel.org>
To: Keno Fischer <keno@juliacomputing.com>
Subject: Re: [PATCH 1/2] arm64: Override SPSR.SS when single-stepping is
 enabled
Message-ID: <20200604083210.GC30155@willie-the-truck>
References: <20200603151033.11512-1-will@kernel.org>
 <20200603151033.11512-2-will@kernel.org>
 <CABV8kRwrnixNc074-jQhZzeucGHx9_e5FnQmBS=VuL=tFGjY-Q@mail.gmail.com>
 <20200603155338.GA12036@willie-the-truck>
 <CABV8kRxSjMY+d+F5aNzq1=5hXhVLGy6TbNLTUsCeSsAncwCzoA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABV8kRxSjMY+d+F5aNzq1=5hXhVLGy6TbNLTUsCeSsAncwCzoA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_013216_555769_BCE1BE15 
X-CRM114-Status: GOOD (  29.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Luis Machado <luis.machado@linaro.org>,
 kernel-team@android.com, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Keno,

Cheers for the really helpful explanation. I have a bunch of
questions/comments, since it's not very often that somebody shows up who
understands how this is supposed to work and so I'd like to take advantage
of that!

On Wed, Jun 03, 2020 at 12:56:24PM -0400, Keno Fischer wrote:
> On Wed, Jun 3, 2020 at 11:53 AM Will Deacon <will@kernel.org> wrote:
> > > However, at the same time as changing this, we should probably make sure
> > > to enable the syscall exit pseudo-singlestep trap (similar issue as the other
> > > patch I had sent for the signal pseudo-singlestep trap), since otherwise
> > > ptracers might get confused about the lack of singlestep trap during a
> > > singlestep -> seccomp -> singlestep path (which would give one trap
> > > less with this patch than before).
> >
> > Hmm, I don't completely follow your example. Please could you spell it
> > out a bit more? I fast-forward the stepping state machine on sigreturn,
> > which I thought would be sufficient. Perhaps you're referring to a variant
> > of the situation mentioned by Mark, which I didn't think could happen
> > with ptrace [2].
> 
> Sure suppose we have code like the following:
> 
> 0x0: svc #0
> 0x4: str x0, [x7]
> ...
> 
> Then, if there's a seccomp filter active that just does
> SECCOMP_RET_TRACE of everything, right now we get traps:
> 
> <- (ip: 0x0)
> -> PTRACE_SINGLESTEP
> <- (ip: 0x4 - seccomp trap)
> -> PTRACE_SINGLESTEP
> <- SIGTRAP (ip: 0x4 - TRAP_TRACE trap)
> -> PTRACE_SINGLESTEP
> <- SIGTRAP (ip: 0x8 - TRAP_TRACE trap)
> 
> With your proposed patch, we instead get
> <- (ip: 0x0)
> -> PTRACE_SINGLESTEP
> <- (ip: 0x4 - seccomp trap)
> -> PTRACE_SINGLESTEP
> <- SIGTRAP (ip: 0x8 - TRAP_TRACE trap)

Urgh, and actually, I think this is *only* the case if the seccomp
handler actually changes a register in the target, right?

In which case, your proposed patch should probably do something like:

	if (dir == PTRACE_SYSCALL_EXIT) {
		bool stepping = test_thread_flag(TIF_SINGLESTEP);

		tracehook_report_syscall_exit(regs, stepping);
		user_rewind_single_step(regs);
	}

otherwise I think we could get a spurious SIGTRAP on return to userspace.
What do you think?

This has also got me thinking about your other patch to report a pseudo-step
exception on entry to a signal handler:

https://lore.kernel.org/r/20200524043827.GA33001@juliacomputing.com

Although we don't actually disarm the step logic there (and so you might
expect a spurious SIGTRAP on the second instruction of the handler), I
think it's ok because the tracer will either do PTRACE_SINGLESTEP (and
rearm the state machine) or PTRACE_CONT (and so stepping will be
disabled). Do you agree?

> This is problematic, because the ptracer may want to inspect the
> result of the syscall instruction. On other architectures, this
> problem is solved with a pseudo-singlestep trap that gets executed
> if you resume from a syscall-entry-like trap with PTRACE_SINGLESTEP.
> See the below patch for the change I'm proposing. There is a slight
> issue with that patch, still: It now makes the x7 issue apply to the
> singlestep trap at exit, so we should do the patch to fix that issue
> before we apply that change (or manually check for this situation
> and issue the pseudo-singlestep trap manually).

I don't see the dependency on the x7 issue; x7 is nobbled on syscall entry,
so it will be nobbled in the psuedo-step trap as well as the hardware step
trap on syscall return. I'd also like to backport this to stable, without
having to backport an optional extension to the ptrace API for preserving
x7. Or are you saying that the value of x7 should be PTRACE_SYSCALL_ENTER
for the pseudo trap? That seems a bit weird to me, but then this is all
weird anyway.

> My proposed patch below also changes
> 
> <- (ip: 0x0)
> -> PTRACE_SYSCALL
> <- (ip: 0x4 - syscall entry trap)
> -> PTRACE_SINGLESTEP
> <- SIGTRAP (ip: 0x8 - TRAP_TRACE trap)
> 
> to
> 
> <- (ip: 0x0)
> -> PTRACE_SYSCALL
> <- (ip: 0x4 - syscall entry trap)
> -> PTRACE_SINGLESTEP
> <- SIGTRAP (ip: 0x4 - pseudo-singlestep exit trap)
> -> PTRACE_SINGLESTEP
> <- SIGTRAP (ip: 0x8 - TRAP_TRACE trap)
> 
> But I consider that a bugfix, since that's how other architectures
> behave and I was going to send in this patch for that reason anyway
> (since this was another one of the aarch64 ptrace quirks we had to
> work around).

I think that's still the case with my addition above, so that's good.
Any other quirks you ran into that we should address here? Now that I have
this stuff partially paged-in, it would be good to fix a bunch of this
at once. I can send out a v2 which includes the two patches from you
once we're agreed on the details.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
