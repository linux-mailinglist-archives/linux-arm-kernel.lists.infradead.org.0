Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E29C17387B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 14:37:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cp9ll1QuKrAmyQCoQ7Zx+Kvp1u8JyVsyTZP8SZ6r0wY=; b=TSVZRaHjIrlhB8
	+nOD7HC7+t1TSvDGwSPhcXOKsm3LSQNnb3VrvUeyLF2uLhhgcLn3MmdbDtNE2E7k1gJxrQuuBgWhF
	RFfiaCYfk7hlCkwTx3YnPQSDwXr3/xTjmWTSA55CW3v8oCU/kLZ/PCN8nnlhde9oyCWgAalYnEUPS
	GoYG6+V9NGp0THPgGdYaHZJiT9Z48H8tWGbwiejE5dQuVRzxiq8G1lHN2Rm0Tca732MUeXxf4d0RR
	wpnW1IDJaqyLXydhrP8WJ+bBL9Wx348khCKbcp7RYSqOpkzGKrALrUzw6qO/Y73QWE+6BUU1LsRqz
	qNT2YPv/GxQYx3Tjl/Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7fph-0002mW-25; Fri, 28 Feb 2020 13:37:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7fpS-0002lq-UK
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 13:37:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DD0A431B;
 Fri, 28 Feb 2020 05:37:21 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 5767B3F7B4; Fri, 28 Feb 2020 05:37:20 -0800 (PST)
Date: Fri, 28 Feb 2020 13:37:18 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH 12/18] arm64: kernel: Convert to modern annotations for
 assembly functions
Message-ID: <20200228133718.GB4019108@arrakis.emea.arm.com>
References: <20200218195842.34156-1-broonie@kernel.org>
 <20200218195842.34156-13-broonie@kernel.org>
 <CAKv+Gu9Bt93hCaOUrgtfYWp+BU4gheVf2Y==PXVyMZcCssRLQg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu9Bt93hCaOUrgtfYWp+BU4gheVf2Y==PXVyMZcCssRLQg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_053727_472321_89B1F5F5 
X-CRM114-Status: GOOD (  20.57  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 kvmarm <kvmarm@lists.cs.columbia.edu>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Will Deacon <will@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 01:41:21PM +0100, Ard Biesheuvel wrote:
> On Tue, 18 Feb 2020 at 21:02, Mark Brown <broonie@kernel.org> wrote:
> > In an effort to clarify and simplify the annotation of assembly functions
> > in the kernel new macros have been introduced. These replace ENTRY and
> > ENDPROC and also add a new annotation for static functions which previously
> > had no ENTRY equivalent. Update the annotations in the core kernel code to
> > the new macros.
> >
> > Signed-off-by: Mark Brown <broonie@kernel.org>
> > ---
> >  arch/arm64/kernel/cpu-reset.S                 |  4 +-
> >  arch/arm64/kernel/efi-entry.S                 |  4 +-
> >  arch/arm64/kernel/efi-rt-wrapper.S            |  4 +-
> >  arch/arm64/kernel/entry-fpsimd.S              | 20 ++++-----
> >  arch/arm64/kernel/hibernate-asm.S             | 16 +++----
> >  arch/arm64/kernel/hyp-stub.S                  | 20 ++++-----
> >  arch/arm64/kernel/probes/kprobes_trampoline.S |  4 +-
> >  arch/arm64/kernel/reloc_test_syms.S           | 44 +++++++++----------
> >  arch/arm64/kernel/relocate_kernel.S           |  4 +-
> >  arch/arm64/kernel/sleep.S                     | 12 ++---
> >  arch/arm64/kernel/smccc-call.S                |  8 ++--
> >  11 files changed, 70 insertions(+), 70 deletions(-)
> >
> ...
> > diff --git a/arch/arm64/kernel/efi-entry.S b/arch/arm64/kernel/efi-entry.S
> > index 304d5b02ca67..de6ced92950e 100644
> > --- a/arch/arm64/kernel/efi-entry.S
> > +++ b/arch/arm64/kernel/efi-entry.S
> > @@ -25,7 +25,7 @@
> >          * we want to be. The kernel image wants to be placed at TEXT_OFFSET
> >          * from start of RAM.
> >          */
> > -ENTRY(entry)
> > +SYM_CODE_START(entry)
> >         /*
> >          * Create a stack frame to save FP/LR with extra space
> >          * for image_addr variable passed to efi_entry().
> > @@ -117,4 +117,4 @@ efi_load_fail:
> >         ret
> >
> >  entry_end:
> > -ENDPROC(entry)
> > +SYM_CODE_END(entry)
> 
> This hunk is going to conflict badly with the EFI tree. I will
> incorporate this change for v5.7, so could you please just drop it
> from this patch?

I wonder whether it would be easier to merge all these patches at
5.7-rc1, once most of the major changes went in.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
