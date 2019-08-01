Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0454B7D701
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:12:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wfxqLAeMYssbYSRNq3q+ZZ44suu7xG8d342kldwtWTw=; b=fLfVSCrLXzxOzz
	Vvl4GVPL0fTgSwpE5dlAtKfJY92cn2g92rTTsqIRY8oFYKSJe5Jl9lMtogQTbUsD+GPgZS7JFzxp+
	4k5APISuZoNEQ6khjauYOicDky5KcHCJEK5k1GZYk6Sk5sF0vcbFBgfRHuYJ+jJ0A8/e12ulTW+sM
	4w6EOLc8KSI/oGkY2Yfw12GkxAYhV/n5cvqp78m3lzGVbrbGs9YuQHMmqEiQkrJ3yFNXc4xAZg7ga
	6OHeTikNUTauhX73g7B9x4ouBBPUtJ5VGcwprk+G5m0a6OZtEryz8ue0jviSxU6C8gqeOwBL03Z1V
	O0hou61VDclv0qz0KmvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6CV-0002IO-3u; Thu, 01 Aug 2019 08:12:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6CP-0002I3-Km
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:12:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A05AC337;
 Thu,  1 Aug 2019 01:12:32 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 212953F694;
 Thu,  1 Aug 2019 01:12:31 -0700 (PDT)
Date: Thu, 1 Aug 2019 09:12:30 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Boqun Feng <boqun.feng@gmail.com>
Subject: Re: [PATCH v2 3/5] arm64: atomics: avoid out-of-line ll/sc atomics
Message-ID: <20190801081230.GL56241@e119886-lin.cambridge.arm.com>
References: <20190731161256.22210-1-andrew.murray@arm.com>
 <20190731161256.22210-4-andrew.murray@arm.com>
 <20190801031004.GD26905@tardis>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801031004.GD26905@tardis>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_011233_772855_5467A079 
X-CRM114-Status: GOOD (  11.24  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Ard.Biesheuvel@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 11:10:04AM +0800, Boqun Feng wrote:
> Hi Andrew,
> 
> On Wed, Jul 31, 2019 at 05:12:54PM +0100, Andrew Murray wrote:
> [...]
> > +
> > +#define __lse_ll_sc_body(op, ...)					\
> > +({									\
> > +	system_uses_lse_atomics() ?					\
> > +		__lse_##op(__VA_ARGS__) :				\
> > +		__ll_sc_##op(__VA_ARGS__);				\
> > +})
> > +
> > +#define ATOMIC_OP(op)							\
> > +static inline void arch_##op(int i, atomic_t *v)			\
> > +{									\
> > +	__lse_ll_sc_body(op, i, v);					\
> > +}
> > +
> > +ATOMIC_OP(atomic_andnot)
> > +ATOMIC_OP(atomic_or)
> > +ATOMIC_OP(atomic_xor)
> > +ATOMIC_OP(atomic_add)
> > +ATOMIC_OP(atomic_and)
> > +ATOMIC_OP(atomic_sub)
> > +
> > +
> > +#define ATOMIC_FETCH_OP(name, op)					\
> > +static inline int arch_##op##name(int i, atomic_t *v)			\
> > +{									\
> > +	return __lse_ll_sc_body(op, i, v);				\
> 
> Color me blind if I'm wrong, but should't this be:
> 
> 	return __lse_ll_sc_body(op##name, i, v);				\
> 
> ? Otherwise all variants will use the fully-ordered implementation.

Yes you're correct, thanks for spotting this (and below)!

Thanks,

Andrew Murray

> 
> > +}
> > +
> > +#define ATOMIC_FETCH_OPS(op)						\
> > +	ATOMIC_FETCH_OP(_relaxed, op)					\
> > +	ATOMIC_FETCH_OP(_acquire, op)					\
> > +	ATOMIC_FETCH_OP(_release, op)					\
> > +	ATOMIC_FETCH_OP(        , op)
> > +
> > +ATOMIC_FETCH_OPS(atomic_fetch_andnot)
> > +ATOMIC_FETCH_OPS(atomic_fetch_or)
> > +ATOMIC_FETCH_OPS(atomic_fetch_xor)
> > +ATOMIC_FETCH_OPS(atomic_fetch_add)
> > +ATOMIC_FETCH_OPS(atomic_fetch_and)
> > +ATOMIC_FETCH_OPS(atomic_fetch_sub)
> > +ATOMIC_FETCH_OPS(atomic_add_return)
> > +ATOMIC_FETCH_OPS(atomic_sub_return)
> > +
> > +
> > +#define ATOMIC64_OP(op)							\
> > +static inline void arch_##op(long i, atomic64_t *v)			\
> > +{									\
> > +	__lse_ll_sc_body(op, i, v);					\
> > +}
> > +
> > +ATOMIC64_OP(atomic64_andnot)
> > +ATOMIC64_OP(atomic64_or)
> > +ATOMIC64_OP(atomic64_xor)
> > +ATOMIC64_OP(atomic64_add)
> > +ATOMIC64_OP(atomic64_and)
> > +ATOMIC64_OP(atomic64_sub)
> > +
> > +
> > +#define ATOMIC64_FETCH_OP(name, op)					\
> > +static inline long arch_##op##name(long i, atomic64_t *v)		\
> > +{									\
> > +	return __lse_ll_sc_body(op, i, v);				\
> 
> Ditto.
> 
> Regards,
> Boqun
> 
> > +}
> > +
> > +#define ATOMIC64_FETCH_OPS(op)						\
> > +	ATOMIC64_FETCH_OP(_relaxed, op)					\
> > +	ATOMIC64_FETCH_OP(_acquire, op)					\
> > +	ATOMIC64_FETCH_OP(_release, op)					\
> > +	ATOMIC64_FETCH_OP(        , op)
> > +
> > +ATOMIC64_FETCH_OPS(atomic64_fetch_andnot)
> > +ATOMIC64_FETCH_OPS(atomic64_fetch_or)
> > +ATOMIC64_FETCH_OPS(atomic64_fetch_xor)
> > +ATOMIC64_FETCH_OPS(atomic64_fetch_add)
> > +ATOMIC64_FETCH_OPS(atomic64_fetch_and)
> > +ATOMIC64_FETCH_OPS(atomic64_fetch_sub)
> > +ATOMIC64_FETCH_OPS(atomic64_add_return)
> > +ATOMIC64_FETCH_OPS(atomic64_sub_return)
> > +
> > +
> [...]



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
