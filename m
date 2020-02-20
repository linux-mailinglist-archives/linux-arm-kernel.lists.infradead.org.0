Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8FC165F71
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 15:07:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/vVwbtEOArpsBG/QB8VtxXXBMDb4tcoeCsCQxJmJ64U=; b=oG/xuwp2WnJyNa
	emrLsnHub4cp1ILO8L3lyLXGK7HoHAGnhzEQyxKBWhLD4+7Adq8SbG7eFs3XAJyDrqS5aAE1w4iAn
	kSPULujabAaThptTHAvEPt63Qkl2GNdvSVXiBPtyGGX1GHWXzxcwb9ycW+8jBn9JSKQkQH0nrARsW
	E6odblNrOx3hcq+1AOjIRLAvbrk1cNirq7fUUe7iVNfbfuY7mUS/GIn0JrUx932jd06UxG8N8jAis
	TUE2+pvN/3ObP0G7IA69IH0qcXnkIch0Lc9EvUh2Sl4PVATDQwoOoh37IhxRdtmlJjQcbfov973LH
	88WnGjnHmZHvAtpquzHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4mTp-0007Wg-ER; Thu, 20 Feb 2020 14:07:05 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4mTf-0007VY-No
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 14:06:57 +0000
Received: by mail-wr1-x444.google.com with SMTP id g3so4718809wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 06:06:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=a0F1N3hYW8XPNj9N+S4lYxuaShUHuL9nYAipAxCIxV0=;
 b=lCDh9AP38v1XCfFwz0C+1p9iDiQBHd6gcRFBu+7yWtc8nR306339+u4SIty39ttOSw
 KL+DnTDIXBQd3MjiakCsGw/EmAOj3Ds4Tve3GvZaJLXyDZZnoT80T+88TlH7JpQr5Gxq
 aS6+gjE6ltXo+BnK6ryzUr5JqsDYZLRB4QoMDTc3wtpmfPqbbjzcIgWJJ6LHHtXuc++3
 ZgQ/ZnbAMKbm3u+aBQnj2vRV1RMkNaCjbUrlE4kR+F0AlAUEKNEOsBwOpo2c1OSSIQiP
 Z/r8HyXzOdFKz68yB9RN+BYVwVggk6OhbHnbpZQpjQMHisvjAKND22ZwR7P0Zs+oOHlZ
 7omQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=a0F1N3hYW8XPNj9N+S4lYxuaShUHuL9nYAipAxCIxV0=;
 b=H1wuAr9h1uwuXmQtdLnDd9OrwuFNFiRKxE/cE+8n7b2hitzqF8eRxNCSWAibR7WVSV
 9ee2N3+D5LAc+J/mM77hCgx+W4CP5JaU1Cn/DFwe1YwoDLxrQXKZcQtdUbQJfPqKJOaC
 QGdGez80ylKthDfQy7tmgfKjj2+x93a+lh1Zfn47lpuRzJKp7iCeLWKFeG8JivvrFHom
 SxmklACGdoLnXPGTSN11qelIBJHwOoLUduX0NRQJKYQYSuzX1hf/lX1Y1Vn+ABjkY82X
 3EcWFeFtkou3WU9/DE1O5Hj4zUMZo7tLdKjzc0lAkIEy737sJWDEndfO1kB/gZM3fA6/
 2ebQ==
X-Gm-Message-State: APjAAAXmxoQonjVo57GvQ5+Wlu5RpmcA9em8sntFeMLt8l2Cy944/nvF
 NBk4DOzmRiWWfzXN9/1mKRVhcQ==
X-Google-Smtp-Source: APXvYqyFzUzkzzWprBxCZ2Rh6rcejpx7I7pfLYPR0QigPJpd9+RwX86jKPuqI5aHWgWd2H6b1JS8KQ==
X-Received: by 2002:a5d:4e91:: with SMTP id e17mr40697146wru.233.1582207613733; 
 Thu, 20 Feb 2020 06:06:53 -0800 (PST)
Received: from holly.lan (89-145-231-170.xdsl.murphx.net. [89.145.231.170])
 by smtp.gmail.com with ESMTPSA id w1sm4664917wmc.11.2020.02.20.06.06.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 06:06:53 -0800 (PST)
Date: Thu, 20 Feb 2020 14:06:50 +0000
From: Daniel Thompson <daniel.thompson@linaro.org>
To: minyard@acm.org
Subject: Re: [PATCH v2] arm64:kgdb: Fix kernel single-stepping
Message-ID: <20200220140650.tryvv3ishkxduujk@holly.lan>
References: <20200219152403.3495-1-minyard@acm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219152403.3495-1-minyard@acm.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_060655_786470_89D104A0 
X-CRM114-Status: GOOD (  30.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Corey Minyard <cminyard@mvista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 09:24:03AM -0600, minyard@acm.org wrote:
> From: Corey Minyard <cminyard@mvista.com>
> 
> I was working on a single-step bug on kgdb on an ARM64 system, and I saw
> this scenario:
> 
> * A single step is setup to return to el1
> * The ERET return to el1
> * An interrupt is pending and runs before the instruction
> * As soon as PSTATE.D (the debug disable bit) is cleared, the single
>     step happens in that location, not where it should have.
> 
> This appears to be due to PSTATE.SS not being cleared when the exception
> happens.  Per section D.2.12.5 of the ARMv8 reference manual, that
> appears to be incorrect, it says "As part of exception entry, the PE
> does all of the following: ...  Sets PSTATE.SS to 0."
> 
> However, I appear to not be the first person who has noticed this.  In
> the el0-only portion of the kernel_entry macro in entry.S, I found the
> following comment: "Ensure MDSCR_EL1.SS is clear, since we can unmask
> debug exceptions when scheduling."  Exactly the same scenario, except
> coming from a userland single step, not a kernel one.
> 
> As I was studying this, though, I realized that the following scenario
> had an issue:
> 
> * Kernel enables MDSCR.SS, MDSCR.KDE, MDSCR.MDE (unnecessary), and
>   PSTATE.SS to enable a single step in el1, for kgdb or kprobes,
>   on the current CPU's MDSCR register and the process' PSTATE.SS
>   register.
> * Kernel returns from the exception with ERET.
> * An interrupt or page fault happens on the instruction, causing the
>   instruction to not be run, but the exception handler runs.
> * The exception causes the task to migrate to a new core.
> * The return from the exception runs on a different processor now,
>   where the MDSCR values are not set up for a single step.
> * The single step fails to happen.
> 
> This is bad for kgdb, of course, but it seems really bad for kprobes if
> this happens.
> 
> To fix both these problems, rework the handling of single steps to clear
> things out upon entry to the kernel from el1, and then to set up single
> step when returning to el1, and not do the setup in debug-monitors.c.
> This means that single stepping does not use
> enable/disable_debug_monitors(); it is no longer necessary to track
> those flags for single stepping.  This is much like single stepping is
> handled for el0.  A new flag is added in pt_regs to enable single
> stepping from el1.  Unfortunately, the old value of PSTATE.SS cannot be
> used for this because of the hardware bug mentioned earlier.
> 
> As part of this, there is an interaction between single stepping and the
> other users of debug monitors with the MDSCR.KDE bit.  That bit has to
> be set for both hardware breakpoints at el1 and single stepping at el1.
> A new variable was created to store the cpu-wide value of MDSCR.KDE; the
> single stepping code makes sure not to clear that bit on kernel entry if
> it's set in the per-cpu variable.
> 
> After fixing this and doing some more testing, I ran into another issue:
> 
> * Kernel enables the pt_regs single step
> * Kernel returns from the exception with ERET.
> * An interrupt or page fault happens on the instruction, causing the
>   instruction to not be run, but the exception handler runs.
> * The exception handling hits a breakpoint and stops.
> * The user continues from the breakpoint, so the kernel is no longer
>   expecting a single step.
> * On the return from the first exception, the single step flag in
>   pt_regs is still set, so a single step trap happens.
> * The kernel keels over from an unexpected single step.
> 
> There's no easy way to find the pt_regs that has the single step flag
> set.  So a thread info flag was added so that the single step could be
> disabled in this case.  Both that flag and the flag in pt_regs must be
> set to enable a single step.
> 
> Signed-off-by: Corey Minyard <cminyard@mvista.com>

I've pointed the kgdbtest suite at this patch (and run one of the
historically unstable test cases an extra 100 times just in case).

kgdbtest hasn't got great coverage, runs the code in qemu and some
of the strongest tests are still marked XFAIL on arm64 (for reasons
unrelated to stepping).

So the best I can say based on the above is that the test suite does not
observe any regression (but equally no improvement). Nevertheless FWIW:


Tested-by: Daniel Thompson <daniel.thompson@linaro.org>


Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
