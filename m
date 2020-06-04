Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 551571EEDBE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 00:32:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oE2kf3RjsVu8A2O0J44mIjGQ58SgS1hQmDtF7QPHW00=; b=g3YRSq14zgEQW4
	rfjneWBPFYdM5Hlerddx2xwYMV13BnUMAbh3WRRSaWSCbYUxandsFx88b1QowTgsncP50Ga/deul1
	qHxGEE0EFpxGRnwEzDyzKjjSl5qN5qoO2y3mplk7u+fmJAeARjFjt7z/BC0+iylxCRPa6z4mXkD50
	AhqImVwFGMcRZZ+DLC4AgJYnM9Sk1PYMcbWDSwTI79qel/IilpytOjbvriQBiqkNrYs9gBvd8pATg
	i+nl1Px52MiMGh48WeWXEAUT3QOFpdK/gDgd57jz6N8hsD0pa+zFEcAEScCMc15ouxZuRNkxjUaJi
	GO/hRQa67Pz+B1HUHOTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgyPm-00037m-27; Thu, 04 Jun 2020 22:32:46 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgyPf-00037M-P9
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 22:32:41 +0000
Received: by mail-io1-xd43.google.com with SMTP id u13so1984126iol.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 15:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=juliacomputing-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nG94eKmQPzachChhRZc7Y7pHTjGTzR49asGOXCRQh+A=;
 b=zP++UB2OK8m9ns4la9v/8g6CVzhB2g4rMb9FOMxFjcF/lLEss5WT+IxE1yopI5IJpf
 doOURN+gh4EQTFm8imFySp7uLfo5Nn/yHXJXvLFJriBzoE/WXyGwtT/eT2QiZYsVMGZW
 +dSEcLwMCxDcwSNaiXQ9hugE5afDZ2vUAcJUj7cLrYDkaV+cLWz3AmBMr5yaXZ+7+dZH
 M0Z4aH0BUJRv7N+JUfIfzu7ktujZ7Yi7R3cCEsgbtjI6dkOYx99AM6kQKgEAhqwkh7xT
 jE0fJzjILIm2WMGgINworZXnMmOKL6ooW8ZNZDeZBD3rAfHFAdhsQ4n9XJodOVHcbTB+
 s74Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nG94eKmQPzachChhRZc7Y7pHTjGTzR49asGOXCRQh+A=;
 b=fp+vnqGa9qXs5x1egPtdaQ3XF8eCmyDTCCmMHnXSmDrNLPj4u+gQAPjtP3wY9h2VIy
 5ucyYKte17kgDaAp6G6+cZYn4YrN8pDlM4BkRzILE3s96o6voqLy2/LniA0fgIKJ/dRA
 qKDG3VirLRFpofziLzTukd6MQGKVzlCVSMVASR6rlsyhkgVwmU4iP2jpCPYGIQTrIVDx
 aQf06zARIy2HNMLZH/qzPERsbhHUYc6fPBJZ+ycVDa0F3i5LhQRFtHVSDjn+ouEAXzvo
 cOMSEUih7C4XIMZLQWUvA8N43e4ueEYSkkw5gyo387pvgvxd/QQvquDVu3b33r8fjyB0
 ukjw==
X-Gm-Message-State: AOAM530W6aaMJVpFIRv4yeaDPU6mAmBT+KngntZW+C3aC31ZsIpQ3uAh
 KjZOwT56qI2r3a1RH2dshPw51PK95REga/QEGRxaFw==
X-Google-Smtp-Source: ABdhPJw8UBWBeeUwAM8Q79mui5tBSoo24FM+k9EeSNhwXZ01MUa0yAoPygsomRMRqKhKpZB52ek1b/hDSXUuzyIUjPU=
X-Received: by 2002:a5e:df49:: with SMTP id g9mr6066490ioq.153.1591309957089; 
 Thu, 04 Jun 2020 15:32:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200603151033.11512-1-will@kernel.org>
 <20200603151033.11512-2-will@kernel.org>
 <CABV8kRwrnixNc074-jQhZzeucGHx9_e5FnQmBS=VuL=tFGjY-Q@mail.gmail.com>
 <20200603155338.GA12036@willie-the-truck>
 <CABV8kRxSjMY+d+F5aNzq1=5hXhVLGy6TbNLTUsCeSsAncwCzoA@mail.gmail.com>
 <20200604083210.GC30155@willie-the-truck>
In-Reply-To: <20200604083210.GC30155@willie-the-truck>
From: Keno Fischer <keno@juliacomputing.com>
Date: Thu, 4 Jun 2020 18:32:01 -0400
Message-ID: <CABV8kRyCz=BBab_1nw-he9Q4QUydNw4G_SQHz=v1W=veX8jX4w@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: Override SPSR.SS when single-stepping is
 enabled
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_153239_888098_8F0C6C8B 
X-CRM114-Status: GOOD (  33.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
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

> > With your proposed patch, we instead get
> > <- (ip: 0x0)
> > -> PTRACE_SINGLESTEP
> > <- (ip: 0x4 - seccomp trap)
> > -> PTRACE_SINGLESTEP
> > <- SIGTRAP (ip: 0x8 - TRAP_TRACE trap)
>
> Urgh, and actually, I think this is *only* the case if the seccomp
> handler actually changes a register in the target, right?

Ah yes, you are correct. Because otherwise the flag would not
get toggled at all. That does raise an additional question about
signal stops though, which have a similar issue. What if a single
step gets completed, but the singlestep trap gets pre-empted
by some other signal. What should PTRACE_SINGLESTEP
from such a signal stop do?

> In which case, your proposed patch should probably do something like:
>
>         if (dir == PTRACE_SYSCALL_EXIT) {
>                 bool stepping = test_thread_flag(TIF_SINGLESTEP);
>
>                 tracehook_report_syscall_exit(regs, stepping);
>                 user_rewind_single_step(regs);
>         }
>
> otherwise I think we could get a spurious SIGTRAP on return to userspace.
> What do you think?

Yes, this change seems reasonable, though you may want to make the
rewind conditional on stepping, since otherwise the armed pstate may
become visible to a signal handler/ptrace signal stop which may
be unexpected.

> This has also got me thinking about your other patch to report a pseudo-step
> exception on entry to a signal handler:
>
> https://lore.kernel.org/r/20200524043827.GA33001@juliacomputing.com
>
> Although we don't actually disarm the step logic there (and so you might
> expect a spurious SIGTRAP on the second instruction of the handler), I
> think it's ok because the tracer will either do PTRACE_SINGLESTEP (and
> rearm the state machine) or PTRACE_CONT (and so stepping will be
> disabled). Do you agree?

Yes, I had thought about whether to re-arm the rewind the single-step logic,
but then realized that since the next event was a ptrace stop anyway, the
ptracer could decide. With your patch here, it would always just depend
on which ptrace continue method is used, which is fine.

> > This is problematic, because the ptracer may want to inspect the
> > result of the syscall instruction. On other architectures, this
> > problem is solved with a pseudo-singlestep trap that gets executed
> > if you resume from a syscall-entry-like trap with PTRACE_SINGLESTEP.
> > See the below patch for the change I'm proposing. There is a slight
> > issue with that patch, still: It now makes the x7 issue apply to the
> > singlestep trap at exit, so we should do the patch to fix that issue
> > before we apply that change (or manually check for this situation
> > and issue the pseudo-singlestep trap manually).
>
> I don't see the dependency on the x7 issue; x7 is nobbled on syscall entry,
> so it will be nobbled in the psuedo-step trap as well as the hardware step
> trap on syscall return. I'd also like to backport this to stable, without
> having to backport an optional extension to the ptrace API for preserving
> x7. Or are you saying that the value of x7 should be PTRACE_SYSCALL_ENTER
> for the pseudo trap? That seems a bit weird to me, but then this is all
> weird anyway.

So the issue here is that writes to x7 at the singlestep stop after a seccomp
stop will now be ignored (and reads incorrect), which is a definite change
in behavior and one that I would not recommend backporting to stable.
If you do want to backport something to stable, I would recommend making
the register modification conditional on !stepping for the backport.

> I think that's still the case with my addition above, so that's good.
> Any other quirks you ran into that we should address here? Now that I have
> this stuff partially paged-in, it would be good to fix a bunch of this
> at once. I can send out a v2 which includes the two patches from you
> once we're agreed on the details.

As for other quirks, the behavior with negative syscalls is a bit odd,
but not necessarily arm64 specific (though arm64 has an additional
quirk). I'd emailed about that separately here:

https://lkml.org/lkml/2020/5/22/1216

There's also the issue that orig_x0 is inaccessible, so syscall
restarts of syscalls that have had their registers modified by a
ptracer will potentially unexpectedly use the x0 value before
modification during restart, rather than the modified values.

My preference would be to fix these two issues along with the
x7 issue, by introducing a new regset that:
- Explicitly splits out orig_x0
- Sets regular x0 to -ENOSYS before the
   syscall entry stop (and using the orig_x0 value for syscall processing)
- Addresses the x7 issue

As I said, I'm planning to send a patch along these lines, but
haven't had the time yet. Perhaps this weekend.

Lastly, there was one additional issue with process_vm_readv,
which isn't directly ptrace related, but slightly adjacent (and
also no arm64 specific):
I wrote about that here: https://lkml.org/lkml/2020/5/24/466

I think that's everything I ran into from the kernel perspective,
though I'm not 100% done porting yet, so other things may come
up.

Keno

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
