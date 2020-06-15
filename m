Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CE11F94A0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 12:30:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xm/aqpal/TMAJ7EC5CXpc0DtGsDf2TjspH5Qc95td/4=; b=nvhJkxjB0GCsFe
	sW9LlmSpDFjAFQfG/3hhbvSwzhPZXLo170XONEmwNLo3dihCg0Z/Rh8Axry7elgTTtG/ZZ/qt9pVN
	yfsjStGUdI3bsXTReM3GbXp8+ISFl0gRa8Drx0UFXxbZDo2hWMeqFTcbqZu01S39pxydO8BxqIM0g
	m9qpLlaaeCJ2gpLKTXjko5GttuTdFe5bif25b4byB7Sl/5MbA20hP+xCf1V/isXztXN6cLpXeSFCb
	/DN+yXmfUanr9n+3bk/NEoo5lDE4o1QkrQ2LXO+tVXoZjjA6kh49pfZDV7VMP8ROfL3kw1HP/G/ia
	h+q26oMKIyWMQZdMJZMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkmO5-0007ZC-7s; Mon, 15 Jun 2020 10:30:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkmNu-0007Y7-Cd
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 10:30:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 578A91F1;
 Mon, 15 Jun 2020 03:30:32 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 455BB3F71F;
 Mon, 15 Jun 2020 03:30:29 -0700 (PDT)
Date: Mon, 15 Jun 2020 11:30:27 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH] arm64: fpsimd: Added API to manage fpsimd state inside
 kernel
Message-ID: <20200615103024.GI25945@arm.com>
References: <CGME20200605073214epcas2p1576f3f90dbcefaad6180f2559ca5980d@epcas2p1.samsung.com>
 <20200605073052.23044-1-wooy88.kim@samsung.com>
 <20200605103705.GD85498@C02TD0UTHF1T.local>
 <20200608103340.GA31466@arm.com>
 <001401d63fd4$95646690$c02d33b0$@samsung.com>
 <20200611141101.GA31408@gaia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611141101.GA31408@gaia>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_033034_523289_FC29F5CC 
X-CRM114-Status: GOOD (  22.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: 'Mark Rutland' <mark.rutland@arm.com>,
 'Bhupesh Sharma' <bhsharma@redhat.com>, 'Julien Grall' <julien.grall@arm.com>,
 'Vincenzo Frascino' <vincenzo.frascino@arm.com>,
 'Will Deacon' <will@kernel.org>, yhwan.joo@samsung.com,
 'Anisse Astier' <aastier@freebox.fr>, 'Marc Zyngier' <maz@kernel.org>,
 'Allison Randal' <allison@lohutok.net>,
 'Sanghoon Lee' <shoon114.lee@samsung.com>, jihun.kim@samsung.com,
 'Kees Cook' <keescook@chromium.org>,
 'Suzuki K Poulose' <suzuki.poulose@arm.com>,
 'Wooki Min' <wooki.min@samsung.com>,
 'Kristina Martsenko' <kristina.martsenko@arm.com>,
 'Jeongtae Park' <jtp.park@samsung.com>, Wooyeon Kim <wooy88.kim@samsung.com>,
 'Thomas Gleixner' <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 'Steve Capper' <steve.capper@arm.com>,
 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, 'James Morse' <james.morse@arm.com>,
 'Sudeep Holla' <sudeep.holla@arm.com>, dh.han@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 11, 2020 at 03:11:02PM +0100, Catalin Marinas wrote:
> On Thu, Jun 11, 2020 at 06:42:12PM +0900, Wooyeon Kim wrote:
> > I am in charge of camera driver development in Samsung S.LSI division.
> > 
> > In order to guarantee real time processing such as Camera 3A algorithm in
> > current or ongoing projects, prebuilt binary is loaded and used in kernel
> > space, rather than user space.
> 
> Thanks for the additional details.

I have to ask: there are other camera drivers in existence already.
What makes your hardware so different that it requires all this data
processing to be done inside the kernel?

> If you do such intensive processing in an IRQ context you'd probably
> introduce additional IRQ latency. Wouldn't offloading such work to a
> real-time (user) thread help? In a non-preempt-rt kernel, I don't think
> you can get much in terms of (soft) guarantees for IRQ latency anyway.
> 
> > Because the binary is built with other standard library which could use
> > FPSIMD register, kernel API should keep the original FPSIMD state for other
> > user tasks.
> 
> Can you not recompile those libraries not to use FP?
> 
> As Mark said, for a kernel API we require at least an in-kernel,
> upstreamed, user of that functionality.
> 
> > In the case of the kernel_neon_begin / kernel_neon_end that you mentioned,
> > there is a limitation that cannot be used in hardirq context.
> > Also, if another kernel task switching occurs while kernel API is being
> > used, fpsimd register corruption may occur.
> 
> kernel_neon_begin/end disable preemption, so you can't have a task
> switch (you can have interrupts though but we don't allow FPSIMD in IRQ
> context).

Note, the decision not to support kernel_neon_begin / kernel_neon_end in
hardirq context was deliberate.  hardirq handlers shouldn't usually do
anything at all except ensure that something responds to the hardware
event, by waking some other thread or scheduling a workqueue item for
example.  An IRQ handler that only does that has no need to do any data
processing, and gains no advantage from using FPSIMD.

Doing additional work in hardirq context will harm interrupt latency for
the rest of the system.

So, you should move the data processing work out of the hardirq handler.
Is there a reason why this is not possible?


Secondly, there is the question of whether FPSIMD can be used by kernel
threads.  Currently this is only supported in a limited way.  Again,
this a deliberate decision, for now.

Can you split the processing work into small blocks using
kernel_neon_begin/kernel_neon_end, similarly to the arm64 crypto
drivers?

This is the current accepted way of doing number crunching inside the
kernel without harming preemption latency too much.  Even so, it's
primarily intended for things that affect critical paths inside the
kernel, such as crypto or checksumming in the filesysem and network
subsystems.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
