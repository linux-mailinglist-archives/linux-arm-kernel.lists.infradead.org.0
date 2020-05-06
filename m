Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 014071C6F4B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 13:26:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Qov3Ql8zPok5OWRgloCRjfcyRSImuVTaX+f+/h3EWE=; b=LeR1rLYdkg68jQ
	fkBl7stIllRq9UQbwR/rREHim4lPVU0P3JGiLIXKCbXhaL1bGw0ILnVqP+fDa6hk/iJCIoZi66kNG
	xA/PJTyT6QHAjc1Tl2L+ravPX/KjK7XzlrreeAJw9/ZRxM2HtEZg/PanRbDOr4XrWmtAcfYV9ztQV
	6D1Z4TiOaEHMnnLRD19wKm/rxaGs5hOtASlZknj8CTSS1r4pXy333v4OYmtqChmXEF0XnYkiJhPTF
	o15BbH9E57OF7yPHuBB3WbCsVaVbKJuTY5ib8yNiUyP2fXXkRN2KEiVbAcZkZb3IItRyhs+mVVmzj
	wVzHnMrMpgAzBOjwoN2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWICP-00020i-71; Wed, 06 May 2020 11:26:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWICE-000205-P5
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 11:26:40 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 442002070B;
 Wed,  6 May 2020 11:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588764398;
 bh=QUJeRh44A3rf0k7FWY2FOtpu5rroyrrUYgKqUa8JTYw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WvFwCiZABJHlYpeJ23FV6ZM5vbT7y+xhdVx/Xxb8jJ+L1T7Tm4KR0Ji/MojjlQfB+
 C9TL3cPAKfiG2eBHDu0tTlugtjErsqwIzzqvFs63/VUtNjfcPNo5ntS2oTLOTKHlXw
 nJRrqbei+imRBI6gHNBkoBqihy+79klXVIsrxDNM=
Date: Wed, 6 May 2020 12:26:33 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 07/10] arm64: asm: Provide a mechanism for generating
 ELF note for BTI
Message-ID: <20200506112632.GD8043@willie-the-truck>
References: <20200429211641.9279-1-broonie@kernel.org>
 <20200429211641.9279-8-broonie@kernel.org>
 <20200505145858.GB24239@willie-the-truck>
 <20200505170629.GH5377@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505170629.GH5377@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_042638_858842_9A96CD3C 
X-CRM114-Status: GOOD (  26.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, dave.martin@arm.com,
 linux-arm-kernel@lists.infradead.org, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark, Dave,

On Tue, May 05, 2020 at 06:06:29PM +0100, Mark Brown wrote:
> On Tue, May 05, 2020 at 03:58:59PM +0100, Will Deacon wrote:
> > On Wed, Apr 29, 2020 at 10:16:38PM +0100, Mark Brown wrote:
> 
> > > +#define GNU_PROPERTY_AARCH64_FEATURE_1_BTI      (1U << 0)
> > > +#define GNU_PROPERTY_AARCH64_FEATURE_1_PAC      (1U << 1)
> 
> > > +.macro emit_aarch64_feature_1_and
> 
> > Might be useful to take the features as a macro argument, so we can
> > re-use this when extra features get added in the future.
> 
> I was unsure about that - it'd be a bit annoying to have to have all the
> callers of the macro list things like BTI where 

It just feels inevitable that we'll need to do this at some point!
Do you know what is supposed to happen if an object has multiple instances
of this property identifying different features? For example, could we
do something like:

	emit_aarch64_feature_1_and_pac_bti
	emit_aarch64_feature_1_and_whizz
	emit_aarch64_feature_1_and_bang

all of which wrap emit_aarch64_feature_1_and, but result in an object that
supports pac, bti, whizz and bang?

If we have to merge this stuff in a single .long, then I think we'll
probably have to put up with passing in the features as an optional macro
argument, which defaults to "all features" if it's omitted. So on top of
your patches, we could do:


diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index 85a88df2d0fe..53801250a639 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -750,7 +750,11 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
 #define GNU_PROPERTY_AARCH64_FEATURE_1_BTI      (1U << 0)
 #define GNU_PROPERTY_AARCH64_FEATURE_1_PAC      (1U << 1)
 
-.macro emit_aarch64_feature_1_and
+#define GNU_PROPERTY_AARCH64_FEATURE_1_ALL				\
+				(GNU_PROPERTY_AARCH64_FEATURE_1_BTI |	\
+				 GNU_PROPERTY_AARCH64_FEATURE_1_PAC)
+
+.macro emit_aarch64_feature_1_and, feat=GNU_PROPERTY_AARCH64_FEATURE_1_ALL
 	.pushsection .note.gnu.property, "a"
 	.align  3
 	.long   2f - 1f
@@ -762,8 +766,13 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
 3:      .long   GNU_PROPERTY_AARCH64_FEATURE_1_AND
 	.long   5f - 4f
 4:
-	.long   GNU_PROPERTY_AARCH64_FEATURE_1_PAC | \
-		GNU_PROPERTY_AARCH64_FEATURE_1_BTI
+	/*
+	 * Although the Linux ABI spec describes this as an array of
+	 * unsigned char, the rest of the world (including clang and gcc)
+	 * treat it as a 32-bit value and so no swizzling is required
+	 * when building for big-endian.
+	 */
+	.long   \feat
 5:
 	.align  3
 6:
@@ -772,7 +781,7 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
 
 #else
 
-.macro emit_aarch64_feature_1_and
+.macro emit_aarch64_feature_1_and, feat=0
 .endm
 
 #endif  /* CONFIG_ARM64_BTI_KERNEL */


> > > +3:      .long   GNU_PROPERTY_AARCH64_FEATURE_1_AND
> > > +	.long   5f - 4f
> > > +4:
> > > +	.long   GNU_PROPERTY_AARCH64_FEATURE_1_PAC | \
> > > +		GNU_PROPERTY_AARCH64_FEATURE_1_BTI
> 
> > Hmm. The Linux ABI doc [1] says this field is:
> 
> > 	unsigned char pr_data[PR_DATASZ];
> 
> > but the AArch64 PCS [2] says:
> 
> > 	"It has a single 32-bit value for the pr_data field."
> 
> > What does this mean for endianness?
> 
> It's not entirely clear is it?  What we're doing here means that we're
> emitting as a long rather than a character array so the endianness
> matters.  The ABI doc does have language about the elements being "an
> array of X-byte integers in the format of the target processor" which
> seems to align with that as well, my impression is that the intention of
> the ABI doc is that there should be a Processor_Word type corresponding
> to the Elf_Word type but there isn't so the char arrays are used to
> handle the word size difference between AArch32 and AArch64.
> 
> Unless I'm missing something this at least appears to agree with what
> the compilers (both GCC and clang) are emitting for both big and little
> endian and what a readelf that understands these is decoding so I think
> at this point it's de facto the way things are interpreted.

As long as the compilers agree with each other and with the way we roll the
note ourself, then I think all we should do is add a comment above the
.long. Sound reasonable?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
