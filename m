Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9736B1DAF9D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 12:03:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gK8fVDq1ExSl3a4Cg5Dd+OzQ2ZsRqPwWpdFlCJiMYh4=; b=DM9xN0chC/PQcw
	A5UDEDXe9Ff4kfbaEsWz0jVbNlf+yEMyC4vUV7hRnoch/s6RoanBXA2xSx1F8GhVW6p+F5N2giVG7
	JOF/T5jt/+c1G2Bg9g/epmCJ1tsep5PR1cMT1J9bN2cpUAn2M3C6ijS7tzOZ4/wYwCOInRItRQNxJ
	b9OrVLrobtctbz8bysuHAa+ptpiCqIBEL85O47uhY2uTWsmJ8P78TtZKhDUbFQLOfAs9/vf7o29Cy
	LKuYo40EaLdGrP4V568u4kaCuChNAHYfDdKq8clcSrUXYD4PwBZjYRvzLuBD7Lp7CqkDDt9uv24F1
	1k3+9swX4Of1RjNPsbIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbLZp-0007Rt-3g; Wed, 20 May 2020 10:03:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbLZe-0007R8-Qj
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 10:03:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CF56531B;
 Wed, 20 May 2020 03:03:39 -0700 (PDT)
Received: from bogus (unknown [10.37.12.114])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A71583F68F;
 Wed, 20 May 2020 03:03:37 -0700 (PDT)
Date: Wed, 20 May 2020 11:03:30 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH] arm64: Fix PTRACE_SYSEMU semantics
Message-ID: <20200520100330.GA25430@bogus>
References: <20200515222253.GA38408@juliacomputing.com>
 <20200518114119.GB32394@willie-the-truck>
 <20200519120725.GA20313@gaia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519120725.GA20313@gaia>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_030342_910953_DC8BB7BA 
X-CRM114-Status: GOOD (  27.21  )
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
Cc: will.deacon@arm.com, linux-kernel@vger.kernel.org, oleg@redhat.com,
 Keno Fischer <keno@juliacomputing.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

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

I just tested it with my simple programs I had before. I have also asked
teams working on gvisor to test. They have tested it and see no
regression. I will ask them to reply here.

Tested-by: Sudeep Holla <sudeep.holla@arm.com>

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
