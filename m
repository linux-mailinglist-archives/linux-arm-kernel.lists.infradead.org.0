Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D64F11F681E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 14:47:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3CuowfwBXqn7Ao0lfXLkz1CSoL+cOsjIAoWOThx1FiE=; b=lOg3YbU/VErfGX
	C4X9fPXg0G9qp8WJppssGb7j/JuqvrrjT9hQSoWvGRJFLunjWZIkpfjNJ8ANOVH2XZsC6l6wZv/i8
	zGyAq0DeQO6fEMYq9CtQHOjPcnVWFKInKzAoIT6zeN+fmeb/tBoNfIloz5f+484Bn0IsG7O6lp06E
	flAt+IXlLARomhfNDQa3s6gb5ZPJvUadc18vpYPPqvddFladpePy8rtdARuAYwDqy20c2z0iwRTmY
	q1v0Ixtrx00BbsZOUoJGsoAgVgjLwQ0GzgM0NGIRghKF67Edl8CCVtvbaqQV/ZaMX1HpD8LbJWmxX
	uPMBc0vZ7LOD54cP7KiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjMc9-0005TX-J2; Thu, 11 Jun 2020 12:47:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjMc0-0005So-Ao
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 12:47:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B16721FB;
 Thu, 11 Jun 2020 05:47:12 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.13.172])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 168F73F66F;
 Thu, 11 Jun 2020 05:47:06 -0700 (PDT)
Date: Thu, 11 Jun 2020 13:47:04 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: ??? <wooy88.kim@samsung.com>
Subject: Re: [PATCH] arm64: fpsimd: Added API to manage fpsimd state inside
 kernel
Message-ID: <20200611124704.GC53118@C02TD0UTHF1T.local>
References: <CGME20200605073214epcas2p1576f3f90dbcefaad6180f2559ca5980d@epcas2p1.samsung.com>
 <20200605073052.23044-1-wooy88.kim@samsung.com>
 <20200605103705.GD85498@C02TD0UTHF1T.local>
 <20200608103340.GA31466@arm.com>
 <000001d63fd1$23430d80$69c92880$@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000001d63fd1$23430d80$69c92880$@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_054716_412847_24550E65 
X-CRM114-Status: GOOD (  14.57  )
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
Cc: 'Catalin Marinas' <catalin.marinas@arm.com>,
 'Bhupesh Sharma' <bhsharma@redhat.com>, 'Julien Grall' <julien.grall@arm.com>,
 'Vincenzo Frascino' <vincenzo.frascino@arm.com>,
 'Will Deacon' <will@kernel.org>, yhwan.joo@samsung.com,
 'Anisse Astier' <aastier@freebox.fr>, 'Marc Zyngier' <maz@kernel.org>,
 'Allison Randal' <allison@lohutok.net>,
 'Sanghoon Lee' <shoon114.lee@samsung.com>, jihun.kim@samsung.com,
 'Dave Martin' <Dave.Martin@arm.com>, 'Kees Cook' <keescook@chromium.org>,
 'Suzuki K Poulose' <suzuki.poulose@arm.com>,
 'Wooki Min' <wooki.min@samsung.com>,
 'Kristina Martsenko' <kristina.martsenko@arm.com>,
 'Jeongtae Park' <jtp.park@samsung.com>, 'Thomas Gleixner' <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, 'Steve Capper' <steve.capper@arm.com>,
 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, 'James Morse' <james.morse@arm.com>,
 'Sudeep Holla' <sudeep.holla@arm.com>, dh.han@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 11, 2020 at 06:17:32PM +0900, ??? wrote:
> > On Fri, Jun 05, 2020 at 11:37:05AM +0100, Mark Rutland wrote:
> > > Please introduce the problem you are trying to solve in more detail.
> > > We already have kernel_neon_{begin,end}() for kernel-mode NEON; why is
> > > that not sufficient for your needs? Please answer this before
> > > considering other details.
> > >
> > > What do you want to use this for?
> 
> > Ack, this looks supicious.  Can you explain why your usecase _requires_
> > FPSIMD in hardirq context?
> > 
> > For now, these functions are strictly for EFI use only and should never be
> > used by modules.
> 
> I am in charge of camera driver development in Samsung S.LSI division.
> 
> In order to guarantee real time processing
> such as Camera 3A algorithm in current or ongoing projects,
> prebuilt binary is loaded and used in kernel space, rather than user space.
> Because the binary is built with other standard library which could use
> FPSIMD register,
> kernel API should keep the original FPSIMD state for other user tasks.
> It is mostly used for internal kernel operation including hardirq context.
> (ex> hardIRQ context, kernel API called by user, kernel task)

That sounds incredibly dodgy to me, both from a correctness perspective
and a licensing perspective. Upstream doesn't support out-of-tree
modules, nor does upstream support binary blobs within the kernel, so
the above cannot justify this change to the kernel.

If you wish to do such processing within the kernel, I think you'll need
to post a more complete in-tree solution for inclusion in mainline.
However, I suspect that it will be difficult to justify NEON in hardirq
context given preempt rt and friends.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
