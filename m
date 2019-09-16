Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BECB3A0E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 14:14:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O6zzPTTa/F0TD5A/tZFLYN2o6b0i6AZy5SDVa5vuVOo=; b=LooooR5dKzp1dl
	WB9acreDJtZx9tof+1Vh4HlEfJD77MB2WS/1UqrbbCvVUi6B9QlFB94snJ76w22r4yHzF43cNjsrf
	4yRaYhQsexDXMW/7iVGnUOhVhgCUFEc3O6xFQrDd56AuW9C87Gim8qsBGL/dDO4aynbfpXGT6PyLw
	V1+ICK8zMUdIRwy7qkz25UPtYHhw4IdTCO/h99Ak3/laS5XL41IVdN2iW+pZQti67+fea+HNz/i0d
	VLwaK7TalfZ799Sue8buebE7KP1tEXOxIjIrm3orb6KXu4ebhahGcmwMr4DbJ3n011puaOhTx0xK4
	GS73kpiIMCCNQtvWBoWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9pu7-0006jG-0k; Mon, 16 Sep 2019 12:14:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9ptp-0006ik-7U
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 12:14:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D7F53337;
 Mon, 16 Sep 2019 05:14:31 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EFC323F59C;
 Mon, 16 Sep 2019 05:14:30 -0700 (PDT)
Date: Mon, 16 Sep 2019 13:14:28 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v5 00/11] Add arm64/signal initial kselftest support
Message-ID: <20190916121428.GJ27757@arm.com>
References: <20190902112932.36129-1-cristian.marussi@arm.com>
 <20190904114722.GQ27757@arm.com>
 <74165b2e-eb4c-994f-20ca-b69f71f3f5bc@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <74165b2e-eb4c-994f-20ca-b69f71f3f5bc@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_051433_360502_741C5D5E 
X-CRM114-Status: GOOD (  29.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: amit.kachhap@arm.com, andreyknvl@google.com, shuah@kernel.org,
 linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 01:25:31PM +0100, Cristian Marussi wrote:
> On 04/09/2019 12:47, Dave Martin wrote:
> > On Mon, Sep 02, 2019 at 12:29:21pm +0100, Cristian Marussi wrote:
> >> Hi
> >>
> >> this patchset aims to add the initial arch-specific arm64 support to
> >> kselftest starting with signals-related test-cases.
> >> A common internal test-case layout is proposed which then it is anyway
> >> wired-up to the toplevel kselftest Makefile, so that it should be possible
> >> at the end to run it on an arm64 target in the usual way with KSFT.
> > 
> > BTW, it's helpful to state the base branch / commit as clearly as
> > possible near the top of the cover letter, say,
> > 
> > --8<--
> > 
> > This series is based on arm64/for-next/core [1]
> > commit 9ce1263033cd ("selftests, arm64: add a selftest for passing tagged pointers to kernel")
> > 
> > [1] git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-next/core
> > 
> > -->8--
> > 
> > This is particularly important if you expect the maintainer to pick up
> > the patches.
> > 
> > You don't need to reference a specific commit unless there's a
> > significant chance of conflicts if the wrong commit is used, but it can
> > help provide a clue as to why you're basing on this alternate branch.
> > 
> 
> Ok, thanks I'll do.
> 
> >> ~/linux# make TARGETS=arm64 kselftest
> >>
> >> New KSFT arm64 testcases live inside tools/testing/selftests/arm64 grouped by
> >> family inside subdirectories: arm64/signal is the first family proposed with
> >> this series.
> >> This series converts also to this subdirectory scheme the pre-existing
> >> (already queued on arm64/for-next/core) KSFT arm64 tags tests, moving them
> >> into arm64/tags.
> >>
> >> Thanks
> >>
> >> Cristian
> >>
> >>
> >> Notes:
> >> -----
> >> - further details in the included READMEs
> >>
> >> - more tests still to be written (current strategy is going through the related
> >>   Kernel signal-handling code and write a test for each possible and sensible code-path)
> >>   A few ideas for more TODO testcases:
> >> 	- fake_sigreturn_unmapped_sp: SP into unmapped addrs
> >> 	- fake_sigreturn_kernelspace_sp: SP into kernel addrs
> >> 	- fake_sigreturn_sve_bad_extra_context: SVE extra context badly formed
> >> 	- mangle_sve_invalid_extra_context: SVE extra_context invalid
> >>
> >> - SVE signal testcases and special handling will be part of an additional patch
> >>   still to be released
> > 
> > What's your approach to checking that the test failure paths work?
> > 
> > We could either hack the kernel or the tests to provoke "fake" failures,
> > and I don't think it's necessary to test everything in this way,
> > providing we have confidence that the test strategy and framework works
> > in general.
> > 
> 
> So my approach to testing the tests itself has been as follows:
> 
> - PASS path: instrumented Kernel itself to print the exact line where the SEGV
>   is supposed to be called and manually check once for all (just redone now).
>   Something like:
> 
> # FAKE_SIGRETURN_MISALIGNED_SP :: Triggers a sigreturn with a misaligned sigframe
> Registered handlers for all signals.
> Detected MINSTKSIGSZ:9984
> Testcase initialized.
> uc context validated.
> GOOD CONTEXT grabbed from sig_copyctx handler
> Handled SIG_COPYCTX
> Calling sigreturn with fake sigframe sized:4688 at SP @FFFFCAAE5253
> [  188.206911] Kernel SEGV @ 571                                                   <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
> SIG_OK -- SP:0xFFFFCAAE5253  si_addr@:0xffffcaae5253  si_code:2  token@:0xffffcaae5253  offset:0
> ==>> completed. PASS(1)
> 
> 
> - FAIL path: tried at first the same approach (instrument to avoid the SEGV), but thinking that
>   this could have led to general Kernel instability while processing bad sigframes,
>   I instead instrumented tests and utils as follows:
> 
>   - mangle_ TESTS:
> 
>     + removed the "mangling" for each test, and observed test FAIL (NO SEGV)
> 
> # MANGLE_PSTATE_INVALID_MODE_EL1h :: Mangling uc_mcontext INVALID MODE EL1h
> Registered handlers for all signals.
> Detected MINSTKSIGSZ:9984
> Testcase initialized.
> uc context validated.
> Handled SIG_TRIG
> ==>> completed. FAIL(0)
> 
>     + SSBS: being this a peculiar mangle_ test, where we check that SSBS is PRESERVED as it is
>       on Kernel restoring sigframe (no expected SEGV), I used a kernel patched to NOT preserve
>       the SSBS bit (so clearing it). Moreover I experimented with the various SSBS support levels
>       (no_supp/SSBS_BIT/MRS+SSBS_BIT) and observed how test behaved related to the detected SSBS support
> 
>     + verify that an anomalous SEGV (no SEGV_ACCER) is detected (say a *(* int)0x00= inside handler)
> 
> # MANGLE_PSTATE_INVALID_DAIF_BITS :: Mangling uc_mcontext with INVALID DAIF_BITS
> Registered handlers for all signals.
> Detected MINSTKSIGSZ:9984
> Testcase initialized.
> uc context validated.
> SIG_OK -- SP:0xFFFFFBE96DA0  si_addr@:(nil)  si_code:1  token@:(nil)  offset:0
> si_code != SEGV_ACCERR...test is probably broken!  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
> -- RX UNEXPECTED SIGNAL: 6
> ==>> completed. FAIL(0)
> 
> 
>   - fake_sigreturn_ TESTS:
> 
>     + verify placing on the stack the good context grabbed from get_current_context() as it is
>       (GOOD), execution flow is anomalously restored inside get_current_context() and such 
>       anomaly is spotted (without deadly loops)
> 
> # FAKE_SIGRETURN_BAD_MAGIC :: Trigger a sigreturn with a sigframe with a bad magic
> Registered handlers for all signals.
> Detected MINSTKSIGSZ:9984
> Testcase initialized.
> uc context validated.
> GOOD CONTEXT grabbed from sig_copyctx handler
> Handled SIG_COPYCTX
> Calling sigreturn with fake sigframe sized:4688 at SP @FFFFCAC61F80
> Unexpected successful sigreturn detected: live_uc is stale !        <<<<<<<<<<<<<<<<<<<<<<<<<<<
> ==>> completed. FAIL(0)
> 
>     + verify that an early SEGV is detected as anomalous (say a *(* int)0x00 before fake sigframe
>       has been placed on the stack)
> 
> # FAKE_SIGRETURN_BAD_MAGIC :: Trigger a sigreturn with a sigframe with a bad magic
> Registered handlers for all signals.
> Detected MINSTKSIGSZ:9984
> Testcase initialized.
> uc context validated.
> GOOD CONTEXT grabbed from sig_copyctx handler
> Handled SIG_COPYCTX
> Available space:3552
> Using badly built context - ERR: BAD MAGIC !
> Calling sigreturn with fake sigframe sized:4688 at SP @FFFFE77C96D0
> SIG_OK -- SP:0xFFFFE77C96D0  si_addr@:(nil)  si_code:1  token@:(nil)  offset:0
> current->token ZEROED...test is probably broken!   <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
> -- RX UNEXPECTED SIGNAL: 6
> ==>> completed. FAIL(0)

OK, seems reasonable.

I was just curious as to how you'd approached it.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
