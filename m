Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8D7D434E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 16:45:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E47sHAzVt3s9ki8x4s7LrNNQ1hT632YXoURJc36rlC4=; b=Une7Ih+IxZv7+n
	RGLM0e3pZ6ZJhAT05DznPvdOmKGMLujdxDF+Fd9ANzzvA5oNCc9dXBe/2bOi1S85aFvQUOj9QRNJc
	WlHDibErCH1rSFPLmEdnXwMvs7doQ8R2FrUS4Em0GpD12AJdLAZO56TLuMPir+Bn1a+KIbdH7ivJh
	5P1koOLDsS2jK7s6dgKcOwJ4hxls27nRfAAxkthzoTfkAQkvNsy45i9AuXA8kIdtMafnOVvGNzLJj
	AkvqQMsjlxv/8hsvRZh8oZwRx+7nqsv+b2RihaWrF6FuOEScUdXiKsaun8tqE7dcvuqccrc1pe/D+
	ffVJvnIFPFQVykq/c70Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIwAP-0007d2-E6; Fri, 11 Oct 2019 14:45:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIwA5-0007cb-By
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 14:44:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C9716142F;
 Fri, 11 Oct 2019 07:44:56 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E268F3F68E;
 Fri, 11 Oct 2019 07:44:53 -0700 (PDT)
Date: Fri, 11 Oct 2019 15:44:51 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v2 12/12] KVM: arm64: BTI: Reset BTYPE when skipping
 emulated instructions
Message-ID: <20191011144451.GI27757@arm.com>
References: <1570733080-21015-1-git-send-email-Dave.Martin@arm.com>
 <1570733080-21015-13-git-send-email-Dave.Martin@arm.com>
 <20191011142454.GD33537@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011142454.GD33537@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_074457_454869_7763A177 
X-CRM114-Status: GOOD (  19.52  )
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H.J. Lu" <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 03:24:55PM +0100, Mark Rutland wrote:
> On Thu, Oct 10, 2019 at 07:44:40PM +0100, Dave Martin wrote:
> > Since normal execution of any non-branch instruction resets the
> > PSTATE BTYPE field to 0, so do the same thing when emulating a
> > trapped instruction.
> > 
> > Branches don't trap directly, so we should never need to assign a
> > non-zero value to BTYPE here.
> > 
> > Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> > ---
> >  arch/arm64/include/asm/kvm_emulate.h | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
> > index d69c1ef..33957a12 100644
> > --- a/arch/arm64/include/asm/kvm_emulate.h
> > +++ b/arch/arm64/include/asm/kvm_emulate.h
> > @@ -452,8 +452,10 @@ static inline void kvm_skip_instr(struct kvm_vcpu *vcpu, bool is_wide_instr)
> >  {
> >  	if (vcpu_mode_is_32bit(vcpu))
> >  		kvm_skip_instr32(vcpu, is_wide_instr);
> > -	else
> > +	else {
> >  		*vcpu_pc(vcpu) += 4;
> > +		*vcpu_cpsr(vcpu) &= ~(u64)PSR_BTYPE_MASK;
> > +	}
> 
> Style nit: both sides of an if-else should match brace-wise. i.e. please
> add braces to the other side.

Will fix.  Strange, checkpatch didn't catch that, maybe because only one
arm of the if was patched.

> As with the prior patch, the u64 cast can also go.
> 
> Otherwise, this looks right to me.

For some reason I thought there was a different prevailing style in the
KVM code, but now I see no evidence of that.

Will fix.

Thanks for the review.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
