Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0891AA079C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 18:42:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jG0xUvoCZ5J58UkwAXkPBYxTavNWFFcHPlNBvwVPW7w=; b=goFHsX32YSMBaH
	6c1HcHzNUXXWv7KJ1chn8Nrv171DwzcbNVNU7vswrb7gJ8Fs4EQKY9PWkn3S7UgxzKrnlZxwf//4N
	hYt/TYpA9Tyx9aq/v9dzMgyWYdCrROHh/bTSR0MYfykqiZItoVzGVOVMJy3SSBkMvyXG703Cv9XSq
	mhmCBVzfZj3k5PyixxoW6X5EsZuUVz0JQwTvr/fJm7I0DEbajDygamQ03HgSr0Wu7/wgNYXw7nQZP
	BQojLT06nqfjhqAXaUs3YqyTceeujJpgOTEpgHLo2Yq2/GDkaho7+GAWt8Wjzz3xUW/6o+xvsMioi
	uXUUQmrHyAs6mkK/EB9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i311c-0007T3-Md; Wed, 28 Aug 2019 16:42:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i311P-0007Sh-L7
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 16:42:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B057D28;
 Wed, 28 Aug 2019 09:42:09 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 24F223F59C;
 Wed, 28 Aug 2019 09:42:08 -0700 (PDT)
Date: Wed, 28 Aug 2019 17:42:07 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v3 2/5] arm64: Use correct ll/sc atomic constraints
Message-ID: <20190828164207.GB14582@e119886-lin.cambridge.arm.com>
References: <20190812143625.42745-1-andrew.murray@arm.com>
 <20190812143625.42745-3-andrew.murray@arm.com>
 <20190822153223.GB33080@lakrids.cambridge.arm.com>
 <20190828130118.GW14582@e119886-lin.cambridge.arm.com>
 <20190828152540.GA42408@lakrids.cambridge.arm.com>
 <20190828154422.GA14582@e119886-lin.cambridge.arm.com>
 <20190828162409.GC42408@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828162409.GC42408@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_094211_738199_07364DBB 
X-CRM114-Status: GOOD (  17.30  )
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

On Wed, Aug 28, 2019 at 05:24:09PM +0100, Mark Rutland wrote:
> On Wed, Aug 28, 2019 at 04:44:22PM +0100, Andrew Murray wrote:
> > On Wed, Aug 28, 2019 at 04:25:40PM +0100, Mark Rutland wrote:
> > > On Wed, Aug 28, 2019 at 02:01:19PM +0100, Andrew Murray wrote:
> > > > On Thu, Aug 22, 2019 at 04:32:23PM +0100, Mark Rutland wrote:
> > > > > On Mon, Aug 12, 2019 at 03:36:22PM +0100, Andrew Murray wrote:
> > > > > [...]
> > > > > 
> > > > > > -ATOMIC64_OPS(and, and)
> > > > > > -ATOMIC64_OPS(andnot, bic)
> > > > > > -ATOMIC64_OPS(or, orr)
> > > > > > -ATOMIC64_OPS(xor, eor)
> > > > > > +ATOMIC64_OPS(and, and, K)
> > > > > > +ATOMIC64_OPS(andnot, bic, )
> > > > > > +ATOMIC64_OPS(or, orr, K)
> > > > > > +ATOMIC64_OPS(xor, eor, K)
> > > > > 
> > > > > Shouldn't these be 'L'?
> > > > > 
> > > > > IIUC K is a subset of L, so if that's deliberate we should call that out
> > > > > explicitly...
> > > > 
> > > > Oooh yes that's wrong. I guess the atomic64_[and,or,xor] are rarely called
> > > > in the kernel which perhaps is why the compiler hasn't shouted at me.
> > > > 
> > > > Do you agree that the and, orr and eor should all be 'L' instead of 'K'?
> > > 
> > > Yes, I think all the 64-bit logical ops should all use 'L'.
> > 
> > With the exception of bic? I don't think there is an appropriate constraint
> > for this (it requires an 8 bit immediate).
> 
> The ARM ARM doesn't mention BIC (Immediate), and AFAICT that's an
> (undocumented?) alias for AND (Immediate) with a negated immediate.
> 
> Where did you find a description with an 8-bit immediate?
> 

I think it's a SIMD instruction, see C7.2.13 of ARM DDI 0487D or 
http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.dui0802a/EOR_log_imm.html

> Regardless, yes, drop the 'L' there -- I can't find any suitable
> constraint either.

OK I'll drop it, thanks for the feedback.

Thanks,

Andrew Murray

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
