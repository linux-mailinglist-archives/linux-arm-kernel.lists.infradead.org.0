Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B772A026B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 15:01:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WBNX/tDZvQ5/vr7ZHvi+U0B1tE8iqs8xpDOtVkefweA=; b=SzylSSlO7f0l4F
	dOSzEvcNFrXXywtm6Y+M+f7h7nGyPhZuYRLjEAVI3acDIxs/q2Xe6g5wlByQ+5uJLZxAPtamHeiSR
	I46za3/ATdSydjk8fk+Gb79y6OIg1c/JXEG1kNt1bGIoYwWQC87UMS/fKr1H8iVk7lZRcGYhhkugc
	SyfhmIJd4H5WOL0yB7OxITZvsqHAauuGAjviO4xeFe3pGfVNJAXmDaDHHUVJbRIydO9dzjqjlWhrK
	/ODO/XTcnrRLhiZ2XlLzu3iTIbd89FYDNHLb3MiWntZutmZPS692c7NPwbbwJ6EuQHJYeuMdqaOD8
	WxKEfEptlFu881qsQ3QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2xZv-0001zb-Hd; Wed, 28 Aug 2019 13:01:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2xZj-0001zF-SM
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 13:01:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 62D65344;
 Wed, 28 Aug 2019 06:01:21 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CB5EE3F246;
 Wed, 28 Aug 2019 06:01:20 -0700 (PDT)
Date: Wed, 28 Aug 2019 14:01:19 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v3 2/5] arm64: Use correct ll/sc atomic constraints
Message-ID: <20190828130118.GW14582@e119886-lin.cambridge.arm.com>
References: <20190812143625.42745-1-andrew.murray@arm.com>
 <20190812143625.42745-3-andrew.murray@arm.com>
 <20190822153223.GB33080@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822153223.GB33080@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_060124_090994_D2396193 
X-CRM114-Status: GOOD (  25.84  )
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

On Thu, Aug 22, 2019 at 04:32:23PM +0100, Mark Rutland wrote:
> Hi Andrew,
> 
> On Mon, Aug 12, 2019 at 03:36:22PM +0100, Andrew Murray wrote:
> > For many of the ll/sc atomic operations we use the 'I' machine constraint
> > regardless to the instruction used - this may not be optimal.
> >
> > Let's add an additional parameter to the ATOMIC_xx macros that allows the
> > caller to specify an appropriate machine constraint.
> > 
> > Let's also improve __CMPXCHG_CASE by replacing the 'K' constraint with a
> > caller provided constraint. Please note that whilst we would like to use
> > the 'K' constraint on 32 bit operations, we choose not to provide any
> > constraint to avoid a GCC bug which results in a build error.
> > 
> > Earlier versions of GCC (no later than 8.1.0) appear to incorrectly handle
> > the 'K' constraint for the value 4294967295.
> 
> From reading the above, it's difficult to discern what's a fix and
> what's an improvement, and I think we need to be more explicit about
> that. It would also be helpful to have the necessary context up-front.
> 
> How about:
> 
> | The A64 ISA accepts distinct (but overlapping) ranges of immediates for:
> | 
> | * add arithmetic instructions ('I' machine constraint)
> | * sub arithmetic instructions ('J' machine constraint)
> | * 32-bit logical instructions ('K' machine constraint)
> | * 64-bit logical instructions ('L' machine constraint)
> | 
> | ... but we currently use the 'I' constraint for many atomic operations
> | using sub or logical instructions, which is not always valid.
> | 
> | When CONFIG_ARM64_LSE_ATOMICS is not set, this allows invalid immediates
> | to be passed to instructions, potentially resulting in a build failure.
> | When CONFIG_ARM64_LSE_ATOMICS is selected the out-of-line ll/sc atomics
> | always use a register as they have no visibility of the value passed by
> | the caller.
> |
> | This patch adds a constraint parameter to the ATOMIC_xx and
> | __CMPXCHG_CASE macros so that we can pass appropriate constraints for
> | each case, with uses updated accordingly.
> | 
> | Unfortunately prior to GCC 8.1.0 the 'K' constraint erroneously accepted
> | 0xffffffff, so we must instead force the use of a register.

Looks great - I'll adopt this, thanks for writing it.

>  
> Given we haven't had any bug reports, I'm not sure whether this needs a
> Fixes tag or Cc stable. This has been a latent issue for a long time,
> but upstream code doesn't seem to have tickled it.

Yes I guess this is more a correctness issue rather than a reproducible bug
in upstream code. I won't add a fixes tag or CC to stable.

> 
> [...]
> 
> > -ATOMIC_OPS(and, and)
> > -ATOMIC_OPS(andnot, bic)
> > -ATOMIC_OPS(or, orr)
> > -ATOMIC_OPS(xor, eor)
> > +ATOMIC_OPS(and, and, K)
> > +ATOMIC_OPS(andnot, bic, )
> > +ATOMIC_OPS(or, orr, K)
> > +ATOMIC_OPS(xor, eor, K)
> 
> Surely it's not safe to use the K constraint here, either? AFAICT code
> like:
> 
>   atomic_xor(~0, &atom);
> 
> ... would suffer from the same problem as described for cmpxchg.

Thanks for spotting this.

Yes, I think the resolution here (and for any 32bit bitmask immediate) is to
drop the constraint.

Do you agree that we should drop the 'K' constraint for both orr and eor
above?

> 
> [...]
> 
> > -ATOMIC64_OPS(and, and)
> > -ATOMIC64_OPS(andnot, bic)
> > -ATOMIC64_OPS(or, orr)
> > -ATOMIC64_OPS(xor, eor)
> > +ATOMIC64_OPS(and, and, K)
> > +ATOMIC64_OPS(andnot, bic, )
> > +ATOMIC64_OPS(or, orr, K)
> > +ATOMIC64_OPS(xor, eor, K)
> 
> Shouldn't these be 'L'?
> 
> IIUC K is a subset of L, so if that's deliberate we should call that out
> explicitly...

Oooh yes that's wrong. I guess the atomic64_[and,or,xor] are rarely called
in the kernel which perhaps is why the compiler hasn't shouted at me.

Do you agree that the and, orr and eor should all be 'L' instead of 'K'?

> 
> > +__CMPXCHG_CASE(w, b,     ,  8,        ,  ,  ,         , )
> > +__CMPXCHG_CASE(w, h,     , 16,        ,  ,  ,         , )
> > +__CMPXCHG_CASE(w,  ,     , 32,        ,  ,  ,         , )
> > +__CMPXCHG_CASE( ,  ,     , 64,        ,  ,  ,         , L)
> > +__CMPXCHG_CASE(w, b, acq_,  8,        , a,  , "memory", )
> > +__CMPXCHG_CASE(w, h, acq_, 16,        , a,  , "memory", )
> > +__CMPXCHG_CASE(w,  , acq_, 32,        , a,  , "memory", )
> > +__CMPXCHG_CASE( ,  , acq_, 64,        , a,  , "memory", L)
> > +__CMPXCHG_CASE(w, b, rel_,  8,        ,  , l, "memory", )
> > +__CMPXCHG_CASE(w, h, rel_, 16,        ,  , l, "memory", )
> > +__CMPXCHG_CASE(w,  , rel_, 32,        ,  , l, "memory", )
> > +__CMPXCHG_CASE( ,  , rel_, 64,        ,  , l, "memory", L)
> > +__CMPXCHG_CASE(w, b,  mb_,  8, dmb ish,  , l, "memory", )
> > +__CMPXCHG_CASE(w, h,  mb_, 16, dmb ish,  , l, "memory", )
> > +__CMPXCHG_CASE(w,  ,  mb_, 32, dmb ish,  , l, "memory", )
> > +__CMPXCHG_CASE( ,  ,  mb_, 64, dmb ish,  , l, "memory", L)
> 
> ... but these uses imply that's not the case.

Yup, so I can leave these as they are.

Phew - thanks for the review.

Andrew Murray

> 
> Otherwise this looks good to me.
> 
> Thanks,
> Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
