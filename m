Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D17431D8897
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 21:58:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n0LTHGPGUrPegQpjoorvNakaAd8WgSAalKtldLLqN38=; b=BMfzb81VtOW3aA
	443NWBKtkHqA3H72dH2Q8BnqvoFuK5FZNQeVoJN3Jhp54/IyKxkuo1cQN0kMcRL5KdxW+g8U7Jg4x
	e7LGFlUNET++HRHz2Lnn/CDioT1AmpRzoM4S5Cn00BBf2MOfdQIIN7on8KDVIsYRURve6J2eesI9k
	FTIBmwUpFJawYpqPxYYKDQU4T+XgL+Mu6NjgzWrRB533QgoiYUSAsXMBmVsvu7lzsKzdhY080Y25G
	ql2EZpnXtxeOdaXzBi6rMfOfugtHVSGiJ3HODVSCTuCxJEZsSEGEY6tPgRMH/5FL7CIbbXufy3q7r
	EifNLlvcYTVv1fmdsbJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaluI-0002DS-Gy; Mon, 18 May 2020 19:58:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaluA-0002Cj-82
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 19:58:31 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E7D920758;
 Mon, 18 May 2020 19:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589831909;
 bh=nxo2uyrHnJi5DnLmPJ4mv9Kr35HEpbx7CmvMdiP/OH4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gtLLQynTEahJo7NSEd9NHZR7KvmuyM4/0lzVMvnb0+zt8LVUBHow/82N1pU3WpL9P
 4bmTcYRRamBsfRU6+Bnh3o5MHVvMwPojnNIwrvXKv0GCleeS5OswE6zI1zvVftD+4a
 FOaEiwJ0K89WE617Heq5rB2zjU1P0qd/KRsz1bSs=
Date: Mon, 18 May 2020 12:58:28 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: Re: [PATCH v2 1/3] mm/memory-failure: Add memory_failure_queue_kick()
Message-Id: <20200518125828.e4e3973c743556e976c5ee65@linux-foundation.org>
In-Reply-To: <49686237.p6yG9EJavU@kreacher>
References: <20200501164543.24423-1-james.morse@arm.com>
 <20200501164543.24423-2-james.morse@arm.com>
 <49686237.p6yG9EJavU@kreacher>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_125830_323799_0B29CCA6 
X-CRM114-Status: GOOD (  20.35  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Tony Luck <tony.luck@intel.com>,
 linux-acpi@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Xie XiuQi <xiexiuqi@huawei.com>, linux-mm@kvack.org,
 Tyler Baicar <tyler@amperecomputing.com>, James Morse <james.morse@arm.com>,
 Borislav Petkov <bp@alien8.de>, Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 18 May 2020 14:45:05 +0200 "Rafael J. Wysocki" <rjw@rjwysocki.net> wrote:

> On Friday, May 1, 2020 6:45:41 PM CEST James Morse wrote:
> > The GHES code calls memory_failure_queue() from IRQ context to schedule
> > work on the current CPU so that memory_failure() can sleep.
> > 
> > For synchronous memory errors the arch code needs to know any signals
> > that memory_failure() will trigger are pending before it returns to
> > user-space, possibly when exiting from the IRQ.
> > 
> > Add a helper to kick the memory failure queue, to ensure the scheduled
> > work has happened. This has to be called from process context, so may
> > have been migrated from the original cpu. Pass the cpu the work was
> > queued on.
> > 
> > Change memory_failure_work_func() to permit being called on the 'wrong'
> > cpu.
> > 
> > --- a/include/linux/mm.h
> > +++ b/include/linux/mm.h
> > @@ -3012,6 +3012,7 @@ enum mf_flags {
> >  };
> >  extern int memory_failure(unsigned long pfn, int flags);
> >  extern void memory_failure_queue(unsigned long pfn, int flags);
> > +extern void memory_failure_queue_kick(int cpu);
> >  extern int unpoison_memory(unsigned long pfn);
> >  extern int get_hwpoison_page(struct page *page);
> >  #define put_hwpoison_page(page)	put_page(page)
> > diff --git a/mm/memory-failure.c b/mm/memory-failure.c
> > index a96364be8ab4..c4afb407bf0f 100644
> > --- a/mm/memory-failure.c
> > +++ b/mm/memory-failure.c
> > @@ -1493,7 +1493,7 @@ static void memory_failure_work_func(struct work_struct *work)
> >  	unsigned long proc_flags;
> >  	int gotten;
> >  
> > -	mf_cpu = this_cpu_ptr(&memory_failure_cpu);
> > +	mf_cpu = container_of(work, struct memory_failure_cpu, work);
> >  	for (;;) {
> >  		spin_lock_irqsave(&mf_cpu->lock, proc_flags);
> >  		gotten = kfifo_get(&mf_cpu->fifo, &entry);
> > @@ -1507,6 +1507,19 @@ static void memory_failure_work_func(struct work_struct *work)
> >  	}
> >  }
> >  
> > +/*
> > + * Process memory_failure work queued on the specified CPU.
> > + * Used to avoid return-to-userspace racing with the memory_failure workqueue.
> > + */
> > +void memory_failure_queue_kick(int cpu)
> > +{
> > +	struct memory_failure_cpu *mf_cpu;
> > +
> > +	mf_cpu = &per_cpu(memory_failure_cpu, cpu);
> > +	cancel_work_sync(&mf_cpu->work);
> > +	memory_failure_work_func(&mf_cpu->work);
> > +}
> > +
> >  static int __init memory_failure_init(void)
> >  {
> >  	struct memory_failure_cpu *mf_cpu;
> > 
> 
> I could apply this provided an ACK from the mm people.
> 

Naoya Horiguchi is the memory-failure.c person.  A review would be
appreciated please?

I'm struggling with it a bit.  memory_failure_queue_kick() should be
called on the cpu which is identified by arg `cpu', yes? 
memory_failure_work_func() appears to assume this.

If that's right then a) why bother passing in the `cpu' arg?  and b)
what keeps this thread pinned to that CPU?  cancel_work_sync() can
schedule.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
