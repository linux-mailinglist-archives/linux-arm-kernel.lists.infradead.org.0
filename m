Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2152B1D95E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 14:07:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g3yg+PV3aBY5XGI1r3HwXv+7KYygb3tVldoAC3bAYQw=; b=ClEHGsbk3RzQY5
	mj9/7lKfmejITDjrjBQIFJkVQZ3xZdtoX8fo6db4j19p82Y3fc7z1FLhbclQHdr+FulcYJBlFjyn0
	J5ALUUR3HYwXrdD3ch0cS49I0OHGcpqfxBQOmA6l2Utjzt1Tew8o+onlS0urNL7jT39fHg231K77O
	BFQBDR2W1P+oQ01bS/rN2rF1pJH8JYKEaZExhNABvO2cLIWKd7tp5CgW6CgofS4VEbBIzJssFP82h
	hJw4YO2ZgugNMIU2NMRrUfdUltr8W7NK+Ir3n7caYAIvGxpVmH9glnQ+qMBAPrbyMu6MJ6mISXCW1
	EF1i2Y40zko9LjuwBIZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb126-0007f8-Od; Tue, 19 May 2020 12:07:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb11w-0007dy-5j
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 12:07:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A4CB230E;
 Tue, 19 May 2020 05:07:30 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8CD1F3F52E;
 Tue, 19 May 2020 05:07:29 -0700 (PDT)
Date: Tue, 19 May 2020 13:07:27 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: Fix PTRACE_SYSEMU semantics
Message-ID: <20200519120725.GA20313@gaia>
References: <20200515222253.GA38408@juliacomputing.com>
 <20200518114119.GB32394@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518114119.GB32394@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_050732_253801_4CEA24DA 
X-CRM114-Status: GOOD (  24.14  )
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
 Keno Fischer <keno@juliacomputing.com>, sudeep.holla@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 12:41:20PM +0100, Will Deacon wrote:
> On Fri, May 15, 2020 at 06:22:53PM -0400, Keno Fischer wrote:
> > Quoth the man page:
> > ```
> >        If the tracee was restarted by PTRACE_SYSCALL or PTRACE_SYSEMU, the
> >        tracee enters syscall-enter-stop just prior to entering any system
> >        call (which will not be executed if the restart was using
> >        PTRACE_SYSEMU, regardless of any change made to registers at this
> >        point or how the tracee is restarted after this stop).
> > ```
> > 
> > The parenthetical comment is currently true on x86 and powerpc,
> > but not currently true on arm64. arm64 re-checks the _TIF_SYSCALL_EMU
> > flag after the syscall entry ptrace stop. However, at this point,
> > it reflects which method was used to re-start the syscall
> > at the entry stop, rather than the method that was used to reach it.
> > Fix that by recording the original flag before performing the ptrace
> > stop, bringing the behavior in line with documentation and x86/powerpc.
> > 
> > Signed-off-by: Keno Fischer <keno@juliacomputing.com>
> > ---
> >  arch/arm64/kernel/ptrace.c | 8 +++++---
> >  1 file changed, 5 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
> > index b3d3005d9515..b67b4d14aa17 100644
> > --- a/arch/arm64/kernel/ptrace.c
> > +++ b/arch/arm64/kernel/ptrace.c
> > @@ -1829,10 +1829,12 @@ static void tracehook_report_syscall(struct pt_regs *regs,
> >  
> >  int syscall_trace_enter(struct pt_regs *regs)
> >  {
> > -	if (test_thread_flag(TIF_SYSCALL_TRACE) ||
> > -		test_thread_flag(TIF_SYSCALL_EMU)) {
> > +	u32 flags = READ_ONCE(current_thread_info()->flags) &
> > +		(_TIF_SYSCALL_EMU | _TIF_SYSCALL_TRACE);
> > +
> > +	if (flags) {
> 
> nit: but I'd rather the '&' operation was in the conditional so that the
> 'flags' variable holds all of the flags.
> 
> With that:
> 
> Acked-by: Will Deacon <will@kernel.org>
> 
> Also needs:
> 
> Cc: <stable@vger.kernel.org>
> Fixes: f086f67485c5 ("arm64: ptrace: add support for syscall emulation")
> 
> Catalin -- can you pick this up for 5.7 please, with my 'nit' addressed?

I'll queue it with the above addressed. I think flags also needs to be
unsigned long rather than u32.

However, before sending the pull request, I'd like Sudeep to confirm
that it doesn't break his original use-case for this feature.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
