Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 907B91F69A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 16:11:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UzUA0sloeLocshlN46nshj3V1+p5QLa3liasXgHImKs=; b=QAjjpRH9COmjwH
	4Rwo4RUfzFx8FVFg48+slTp0GzhB8mbyDQwtIv3CZ+AqtEBCPIN/CbhQLC6KxlWu5/Km/3kJml7Rt
	S2d9BcAanE5XR+5vkRfIgvYd7jDrt2ejOvtzTWF01NxitqsbwOLfCNjCAOfSKAgc+CCOQJEAA0dEW
	32qDOHYffWlkHHEMghUWMaRNwAWi/YiOQfYHqKnTeQxS7qbQJB89wARhipHzZMS3pEKi5dMxs2Qmx
	mAC415RUIRe2B7hHHlXHDiYMzzdmyiRpVFaZ8W4G0FSQIoWCuxL5XVhTvgdN1jS7YCmBC8zCAjtYe
	Fzxv2C0D+fe0WP+U7fjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjNvP-0004d5-Ci; Thu, 11 Jun 2020 14:11:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjNvG-0004cW-33
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 14:11:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E45301F1;
 Thu, 11 Jun 2020 07:11:11 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A4C0F3F6CF;
 Thu, 11 Jun 2020 07:11:08 -0700 (PDT)
Date: Thu, 11 Jun 2020 15:11:02 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Wooyeon Kim <wooy88.kim@samsung.com>
Subject: Re: [PATCH] arm64: fpsimd: Added API to manage fpsimd state inside
 kernel
Message-ID: <20200611141101.GA31408@gaia>
References: <CGME20200605073214epcas2p1576f3f90dbcefaad6180f2559ca5980d@epcas2p1.samsung.com>
 <20200605073052.23044-1-wooy88.kim@samsung.com>
 <20200605103705.GD85498@C02TD0UTHF1T.local>
 <20200608103340.GA31466@arm.com>
 <001401d63fd4$95646690$c02d33b0$@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <001401d63fd4$95646690$c02d33b0$@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_071114_176024_1D8D0AEA 
X-CRM114-Status: GOOD (  12.03  )
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
 'Sanghoon Lee' <shoon114.lee@samsung.com>, 'Wooki Min' <wooki.min@samsung.com>,
 'Dave Martin' <Dave.Martin@arm.com>, 'Kees Cook' <keescook@chromium.org>,
 'Suzuki K Poulose' <suzuki.poulose@arm.com>, jihun.kim@samsung.com,
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

On Thu, Jun 11, 2020 at 06:42:12PM +0900, Wooyeon Kim wrote:
> I am in charge of camera driver development in Samsung S.LSI division.
> 
> In order to guarantee real time processing such as Camera 3A algorithm in
> current or ongoing projects, prebuilt binary is loaded and used in kernel
> space, rather than user space.

Thanks for the additional details.

If you do such intensive processing in an IRQ context you'd probably
introduce additional IRQ latency. Wouldn't offloading such work to a
real-time (user) thread help? In a non-preempt-rt kernel, I don't think
you can get much in terms of (soft) guarantees for IRQ latency anyway.

> Because the binary is built with other standard library which could use
> FPSIMD register, kernel API should keep the original FPSIMD state for other
> user tasks.

Can you not recompile those libraries not to use FP?

As Mark said, for a kernel API we require at least an in-kernel,
upstreamed, user of that functionality.

> In the case of the kernel_neon_begin / kernel_neon_end that you mentioned,
> there is a limitation that cannot be used in hardirq context.
> Also, if another kernel task switching occurs while kernel API is being
> used, fpsimd register corruption may occur.

kernel_neon_begin/end disable preemption, so you can't have a task
switch (you can have interrupts though but we don't allow FPSIMD in IRQ
context).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
