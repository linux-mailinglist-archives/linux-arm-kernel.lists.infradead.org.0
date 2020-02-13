Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8168415BAD0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 09:33:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=crzGg9cIaQ9RQ+ObUarf/l02jPZ83nNtiwlegbAeteQ=; b=lXmUN4x4aq1L3j
	MRZfIEcfvYlxeru0CrrQM9WvLnCxzeg1vXaSckPaG4y7Onvp0dUftOqyh5xN5Cn28livZYNbluj9G
	L89fzHBZ84lqggZU/FySRkrmkyDn7ZyIdx2d2iaoZGAfFOB2Zp7KhyU7mYcko+eVAHUs+l+yyLDWh
	mDyhPhNb+L2NSvEYooW90bYcvVLAhaE5t3QmsbtTWJXSUkahEMXKEYuHgPiLxaOhkLxAR9hCIh9+m
	2J3/9ywMnQ/XU413ZcVu9vFFZEvSylsiI64tmV3wEvSKVZiM2MoVweareBRkRjaZXdzxrbgpIYx10
	RI9A5aoCWCbwVK0Duf6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j29wP-0004lu-38; Thu, 13 Feb 2020 08:33:45 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j29wG-0004lT-LL
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 08:33:38 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 5767EAB92;
 Thu, 13 Feb 2020 08:33:34 +0000 (UTC)
Date: Thu, 13 Feb 2020 09:33:33 +0100
From: Petr Mladek <pmladek@suse.com>
To: Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: Question about kthread_mod_delayed_work() allowed context
Message-ID: <20200213083333.jglatxs5j76z2634@pathway.suse.cz>
References: <cfa886ad-e3b7-c0d2-3ff8-58d94170eab5@ti.com>
 <20200212154116.hh2vdyi7e2xflxr5@pathway.suse.cz>
 <59802c56-1013-3042-167d-89f288f51b58@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <59802c56-1013-3042-167d-89f288f51b58@ti.com>
User-Agent: NeoMutt/20170912 (1.9.0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_003336_844134_6156868D 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Wed 2020-02-12 21:17:53, Grygorii Strashko wrote:
> 
> 
> On 12/02/2020 17:41, Petr Mladek wrote:
> > On Tue 2020-02-11 12:23:59, Grygorii Strashko wrote:
> > > Hi All,
> > > 
> > > I'd like to ask question about allowed calling context for kthread_mod_delayed_work().
> > > 
> > > The comment to kthread_mod_delayed_work() says:
> > > 
> > >   * This function is safe to call from any context including IRQ handler.
> > >   * See __kthread_cancel_work() and kthread_delayed_work_timer_fn()
> > >   * for details.
> > >   */
> > > 
> > > But it has del_timer_sync() inside which seems can't be called from hard_irq context:
> > > kthread_mod_delayed_work()
> > >    |-__kthread_cancel_work()
> > >       |- del_timer_sync()
> > > 	|- WARN_ON(in_irq() && !(timer->flags & TIMER_IRQSAFE));
> > 
> > It is safe because kthread_delayed_work_timer_fn() is IRQ safe.
> > Note that it uses raw_spin_lock_irqsave(). It is the reason why
> > the timer could have set TIMER_IRQSAFE flag, see
> > KTHREAD_DELAYED_WORK_INIT().
> > 
> > In more details. The timer is either canceled before the callback
> > is called. Or it waits for the callback but the callback is safe
> > because it can't sleep.
> 
> I think, my issue (warning) could be related to the fact that kthread_init_delayed_work()
> is used, which seems doesn't set TIMER_IRQSAFE flag.

Great catch!

It is a bug. Would you like to send the fix for
kthread_init_delayed_work() or would you prefer me doing so?

Best Regards,
Petr

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
