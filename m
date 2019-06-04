Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 043303431F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 11:26:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jgUg5N1QuP9WVCtgUgcfUjM8NhLImrry/FDmLEwyTjM=; b=QrN4OS8R5SunZ0
	PR6jv2fYFGOQQFW1LSwPzaMCiGZiOVSZ7h16PkBO7zWoCEG8gKii8mADGb0b7+4oGnxiUbZicZjx7
	iVfWsHFqig/yv9e6c5oww2x51XA1HrcjprGl6EEGKw61b95+VCMTPQH56wDuFOQkSjOhA3HPj2quz
	uRw3nF0pPygMlqfMIhvFtmCwg4YVFqdwkyq8flnOsxMo8a/dsiohWenIalPHSgbpi7VgWpbnjpYRf
	dev4rbO7HUF+f/PromQw6V/pVV9L/8nz4HJvgkC2jAHtbLYcPRRLveW10P0Hw7RyLSyzs/fANAdQt
	Chaptl7IvuSQsCOVI3bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY5iV-0004WU-KL; Tue, 04 Jun 2019 09:26:51 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY5iO-0004Vp-Gh
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 09:26:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4D819A78;
 Tue,  4 Jun 2019 02:26:43 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C62673F246;
 Tue,  4 Jun 2019 02:26:41 -0700 (PDT)
Date: Tue, 4 Jun 2019 10:26:39 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH] KVM: arm64: Drop 'const' from argument of vq_present()
Message-ID: <20190604092639.GS28398@e103592.cambridge.arm.com>
References: <699121e5c938c6f4b7b14a7e2648fa15af590a4a.1559623368.git.viresh.kumar@linaro.org>
 <20190604084349.prnnvjvjaeuhsmgs@mbp>
 <20190604085545.hsmxfqkpt2cbrhtw@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604085545.hsmxfqkpt2cbrhtw@vireshk-i7>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_022644_559881_E4E65DC3 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 02:25:45PM +0530, Viresh Kumar wrote:
> On 04-06-19, 09:43, Catalin Marinas wrote:
> > On Tue, Jun 04, 2019 at 10:13:19AM +0530, Viresh Kumar wrote:
> > > We currently get following compilation warning:
> > > 
> > > arch/arm64/kvm/guest.c: In function 'set_sve_vls':
> > > arch/arm64/kvm/guest.c:262:18: warning: passing argument 1 of 'vq_present' from incompatible pointer type
> > > arch/arm64/kvm/guest.c:212:13: note: expected 'const u64 (* const)[8]' but argument is of type 'u64 (*)[8]'
> > 
> > Since the vq_present() function does not modify the vqs array, I don't
> > understand why this warning. Compiler bug?
> 
> Probably yes. Also marking array argument to functions as const is a
> right thing to do, to declare that the function wouldn't change the
> array values.
> 
> I tried a recent toolchain and this doesn't happen anymore.
> 
> Sorry for the noise.

Sparse is already warning about this, but I had dismissed it as a false
positive.

I think this is an instance of disallowing implicit conversions of the
form

	T ** -> T const **

because this allows a const pointer to be silently de-consted, e.g.:

static const T bar;

void foo(T const **p)
{
	*p = &bar;
}

T *baz(void)
{
	T *q; 
	foo(&q);
	return q;
}


I _suspect_ that what's going on here is that the compiler is
eliminating a level of indirection during inlining (i.e. converting
pass-by-reference to direct access, which is precisely what I wanted
to happen).  This removes the potentially invalid behaviour as a
side-effect.

This relies on the compiler optimising / analysing the code
aggressively enough though.

So, I don't have a problem with dropping the extra extra const, e.g.:

static bool vq_present(
	u64 (*const vqs)[KVM_ARM64_SVE_VLS_WORDS],
	unsigned int vq)

Since this function is static and only used very locally, I don't see a
big risk: the only reason for the extra const was to check that
vq_present() doesn't modify vqs when it shouldn't.  But it's a trivial
function, and the intent is pretty clear without the extra type
modifier.


I'm in two minds about whether this is worth fixing, but if you want to
post a patch to remove the extra const (or convert vq_present() to a
macro), I'll take a look at it.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
