Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6034ABECD0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 09:47:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kGxtbYXLoOdJ2siez4QK9yNx7g9GpqJv2jVSuJtCYLw=; b=DjZDLaIc/QC4yw
	P7hEP1PbqP7qB0QfLcYV9WdJmObrRoCE2P3X+uUZM8VI66B4S6I7sny7JpWnDIt5tai/HU/Up9LiG
	qxek5zkDy3HCAXt9izQeZnIuIOjQmieU7uSKL5dykjM+4LyQPiyFODi8dbCg3EX3+OSqK5waS0kAA
	qwK07xWcm1evECof7QTRXlkyjzu7p/GS0glUhDKLbBts20OZPyZwR4FbD8ZtzqG8eWf9N5yF9ioON
	SVdfw2K2s9mORWDyJYOQzXrRaAMjIP4UzwL3SoFn+o5f7fb58pDUbw8WldMe357QDcaHq9jhDhqXw
	Rfeo84S1pbWyhO44qT8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDOV4-0002sT-Er; Thu, 26 Sep 2019 07:47:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDOUp-0002rk-Jy
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 07:47:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C81B1000;
 Thu, 26 Sep 2019 00:47:25 -0700 (PDT)
Received: from iMac.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 80B8F3F836;
 Thu, 26 Sep 2019 00:47:24 -0700 (PDT)
Date: Thu, 26 Sep 2019 08:47:18 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH] arm64: Allow disabling of the compat vDSO
Message-ID: <20190926074717.GA26802@iMac.local>
References: <20190925130926.50674-1-catalin.marinas@arm.com>
 <CAKwvOdn2Sf7aAt0zqUUqGY6nXg-C3be7An9amy4tfiNr_8ERJw@mail.gmail.com>
 <20190925170838.GK7042@arrakis.emea.arm.com>
 <a7e06b86-facd-21de-c47c-246d0da8d80d@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a7e06b86-facd-21de-c47c-246d0da8d80d@arm.com>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_004727_748363_E29DAC61 
X-CRM114-Status: GOOD (  28.10  )
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 01:06:50AM +0100, Vincenzo Frascino wrote:
> On 9/25/19 6:08 PM, Catalin Marinas wrote:
> > On Wed, Sep 25, 2019 at 09:53:16AM -0700, Nick Desaulniers wrote:
> >> On Wed, Sep 25, 2019 at 6:09 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> >>> Suggestions for future improvements of the compat vDSO handling:
> >>>
> >>> - replace the CROSS_COMPILE_COMPAT prefix with a full COMPATCC; maybe
> >>>   check that it indeed produces 32-bit code
> 
> CROSS_COMPILE_COMPAT is called like this for symmetry with CROSS_COMPILE.

Actually, what gets in the way is the CONFIG_CROSS_COMPILE_COMPAT_VDSO.
We can keep CROSS_COMPILE_COMPAT together with COMPATCC initialised to
$(CROSS_COMPILE_COMPAT)gcc. When we will be able to build the compat
vDSO with clang, we just pass COMPATCC=clang on the make line and the
kernel Makefile will figure out the --target option from
CROSS_COMPILE_COMPAT (see how CLANG_FLAGS is handled).

If we stick only to env variables or make cmd line (without Kconfig) for
the compiler name, we can add a COMPATCC_IS_CLANG in the Kconfig
directly and simply not allow the enabling the COMPAT_VDSO if we don't
have the right compiler. This saves us warnings during build.

> >>> - check whether COMPATCC is clang or not rather than CC_IS_CLANG, which
> >>>   only checks the native compiler
> >>
> >> When cross compiling, IIUC CC_IS_CLANG is referring to CC which is the
> >> cross compiler, which is different than HOSTCC which is the host
> >> compiler.  HOSTCC is used mostly for things in scripts/ while CC is
> >> used to compile a majority of the kernel in a cross compile.
> > 
> > We need the third compiler here for the compat vDSO (at least with gcc),
> > COMPATCC. I'm tempted to just drop the CONFIG_CROSS_COMPILE_COMPAT_VDSO
> > altogether and only rely on a COMPATCC. This way we can add
> > COMPATCC_IS_CLANG etc. in the Kconfig checks directly.
> > 
> > If clang can build both 32 and 64-bit with the same binary (just
> > different options), we could maybe have COMPATCC default to CC and add a
> > check on whether COMPATCC generates 32-bit binaries.
> 
> clang requires the --target option for specifying the 32bit triple.
> Basically $(TRIPLE)-gcc is equivalent to gcc --target $(TRIPLE).
> We need a configuration option to encode this.

Since we don't have a CONFIG_* option for the cross-compiler prefix, we
shouldn't have one for the compat compiler either. If you want to build
the compat vDSO with clang, just pass COMPATCC=clang together with
CROSS_COMPILE_COMPAT. We can add Kconfig checks to actually verify that
COMPATCC generates 32-bit binaries (e.g. COMPATCC_CAN_LINK32).

> >>> - clean up the headers includes; vDSO should not include kernel-only
> >>>   headers that may even contain code patched at run-time
> >>
> >> This is a big one; Clang validates the inline asm constraints for
> >> extended inline assembly, GCC does not for dead code.  So Clang chokes
> >> on the inclusion of arm64 headers using extended inline assembly when
> >> being compiled for arm-linux-gnueabi.
> > 
> > Whether clang or gcc, I'd like this fixed anyway. At some point we may
> > inadvertently rely on some code which is patched at boot time for the
> > kernel code but not for the vDSO.
> 
> Do we have any code of this kind in header files?
> 
> The vDSO library uses only a subset of the headers (mainly Macros) hence all the
> unused symbols should be compiled out. Is your concern only theoretical or do
> you have an example on where this could be happening?

At the moment it's rather theoretical.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
