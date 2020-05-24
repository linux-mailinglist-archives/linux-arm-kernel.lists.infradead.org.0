Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 627BE1DFD78
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 08:57:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zmk3+5fbiyJ8y/zHMIZ21BvpOqCHqmLBxWn/+xpBZtc=; b=sUz5tok94pcunj
	7CH4hOmqRz13M79kp0bb9Twujx/ldp+1vaGGSHsvIFzNV3jm73sKRMY35cGRKYh6Id7jAcfYKPu8I
	Wxy3PNPD5zgba+AtNmlqs0yONVbIi6FcZ3HjltCNhIAneqUfITiMjavBJz4lpyLcV1H3HQkkVJnw9
	ZSRZ6KNazmSKwm0TDzDZg48BbfZtis/kLKGU6disBzVLHOGz3iUZ5vRGn97ci/cbOPilP/Ng4nEfb
	+Mo4s0NX4YrgJ53+hRbLT/fBjPUwLqO5uAHxWTkuZ0/b0gTuwvfVn/NIyQAoSg763HBzXl0OEJ6Kb
	nARVzS/CBww8dYibMDLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jckZZ-0003SL-Lk; Sun, 24 May 2020 06:57:25 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jckZP-0003RR-MA
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 06:57:17 +0000
Received: by mail-io1-xd43.google.com with SMTP id p20so2401687iop.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 May 2020 23:57:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=juliacomputing-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=noxFunX2uI/FVRTYdrIrdHqbpc9T4lCMyDInJvvG8rs=;
 b=sKmEqVf0g2OLue9Rp1A/WkSXf70RjVaTuI3MbjU8wS/C7acN/fmBvNE67EieNmqvMf
 jRe1vfe9CkK76yclpUEWyB5YXYSqHDFJ772rO2kUs4rM8fmV6bBR7xZPMoIXLwN4m3hq
 81SmFj/W6fm/8MOEpkzOpx48SdpvSfHm/VTOXCmuHsaFKpvKF9qbFyprxsq8P8Gd2i8i
 3MT3a3JnCibxEtC7K1Gjrw0WVb8WJpIPXqWIPvI9qnsqInY1p0gQ7hSWbyLLxNTNn1ta
 ezpvkeuMoxqR9Um0oPBP4N58/efb+RFrBlPbDxXOdHsAe7izw0VhQD7R3e4ueAIVhQX9
 VlPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=noxFunX2uI/FVRTYdrIrdHqbpc9T4lCMyDInJvvG8rs=;
 b=MhzTnOZJ8Ga/KldzqMIJ/uHrG5Wsp4YICWrBDA2LHvg3WYTwbtK9cbYmzki7aoUOlK
 6+dO2Br5m+uIJmi6h+60diMj6OMLL7H4wa0VXC8jlrC6gaAQquf01euWNNl996VayOI3
 7PL8/SaMWmldOY9bZeAr7IXYL2BpxbN3QdfPX+uMSz+x0x9D4SXoOPTSdoYJsQ7L/RUB
 Ya4D+J1P2nYMaxIJFA/FAtvfeMQMbzqnrzb5fu0KcwQA1nH2iKwEuqxes+PJapJTodC7
 czZO2RiXBgPzXz9Ie4P8sC9ued/2Cg3sr9zBAHEFJbnHC8SAQisRkHsypK4DyzhxpMTi
 RY5w==
X-Gm-Message-State: AOAM530Vzf1x5JvgGAqlTJiu3iA/9XPMaM97tznpTEmWGjwjPHlKjoZg
 gqWkwmbpy84kUD7NN0R8+QpiC26fB6LSv7RhoOR+lg==
X-Google-Smtp-Source: ABdhPJxsTmfAXqCTWeb8LCoLtGraNutbh1nU/LqHMh/NN3fmkihgGKjA1xwD+BPQlycsQL4PiIDH6n1Yr02j9d+i0Mo=
X-Received: by 2002:a6b:6b04:: with SMTP id g4mr9182371ioc.75.1590303430943;
 Sat, 23 May 2020 23:57:10 -0700 (PDT)
MIME-Version: 1.0
References: <CABV8kRz0mKSc=u1LeonQSLroKJLOKWOWktCoGji2nvEBc=e7=w@mail.gmail.com>
 <20200519081551.GA9980@willie-the-truck>
 <CABV8kRzYzBrdzC1_opmmdpW63N2htfOsAUZ+RjiSDsy=SJW6Yg@mail.gmail.com>
 <20200520174149.GB27629@willie-the-truck>
 <CABV8kRzjCCsjVeRsBD7U_Lo0==sBw9EKm=1z7g=60KyJvJLZBQ@mail.gmail.com>
In-Reply-To: <CABV8kRzjCCsjVeRsBD7U_Lo0==sBw9EKm=1z7g=60KyJvJLZBQ@mail.gmail.com>
From: Keno Fischer <keno@juliacomputing.com>
Date: Sun, 24 May 2020 02:56:35 -0400
Message-ID: <CABV8kRxfet2RXXNcUoTKwfVzFWEQfxAkXUX4M5XhkP3nc-0+rQ@mail.gmail.com>
Subject: Re: arm64: Register modification during syscall entry/exit stop
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_235715_928078_2CBAC783 
X-CRM114-Status: GOOD (  24.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Kyle Huey <khuey@pernos.co>,
 Oleg Nesterov <oleg@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Just ran into this issue again, with what I think may be most compelling
example yet why this is problematic:

The tracee incurred a signal, we PTRACE_SYSEMU'd to the rt_sigreturn,
which the tracer tried to emulate by applying the state from the signal frame.
However, the PTRACE_SYSEMU stop is a syscall-stop, so the tracer's write
to x7 was ignored and x7 retained the value it had in the signal handler,
which broke the tracee.

Keno

On Sat, May 23, 2020 at 1:35 AM Keno Fischer <keno@juliacomputing.com> wrote:
>
> I got bitten by this again, so I decided to write up a simple example
> that shows the problem:
>
> https://gist.github.com/Keno/cde691b26e32373307fb7449ad305739
>
> This runs the same child twice. First vanilla where it prints "Hello world".
> The second time, using a textbook ptrace example, to only print "world".
> The problem here is that by the time the ptracer gets around to restoring
> the registers, it's no longer in a syscall stop, so the write to x7 does not
> get ignored and the correct value of x7 gets clobbered.
> I copied the syscall definition from musl, so the compiler thinks x7 is
> live, and we can see an assertion.
>
> Output on my machine (will depend on compiler version, etc.):
> ```
> $ gcc -g3 -O3 ptrace_lies.c
> $ ./a.out
> Hello World
> World
> a.out: ptrace_lies.c:49: do_child: Assertion `v3 == values[2]' failed.
> a.out: ptrace_lies.c:134: main: Assertion `WIFEXITED(status) &&
> WEXITSTATUS(status) == 0' failed.
> Aborted (core dumped)
> ```
>
> However, I don't think that whether or not the compiler thinks that x7 is
> live is the problem here. The problem is entirely that this mechanism
> prevents the ptracer from precisely controlling the register state. While
> basic ptracers don't need this feature (strace),
> more advanced ptracers (think criu, etc.) absolutely do want to precisely
> control what the register state is.
> The ptracer I'm working on (https://rr-project.org/)
> happens to be an extreme case of this, where it wants *bitwise* equivalent
> register states such that it can run the same code many times and get
> the exact same results.
>
> Also, if the issue was just that the kernel clobbered x7, that would be fine
> we could deal with that no problem. However, it's much worse than that,
> because the behavior of the kernel with respect to x7 depends on what
> kind of ptrace stop we're in and even worse, in some kinds of stop,
> there's absolutely no way to get at the actual value of x7.
>
> > Hmm, does that actually result in the SVC instruction getting inlined? I
> > think that's quite dangerous, since we document that we can trash the SVE
> > register state on a system call, for example. I'm also surprised that
> > the register variables are honoured by compilers if that inlining can occur.
>
> I haven't gotten to trying SVE yet, so I appreciate the warning :). That said,
> deterministic clobbering of registers is fine. Even changing the registers to
> random junk is fine. We're happy to read those registers through ptrace.
> The problem here is that the kernel lies about what the contents of the x7
> register is and discards any writes to it.
>
> I really hope we can come up with a solution here, I'm already dreading
> the next time I unexpectedly run into this and have to add yet
> another special case :(.
>
> Keno

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
