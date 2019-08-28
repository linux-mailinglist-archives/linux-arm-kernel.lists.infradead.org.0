Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63256A0689
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 17:44:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ieUUTuX6j/EFNPK3Y2rF0b+mgC8RvyRxjR1hyxeRU08=; b=P71LhsuDXqsAPF
	dDG922KwoA+37v7x34o/z/aH68Si/Q5Rtuxb8P5cg/0mhsUwW9nCpYD5hab1oPRCiGpT6SAZFgMWI
	75DIwwJoDyl3/VBK216bYAOMQQqTBkSH13T8OdtOtRVc547PEMHVHV2Pkr5CtHvgXBOmcbK6lQ6WW
	c+PchQaKwBp8P4zOnzNWWGFxsybOz58J4dwPeSye7iT2p6vtCRleVqsGmv4HIjBsw6LLKN4Qyt2vo
	LXBuMG5nf/TMSaaRK4zkDlpyV+0nl9yxpQSNa8G1aOCrWwuSFLKC7DWTJtaUXlBWJk3hVFzwsQEq5
	Wqid84KROK85JCafQxhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i307j-0002WM-TU; Wed, 28 Aug 2019 15:44:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i307V-0002Vk-IR
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 15:44:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E1A7728;
 Wed, 28 Aug 2019 08:44:24 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 559043F59C;
 Wed, 28 Aug 2019 08:44:24 -0700 (PDT)
Date: Wed, 28 Aug 2019 16:44:22 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v3 2/5] arm64: Use correct ll/sc atomic constraints
Message-ID: <20190828154422.GA14582@e119886-lin.cambridge.arm.com>
References: <20190812143625.42745-1-andrew.murray@arm.com>
 <20190812143625.42745-3-andrew.murray@arm.com>
 <20190822153223.GB33080@lakrids.cambridge.arm.com>
 <20190828130118.GW14582@e119886-lin.cambridge.arm.com>
 <20190828152540.GA42408@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828152540.GA42408@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_084425_694381_B8789284 
X-CRM114-Status: GOOD (  31.90  )
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Boqun Feng <boqun.feng@gmail.com>,
 Will Deacon <will.deacon@arm.com>, Ard.Biesheuvel@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 04:25:40PM +0100, Mark Rutland wrote:
> On Wed, Aug 28, 2019 at 02:01:19PM +0100, Andrew Murray wrote:
> > On Thu, Aug 22, 2019 at 04:32:23PM +0100, Mark Rutland wrote:
> > > Hi Andrew,
> > > 
> > > On Mon, Aug 12, 2019 at 03:36:22PM +0100, Andrew Murray wrote:
> > > > For many of the ll/sc atomic operations we use the 'I' machine constraint
> > > > regardless to the instruction used - this may not be optimal.
> > > >
> > > > Let's add an additional parameter to the ATOMIC_xx macros that allows the
> > > > caller to specify an appropriate machine constraint.
> > > > 
> > > > Let's also improve __CMPXCHG_CASE by replacing the 'K' constraint with a
> > > > caller provided constraint. Please note that whilst we would like to use
> > > > the 'K' constraint on 32 bit operations, we choose not to provide any
> > > > constraint to avoid a GCC bug which results in a build error.
> > > > 
> > > > Earlier versions of GCC (no later than 8.1.0) appear to incorrectly handle
> > > > the 'K' constraint for the value 4294967295.
> > > 
> > > From reading the above, it's difficult to discern what's a fix and
> > > what's an improvement, and I think we need to be more explicit about
> > > that. It would also be helpful to have the necessary context up-front.
> > > 
> > > How about:
> > > 
> > > | The A64 ISA accepts distinct (but overlapping) ranges of immediates for:
> > > | 
> > > | * add arithmetic instructions ('I' machine constraint)
> > > | * sub arithmetic instructions ('J' machine constraint)
> > > | * 32-bit logical instructions ('K' machine constraint)
> > > | * 64-bit logical instructions ('L' machine constraint)
> > > | 
> > > | ... but we currently use the 'I' constraint for many atomic operations
> > > | using sub or logical instructions, which is not always valid.
> > > | 
> > > | When CONFIG_ARM64_LSE_ATOMICS is not set, this allows invalid immediates
> > > | to be passed to instructions, potentially resulting in a build failure.
> > > | When CONFIG_ARM64_LSE_ATOMICS is selected the out-of-line ll/sc atomics
> > > | always use a register as they have no visibility of the value passed by
> > > | the caller.
> > > |
> > > | This patch adds a constraint parameter to the ATOMIC_xx and
> > > | __CMPXCHG_CASE macros so that we can pass appropriate constraints for
> > > | each case, with uses updated accordingly.
> > > | 
> > > | Unfortunately prior to GCC 8.1.0 the 'K' constraint erroneously accepted
> > > | 0xffffffff, so we must instead force the use of a register.
> > 
> > Looks great - I'll adopt this, thanks for writing it.
> 
> Cool. :)
> 
> > > Given we haven't had any bug reports, I'm not sure whether this needs a
> > > Fixes tag or Cc stable. This has been a latent issue for a long time,
> > > but upstream code doesn't seem to have tickled it.
> > 
> > Yes I guess this is more a correctness issue rather than a reproducible bug
> > in upstream code. I won't add a fixes tag or CC to stable.
> 
> Sounds good to me.
> 
> > > [...]
> > > 
> > > > -ATOMIC_OPS(and, and)
> > > > -ATOMIC_OPS(andnot, bic)
> > > > -ATOMIC_OPS(or, orr)
> > > > -ATOMIC_OPS(xor, eor)
> > > > +ATOMIC_OPS(and, and, K)
> > > > +ATOMIC_OPS(andnot, bic, )
> > > > +ATOMIC_OPS(or, orr, K)
> > > > +ATOMIC_OPS(xor, eor, K)
> > > 
> > > Surely it's not safe to use the K constraint here, either? AFAICT code
> > > like:
> > > 
> > >   atomic_xor(~0, &atom);
> > > 
> > > ... would suffer from the same problem as described for cmpxchg.
> > 
> > Thanks for spotting this.
> > 
> > Yes, I think the resolution here (and for any 32bit bitmask immediate) is to
> > drop the constraint.
> > 
> > Do you agree that we should drop the 'K' constraint for both orr and eor
> > above?
> 
> Yes, I think we should drop the 'K' for all the 32-bit logical ops.

Ah yes, I keep getting 'and' and 'add' mixed up. OK I'll drop 'K' from all
the above.

> 
> > > [...]
> > > 
> > > > -ATOMIC64_OPS(and, and)
> > > > -ATOMIC64_OPS(andnot, bic)
> > > > -ATOMIC64_OPS(or, orr)
> > > > -ATOMIC64_OPS(xor, eor)
> > > > +ATOMIC64_OPS(and, and, K)
> > > > +ATOMIC64_OPS(andnot, bic, )
> > > > +ATOMIC64_OPS(or, orr, K)
> > > > +ATOMIC64_OPS(xor, eor, K)
> > > 
> > > Shouldn't these be 'L'?
> > > 
> > > IIUC K is a subset of L, so if that's deliberate we should call that out
> > > explicitly...
> > 
> > Oooh yes that's wrong. I guess the atomic64_[and,or,xor] are rarely called
> > in the kernel which perhaps is why the compiler hasn't shouted at me.
> > 
> > Do you agree that the and, orr and eor should all be 'L' instead of 'K'?
> 
> Yes, I think all the 64-bit logical ops should all use 'L'.

With the exception of bic? I don't think there is an appropriate constraint
for this (it requires an 8 bit immediate).

> 
> I did a quick local test, and the 'L' constraint seems to correctly
> reject ~0UL (i.e. it doesn't seem to have a similar bug to the 'K'
> constraint).

Yes, if I recall correctly the issue was only with 'K'.

> 
> > > > +__CMPXCHG_CASE(w, b,     ,  8,        ,  ,  ,         , )
> > > > +__CMPXCHG_CASE(w, h,     , 16,        ,  ,  ,         , )
> > > > +__CMPXCHG_CASE(w,  ,     , 32,        ,  ,  ,         , )
> > > > +__CMPXCHG_CASE( ,  ,     , 64,        ,  ,  ,         , L)
> > > > +__CMPXCHG_CASE(w, b, acq_,  8,        , a,  , "memory", )
> > > > +__CMPXCHG_CASE(w, h, acq_, 16,        , a,  , "memory", )
> > > > +__CMPXCHG_CASE(w,  , acq_, 32,        , a,  , "memory", )
> > > > +__CMPXCHG_CASE( ,  , acq_, 64,        , a,  , "memory", L)
> > > > +__CMPXCHG_CASE(w, b, rel_,  8,        ,  , l, "memory", )
> > > > +__CMPXCHG_CASE(w, h, rel_, 16,        ,  , l, "memory", )
> > > > +__CMPXCHG_CASE(w,  , rel_, 32,        ,  , l, "memory", )
> > > > +__CMPXCHG_CASE( ,  , rel_, 64,        ,  , l, "memory", L)
> > > > +__CMPXCHG_CASE(w, b,  mb_,  8, dmb ish,  , l, "memory", )
> > > > +__CMPXCHG_CASE(w, h,  mb_, 16, dmb ish,  , l, "memory", )
> > > > +__CMPXCHG_CASE(w,  ,  mb_, 32, dmb ish,  , l, "memory", )
> > > > +__CMPXCHG_CASE( ,  ,  mb_, 64, dmb ish,  , l, "memory", L)
> > > 
> > > ... but these uses imply that's not the case.
> > 
> > Yup, so I can leave these as they are.
> 
> Yup; sounds good.

Thanks,

Andrew Murray

> 
> Thanks,
> Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
