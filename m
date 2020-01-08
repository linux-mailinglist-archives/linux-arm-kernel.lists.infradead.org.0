Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C67E1340A2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 12:37:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UisTCxGaimKRE4Yw6DgR6sAZWqxgjPBRKNiTEGYfOsg=; b=LjjdtkZS9fsoZc
	lg1Dxy7eXuUGZc1hOtUS46axkdyhQnsofnqBpg3xRS9w5PfqnlNhDIQM0J5IO+efGMHXt2fwyHi8g
	VXwXHpPbeLwyCcwrbwqRqWvJNvqex3f7AUQzq8Ke8t2iipxQg10Rpk9x0QWDz3F3E56XVPiayZ6Mf
	7A/tXBMfckoBHxbBaXagA9jrwahBvMb9/dBtZkWKrDFsg0h5brAfz+7w6znIbE7FQeQoiwYGYDxWY
	htvqCNPQVRUDxX2ozaV0ZANEDIKXXdfTq6pC6QA7KWWOXKc9102nM3nIgBQTKuRhdfaLqySDLK6Z8
	PkB/VUiEJB/PO1cJi9Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip9eT-0003FI-Qn; Wed, 08 Jan 2020 11:37:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip9eM-0003En-Oj
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 11:37:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4765D31B;
 Wed,  8 Jan 2020 03:37:22 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D005F3F703;
 Wed,  8 Jan 2020 03:37:20 -0800 (PST)
Date: Wed, 8 Jan 2020 11:37:18 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Alexandru Elisei <alexandru.elisei@arm.com>
Subject: Re: [PATCH 2/3] KVM: arm/arm64: correct CPSR on exception entry
Message-ID: <20200108113718.GC49203@lakrids.cambridge.arm.com>
References: <20191220150549.31948-1-mark.rutland@arm.com>
 <20191220150549.31948-3-mark.rutland@arm.com>
 <775a6053-ad90-bf2f-43f0-11f71d34f4a1@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <775a6053-ad90-bf2f-43f0-11f71d34f4a1@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_033722_890180_539BA3BC 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Peter Maydell <peter.maydell@linaro.org>, Drew Jones <drjones@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, maz@kernel.org,
 stable@vger.kernel.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 27, 2019 at 03:42:34PM +0000, Alexandru Elisei wrote:
> Hi,
> 
> On 12/20/19 3:05 PM, Mark Rutland wrote:
> > When KVM injects an exception into a guest, it generates the CPSR value
> > from scratch, configuring CPSR.{M,A,I,T,E}, and setting all other
> > bits to zero.
> >
> > This isn't correct, as the architecture specifies that some CPSR bits
> > are (conditionally) cleared or set upon an exception, and others are
> > unchanged from the original context.
> >
> > This patch adds logic to match the architectural behaviour. To make this
> > simple to follow/audit/extend, documentation references are provided,
> > and bits are configured in order of their layout in SPSR_EL2. This
> 
> This patch applies equally well to 32bit KVM, where we have a SPSR register.

Indeed. The above wasn't intended to imply otherwise, but I'll add the
following to make that clear:

| Note that this code is used by both arm and arm64, and is intended to
| fuction with the SPSR_EL2 and SPSR_hyp layouts.

[...]

> >  /* arm64 compatibility macros */
> > +#define PSR_AA32_MODE_FIQ	FIQ_MODE
> > +#define PSR_AA32_MODE_SVC	SVC_MODE
> >  #define PSR_AA32_MODE_ABT	ABT_MODE
> >  #define PSR_AA32_MODE_UND	UND_MODE
> >  #define PSR_AA32_T_BIT		PSR_T_BIT
> > +#define PSR_AA32_F_BIT		PSR_F_BIT
> >  #define PSR_AA32_I_BIT		PSR_I_BIT
> >  #define PSR_AA32_A_BIT		PSR_A_BIT
> >  #define PSR_AA32_E_BIT		PSR_E_BIT
> >  #define PSR_AA32_IT_MASK	PSR_IT_MASK
> > +#define PSR_AA32_GE_MASK	0x000f0000
> > +#define PSR_AA32_PAN_BIT	0x00400000
> > +#define PSR_AA32_SSBS_BIT	0x00800000
> > +#define PSR_AA32_DIT_BIT	0x01000000
> 
> This is actually PSR_J_BIT on arm. Maybe it's worth defining it like that to
> make the overlap obvious.

Another bug! These are intended to match the SPSR_hyp view, where DIT is
bit 21, and so this should be:

#define PSR_AA32_DIT_BIT	0x0x00200000

... placed immediately before the PAN bit.

We don't need a macro for the J bit as it was obsoleted and made RES0 by
the ARMv7 virtualization extensions.

[...]

> > +	// CPSR.PAN is unchanged unless overridden by SCTLR.SPAN
> > +	// See ARM DDI 0487E.a, page G8-6246
> > +	new |= (old & PSR_AA32_PAN_BIT);
> > +	if (sctlr & BIT(23))
> > +		new |= PSR_AA32_PAN_BIT;
> 
> PSTATE.PAN is unconditionally set when SCTLR.SPAN is clear.

Indeed, and this time the reference is explicit about that. :/

I've updated this to:

|	// CPSR.PAN is unchanged unless SCTLR.SPAN == 0b0
|	// SCTLR.SPAN is RES1 when ARMv8.1-PAN is not implemented
|	// See ARM DDI 0487E.a, page G8-6246
|	new |= (old & PSR_AA32_PAN_BIT);
|	if (!(sctlr & BIT(23)))
|		new |= PSR_AA32_PAN_BIT;

[...]

> I've also checked that the ARM documentation references match the code.

Thanks, your review is much appreciated!

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
