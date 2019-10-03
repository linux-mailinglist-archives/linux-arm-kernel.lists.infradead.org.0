Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C51EBCA368
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 18:16:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DRjWvXEuUo8vxfWmPyKATFcEaQWdIJLhjuy8KMXZUUA=; b=qqsgwClQmkE7LP
	3FgzxAfGT+6XmqiYQuWLm+TxwQUOp+ZlkmPyCNl/ga7BFkGcIfeiAce1N12qaIQjpBy2qNT6AK1GG
	BPGpDgWrNCZVd21LPUMG7ynQwflaB5wOPmEfhF2lZ4Or3WD6z83uhgXXf3EvJB41caorESLoIoEqI
	W9mwTty0dtMxoQQVZQufW3r32DMLkBgW0hymkEOYFQKmt4nL1q3/l/25fvo76+gcGksSbSzwBgyNt
	gub/UzYgoZbYtZ+WxUHEppYCVEb8b6umv46nx6uPVqYj+uE8n+P0HVnboErM04yWysrwYVedvoNgm
	N3bzAU6l5QezqmQ+/MmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG3mN-0000an-6G; Thu, 03 Oct 2019 16:16:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG3mE-0000aD-2p
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 16:16:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9C54E1000;
 Thu,  3 Oct 2019 09:16:24 -0700 (PDT)
Received: from arrakis.emea.arm.com (unknown [10.1.196.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7EFC23F739;
 Thu,  3 Oct 2019 09:16:23 -0700 (PDT)
Date: Thu, 3 Oct 2019 17:16:21 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v4 1/6] arm64: vdso32: Fix syncconfig errors.
Message-ID: <20191003161621.GJ21629@arrakis.emea.arm.com>
References: <20191002144156.2174-1-vincenzo.frascino@arm.com>
 <20191002144156.2174-2-vincenzo.frascino@arm.com>
 <20191003160041.GI21629@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003160041.GI21629@arrakis.emea.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_091626_169178_EF6CE3C5 
X-CRM114-Status: GOOD (  16.99  )
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
Cc: ard.biesheuvel@linaro.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, luto@kernel.org, tglx@linutronix.de,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 03, 2019 at 05:00:41PM +0100, Catalin Marinas wrote:
> On Wed, Oct 02, 2019 at 03:41:51PM +0100, Vincenzo Frascino wrote:
> > diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> > index 84a3d502c5a5..dfa6a5cb99e4 100644
> > --- a/arch/arm64/Makefile
> > +++ b/arch/arm64/Makefile
> > @@ -53,20 +53,12 @@ $(warning Detected assembler with broken .inst; disassembly will be unreliable)
> >    endif
> >  endif
> >  
> > +COMPATCC ?= $(CROSS_COMPILE_COMPAT)gcc
> > +export COMPATCC
> > +
> >  ifeq ($(CONFIG_GENERIC_COMPAT_VDSO), y)
> > -  CROSS_COMPILE_COMPAT ?= $(CONFIG_CROSS_COMPILE_COMPAT_VDSO:"%"=%)
> > -
> > -  ifeq ($(CONFIG_CC_IS_CLANG), y)
> > -    $(warning CROSS_COMPILE_COMPAT is clang, the compat vDSO will not be built)
> > -  else ifeq ($(strip $(CROSS_COMPILE_COMPAT)),)
> > -    $(warning CROSS_COMPILE_COMPAT not defined or empty, the compat vDSO will not be built)
> > -  else ifeq ($(shell which $(CROSS_COMPILE_COMPAT)gcc 2> /dev/null),)
> > -    $(error $(CROSS_COMPILE_COMPAT)gcc not found, check CROSS_COMPILE_COMPAT)
> > -  else
> > -    export CROSS_COMPILE_COMPAT
> > -    export CONFIG_COMPAT_VDSO := y
> > -    compat_vdso := -DCONFIG_COMPAT_VDSO=1
> > -  endif
> > +  export CONFIG_COMPAT_VDSO := y
> > +  compat_vdso := -DCONFIG_COMPAT_VDSO=1
> >  endif
> 
> With this change, if I don't have any CROSS_COMPILE_COMPAT in my
> environment, the kernel fails to build because COMPATCC becomes gcc
> which cannot build the vdso32. What I really want is not to warn me, nor
> fail to build the kernel when I don't care about the compat vDSO (e.g. I
> have a 64-bit only machine).
> 
> What saved us before was the COMPATCC_IS_ARM_GCC check and a selection
> of the GENERIC_COMPAT_VDSO dependent on this check. This was now dropped
> from the previous version of the patch. We could add something like
> COMPATCC_CAN_LINK.

Ah, the COMPATCC_CAN_LINK idea doesn't help because an x86 gcc can still
link. Maybe only enable CONFIG_COMPAT_VDSO above if CROSS_COMPILE_COMPAT
was set. You could move the COMPATCC setting and export under the
same 'if' block in the Makefile.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
