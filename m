Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9D8A360E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 13:54:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eauetF6QOdSipQPoFiAxSCl0nw5rQJYlvTx9appaqP0=; b=lQJUWphUnS3VfB
	vYz7kNetY3gkueEAeMv1UOjp2U8MV5c5nFifkDlQHG8z66u2bq0gOVIsh6FEHfRAMPSU0WGutZcQI
	kSbySxU4cJQ8YM431Z/x7DJyQnloqZ56djXxGmzQauxKdNC8M4WVMAdqytfIouclL3HrLgZ9F1Hdt
	Ystz7+AEwpdnAy65WkqfcfrgThqSZm8o2NKnHmWkdDl+UptniSd1gt83nbQz5KtUU6KP8cxMsCHC7
	2PJ9oGR5TgtOVeRfFE2CjFZt6dncOpcw+jLIg33PIoG+u9mRdwS7AYfgL9gMBdwjTuKveO3o0Haom
	K4iusRw+WX+HUugso93g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3fTd-0007RD-8s; Fri, 30 Aug 2019 11:54:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3fTW-0007Qu-Ij
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 11:53:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 81D50337;
 Fri, 30 Aug 2019 04:53:52 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E96213F246;
 Fri, 30 Aug 2019 04:53:51 -0700 (PDT)
Date: Fri, 30 Aug 2019 12:53:50 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v5 10/10] arm64: atomics: Use K constraint when toolchain
 appears to support it
Message-ID: <20190830115349.GT14582@e119886-lin.cambridge.arm.com>
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-11-will@kernel.org>
 <20190829165457.grindfmgpdpsbt4i@willie-the-truck>
 <20190830000803.GR14582@e119886-lin.cambridge.arm.com>
 <20190830075220.6xyyctvgd2ssrsjf@willie-the-truck>
 <20190830091155.GS14582@e119886-lin.cambridge.arm.com>
 <20190830104053.GA47586@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830104053.GA47586@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_045354_710363_88202937 
X-CRM114-Status: GOOD (  22.91  )
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
Cc: Will Deacon <will@kernel.org>, peterz@infradead.org,
 catalin.marinas@arm.com, ndesaulniers@google.com, Ard.Biesheuvel@arm.com,
 natechancellor@gmail.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 11:40:53AM +0100, Mark Rutland wrote:
> On Fri, Aug 30, 2019 at 10:11:55AM +0100, Andrew Murray wrote:
> > On Fri, Aug 30, 2019 at 08:52:20AM +0100, Will Deacon wrote:
> > > On Fri, Aug 30, 2019 at 01:08:03AM +0100, Andrew Murray wrote:
> > > > On Thu, Aug 29, 2019 at 05:54:58PM +0100, Will Deacon wrote:
> > > > > On Thu, Aug 29, 2019 at 04:48:34PM +0100, Will Deacon wrote:
> > > > > > diff --git a/arch/arm64/include/asm/atomic_ll_sc.h b/arch/arm64/include/asm/atomic_ll_sc.h
> > > > > > index 95091f72228b..7fa042f5444e 100644
> > > > > > --- a/arch/arm64/include/asm/atomic_ll_sc.h
> > > > > > +++ b/arch/arm64/include/asm/atomic_ll_sc.h
> > > > > > @@ -23,6 +23,10 @@ asm_ops "\n"								\
> > > > > >  #define __LL_SC_FALLBACK(asm_ops) asm_ops
> > > > > >  #endif
> > 
> > I downloaded your original patches and tried them, and also got the
> > build error. After playing with this I think something isn't quite right...
> 
> Can you post the error you see?

Doh, it looks like I didn't apply the __stringify patches - this is why it
didn't work for me.

> 
> > This is your current test:
> > 
> >  echo 'int main(void) {asm volatile("and w0, w0, %w0" :: "K" (4294967295)); return 0; }' |  aarch64-linux-gnu-gcc -S -x c  - ; echo $?
> > 
> > But on my machine this returns 0, i.e. no error. 
> 
> IIUC that's expected, as this is testing if the compiler erroneously
> accepts the invalid immediate.
> 
> Note that try-run takes (option,option-ok,otherwise), so:
> 
> | cc_has_k_constraint := $(call try-run,echo                             \
> |        'int main(void) {                                               \
> |                asm volatile("and w0, w0, %w0" :: "K" (4294967295));    \
> |                return 0;                                               \
> |        }' | $(CC) -S -x c -o "$$TMP" -,,-DCONFIG_CC_HAS_K_CONSTRAINT=1)
> 
> ... means we do nothing when the compile is successful (i.e. when the compiler
> is broken), and we set -DCONFIG_CC_HAS_K_CONSTRAINT=1 when the compiler
> correctly rejects the invalid immediate.

Yes I see this now. I hadn't realised that the -S allows us to see what the
compiler does prior to assembling. Indeed this test verifies that the compiler
accepts an invalid value - and if so we don't permit use of the 'K' flag.

(I guess I was wrongly expecting the command to fail when we pass an invalid
value and thus expected the option-ok to be where we set the define.)

Thanks for the explanation!

Andrew Murray

> 
> If we drop the -S, we'll get an error in all cases, as either:
> 
> * GCC silently accepts the immediate, GAS aborts
> * GCC aborts as it can't satisfy the constraint
> 
> > > > > > +#ifndef CONFIG_CC_HAS_K_CONSTRAINT
> > > > > > +#define K
> > > > > > +#endif
> 
> Here we define K to nothing if the compiler accepts the broken immediate.
> 
> If the compiler rejects invalid immediates we don't define K to anything, so
> it's treated as a literal later on, and gets added as a constaint.
> 
> Thanks,
> Mark.
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
