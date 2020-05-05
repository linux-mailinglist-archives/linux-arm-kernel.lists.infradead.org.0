Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E95FA1C5DDA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 18:51:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8El4sGckn5Cn0M4vixMWphzx1BMRo2a2wZUBkYbWkY4=; b=QhR1NQtaCe4w2I
	6LbRiIcFBfqwLffO8ql5sNmbQLOLqtWE75uTnWug3WTztxT4ZzbjqcR/XY8QUHhDN2+qhyPIsqZXj
	Tff//P2TFKzWw+C9iRpESAKLNpVSy1euEopvhSI4gtVoJS0s1kfEOAXA25IgF99lgD0gcHG6XPC/+
	eXP7vykA7Z8LLauuaXVaun4IGsWB3V7x9niY139nclbakFJtAZmcSrT3osR3eqUxykjvC6Zr6IIz2
	HD9on3HH/tH+h7LeuI4PUqMbg+IJXwZamDqXjDDJcdfojwAJ+MuQTqe+wNmAp/GUe43EsQmBJrFNv
	CUzYrfIZdgByOFNlaRgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW0nM-0000oG-7C; Tue, 05 May 2020 16:51:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW0nD-0000mc-BQ
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 16:51:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1C82831B;
 Tue,  5 May 2020 09:51:31 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 385D53F305;
 Tue,  5 May 2020 09:51:30 -0700 (PDT)
Date: Tue, 5 May 2020 17:51:28 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 07/10] arm64: asm: Provide a mechanism for generating
 ELF note for BTI
Message-ID: <20200505165128.GR30377@arm.com>
References: <20200429211641.9279-1-broonie@kernel.org>
 <20200429211641.9279-8-broonie@kernel.org>
 <20200505145858.GB24239@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505145858.GB24239@willie-the-truck>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_095139_473977_70FA7C88 
X-CRM114-Status: GOOD (  22.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Kees Cook <keescook@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 03:58:59PM +0100, Will Deacon wrote:
> [+Dave]
> 
> On Wed, Apr 29, 2020 at 10:16:38PM +0100, Mark Brown wrote:
> > ELF files built for BTI should have a program property note section which
> > identifies them as such. The linker expects to find this note in all
> > object files it is linking into a BTI annotated output, the compiler will
> > ensure that this happens for C files but for assembler files we need to do
> > this in the source so provide a macro which can be used for this purpose.
> > 
> > This is mainly for use in the VDSO which should be a normal ELF shared
> > library and should therefore include BTI annotations when built for BTI.
> > 
> > Signed-off-by: Mark Brown <broonie@kernel.org>
> > ---
> >  arch/arm64/include/asm/assembler.h | 41 ++++++++++++++++++++++++++++++
> >  1 file changed, 41 insertions(+)
> > 
> > diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
> > index 0bff325117b4..85a88df2d0fe 100644
> > --- a/arch/arm64/include/asm/assembler.h
> > +++ b/arch/arm64/include/asm/assembler.h
> > @@ -736,4 +736,45 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
> >  .Lyield_out_\@ :
> >  	.endm
> >  
> > +/*
> > + * This macro emits a program property note section identifying
> > + * architecture features which require special handling, mainly for
> > + * use in assembly files included in the VDSO.
> > + */
> > +
> > +#ifdef CONFIG_ARM64_BTI_KERNEL
> > +
> > +#define NT_GNU_PROPERTY_TYPE_0  5
> > +#define GNU_PROPERTY_AARCH64_FEATURE_1_AND      0xc0000000
> > +
> > +#define GNU_PROPERTY_AARCH64_FEATURE_1_BTI      (1U << 0)
> > +#define GNU_PROPERTY_AARCH64_FEATURE_1_PAC      (1U << 1)
> > +
> > +.macro emit_aarch64_feature_1_and
> 
> Might be useful to take the features as a macro argument, so we can
> re-use this when extra features get added in the future.

Probably a good idea, though I hope this doesn't crop up too often...

> > +	.pushsection .note.gnu.property, "a"
> > +	.align  3
> > +	.long   2f - 1f
> > +	.long   6f - 3f
> > +	.long   NT_GNU_PROPERTY_TYPE_0
> > +1:      .string "GNU"
> > +2:
> > +	.align  3
> > +3:      .long   GNU_PROPERTY_AARCH64_FEATURE_1_AND
> > +	.long   5f - 4f
> > +4:
> > +	.long   GNU_PROPERTY_AARCH64_FEATURE_1_PAC | \
> > +		GNU_PROPERTY_AARCH64_FEATURE_1_BTI
> 
> Hmm. The Linux ABI doc [1] says this field is:
> 
> 	unsigned char pr_data[PR_DATASZ];
> 
> but the AArch64 PCS [2] says:
> 
> 	"It has a single 32-bit value for the pr_data field."
> 
> What does this mean for endianness?

I think this means it's poorly specified.

The spirit of this is that each property is a container for a random ELF
structure, whose elements are encoded with endianness matching that of 
the ELF file.

Because these structures are variably sized, they can't be described
properly using a C type.  The pseudo-C in [1] is illustrative but a bit
of a bodge IMHO.  Attempting to do things this way for real would also
get you into trouble with strict-aliasing IIUC.


This ship has already sailed: someone should check what comes out of
cc -mbig-endian -mbranch-protection=standard.  (Extra points scored if
you can persuade gcc and clang to do something different!)

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
