Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4EA1DCEDE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 16:04:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uAHK/X8MDOqzhg+ZgWR7CWCj8VuJizKwXia02AGVO3o=; b=dCyis5ODcoLotRFUNqdQOeT7M9
	nd630tFuPYxgjUVjjrMr08XaZ5GeWnX6f+7a7Hx8TZVnyysaFCBdzHSlil7NLrWLAYnJS059N5o2Q
	tQpED+b5dWP24eh1h4yVQDHVO1qazeJ5U3Vjvmxavk4AE5aXSybT7YUbrAf7X5vu4869DIgmbG5E0
	OnMYEsyEwO/9tTHVyH0H0e0R4QUto4wQtC6NJNNEqfBiaRcypki6hg8hS5H+Wq0x7NtNQIsHWKh6w
	rmxKFXWkoRj2Zd6/0d1vZxAFaDuzc8wNtaobAhB24QClw9MDXfy1Np2W3HoOX8dHfmkrOlm/db+h+
	QDlDrJHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jblnw-0008Fg-Dm; Thu, 21 May 2020 14:04:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblne-0008CV-8p
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 14:03:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9BDD0D6E;
 Thu, 21 May 2020 07:03:52 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 48DC43F305;
 Thu, 21 May 2020 07:03:51 -0700 (PDT)
References: <20200519161755.209565-1-maz@kernel.org>
 <20200519161755.209565-5-maz@kernel.org>
 <20200519222447.GJ1551@shell.armlinux.org.uk>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 04/11] ARM: Allow IPIs to be handled as normal interrupts
In-reply-to: <20200519222447.GJ1551@shell.armlinux.org.uk>
Date: Thu, 21 May 2020 15:03:49 +0100
Message-ID: <jhjk115xu4a.mognet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_070354_362347_96E0658C 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sumit Garg <sumit.garg@linaro.org>, kernel-team@android.com,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 linux-kernel@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 19/05/20 23:24, Russell King - ARM Linux admin wrote:
> On Tue, May 19, 2020 at 05:17:48PM +0100, Marc Zyngier wrote:
>> In order to deal with IPIs as normal interrupts, let's add
>> a new way to register them with the architecture code.
>>
>> set_smp_ipi_range() takes a range of interrupts, and allows
>> the arch code to request them as if the were normal interrupts.
>> A standard handler is then called by the core IRQ code to deal
>> with the IPI.
>>
>> This means that we don't need to call irq_enter/irq_exit, and
>> that we don't need to deal with set_irq_regs either. So let's
>> move the dispatcher into its own function, and leave handle_IPI()
>> as a compatibility function.
>>
>> On the sending side, let's make use of ipi_send_mask, which
>> already exists for this purpose.
>
> You say nothing about the nesting of irq_enter() and irq_exit()
> for scheduler_ipi().
>
> Given that lockdep introduced the requirement that hard IRQs can't
> be nested, are we sure that calling irq_exit() twice is safe?
>
> Looking at irqtime_account_irq(), it seems that will cause double-
> accounting of in-interrupt time, since we will increment
> irq_start_time by just over twice the the period spent handling
> the IPI.
>
> I think the rest of irq_exit() should be safe, but still, this
> behaviour should be documented at the very least, if not avoided.
>

x86 does the same (though IIUC only when tracing reschedule IPI's), and
MIPS has the same issue as it also uses generic IRQ IPI's - so although
it's not ideal, I think we can live with it.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
