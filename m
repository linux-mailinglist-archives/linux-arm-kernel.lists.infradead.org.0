Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E02171BD730
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 10:23:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BFRlUnybijBXUWieuVFc2KtQ4mYVB5OWFDGJ0pBMe0c=; b=AVzjQEIPtrpQ9YQ64SdVJdt6Y
	QhNJoh7Zpd7PJo/lisNfPeOpyigMtJIXL5De/wgmfkbv57uWABGnzVYos87NhCRKeuH2d8/7YFxBB
	eDKs7A96/t20CCv1fwxZzYMwx0dc1J1Gjb/5EhEzfBn1VmRiriqjYvfUQgc5Ypgw+GeBRz9BDYrgg
	RemzGZfmUfznSSODd4r63t+eA88PVBpiqDyVGXA2f3zUVhIFVI7jxqMgRuwUsfXpgp0TPMfDjWAOK
	pPBGV+B0XVkZqkDaaibD4Du/76SVJE1rag9tA8vHAh3kpk7pcOtoX7V6taBahQBuGuaJzXQKt8s54
	Y13qIiTHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTi0J-0001IJ-Qq; Wed, 29 Apr 2020 08:23:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTi0A-0001Hh-Id
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 08:23:32 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CFE0F2083B;
 Wed, 29 Apr 2020 08:23:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588148610;
 bh=0UVv0Dm6NAErwc46CCRtkpaSdr1MlLFvEVwXEGbstNA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=aoLDgHdyIr+7W5xjns+neFIwh9hDaeAV6+CyFVferesQpAFjCj0WnD1g+EpqRxgLr
 FdtauSNQC/wUywx9rIB7VqSy9flTvXwa5TK2V8DtppAObzKxeGnHjX/RcHjTIRU5hP
 z+3pVZemfC5CO5EY9/MPNz6kQ7cfs+0vbvHBrBlo=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jTi08-007e8O-7P; Wed, 29 Apr 2020 09:23:28 +0100
MIME-Version: 1.0
Date: Wed, 29 Apr 2020 09:23:28 +0100
From: Marc Zyngier <maz@kernel.org>
To: Sumit Garg <sumit.garg@linaro.org>
Subject: Re: [RFC Patch v1 2/4] irqchip/gic-v3: Add support to handle SGI as
 pseudo NMI
In-Reply-To: <CAFA6WYPNNNZeX5zpadayfiZ7P_mHmiREpUd5LZ3Jp+TjGVqoEw@mail.gmail.com>
References: <1587726554-32018-1-git-send-email-sumit.garg@linaro.org>
 <1587726554-32018-3-git-send-email-sumit.garg@linaro.org>
 <20200425112950.3a4815b6@why> <6fd3d96181ec53f735ef1b6a79d28da1@kernel.org>
 <CAFA6WYPNNNZeX5zpadayfiZ7P_mHmiREpUd5LZ3Jp+TjGVqoEw@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <ac57cb4bbb6507ee98f199d68a514503@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: sumit.garg@linaro.org, daniel.thompson@linaro.org,
 jason@lakedaemon.net, catalin.marinas@arm.com, dianders@chromium.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jason.wessel@windriver.com, kgdb-bugreport@lists.sourceforge.net,
 tglx@linutronix.de, will@kernel.org, julien.thierry.kdev@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_012330_655903_6AE34F4C 
X-CRM114-Status: GOOD (  33.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Douglas Anderson <dianders@chromium.org>, julien.thierry.kdev@gmail.com,
 Jason Wessel <jason.wessel@windriver.com>,
 kgdb-bugreport@lists.sourceforge.net, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sumit,

On 2020-04-28 15:11, Sumit Garg wrote:
> Hi Marc,
> 
> Thanks for your comments and apologies for my delayed response as I
> was exploring ideas that you have shared.
> 
> On Sat, 25 Apr 2020 at 20:02, Marc Zyngier <maz@kernel.org> wrote:
>> 
>> On 2020-04-25 11:29, Marc Zyngier wrote:
>> > On Fri, 24 Apr 2020 16:39:12 +0530
>> > Sumit Garg <sumit.garg@linaro.org> wrote:
>> >
>> > Hi Sumit,
>> >
>> >> With pseudo NMIs enabled, interrupt controller can be configured to
>> >> deliver SGI as a pseudo NMI. So add corresponding handling for SGIs.
>> >>
>> >> Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
>> >> ---
>> >>  drivers/irqchip/irq-gic-v3.c | 22 +++++++++++++++++-----
>> >>  1 file changed, 17 insertions(+), 5 deletions(-)
>> >>
>> >> diff --git a/drivers/irqchip/irq-gic-v3.c
>> >> b/drivers/irqchip/irq-gic-v3.c
>> >> index d7006ef..be361bf 100644
>> >> --- a/drivers/irqchip/irq-gic-v3.c
>> >> +++ b/drivers/irqchip/irq-gic-v3.c
>> >> @@ -609,17 +609,29 @@ static inline void gic_handle_nmi(u32 irqnr,
>> >> struct pt_regs *regs)
>> >>      if (irqs_enabled)
>> >>              nmi_enter();
>> >>
>> >> -    if (static_branch_likely(&supports_deactivate_key))
>> >> -            gic_write_eoir(irqnr);
>> >>      /*
>> >>       * Leave the PSR.I bit set to prevent other NMIs to be
>> >>       * received while handling this one.
>> >>       * PSR.I will be restored when we ERET to the
>> >>       * interrupted context.
>> >>       */
>> >> -    err = handle_domain_nmi(gic_data.domain, irqnr, regs);
>> >> -    if (err)
>> >> -            gic_deactivate_unhandled(irqnr);
>> >> +    if (likely(irqnr > 15)) {
>> >> +            if (static_branch_likely(&supports_deactivate_key))
>> >> +                    gic_write_eoir(irqnr);
>> >> +
>> >> +            err = handle_domain_nmi(gic_data.domain, irqnr, regs);
>> >> +            if (err)
>> >> +                    gic_deactivate_unhandled(irqnr);
>> >> +    } else {
>> >> +            gic_write_eoir(irqnr);
>> >> +            if (static_branch_likely(&supports_deactivate_key))
>> >> +                    gic_write_dir(irqnr);
>> >> +#ifdef CONFIG_SMP
>> >> +            handle_IPI(irqnr, regs);
>> >> +#else
>> >> +            WARN_ONCE(true, "Unexpected SGI received!\n");
>> >> +#endif
>> >> +    }
>> >>
>> >>      if (irqs_enabled)
>> >>              nmi_exit();
>> >
>> > If there is one thing I would like to avoid, it is to add more ugly
>> > hacks to the way we handle SGIs. There is very little reason why SGIs
>> > should be handled differently from all other interrupts. They have the
>> > same properties, and it is only because of the 32bit legacy that we
>> > deal
>> > with them in such a cumbersome way. Nothing that we cannot fix though.
>> >
>> > What I would really like to see is first a conversion of the SGIs to
>> > normal, full fat interrupts. These interrupts can then be configured as
>> > NMI using the normal API.
>> >
>> > I think Julien had something along these lines (or was that limited to
>> > the PMU?). Otherwise, I'll happily help you with that.
>> 
>> OK, to give you an idea of what I am after, here's a small series[1]
>> that
>> can be used as a base (it has been booted exactly *once* on a model, 
>> and
>> is thus absolutely perfect ;-).
> 
> Thanks for this series. I have re-based my patch-set on top of this
> series [1] and just dropped this patch #2. It works fine for me.

I just had a look.

"irqchip/gic-v3: Enable arch specific IPI as pseudo NMI" is still done
the wrong way, I'm afraid. You directly poke into the GIC configuration,
which isn't acceptable, as you leave the rest of the kernel completely
unaware that this is a NMI. You should make the interrupt a NMI as it
is being configured in gic_smp_init(), calling request_nmi() at this 
stage.

>> 
>> There is still a bit of work to be able to actually request a SGI 
>> (they
>> are hard-wired as chained interrupts so far, as this otherwise changes
>> the output of /proc/interrupts, among other things), but you will
>> hopefully see what I'm aiming for.
> 
> I was exploring this idea: "request a SGI". I guess here you meant to
> request a new SGI as a normal NMI/IRQ via common APIs such as
> request_percpu_nmi() or request_percpu_irq() rather than statically
> adding a new IPI as per this patch [2], correct? If yes, then I have
> following follow up queries:
> 
> 1. Do you envision any drivers to use SGIs in a similar manner as they
> use SPIs or PPIs?

No. SGIs are already pretty much all allocated for the kernel's internal
needs and once we allocate an additional one for this KGDB feature,
we're out of non-secure SGIs. We could start a multiplexing scheme to
overcome this, but the kernel already has plenty of other mechanisms
for internal communication. After all, why would you need anything more
than smp_call_function()?

The single use case I can imagine is that you'd want to signal a CPU
that isn't running Linux. This would require a lot more work than
just an interrupt, and is out of scope for the time being.

> 2. How do you envision allocation of SGIs as currently they are
> hardcoded in an arch specific file (like arch/arm64/kernel/smp.c
> +794)?

What I would like is for the arch code to request these interrupts as
normal interrupts, for which there is one problem to solve: how do you
find out about the Linux IRQ number for a given IPI. Or rather, how
do you get rid of the requirement to have IPI numbers at all and just
say "give me a per-cpu interrupt that I can use as an IPI, and by the
way here's the handler you can call".

And I insist: this is only for the arch code. Nothing else.

> 3. AFAIK, the major difference among SGIs and SPIs or PPIs is the
> trigger method where SGIs are software triggered and SPIs or PPIs are
> hardware triggered. And I couldn't find a generalized method across
> architectures to invoke SGIs. So how do you envision drivers to invoke
> SGIs in an architecture agnostic manner?

Well, SGIs are not architecture agnostic. They are fundamentally part of
the GIC architecture, which only exists for the two ARM architectures.

SGIs are not a general purpose mechanism. IPIs are, and we have services
on top of IPIs, such as invoking a function on a remote CPU. What else
do you need?

Thanks,

          M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
