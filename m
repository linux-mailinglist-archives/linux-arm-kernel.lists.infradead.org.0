Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6321A1B21AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:31:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IcXLkQalUDav6k/V0y4c7z4902rvNjpGA2pYVObxnis=; b=qiwnFLzrQkfwHD
	xjXb6oqLMmID2fnBm6Y4Ygllh4lY+xrix+hKXPdqRa0NV9KRLwRBaVtDnxCeWPx+yMDQoS9jmNdAH
	UPTBMII+Pq1q6H4gs9Fs1R1w0k2xBvvHw4h2QbR5w5aHEmkMDpSD7hankEmkyKt3l/uCD9R+vB/Ze
	keliuYfdDhK7UBStqcsUcFgbJKl9gr3iFAHbAS6F1u13xUQKQ0DJOpYKYXJCZqisS4S4uTtTZajjX
	hCvLoeHp7c3wIHjeMQpHWoczI6ljhTofTzlG7c+PK1lE7Np1dzag24f8HGnG1ihM4SsYdd48d1vFH
	L+JnKqrr2bVWm/3L23mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQoJD-0000cR-Uc; Tue, 21 Apr 2020 08:31:11 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQoIr-0000KX-6O; Tue, 21 Apr 2020 08:30:51 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 22C7A306108;
 Tue, 21 Apr 2020 10:30:43 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id E21502B9EA39A; Tue, 21 Apr 2020 10:30:43 +0200 (CEST)
Date: Tue, 21 Apr 2020 10:30:43 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH v1 6/6] arm64: tlb: Set the TTL field in flush_tlb_range
Message-ID: <20200421083043.GP20730@hirez.programming.kicks-ass.net>
References: <20200403090048.938-1-yezhenyu2@huawei.com>
 <20200403090048.938-7-yezhenyu2@huawei.com>
 <20200420121055.GF20696@hirez.programming.kicks-ass.net>
 <20200420200616.44c7c7ea@oasis.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420200616.44c7c7ea@oasis.local.home>
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-mm@kvack.org,
 guohanjun@huawei.com, will@kernel.org, linux-arch@vger.kernel.org,
 yuzhao@google.com, maz@kernel.org, suzuki.poulose@arm.com,
 steven.price@arm.com, arm@kernel.org, Dave.Martin@arm.com, arnd@arndb.de,
 Zhenyu Ye <yezhenyu2@huawei.com>, npiggin@gmail.com,
 zhangshaokun@hisilicon.com, broonie@kernel.org, xiexiangyou@huawei.com,
 prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 aneesh.kumar@linux.ibm.com, akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 08:06:16PM -0400, Steven Rostedt wrote:
> Peter Zijlstra <peterz@infradead.org> wrote:
> > On Fri, Apr 03, 2020 at 05:00:48PM +0800, Zhenyu Ye wrote:

> > > +static inline int tlb_get_level(struct mmu_gather *tlb)
> > > +{
> > > +	int sum = tlb->cleared_ptes + tlb->cleared_pmds +
> > > +		  tlb->cleared_puds + tlb->cleared_p4ds;
> > > +
> > > +	if (sum != 1)
> > > +		return 0;
> > > +	else if (tlb->cleared_ptes)
> > > +		return 3;
> > > +	else if (tlb->cleared_pmds)
> > > +		return 2;
> > > +	else if (tlb->cleared_puds)
> > > +		return 1;
> > > +
> > > +	return 0;
> > > +}  
> > 
> > That's some mighty wonky code. Please look at the generated asm.
> 
> Without even looking at the generated asm, if a condition returns,
> there's no reason to add an else for that condition.

Not really the point; he wants to guarantee he only returns >0 when
there's a single bit set. But the thing is, cleared_* is a bitfield, and
I'm afraid that the above will result in some terrible code-gen.

Maybe something like:

	if (tlb->cleared_ptes && !(tlb->cleared_pmds ||
				   tlb->cleared_puds ||
				   tlb->cleared_p4ds))
		return 3;

	if (tlb->cleared_pmds && !(tlb->cleared_ptes ||
				   tlb->cleared_puds ||
				   tlb->cleared_p4ds))
		return 2;

	if (tlb->cleared_puds && !(tlb->cleared_ptes ||
				   tlb->cleared_pmds ||
				   tlb->cleared_p4ds))
		return 1;

	return 0;

Which I admit is far too much typing, but I suspect it generates far
saner code (just a few masks and branches).

But maybe the compiler surprises us, what do I konw.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
