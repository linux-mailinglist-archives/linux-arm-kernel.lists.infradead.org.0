Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C534166074
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 16:07:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tYSjLE6/ye7CFQRgmHIHX65Ad+HdrpXHvkv7FaondBY=; b=AJfTm1jSo9kXm0
	TxgSDcu7+NIdsN7WRIdvnE/3nKbURJI0C1emxw7QBPJly8s3Ja3xbpuBty1Xt+tsGxxaj1kUBzP6t
	G4fWzrV+FT6PJXRvG0ECoOEESSNnOPczVr3hf8wlVOYit4P0Mu18Mce+WYGW5YapqZ+huRO4OAvg7
	eBqmbrNg67DkxL7HZAf4qbTBabjx4LzR7TtxtFK0kmL/6gns0AeF/Hs57wBUwBjmDX6F7ks5mLUEG
	6P6jmIE3DWWdCxe8TtI7unhyLvnAI738w5QUYeBATB08PwAEgCk3Am2MT1U0lfU8cTM7ow6E0IVad
	zhagJDjFtKNk/ojKCUOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4nQg-0006Nm-Hw; Thu, 20 Feb 2020 15:07:54 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4nQQ-00067V-GZ
 for linux-arm-kernel@bombadil.infradead.org; Thu, 20 Feb 2020 15:07:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ruUmygpf8QCjfu34nMcSDGM6EDwQPFTRaM8IJBhZen8=; b=KGe8Wi29o5L2JaagK9k/0YT4d1
 s/vZ0Jfsc6o5EXwVHTtXdSytl2YelgSXz4+G7mFdMwIfuK7Sg02nNVjLQmX8ISPhnagmF6STpnCdb
 5f23SqLgpkLf8oWD0SmA63x1kzXhOuEEB7V3l9/J9yRZvaw0/7oGl5wSueCHhLmv3K/yxVZdo4Zjy
 HO63fZx1yBlirbeEDtQAgcXJU3WmhbIolfvmNZJGszH0s6Rms1RRqf5GYJhnpfgrejU672/BbKp1C
 0ClFSlUScVo/cNhcdwQ4OFjtIuvUTjbrKxHmNYfIbWsBQep1b4XYdTchX+mxAXush7b9fA0UgYJq9
 IQ0ZVhZw==;
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4nC3-0006BF-SC
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 14:52:48 +0000
Received: by mail-ot1-x344.google.com with SMTP id h9so3858008otj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 06:52:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ruUmygpf8QCjfu34nMcSDGM6EDwQPFTRaM8IJBhZen8=;
 b=dTnuxR+eUuIu4S7sDbgxXpdjqVnSFgPzc9ey4H716TSiVverRY7ZqA81CpEiVGUNla
 7itkAfa4vqAXnm0ggu8mgXbjBjIZ6jXyyv/xM9kCk7rvltmryfO9vijwj4Ubt/wSaAQ1
 ylZh/7hdAUPS06Rmz45D/Ud48SjlXASl69EGZV0rF/MtlYriifQYk0JvhOct+xYX76C8
 K3eQBGHzn1yRW9OzSwDhE+h/X1qJph9gtC8x0UrHK0q48Slt3zFCnVSfCLet0GDz5eQT
 Hn4ZFMFVB0uZMDW0AY3eRFyVYN5grE2/OaCdemA7UC3Z28Jx3CIfUPJkQ2+X0PVcJ+fY
 vzbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=ruUmygpf8QCjfu34nMcSDGM6EDwQPFTRaM8IJBhZen8=;
 b=m3aagFEUAF+UaI/WNXFXNLNEvQxTS2Uy4ZN9YL2tpfo4eQEIXfEl4kTrDpDC2UTZPI
 nFwEq0NhTrJuorjfvC1Gdb/2flG2i3F+/pECooFMwA1hcPX+bSdVzP+avWkuwzvaARAc
 HS/7999kVB6TvvibUVQVitbmwfYToGEMUinrGNLFVB+qMSoT2wOxdSzfcjx9rVc7FonF
 OXjrH2qEKffSZPlWERN55ErNwxAa728aFkt9nsMx12GAG5D4RyJHs7pG8IU4WyJhrwgX
 xPJgPGw4sYRDPb/0YgrYRLEyEHy/zZXgqRnq6LX9usup9SfN0AOxOr/2hnf78+Mbc8aw
 jqCw==
X-Gm-Message-State: APjAAAUJN9MNPgPgT7BbrzEieP1mOjAuRvR7XN2CafPRGSqfQiOfQUh2
 oNn+Kyr9NTrln2T+bioql3MkSGg=
X-Google-Smtp-Source: APXvYqzyqnENE3eP8zr8E5aDqLDohv0k1LPbBaSUEXxDW7U+hsdlG2ITJkIh2etWhmO0VwZR73qIRw==
X-Received: by 2002:a9d:7548:: with SMTP id b8mr24897663otl.74.1582210364006; 
 Thu, 20 Feb 2020 06:52:44 -0800 (PST)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id c7sm1209251otm.63.2020.02.20.06.52.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 06:52:43 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:9129:b2b8:445c:a4ff])
 by serve.minyard.net (Postfix) with ESMTPSA id 1D63718000D;
 Thu, 20 Feb 2020 14:52:43 +0000 (UTC)
Date: Thu, 20 Feb 2020 08:52:41 -0600
From: Corey Minyard <minyard@acm.org>
To: Daniel Thompson <daniel.thompson@linaro.org>
Subject: Re: [PATCH v2] arm64:kgdb: Fix kernel single-stepping
Message-ID: <20200220145241.GI3704@minyard.net>
References: <20200219152403.3495-1-minyard@acm.org>
 <20200220140650.tryvv3ishkxduujk@holly.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220140650.tryvv3ishkxduujk@holly.lan>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tcminyard[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Reply-To: minyard@acm.org
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Corey Minyard <cminyard@mvista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 02:06:50PM +0000, Daniel Thompson wrote:
> On Wed, Feb 19, 2020 at 09:24:03AM -0600, minyard@acm.org wrote:
> > From: Corey Minyard <cminyard@mvista.com>
> > 
> > I was working on a single-step bug on kgdb on an ARM64 system, and I saw
> > this scenario:
> > 
> > * A single step is setup to return to el1
> > * The ERET return to el1
> > * An interrupt is pending and runs before the instruction
> > * As soon as PSTATE.D (the debug disable bit) is cleared, the single
> >     step happens in that location, not where it should have.
> > 
> > This appears to be due to PSTATE.SS not being cleared when the exception
> > happens.  Per section D.2.12.5 of the ARMv8 reference manual, that
> > appears to be incorrect, it says "As part of exception entry, the PE
> > does all of the following: ...  Sets PSTATE.SS to 0."
> > 
> > However, I appear to not be the first person who has noticed this.  In
> > the el0-only portion of the kernel_entry macro in entry.S, I found the
> > following comment: "Ensure MDSCR_EL1.SS is clear, since we can unmask
> > debug exceptions when scheduling."  Exactly the same scenario, except
> > coming from a userland single step, not a kernel one.
> > 
> > As I was studying this, though, I realized that the following scenario
> > had an issue:
> > 
> > * Kernel enables MDSCR.SS, MDSCR.KDE, MDSCR.MDE (unnecessary), and
> >   PSTATE.SS to enable a single step in el1, for kgdb or kprobes,
> >   on the current CPU's MDSCR register and the process' PSTATE.SS
> >   register.
> > * Kernel returns from the exception with ERET.
> > * An interrupt or page fault happens on the instruction, causing the
> >   instruction to not be run, but the exception handler runs.
> > * The exception causes the task to migrate to a new core.
> > * The return from the exception runs on a different processor now,
> >   where the MDSCR values are not set up for a single step.
> > * The single step fails to happen.
> > 
> > This is bad for kgdb, of course, but it seems really bad for kprobes if
> > this happens.
> > 
> > To fix both these problems, rework the handling of single steps to clear
> > things out upon entry to the kernel from el1, and then to set up single
> > step when returning to el1, and not do the setup in debug-monitors.c.
> > This means that single stepping does not use
> > enable/disable_debug_monitors(); it is no longer necessary to track
> > those flags for single stepping.  This is much like single stepping is
> > handled for el0.  A new flag is added in pt_regs to enable single
> > stepping from el1.  Unfortunately, the old value of PSTATE.SS cannot be
> > used for this because of the hardware bug mentioned earlier.
> > 
> > As part of this, there is an interaction between single stepping and the
> > other users of debug monitors with the MDSCR.KDE bit.  That bit has to
> > be set for both hardware breakpoints at el1 and single stepping at el1.
> > A new variable was created to store the cpu-wide value of MDSCR.KDE; the
> > single stepping code makes sure not to clear that bit on kernel entry if
> > it's set in the per-cpu variable.
> > 
> > After fixing this and doing some more testing, I ran into another issue:
> > 
> > * Kernel enables the pt_regs single step
> > * Kernel returns from the exception with ERET.
> > * An interrupt or page fault happens on the instruction, causing the
> >   instruction to not be run, but the exception handler runs.
> > * The exception handling hits a breakpoint and stops.
> > * The user continues from the breakpoint, so the kernel is no longer
> >   expecting a single step.
> > * On the return from the first exception, the single step flag in
> >   pt_regs is still set, so a single step trap happens.
> > * The kernel keels over from an unexpected single step.
> > 
> > There's no easy way to find the pt_regs that has the single step flag
> > set.  So a thread info flag was added so that the single step could be
> > disabled in this case.  Both that flag and the flag in pt_regs must be
> > set to enable a single step.
> > 
> > Signed-off-by: Corey Minyard <cminyard@mvista.com>
> 
> I've pointed the kgdbtest suite at this patch (and run one of the
> historically unstable test cases an extra 100 times just in case).
> 
> kgdbtest hasn't got great coverage, runs the code in qemu and some
> of the strongest tests are still marked XFAIL on arm64 (for reasons
> unrelated to stepping).
> 
> So the best I can say based on the above is that the test suite does not
> observe any regression (but equally no improvement). Nevertheless FWIW:

Thanks for testing this.  This is not a surprise, you would either have
to have a broken processor like the one I'm using, or you would have to
have a migration occur on the instruction being single-stepped, which
would be extremely unlikely.

Since I've already gained some experience here, I'll try to look at
fixing things here for ARM64.

-corey

> 
> 
> Tested-by: Daniel Thompson <daniel.thompson@linaro.org>
> 
> 
> Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
