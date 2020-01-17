Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DC5140971
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 13:01:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tFzmB5dcyA2ohvnhKXozgzZvdiBGWtmUuQZnlLWgeZE=; b=Vmr3wJ4Vt9PSm8
	lWFVa6erST3wJD9sOw7MXtQQI0SrPHSrRNOYjpl6m2+lXFeMGFXDMMsiJKhvW6I/mDAdW+8MN1NNE
	rN9U1B8RXclL8Xi7sXyuTKMyOSMyvkJJLCiUEQReFv/KiR8qQVW2S2uVxIkMdkmm0dh8GD2mDvLZD
	X5J104hOX4mK7YgAefMAajpZfYNhV5SEyHD/g9MEFe9oGE1BEgheBVCVLra27pIIE+goSU7CZQjAy
	ABrqAajQ8K5RqeSoYuJ83J4vmaE5WkqM7vrZWqXGFbdYP73QEet5FB6Pwy2PoqRc4yAx+YkMYAfC+
	IzF6YMfptZIFAJvk/KdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isQJK-0006VI-T2; Fri, 17 Jan 2020 12:01:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isQJ5-0006Jb-85
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 12:01:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EE5A511D4;
 Fri, 17 Jan 2020 04:00:53 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 315153F6C4; Fri, 17 Jan 2020 04:00:52 -0800 (PST)
Date: Fri, 17 Jan 2020 12:00:50 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Amit Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v3 06/16] arm64: enable ptrauth earlier
Message-ID: <20200117120050.GI26090@arrakis.emea.arm.com>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
 <1576486038-9899-7-git-send-email-amit.kachhap@arm.com>
 <20200116162414.GF10277@arrakis.emea.arm.com>
 <2d14a778-5fdf-7735-6fb1-57de3aa3e275@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2d14a778-5fdf-7735-6fb1-57de3aa3e275@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_040057_057834_3C86CE17 
X-CRM114-Status: GOOD (  18.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Mark Brown <Mark.Brown@arm.com>, Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 04:13:06PM +0530, Amit Kachhap wrote:
> On 1/16/20 9:54 PM, Catalin Marinas wrote:
> > On Mon, Dec 16, 2019 at 02:17:08PM +0530, Amit Daniel Kachhap wrote:
> > > diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
> > > index 5aaf1bb..c59c28f 100644
> > > --- a/arch/arm64/kernel/head.S
> > > +++ b/arch/arm64/kernel/head.S
[...]
> > > +ENTRY(__cpu_secondary_checkptrauth)
> > > +#ifdef CONFIG_ARM64_PTR_AUTH
> > > +	/* Check if the CPU supports ptrauth */
> > > +	mrs	x2, id_aa64isar1_el1
> > > +	ubfx	x2, x2, #ID_AA64ISAR1_APA_SHIFT, #8
> > > +	cbnz	x2, 1f
> > > +alternative_if ARM64_HAS_ADDRESS_AUTH
> > > +	mov	x3, 1
> > > +alternative_else
> > > +	mov	x3, 0
> > > +alternative_endif
> > > +	cbz	x3, 1f
> > > +	/* Park the mismatched secondary CPU */
> > > +	early_park_cpu CPU_STUCK_REASON_NO_PTRAUTH
> > > +#endif
> > > +1:	ret
> > > +ENDPROC(__cpu_secondary_checkptrauth)
> > 
> > Do we actually need to park secondary CPUs early? Let's say a secondary
> > CPU doesn't have PAC, __cpu_setup won't set the corresponding SCTLR_EL1
> > bits and the instructions are NOPs. Wouldn't the cpufeature framework
> > park it later anyway?
> 
> In the current cpufeature framework, such missing cpufeature in
> secondary cpu will lead to kernel panic (inside check_early_cpufeatures)
> and not cpu offline. However Kristina in her RFC V2 [1] added such
> feature to park it.

I remember discussing how to avoid the kernel panic with her at the
time.

> Later for moving the enabling ptrauth to assembly this work got dropped.
> Suzuki provided the template code for doing that [2].
> 
> Later James suggested to do this like existing
> __cpu_secondary_check52bitva which parks the secondary cpu very early
> and also to save wasted cpu cycles [3].

I don't really care about a few cycles lost during boot.

> So your question is still valid that it can be done in cpufeature. Let
> me know your opinion that which one is better.

My preference is for Kristina's approach. The 52-bit VA is slightly
different (as is VHE) as we cannot guarantee the secondary CPU to even
reach the CPU framework. With PAC, I don't see why it would fail
reaching the C code, so I'd prefer a more readable C implementation than
the assembler one.

Anyway, I'm open to counterarguments here.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
