Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 060901ED498
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 18:57:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SAvzXl8vmhET5xG0oaPJKUnWp2n5MjHDmliCHkj2tV8=; b=eOBGXuRMw0fOME
	DuwSWm3kLV0VEpzWRcHhtCrdxJZsJBO6SmtAxJPHiabAx26P8xBLZm5UfMRq1u/Y+I5YGG7UOJ0YA
	UeZMUk+D0Xap/3sNnogbrheTJpN2qDHmKC4BsO16NTKUiFOMlf+Ow2fYsYmQXxNaQEcHBY34/bEOD
	siMQuVREydsi4IhkjLyjchkTYqabNsiIewVsyKNqXomKYFgtJh7dx2kZVFbOp8xUwoSUFAn5msOS1
	d6JyTEKFEhDSQ7s5/6ZtloRORMAZqHGXXoHw6F9WBNr+tXSg/6Gf6JVUhayiElTcB8+RpCH/QlS4T
	E78zxL+UIR9U2IlZz6og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgWhP-0000MR-J3; Wed, 03 Jun 2020 16:57:07 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgWhJ-0000Ls-6L
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 16:57:02 +0000
Received: by mail-il1-x143.google.com with SMTP id h3so3165037ilh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 09:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=juliacomputing-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KQT1mSk5GZAejsG86TNk9V0+f37wlqbJ20Yhgw/mpdQ=;
 b=ikMGc0vtUJcDbPMcm9sHlaQy6v+9UgeKgDwVp8aGldO90KIg6YELvKjHLpgXmHjgnK
 Zdph4F7NLsjR64BpFd/RRXi3Pe72kJFb3LxIoMgCTmGJ3aevdThOzGbQmRVyCR+iKvFG
 ZcM0y4KBNgoBvDnqxkgtya9cgY8fEciPd7buBwArznatxhbBHIk/oeqbK5emxgo7+wkK
 aBdz7wgAEzybjBG928SmAXEAKGyfvT9QziP6SnVsjOGYTK3uzEL09oqybiJf2x8XRB1S
 qqrRRCTGZVPFAc5WF5nQyS1p8OpYRrN4WE1UkQmaT4VOtfWgLxv6VvPL2zD7Rme6TtUS
 EnEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KQT1mSk5GZAejsG86TNk9V0+f37wlqbJ20Yhgw/mpdQ=;
 b=tecZpSkXYbMNPPGnYndWrCf12qgoXw/oKRt5a/DtWorG1ClwxLG/XwA7vLP9n1Fi0V
 YClG93Og8JGTspKbDLGNkuEJMtBQ2I/MXWdBQhUgGlXCrQWJ9j2lbo9WYy8o1QHz+UVK
 Scu47Z3rWJjcvMboulXhRttQKqeg+PfOdQCcuN5IjRnZyb3RdN988m5BPrx5cg8iFkt3
 LzGKO3PMBT7b5bmGHIecZc1PNZKqED6iXS/5ht/h12wE8AMoB9p/aIVhVLYXduxbGxM3
 KBXe/wMh/3itChCGtuyBLsZPuXuO+CQfgNbIdpXuQvSBqA4tzJUD+jfSXVnkLnv1YWzm
 HnRA==
X-Gm-Message-State: AOAM53361LiaJWjX59PTnkaDTGU3ktjoa7PXNUHjO8uFCKk4pDY6Bjqp
 TR2TnyPtU5YodJ33cOaK8VzUAT/Td9cvfS5FgJ52KQ==
X-Google-Smtp-Source: ABdhPJyHkno5yldGr9+v1MKHFlCKN57QArtAe9koNMdcOi9e1WsgIT/9Z751om+WZdbXL3BHa29oO+amRPLqnYHlYtA=
X-Received: by 2002:a92:290b:: with SMTP id l11mr437220ilg.145.1591203420134; 
 Wed, 03 Jun 2020 09:57:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200603151033.11512-1-will@kernel.org>
 <20200603151033.11512-2-will@kernel.org>
 <CABV8kRwrnixNc074-jQhZzeucGHx9_e5FnQmBS=VuL=tFGjY-Q@mail.gmail.com>
 <20200603155338.GA12036@willie-the-truck>
In-Reply-To: <20200603155338.GA12036@willie-the-truck>
From: Keno Fischer <keno@juliacomputing.com>
Date: Wed, 3 Jun 2020 12:56:24 -0400
Message-ID: <CABV8kRxSjMY+d+F5aNzq1=5hXhVLGy6TbNLTUsCeSsAncwCzoA@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: Override SPSR.SS when single-stepping is
 enabled
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_095701_377706_7F1C79EB 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Wed, Jun 3, 2020 at 11:53 AM Will Deacon <will@kernel.org> wrote:
> > However, at the same time as changing this, we should probably make sure
> > to enable the syscall exit pseudo-singlestep trap (similar issue as the other
> > patch I had sent for the signal pseudo-singlestep trap), since otherwise
> > ptracers might get confused about the lack of singlestep trap during a
> > singlestep -> seccomp -> singlestep path (which would give one trap
> > less with this patch than before).
>
> Hmm, I don't completely follow your example. Please could you spell it
> out a bit more? I fast-forward the stepping state machine on sigreturn,
> which I thought would be sufficient. Perhaps you're referring to a variant
> of the situation mentioned by Mark, which I didn't think could happen
> with ptrace [2].

Sure suppose we have code like the following:

0x0: svc #0
0x4: str x0, [x7]
...

Then, if there's a seccomp filter active that just does
SECCOMP_RET_TRACE of everything, right now we get traps:

<- (ip: 0x0)
-> PTRACE_SINGLESTEP
<- (ip: 0x4 - seccomp trap)
-> PTRACE_SINGLESTEP
<- SIGTRAP (ip: 0x4 - TRAP_TRACE trap)
-> PTRACE_SINGLESTEP
<- SIGTRAP (ip: 0x8 - TRAP_TRACE trap)

With your proposed patch, we instead get
<- (ip: 0x0)
-> PTRACE_SINGLESTEP
<- (ip: 0x4 - seccomp trap)
-> PTRACE_SINGLESTEP
<- SIGTRAP (ip: 0x8 - TRAP_TRACE trap)

This is problematic, because the ptracer may want to inspect the
result of the syscall instruction. On other architectures, this
problem is solved with a pseudo-singlestep trap that gets executed
if you resume from a syscall-entry-like trap with PTRACE_SINGLESTEP.
See the below patch for the change I'm proposing. There is a slight
issue with that patch, still: It now makes the x7 issue apply to the
singlestep trap at exit, so we should do the patch to fix that issue
before we apply that change (or manually check for this situation
and issue the pseudo-singlestep trap manually).

My proposed patch below also changes

<- (ip: 0x0)
-> PTRACE_SYSCALL
<- (ip: 0x4 - syscall entry trap)
-> PTRACE_SINGLESTEP
<- SIGTRAP (ip: 0x8 - TRAP_TRACE trap)

to

<- (ip: 0x0)
-> PTRACE_SYSCALL
<- (ip: 0x4 - syscall entry trap)
-> PTRACE_SINGLESTEP
<- SIGTRAP (ip: 0x4 - pseudo-singlestep exit trap)
-> PTRACE_SINGLESTEP
<- SIGTRAP (ip: 0x8 - TRAP_TRACE trap)

But I consider that a bugfix, since that's how other architectures
behave and I was going to send in this patch for that reason anyway
(since this was another one of the aarch64 ptrace quirks we had to
work around).

diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
index b3d3005d9515..104cfcf117d0 100644
--- a/arch/arm64/kernel/ptrace.c
+++ b/arch/arm64/kernel/ptrace.c
@@ -1820,7 +1820,7 @@ static void tracehook_report_syscall(struct pt_regs *regs,
        regs->regs[regno] = dir;

        if (dir == PTRACE_SYSCALL_EXIT)
-               tracehook_report_syscall_exit(regs, 0);
+               tracehook_report_syscall_exit(regs,
test_thread_flag(TIF_SINGLESTEP));
        else if (tracehook_report_syscall_entry(regs))
                forget_syscall(regs);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
