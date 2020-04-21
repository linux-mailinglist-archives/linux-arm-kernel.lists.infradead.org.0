Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FFB1B1A64
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 02:06:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/UZkjqzH2bRDegzRMHgIzdD1YWzj6+IyXZmB0t/6BtM=; b=nDGFFQqSuMXfg8
	bA6oH0u5SwkecpCJTc76w0/lSCfwAG0sPrea4TCwMYJCX+uYgPCq/HSspMJnAh/NKVqJ+EXI2DCDs
	mOWnh9U8oWKm5kRM+64gglLwIc7bDEitXFvR4C9lJwpGTs2vagoph7XFqZlhz4ThmTsyqOgNaGdGC
	nH//oC5TaruUA2UHRourQi+/l9JB/eqLwdgi0YV7Bc43MOqmfgix8gzPwPm8STN0lBbPUJncR9w9G
	QxxfrKcW8dfBbsdnFQr1pRajhwXvz+PQ2jNk6voZRnqzVFwKy1v1uYnATG6RTkQ/HdXZ00L2Vp/h2
	jC1A4HlywRfrizaJ3Y8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQgQq-0004g0-4W; Tue, 21 Apr 2020 00:06:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQgQj-0004eU-1y
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 00:06:26 +0000
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E69C20782;
 Tue, 21 Apr 2020 00:06:18 +0000 (UTC)
Date: Mon, 20 Apr 2020 20:06:16 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v1 6/6] arm64: tlb: Set the TTL field in flush_tlb_range
Message-ID: <20200420200616.44c7c7ea@oasis.local.home>
In-Reply-To: <20200420121055.GF20696@hirez.programming.kicks-ass.net>
References: <20200403090048.938-1-yezhenyu2@huawei.com>
 <20200403090048.938-7-yezhenyu2@huawei.com>
 <20200420121055.GF20696@hirez.programming.kicks-ass.net>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_170625_120366_144EEDC0 
X-CRM114-Status: GOOD (  19.85  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

On Mon, 20 Apr 2020 14:10:55 +0200
Peter Zijlstra <peterz@infradead.org> wrote:

> On Fri, Apr 03, 2020 at 05:00:48PM +0800, Zhenyu Ye wrote:
> > This patch uses the cleared_* in struct mmu_gather to set the
> > TTL field in flush_tlb_range().
> > 
> > Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>
> > ---
> >  arch/arm64/include/asm/tlb.h      | 26 +++++++++++++++++++++++++-
> >  arch/arm64/include/asm/tlbflush.h | 14 ++++++++------
> >  2 files changed, 33 insertions(+), 7 deletions(-)
> > 
> > diff --git a/arch/arm64/include/asm/tlb.h b/arch/arm64/include/asm/tlb.h
> > index b76df828e6b7..d5ab72eccff4 100644
> > --- a/arch/arm64/include/asm/tlb.h
> > +++ b/arch/arm64/include/asm/tlb.h
> > @@ -21,11 +21,34 @@ static void tlb_flush(struct mmu_gather *tlb);
> >  
> >  #include <asm-generic/tlb.h>
> >  
> > +/*
> > + * get the tlbi levels in arm64.  Default value is 0 if more than one
> > + * of cleared_* is set or neither is set.
> > + * Arm64 doesn't support p4ds now.
> > + */
> > +static inline int tlb_get_level(struct mmu_gather *tlb)
> > +{
> > +	int sum = tlb->cleared_ptes + tlb->cleared_pmds +
> > +		  tlb->cleared_puds + tlb->cleared_p4ds;
> > +
> > +	if (sum != 1)
> > +		return 0;
> > +	else if (tlb->cleared_ptes)
> > +		return 3;
> > +	else if (tlb->cleared_pmds)
> > +		return 2;
> > +	else if (tlb->cleared_puds)
> > +		return 1;
> > +
> > +	return 0;
> > +}  
> 
> That's some mighty wonky code. Please look at the generated asm.

Without even looking at the generated asm, if a condition returns,
there's no reason to add an else for that condition.

	if (x)
		return 1;
	else if (y)
		return 2;
	else
		return 3;

Is exactly the same as:

	if (x)
		return 1;
	if (y)
		return 2;
	return 3;

-- Steve


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
