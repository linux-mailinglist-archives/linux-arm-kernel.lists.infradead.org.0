Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76232D4473
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 17:34:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ihmbMSoVn9Bp3uPM1WnRM0Ecb7ZGGLlbaBYX40xesEU=; b=lXH9oZnFZwx693
	8BAaw7nRPZbFxbwbig0fN0Dso/AIfLJGUW40+bFXnmLPkE9rpvDgTY5ryjZz5m5uZvBQvdasiGLfX
	1FsMLcH1VeD7529JEDI35L6Ks95OBYHwdM7500zX5KFLQtBpFAYFZsoHxCmA6mVdPKtgMFZHjBOmE
	1/6sbVs9CHoDNFrVBWN5ttw40EQoQ73RfsILikc/ZDG5clLZI3mTXcsBupD9bYAUh6t6kZ6L88XJB
	RFfgHp/JwgQtUIM8Eepf36qYPUOKmbduxd9sOZ4H0oHmUT/4aAxloCucWy10gHNqXHUhWKNvgh1mM
	8bmDFP6sMXplL2CFZfrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIwvY-0003m6-FY; Fri, 11 Oct 2019 15:34:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIwvQ-0003la-1B
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 15:33:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7B8EF142F;
 Fri, 11 Oct 2019 08:33:51 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B10853F68E;
 Fri, 11 Oct 2019 08:33:48 -0700 (PDT)
Date: Fri, 11 Oct 2019 16:33:46 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Richard Henderson <richard.henderson@linaro.org>
Subject: Re: [PATCH v2 08/12] arm64: BTI: Decode BYTPE bits when printing
 PSTATE
Message-ID: <20191011153346.GM27757@arm.com>
References: <1570733080-21015-1-git-send-email-Dave.Martin@arm.com>
 <1570733080-21015-9-git-send-email-Dave.Martin@arm.com>
 <18c9318c-d122-b534-b526-318935d9e2cc@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <18c9318c-d122-b534-b526-318935d9e2cc@linaro.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_083352_119472_B38CAED9 
X-CRM114-Status: GOOD (  15.57  )
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
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H.J. Lu" <hjl.tools@gmail.com>, Andrew Jones <drjones@redhat.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 11:31:02AM -0400, Richard Henderson wrote:
> On 10/10/19 2:44 PM, Dave Martin wrote:
> >  #define PSR_IL_BIT		(1 << 20)
> > -#define PSR_BTYPE_CALL		(2 << PSR_BTYPE_SHIFT)
> > +
> > +/* Convenience names for the values of PSTATE.BTYPE */
> > +#define PSR_BTYPE_NONE		(0b00 << PSR_BTYPE_SHIFT)
> > +#define PSR_BTYPE_JC		(0b01 << PSR_BTYPE_SHIFT)
> > +#define PSR_BTYPE_C		(0b10 << PSR_BTYPE_SHIFT)
> > +#define PSR_BTYPE_J		(0b11 << PSR_BTYPE_SHIFT)
> 
> It'd be nice to sort this patch earlier, so that ...
> 
> > diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
> > index 4a3bd32..452ac5b 100644
> > --- a/arch/arm64/kernel/signal.c
> > +++ b/arch/arm64/kernel/signal.c
> > @@ -732,7 +732,7 @@ static void setup_return(struct pt_regs *regs, struct k_sigaction *ka,
> >  
> >  	if (system_supports_bti()) {
> >  		regs->pstate &= ~PSR_BTYPE_MASK;
> > -		regs->pstate |= PSR_BTYPE_CALL;
> > +		regs->pstate |= PSR_BTYPE_C;
> >  	}
> >  
> >  	if (ka->sa.sa_flags & SA_RESTORER)
> 
> ... setup_return does not need to be adjusted a second time.
> 
> I don't see any other conflicts vs patch 5.

Ack, looks like I mis-split this during rebase.

Will fix.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
