Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEC1103DF3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 16:05:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZOkat9e4xZmgUiXPjCcd+a+tt+N88fint3ss0oYVQ9Y=; b=GhSOnGq7kXG8qhUGmMgLm2wp0
	sM/0MlL6wF9HOtn3IZ4fXALC9Ff7WE8LjVBo5yUIbnnFCnNIibksBayN7cNywZrbuOj4t/3kKv4Cm
	rnNUtpjmJUSO7ZAI+JYOkcPlCNb7G6iTeeLGgGcqvecNoqmVVxa3ZeIuMtgcVolZGVPP6E1+xboXy
	5uhvHqrRwDKj6vIg19jGu7x2bXq7GVLv2ob1/J9XuAnanZ4K+9uVKOGIuchphMzoqZPLjw2w6mtj1
	YojOrS3i5GAWCvCebNArcHNdBJDiSWtAShTcrv+qb6fg/AlSGzaYItcZWBzu2LTkcv2Wd9efJnqV9
	Envow53NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXRXi-0007YV-74; Wed, 20 Nov 2019 15:05:18 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXRXP-0007Wl-1a
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 15:05:00 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iXRXK-0005i0-2r; Wed, 20 Nov 2019 16:04:54 +0100
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] irq-gic: select all CPU's selected in interrupt affinity
 settings
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 20 Nov 2019 15:04:53 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <2cd3e872-57d5-5cbb-78d7-98da6447dc59@arm.com>
References: <CAPaFbat4MM0=iVB-VazTK9=2qRebAgEN4euYCTESRo3yfx75Kw@mail.gmail.com>
 <20191119233633.GG25745@shell.armlinux.org.uk>
 <CAPaFbatG+ePwjCnBva1tfmzmvpHZv9xW3nM4gj2DTpFn=D+9Vg@mail.gmail.com>
 <2cd3e872-57d5-5cbb-78d7-98da6447dc59@arm.com>
Message-ID: <392e74d78b48e04040cedfc26ed8ce81@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: robin.murphy@arm.com, event.riga@gmail.com,
 linux@armlinux.org.uk, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_070459_231134_2B2DB95D 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Leonid Movshovich <event.riga@gmail.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-20 01:15, Robin Murphy wrote:
> On 2019-11-20 12:24 am, Leonid Movshovich wrote:
>> On Tue, 19 Nov 2019 at 23:36, Russell King - ARM Linux admin
>> <linux@armlinux.org.uk> wrote:
>>>
>>> On Tue, Nov 19, 2019 at 11:12:26PM +0000, event wrote:
>>>> So far only a CPU selected with top affinity bit was selected. 
>>>> This
>>>> resulted in all interrupts
>>>> being processed by CPU0 by default despite "FF" default affinity
>>>> setting for all interrupts
>>>
>>> Have you checked whether this causes _ALL_ CPUs in the mask to be
>>> delivered a single interrupt, thereby causing _ALL_ CPUs to be
>>> slowed down and hit the same locks at the same time.
>>>
>> Yes, I've checked this. No, interrupt is delivered to only one CPU.
>> Also ARM GIC architecture specification specifically states in 
>> chapter
>> 3.1.1 that hardware interrupts are delivered to a single CPU in
>> multiprocessor system ("1-N model").
>
> But see also section 3.2.3 - just because only one CPU actually runs
> the given ISR doesn't necessarily guarantee that the others *weren't*
> interrupted. I'd also hesitate to make any assumptions that all GIC
> implementations behave exactly the same way.

What happens is that *all* CPUs are being sent the interrupt, and there
is some logic in the GIC that ensures that only one sees it (the first
one to read the IAR register). All the other see a spurious (1023)
interrupt, and have wasted some precious cycles in doing so.

I get this patch, more or less well written, every other year.
My answer is that it may help a very small minority of use cases, and
suck for everyone else. So thank you, but no, thank you.

Note that GICv3's version of the thing is even more unusable:
- the configuration is secure only
- the distribution mode is IMPDEF
- LPIs can only be precisely routed

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
