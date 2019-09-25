Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A45BE312
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 19:09:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+pqk2QKwMFBG+Pi3FbfPsaKZrOXUXCs2vW7bwQUgcYY=; b=Cq7B6hf3YlLNcw
	u/oHN/3tUgw5XJx9U9ep0gkP60eF7sUdmKu4XAihhCmouMRIMI4poROGqYHQEnXIa05iC/3m8SoXa
	TPyyqjHS9cis4yg2v7yedH20vCHobie0TcTfQqA7B9FS/wwQK1PjHlUjQYSQ/cOgN11ElDkoQA01I
	5wyl9MdPbs7M5IB4bJULY720vxQW5HGwCGfkjrcS3rMBaH4J422iyQor40xSzHJsIEB1g/KGOS83q
	kp69qDd41Own0kqT/gURbdibeNetmXOIyaOLyDPbyX8W3aHpiHmrVKSWf7oUtAX7QYfw2TnD8gClm
	p68G8M4xweKIPKlxkEnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDAmo-000419-Bc; Wed, 25 Sep 2019 17:09:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDAmS-0003pH-UF
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 17:08:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6799C1570;
 Wed, 25 Sep 2019 10:08:42 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 646543F694; Wed, 25 Sep 2019 10:08:41 -0700 (PDT)
Date: Wed, 25 Sep 2019 18:08:39 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] arm64: Allow disabling of the compat vDSO
Message-ID: <20190925170838.GK7042@arrakis.emea.arm.com>
References: <20190925130926.50674-1-catalin.marinas@arm.com>
 <CAKwvOdn2Sf7aAt0zqUUqGY6nXg-C3be7An9amy4tfiNr_8ERJw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOdn2Sf7aAt0zqUUqGY6nXg-C3be7An9amy4tfiNr_8ERJw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_100845_092903_CECA9B98 
X-CRM114-Status: GOOD (  26.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 LKML <linux-kernel@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 09:53:16AM -0700, Nick Desaulniers wrote:
> On Wed, Sep 25, 2019 at 6:09 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> >
> > The compat vDSO building requires a cross-compiler than produces AArch32
> > binaries, defined via CONFIG_CROSS_COMPILE_COMPAT_VDSO or the
> > CROSS_COMPILE_COMPAT environment variable. If none of these is defined,
> > building the kernel always prints a warning as there is no way to
> > deselect the compat vDSO.
> >
> > Add an arm64 Kconfig entry to allow the deselection of the compat vDSO.
> > In addition, make it an EXPERT option, default n, until other issues
> > with the compat vDSO are solved (64-bit only kernel headers included in
> > user-space vDSO code, CC_IS_CLANG irrelevant to CROSS_COMPILE_COMPAT).
> 
> CC_IS_CLANG might be because then CC can be reused with different
> flags, rather than providing a different cross compiler binary via
> config option.
> 
> >
> > Fixes: bfe801ebe84f ("arm64: vdso: Enable vDSO compat support")
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
> > Cc: Thomas Gleixner <tglx@linutronix.de>
> > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> 
> Thanks for the patch.
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/595

This is just a temporary hiding of the issue, not a complete fix.
Vincenzo will do the fix later on.

> Overall, this work is important to Android; the ARMv8-A series of
> mobile SoCs we see today have to support 32b and 64b (A32+A64?) for at
> least a few more years; we would like gettimeofday() and friends to be
> fast for 32b and 64b applications.

I agree, it just needs some tweaking and hopefully we get most of it
fixed in 5.4.

> > Suggestions for future improvements of the compat vDSO handling:
> >
> > - replace the CROSS_COMPILE_COMPAT prefix with a full COMPATCC; maybe
> >   check that it indeed produces 32-bit code
> >
> > - check whether COMPATCC is clang or not rather than CC_IS_CLANG, which
> >   only checks the native compiler
> 
> When cross compiling, IIUC CC_IS_CLANG is referring to CC which is the
> cross compiler, which is different than HOSTCC which is the host
> compiler.  HOSTCC is used mostly for things in scripts/ while CC is
> used to compile a majority of the kernel in a cross compile.

We need the third compiler here for the compat vDSO (at least with gcc),
COMPATCC. I'm tempted to just drop the CONFIG_CROSS_COMPILE_COMPAT_VDSO
altogether and only rely on a COMPATCC. This way we can add
COMPATCC_IS_CLANG etc. in the Kconfig checks directly.

If clang can build both 32 and 64-bit with the same binary (just
different options), we could maybe have COMPATCC default to CC and add a
check on whether COMPATCC generates 32-bit binaries.

> > - clean up the headers includes; vDSO should not include kernel-only
> >   headers that may even contain code patched at run-time
> 
> This is a big one; Clang validates the inline asm constraints for
> extended inline assembly, GCC does not for dead code.  So Clang chokes
> on the inclusion of arm64 headers using extended inline assembly when
> being compiled for arm-linux-gnueabi.

Whether clang or gcc, I'd like this fixed anyway. At some point we may
inadvertently rely on some code which is patched at boot time for the
kernel code but not for the vDSO.

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
