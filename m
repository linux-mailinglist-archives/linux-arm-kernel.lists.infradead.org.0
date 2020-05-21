Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FB61DCEDD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 16:03:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Yh/O5aMVaGHN/jEFBU7zXTKBmrUOW+txDY6YFnmNa0E=; b=KD6avi4UzDmcARC40KkJoyuobF
	UDCtiW1k41uOuLKjjTcRWeUldHGB15Wcg75db7bJqe22qIL1nm9D0pP+gUn90OGtwGH2njY1SbXOp
	awygfWATOTESGizDMGbk4IuSiq5p3Exq5Zv67R8ZbTYKDBSxKfoje+FKLrIG8V7UDGUskEd1phh90
	fGybbmIuBiO2e8iRhvaBnDLqh+u9YRIoxVBi9EwuNPMYGzjGmjwi1AyH3o1BcVx+AqSBPlkW9/qFh
	d22jLRik8ZGwHeLmiApSfYG/yba742+sfRpDRwugX5GMOx0aloHasx83foB6wSJwpH1OdqEKZJ/jl
	z8XNBBoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jblnc-00082O-QD; Thu, 21 May 2020 14:03:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblnS-00081S-AR
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 14:03:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 935A4D6E;
 Thu, 21 May 2020 07:03:37 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3F97D3F305;
 Thu, 21 May 2020 07:03:36 -0700 (PDT)
References: <20200519161755.209565-1-maz@kernel.org>
 <20200519161755.209565-4-maz@kernel.org>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 03/11] arm64: Allow IPIs to be handled as normal interrupts
In-reply-to: <20200519161755.209565-4-maz@kernel.org>
Date: Thu, 21 May 2020 15:03:29 +0100
Message-ID: <jhjlfllxu4u.mognet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_070342_402890_FAA21A1B 
X-CRM114-Status: GOOD (  18.49  )
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
 Russell King <linux@arm.linux.org.uk>, Jason Cooper <jason@lakedaemon.net>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 19/05/20 17:17, Marc Zyngier wrote:
> In order to deal with IPIs as normal interrupts, let's add
> a new way to register them with the architecture code.
>
> set_smp_ipi_range() takes a range of interrupts, and allows
> the arch code to request them as if the were normal interrupts.
                                      ^^^
                                  s/the/they/

> A standard handler is then called by the core IRQ code to deal
> with the IPI.
>
> This means that we don't need to call irq_enter/irq_exit, and
> that we don't need to deal with set_irq_regs either. So let's
> move the dispatcher into its own function, and leave handle_IPI()
> as a compatibility function.
>
> On the sending side, let's make use of ipi_send_mask, which
> already exists for this purpose.
>
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  arch/arm64/Kconfig           |  1 +
>  arch/arm64/include/asm/smp.h |  5 ++
>  arch/arm64/kernel/smp.c      | 92 +++++++++++++++++++++++++++++++-----
>  3 files changed, 86 insertions(+), 12 deletions(-)
>
> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index 061f60fe452f..93ba0025e7b9 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -247,6 +254,8 @@ asmlinkage notrace void secondary_start_kernel(void)
>        */
>       notify_cpu_starting(cpu);
>
> +	ipi_setup(cpu);
> +
>       store_cpu_topology(cpu);
>       numa_add_cpu(cpu);
>
> @@ -374,6 +383,8 @@ void cpu_die(void)
>
>       local_daif_mask();
>
> +	ipi_teardown(cpu);
> +

Would it make sense to move it up to say __cpu_disable()? I'm thinking it
would make sense to bunch this up with the toggling of the cpu_online_mask
bit, and FWIW it'd match with the comment atop the cpuhp callsite.

Once the CPU is set as offline, all it has left to do is to go die in
do_idle(), so AFAICT we can do that IPI teardown anywhere inbetween.

>       /* Tell __cpu_die() that this CPU is now safe to dispose of */
>       (void)cpu_report_death();
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
