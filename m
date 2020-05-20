Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1331DB04E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 12:35:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GDzyw2MyUSzSzIHCc4iAaUQHb1W0RZqU9x+r2xcLRU8=; b=JM+JyHrnXuKJlm
	6Mfe2Rt0OkmPLiacJJAz9CR4L5BixDiiGxyAVw12gYzZcqJ4HQKWZ4h83MKLr4eO2mjVIaVFyulmp
	xoFww0d+70CG2VvL+oFKLwA/0VbS4ZYED1FXL6ch9odD5ePG/J+RMo5aPxtnr5xybVVk2lRb10XHj
	OZZA0eOPklb8NAGJXmQEHZ/PKeAECc5jUd1OnoV+VuUPc0sMpOEfKR15s9nnBaUQeMkVIJ2EGAQa2
	XA/4ZR4dbFDJWx4C/vSX27leSmH8gb8iKjxRYOiSQ25FongtidfjOeMNETBicSOTDHRaXxVXwggG2
	D5InnxVyHXoneWuOBONA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbM4a-0000lF-W1; Wed, 20 May 2020 10:35:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbM4R-0000kU-JC
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 10:35:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8E02A31B;
 Wed, 20 May 2020 03:35:29 -0700 (PDT)
Received: from localhost.localdomain (unknown [10.169.41.142])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5957E3F68F;
 Wed, 20 May 2020 03:35:27 -0700 (PDT)
From: Bin Lu <bin.lu@arm.com>
To: catalin.marinas@arm.com
Subject: Re: [PATCH] arm64: Fix PTRACE_SYSEMU semantics
Date: Wed, 20 May 2020 18:34:20 +0800
Message-Id: <1589970860-62695-1-git-send-email-bin.lu@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <20200519120725.GA20313@gaia>
References: <20200519120725.GA20313@gaia>
References: <20200515222253.GA38408@juliacomputing.com>
 <20200518114119.GB32394@willie-the-truck> <20200519120725.GA20313@gaia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519120725.GA20313@gaia>
X-Mutt-References: <20200519120725.GA20313@gaia>
X-Mutt-Fcc: =ARM/Sent Items
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_033531_719161_2BC8BE86 
X-CRM114-Status: GOOD (  27.91  )
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
Cc: linux-kernel@vger.kernel.org, oleg@redhat.com, keno@juliacomputing.com,
 sudeep.holla@arm.com, Bin Lu <Bin.Lu@arm.com>, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bin Lu <Bin.Lu@arm.com>

On Tue, May 19, 2020 at 01:07:27PM +0100, Catalin Marinas wrote:
> On Mon, May 18, 2020 at 12:41:20PM +0100, Will Deacon wrote:
> > On Fri, May 15, 2020 at 06:22:53PM -0400, Keno Fischer wrote:
> > > Quoth the man page:
> > > ```
> > >        If the tracee was restarted by PTRACE_SYSCALL or PTRACE_SYSEMU, the
> > >        tracee enters syscall-enter-stop just prior to entering any system
> > >        call (which will not be executed if the restart was using
> > >        PTRACE_SYSEMU, regardless of any change made to registers at this
> > >        point or how the tracee is restarted after this stop).
> > > ```
> > >
> > > The parenthetical comment is currently true on x86 and powerpc,
> > > but not currently true on arm64. arm64 re-checks the _TIF_SYSCALL_EMU
> > > flag after the syscall entry ptrace stop. However, at this point,
> > > it reflects which method was used to re-start the syscall
> > > at the entry stop, rather than the method that was used to reach it.
> > > Fix that by recording the original flag before performing the ptrace
> > > stop, bringing the behavior in line with documentation and x86/powerpc.
> > >
> > > Signed-off-by: Keno Fischer <keno@juliacomputing.com>
> > > ---
> > >  arch/arm64/kernel/ptrace.c | 8 +++++---
> > >  1 file changed, 5 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
> > > index b3d3005d9515..b67b4d14aa17 100644
> > > --- a/arch/arm64/kernel/ptrace.c
> > > +++ b/arch/arm64/kernel/ptrace.c
> > > @@ -1829,10 +1829,12 @@ static void tracehook_report_syscall(struct pt_regs *regs,
> > >
> > >  int syscall_trace_enter(struct pt_regs *regs)
> > >  {
> > > -	if (test_thread_flag(TIF_SYSCALL_TRACE) ||
> > > -		test_thread_flag(TIF_SYSCALL_EMU)) {
> > > +	u32 flags = READ_ONCE(current_thread_info()->flags) &
> > > +		(_TIF_SYSCALL_EMU | _TIF_SYSCALL_TRACE);
> > > +
> > > +	if (flags) {
> >
> > nit: but I'd rather the '&' operation was in the conditional so that the
> > 'flags' variable holds all of the flags.
> >
> > With that:
> >
> > Acked-by: Will Deacon <will@kernel.org>
> >
> > Also needs:
> >
> > Cc: <stable@vger.kernel.org>
> > Fixes: f086f67485c5 ("arm64: ptrace: add support for syscall emulation")
> >
> > Catalin -- can you pick this up for 5.7 please, with my 'nit' addressed?
>
> I'll queue it with the above addressed. I think flags also needs to be
> unsigned long rather than u32.
>
> However, before sending the pull request, I'd like Sudeep to confirm
> that it doesn't break his original use-case for this feature.
>

Tested-by: Bin Lu <Bin.Lu@arm.com> (for gVisor)

I have just tested all gVisor syscall test cases with ptrace(Regs, FPRegs, TLS)
on Arm64 platform.
The test results are the same as before there was no patch.

My idea is that this kernel patch has no bad effects on gVisor.
Linux Kernel version: 5.7.0-rc6+
gVisor version: release-20200511.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
