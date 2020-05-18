Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AB41D78E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 14:45:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWI8VmGigSwy/MYXqaGyklulDQtFVGJsg9LVzqW0s6A=; b=YZNW8bKzV9K+nk
	D+JAGihNProX+cseY3wnHN2xM8EazzOIMJ3MZHS1/GLz0kXlE+nD78Zkxr5wz/jHQ6x1IgA7asefV
	Cf3HbGP5kO3Csp/dXr4cozQYhYdafovMm3bWWEyyfEcn5wtSMMt8ru3sxnQGQwDB6p6c3Hl8jj4Qc
	k04wbI/VA0kRFqPgr4fZ7r+Ck2vqnpUsme95O7ItPnuslwmN1TlfR7P36k9GDeSsoW3PvJJ5GSRll
	fjI/dsAdS9BYIAPwuXkayom2UldOA/r0hEwq/u2EoVzloytRD6Bnq/jhuL0z1Ez9i8sSXjbTTvzKo
	wEw8vyAhqWXAkQeq9kZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaf8x-00007y-BR; Mon, 18 May 2020 12:45:19 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaf8n-0007jp-8I
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 12:45:10 +0000
Received: from 89-64-86-21.dynamic.chello.pl (89.64.86.21) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.415)
 id 49b173e4072387ec; Mon, 18 May 2020 14:45:07 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH v2 1/3] mm/memory-failure: Add memory_failure_queue_kick()
Date: Mon, 18 May 2020 14:45:05 +0200
Message-ID: <49686237.p6yG9EJavU@kreacher>
In-Reply-To: <20200501164543.24423-2-james.morse@arm.com>
References: <20200501164543.24423-1-james.morse@arm.com>
 <20200501164543.24423-2-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_054509_476857_12C86A3C 
X-CRM114-Status: GOOD (  16.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Tony Luck <tony.luck@intel.com>,
 linux-acpi@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Xie XiuQi <xiexiuqi@huawei.com>, linux-mm@kvack.org,
 Tyler Baicar <tyler@amperecomputing.com>, Borislav Petkov <bp@alien8.de>,
 Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>, Will Deacon <will@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Friday, May 1, 2020 6:45:41 PM CEST James Morse wrote:
> The GHES code calls memory_failure_queue() from IRQ context to schedule
> work on the current CPU so that memory_failure() can sleep.
> 
> For synchronous memory errors the arch code needs to know any signals
> that memory_failure() will trigger are pending before it returns to
> user-space, possibly when exiting from the IRQ.
> 
> Add a helper to kick the memory failure queue, to ensure the scheduled
> work has happened. This has to be called from process context, so may
> have been migrated from the original cpu. Pass the cpu the work was
> queued on.
> 
> Change memory_failure_work_func() to permit being called on the 'wrong'
> cpu.
> 
> Signed-off-by: James Morse <james.morse@arm.com>
> Tested-by: Tyler Baicar <baicar@os.amperecomputing.com>
> ---
>  include/linux/mm.h  |  1 +
>  mm/memory-failure.c | 15 ++++++++++++++-
>  2 files changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/mm.h b/include/linux/mm.h
> index 5a323422d783..c606dbbfa5e1 100644
> --- a/include/linux/mm.h
> +++ b/include/linux/mm.h
> @@ -3012,6 +3012,7 @@ enum mf_flags {
>  };
>  extern int memory_failure(unsigned long pfn, int flags);
>  extern void memory_failure_queue(unsigned long pfn, int flags);
> +extern void memory_failure_queue_kick(int cpu);
>  extern int unpoison_memory(unsigned long pfn);
>  extern int get_hwpoison_page(struct page *page);
>  #define put_hwpoison_page(page)	put_page(page)
> diff --git a/mm/memory-failure.c b/mm/memory-failure.c
> index a96364be8ab4..c4afb407bf0f 100644
> --- a/mm/memory-failure.c
> +++ b/mm/memory-failure.c
> @@ -1493,7 +1493,7 @@ static void memory_failure_work_func(struct work_struct *work)
>  	unsigned long proc_flags;
>  	int gotten;
>  
> -	mf_cpu = this_cpu_ptr(&memory_failure_cpu);
> +	mf_cpu = container_of(work, struct memory_failure_cpu, work);
>  	for (;;) {
>  		spin_lock_irqsave(&mf_cpu->lock, proc_flags);
>  		gotten = kfifo_get(&mf_cpu->fifo, &entry);
> @@ -1507,6 +1507,19 @@ static void memory_failure_work_func(struct work_struct *work)
>  	}
>  }
>  
> +/*
> + * Process memory_failure work queued on the specified CPU.
> + * Used to avoid return-to-userspace racing with the memory_failure workqueue.
> + */
> +void memory_failure_queue_kick(int cpu)
> +{
> +	struct memory_failure_cpu *mf_cpu;
> +
> +	mf_cpu = &per_cpu(memory_failure_cpu, cpu);
> +	cancel_work_sync(&mf_cpu->work);
> +	memory_failure_work_func(&mf_cpu->work);
> +}
> +
>  static int __init memory_failure_init(void)
>  {
>  	struct memory_failure_cpu *mf_cpu;
> 

I could apply this provided an ACK from the mm people.

Thanks!




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
