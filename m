Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D99CF51E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 10:37:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IO83yrgVpD23vP+QGZKRCztpBVeat13U5MNvphQ9WKE=; b=gXHj2xaocBmcSV
	aeyordx9KIzRkQhH7HyhR1/zVo8FPKMj5T3mVbMFGRl5juSLwSgZ7UshUxig53/JE872qcVeI/OQe
	S+airHpO6fYmtQsq2eg4yvoN+D1fmAmRFk2NobHX3i0f4Qhl40B5/0kVXMhEi6JACYkEkkt8kzJnW
	pq99QT1PbH8inP/bxOFhaGzXOh/NB+nVd9apGPxEI4KCKMvdAYIDBs9hP69FU0n2Mi9qvlppfudsL
	MhB6ovwKrBFDn/C9fTVI91qJNB3Jd2U8XNrE3y1eP5dNLoUtTtx8rFDaWiADlIpsWDxnRdk8fv+dR
	zIT+q3QSF5AuWvo0V5gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHkzr-0006K4-BT; Tue, 08 Oct 2019 08:37:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHkzk-0006J9-4K
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 08:37:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 936341570;
 Tue,  8 Oct 2019 01:37:22 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 164273F6C4;
 Tue,  8 Oct 2019 01:37:21 -0700 (PDT)
Date: Tue, 8 Oct 2019 09:37:20 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] arm64: lse: fix LSE atomics with LLVM's integrated
 assembler
Message-ID: <20191008083719.GG42880@e119886-lin.cambridge.arm.com>
References: <20191007201452.208067-1-samitolvanen@google.com>
 <CAKwvOdmaMaO-Gpv2x0CWG+CRUCNKbNWJij97Jr0LaRaZXjAiTA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOdmaMaO-Gpv2x0CWG+CRUCNKbNWJij97Jr0LaRaZXjAiTA@mail.gmail.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_013724_259321_094765AC 
X-CRM114-Status: GOOD (  29.82  )
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
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 07, 2019 at 01:28:19PM -0700, Nick Desaulniers wrote:
> On Mon, Oct 7, 2019 at 1:14 PM 'Sami Tolvanen' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > Unlike gcc, clang considers each inline assembly block to be independent
> > and therefore, when using the integrated assembler for inline assembly,
> > any preambles that enable features must be repeated in each block.
> >
> > Instead of changing all inline assembly blocks that use LSE, this change
> > adds -march=armv8-a+lse to KBUILD_CFLAGS, which works with both clang
> > and gcc.
> >
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> 
> Thanks Sami, looks like this addresses:
> Link: https://github.com/ClangBuiltLinux/linux/issues/671
> I tried adding `.arch armv8-a+lse` directives to all of the inline asm:
> https://github.com/ClangBuiltLinux/linux/issues/573#issuecomment-535098996
> though that quickly ran aground in some failed assertion using the
> alternatives system that I don't quite yet understand.

I think these issues somehow are related to the strange way we used to
jump to the out-of-line fallbacks. Since around addfc38672c7 ("arm64:
atomics: avoid out-of-line ll/sc atomics") this approach was removed.

I reproduced your patch on 5.4-rc2 and no longer get the clang build
errors. Therefore this approach is viable option.

> 
> One thing to be careful about is that blankets the entire kernel in
> `+lse`, allowing LSE atomics to be selected at any point.  The
> assembler directive in the header (or per inline asm block) is more
> fine grained.  I'm not sure that they would be guarded by the
> alternative system.  Maybe that's not an issue, but it is the reason I
> tried to localize the assembler directive first.
> 
> Note that Clang really wants the target arch specified by either:
> 1. command line argument (as in this patch)

This makes me nervous, as we're telling the compiler that the machine
we're building for has LSE - obviously it would be perfectly acceptable
for the compiler to then throw in some LSE instructions at some point.
Thus something may break further down the line.

> 2. per function function attribute
> 3. per asm statement assembler directive

Keen to hear Will's thoughts - but I'd suggest this is probably the
safest way forward.

Thanks,

Andrew Murray

> 
> 1 is the smallest incision.
> 
> > ---
> >  arch/arm64/Makefile          | 2 ++
> >  arch/arm64/include/asm/lse.h | 2 --
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> > index 84a3d502c5a5..7a7c0cb8ed60 100644
> > --- a/arch/arm64/Makefile
> > +++ b/arch/arm64/Makefile
> > @@ -36,6 +36,8 @@ lseinstr := $(call as-instr,.arch_extension lse,-DCONFIG_AS_LSE=1)
> >  ifeq ($(CONFIG_ARM64_LSE_ATOMICS), y)
> >    ifeq ($(lseinstr),)
> >  $(warning LSE atomics not supported by binutils)
> > +  else
> > +KBUILD_CFLAGS  += -march=armv8-a+lse
> >    endif
> >  endif
> >
> > diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
> > index 80b388278149..8603a9881529 100644
> > --- a/arch/arm64/include/asm/lse.h
> > +++ b/arch/arm64/include/asm/lse.h
> > @@ -14,8 +14,6 @@
> >  #include <asm/atomic_lse.h>
> >  #include <asm/cpucaps.h>
> >
> > -__asm__(".arch_extension       lse");
> > -
> >  extern struct static_key_false cpu_hwcap_keys[ARM64_NCAPS];
> >  extern struct static_key_false arm64_const_caps_ready;
> >
> > --
> > 2.23.0.581.g78d2f28ef7-goog
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191007201452.208067-1-samitolvanen%40google.com.
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
