Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C06A15AC29
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 16:41:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hUPLtHfMn5ac+2tUnWl7vx2oCzd3QncAAnfPs1cKfdk=; b=CBaBaHljcdIzhA
	4kxgU5Z5gRaKoiP5MmRc9FwCmCUJsgAD+eMmA7CFWWbLqiTjwTKBMiI1LEkiFFp5T/bhCeEBfwDLn
	bDw0fhb9fVteePyiYO5pm+ZZZcyE6EeR30YynRW2V9acuHv0xPZmi0O5ulnBc40xde+pb0yt5ElLO
	iXmzMkbQEZqZMovnr+zMf5EnPeaP7GEwui94vS8/a5+9UpVhpcknd7EgMNsBUiueq5FwaKCtR8kdv
	nKP6/w6GZtULtuJMxepT7YbKI9z3cH8TkzyfcURhRhgfdnsyRDiO64cKDyWnFwwSNsSGqscZeriNM
	RHd+IOw3gMoymqFa/0uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1u8o-0005GR-7t; Wed, 12 Feb 2020 15:41:30 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1u8e-0005Fd-NY
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 15:41:22 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id AD517B004;
 Wed, 12 Feb 2020 15:41:16 +0000 (UTC)
Date: Wed, 12 Feb 2020 16:41:16 +0100
From: Petr Mladek <pmladek@suse.com>
To: Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: Question about kthread_mod_delayed_work() allowed context
Message-ID: <20200212154116.hh2vdyi7e2xflxr5@pathway.suse.cz>
References: <cfa886ad-e3b7-c0d2-3ff8-58d94170eab5@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cfa886ad-e3b7-c0d2-3ff8-58d94170eab5@ti.com>
User-Agent: NeoMutt/20170912 (1.9.0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_074120_918684_0C98DCCC 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: netdev <netdev@vger.kernel.org>, Richard Cochran <richardcochran@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-rt-users@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 2020-02-11 12:23:59, Grygorii Strashko wrote:
> Hi All,
> 
> I'd like to ask question about allowed calling context for kthread_mod_delayed_work().
> 
> The comment to kthread_mod_delayed_work() says:
> 
>  * This function is safe to call from any context including IRQ handler.
>  * See __kthread_cancel_work() and kthread_delayed_work_timer_fn()
>  * for details.
>  */
> 
> But it has del_timer_sync() inside which seems can't be called from hard_irq context:
> kthread_mod_delayed_work()
>   |-__kthread_cancel_work()
>      |- del_timer_sync()
> 	|- WARN_ON(in_irq() && !(timer->flags & TIMER_IRQSAFE));

It is safe because kthread_delayed_work_timer_fn() is IRQ safe.
Note that it uses raw_spin_lock_irqsave(). It is the reason why
the timer could have set TIMER_IRQSAFE flag, see
KTHREAD_DELAYED_WORK_INIT().

In more details. The timer is either canceled before the callback
is called. Or it waits for the callback but the callback is safe
because it can't sleep.


> My use case is related to PTP processing using PTP auxiliary worker:
> (commit d9535cb7b760 ("ptp: introduce ptp auxiliary worker")):
>  - periodic work A is started and res-schedules itself for every dtX
>  - on IRQ - the work A need to be scheduled immediately

This is exactly where kthread_mod_delayed_work() need to be used
in the IRQ context with 0 delay.


> Any advice on how to proceed?
> Can kthread_queue_work() be used even if there is delayed work is
> scheduled already (in general, don't care if work A will be executed one
> more time after timer expiration)?

Yes, it can be used this way. It should behave the same way as
the workqueue API.

I am happy that there are more users for this API. I wanted to
convert more kthreads but it was just falling down in my TODO.

I hope that I answered all questions. Feel free to ask more
when in doubts.

Best Regards,
Petr

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
