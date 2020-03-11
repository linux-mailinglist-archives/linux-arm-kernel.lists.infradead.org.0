Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CA2181D24
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 17:04:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pIjwvexDqNk/yLFzW+s//qxTYnvTqjMsjvcGUtglFlQ=; b=T8Em4aPHVmuUt3
	1dm+fRV4zhwdPaf9/aVTlTbKLCZq+XMqKYHRVd5SkYn4Zao9dwImTmlins7nEj/UxVBp584EcCJ8q
	g4sNINRfXyC6N5PzPcJOEj6Q8a8PEx8YGcqhvzoPC56QApUfwsJDsZ0oidOhp0MefD6CsYrfx5WMT
	y2OAhR7fJpQopjyuvTfZwYEZaVsQ28ka3ifhKVUSpcWaBLClS66MNAXJWZMDQIKE8WRg+Yx9Wlwz1
	PpLo1k5RE60k63QXl12zDp5pVjKYEikJwhabERk/Sn/IUKXeG0xUtAC4sQcHmcNBkk9aK8uZD+I9T
	EdaHEnQmsTuihQO50yNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC3pn-0005f3-BQ; Wed, 11 Mar 2020 16:03:51 +0000
Received: from elvis.franken.de ([193.175.24.41])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC3pe-0005dR-8u
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 16:03:44 +0000
Received: from uucp (helo=alpha)
 by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
 id 1jC3pW-0006pD-00; Wed, 11 Mar 2020 17:03:34 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
 id 2C0B2C102E; Wed, 11 Mar 2020 17:03:07 +0100 (CET)
Date: Wed, 11 Mar 2020 17:03:07 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: afzal mohammed <afzal.mohd.ma@gmail.com>
Subject: Re: [PATCH v4] MIPS: Replace setup_irq() by request_irq()
Message-ID: <20200311160307.GA15464@alpha.franken.de>
References: <20200304203144.GA4323@alpha.franken.de>
 <20200305115759.3186-1-afzal.mohd.ma@gmail.com>
 <20200311053126.GA48442@ubuntu-m2-xlarge-x86>
 <20200311090308.GA5060@afzalpc>
 <20200311104217.GA10615@alpha.franken.de>
 <20200311131210.GA5115@afzalpc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311131210.GA5115@afzalpc>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_090342_613768_69E7C023 
X-CRM114-Status: GOOD (  20.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [193.175.24.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Paul Burton <paulburton@kernel.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Jiaxun Yang <jiaxun.yang@flygoat.com>,
 "Maciej W. Rozycki" <macro@linux-mips.org>, John Crispin <john@phrozen.org>,
 Huacai Chen <chenhc@lemote.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Keguang Zhang <keguang.zhang@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 06:42:10PM +0530, afzal mohammed wrote:
> Hi Thomas,
> 
> On Wed, Mar 11, 2020 at 11:42:17AM +0100, Thomas Bogendoerfer wrote:
> > On Wed, Mar 11, 2020 at 02:33:08PM +0530, afzal mohammed wrote:
> 
> > > diff --git a/arch/mips/kernel/cevt-r4k.c b/arch/mips/kernel/cevt-r4k.c
> 
> > >  int r4k_clockevent_init(void)
> > >  {
> > > -	unsigned long flags = IRQF_PERCPU | IRQF_TIMER | IRQF_SHARED;
> > > +	unsigned long flags = IRQF_PERCPU | IRQF_TIMER;
> 
> > I don't see why this should help. In my tree only sgi-ip30 removes
> > IRQF_SHARED from flags, but then it uses setup_percpu_irq().
> > What do I miss ?
> 
> You did not miss anything. Though it works, i took a wrong route
> following the tags & arrived at that solution in a hurry.
> (struct irqaction used in sgi-ip30 was used here earlier w/ setup_irq).
> 
> The problem is sanity checks in request_irq() [ rather in
> request_thread_iq() ]
> 
> 
> 	if (((irqflags & IRQF_SHARED) && !dev_id) ||
> 	    (!(irqflags & IRQF_SHARED) && (irqflags & IRQF_COND_SUSPEND)) ||
> 	    ((irqflags & IRQF_NO_SUSPEND) && (irqflags & IRQF_COND_SUSPEND)))
> 		return -EINVAL;
> 
> If IRQF_SHARED is passed, it exepcts a non-NULL dev_id, here it is
> NULL, setup_irq() doesn't have any check like that.

so request_irq() is not a 1:1 replacement for our current setup_irq().
Or put it the another way our setup_irq() might be buggy, when used for
shared interrupts.

> So i think proper solution is to add a non NULL dev_id, as removing
> IRQF_SHARED might affect some platforms that might be using that
> interrupt line shared.
> 
> Patch with non-NULL dev_id below, it works w/ Nathan's test case.

I'm not sure, I like the adding of string pointers as dev_id arguments
in your patch. How can we make sure they are unique enough for the use
case ? I guess using handler as dev_id does a better job here.

And before doing that, lets clean up some of the IRQF_SHARED usage first.
All sni IRQF_SHARED can go away, the interrupt lines are exclusive there. 

loongson2ef/lemote-2f/irq.c: looks like the only user of
LOONGSON_NORTH_BRIDGE_IRQ, so IRQF_SHARED could go as well.
Could someone confirm that ?

All other need to stay, IMHO.

And v4 is already in mips-next, so I need an incremental patch please.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
