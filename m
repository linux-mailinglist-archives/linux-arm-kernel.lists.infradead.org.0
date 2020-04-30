Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D4A1BF13C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 09:21:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HFv5Wd4ByMaJ1kU24+ZphIT3nnnYKDEGT/yKeV6DsXs=; b=qwXLH6SIPVKOZK
	k4hDCppWNrXSbo+/pWgdZ9H4sZIfeY2N4hVuIJ1zp3T1G//cjoWX6F5N/ultXOFPE3CFOmCM+Le75
	pMpJ455EdbiwKCGet9KdBmU0DlBp/DE3Ia5Y9qfyw6msfKCCteAtDTlEYW0HdwNgWZow+ywez5ciG
	Np7Ef+DZ9gzOcFyV/QzVl5Sz5fwjBldUpu/MIt6uH116p9S1f7n39xOMU9OZj5nT5AsbP71sk2I+Q
	pi22C9gk4MTQFqKfw2uFtvTMhbPCtM8NcoG3HHRsqmL3iS8gZmUDFLA0Zh0rUw41iNP746Y67qzib
	FfEXcOCsQnKAIZgDUyQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU3VB-0002Rv-7L; Thu, 30 Apr 2020 07:20:57 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU3Uy-0002QY-Nt
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 07:20:46 +0000
Received: by mail-lj1-x243.google.com with SMTP id h4so5308694ljg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 00:20:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sZr1+3vRqE2FhkSDX5CtrXLEsRTbr/eXU3dnq5Mc93U=;
 b=VfgVR9kKpczFIeN8+LnvP75Wr/OHUdd2lCZEgYm3svO+8+riMTwzBRxO3Cq9J/TmLy
 ChH42dOaLXAXEjr5NC5/1e8eDGNWYtF6C0jm+iiDKuZkbZQPWzgw7D3QEc//FdP1Jsf6
 4666lNVgzk7UM9nzTjLN0iJ+ibaKAS3FF48QAuNBMS7GvyxtQqRiGa42vUoO1TIWK4gT
 iQkBiiMKb0BIJStddAjAiqa0Z/KOZSANm/AiLNWfKVkVCqHX9I5BMPlA6jCtli3TGAkr
 brC3qTzapu8AcZ/0uZv78PL84nfqYZkh7DV5N5duQi/Y91l4Mxab5cIqLrjZh7Z4JuFw
 +0sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sZr1+3vRqE2FhkSDX5CtrXLEsRTbr/eXU3dnq5Mc93U=;
 b=AuxkvnmInLVRkNVLu1Cnu37o+Ipkk/e1+F97RfZH+He1KuTaIYVmPqycqU1iy0PrAo
 2nknz5wCLVJDdHTE4vJtbs22zfLeAIcS7fe7QF91Jc1iiVMJaGD1zFnU0Zmfa5HZNIez
 oxi43ZmYjzW2diS7lrlmOPivK3CKfKlNs26pLznDYtbcyGRzWUYuXpSlig/Sjx1E3/ec
 0z6tq2gN1ekRPuFFTrQIp94EDfo2DZWR0sPJvJJCsvvIvvjXjXlgCOVXSFGXIT+1h1uI
 hoRZLszuyP8lhTcKbAKXCf7UkAwtWvq+zRoCxAazHsE8kWb6Xm10O2mh6IOJV8ziv1Yd
 efxg==
X-Gm-Message-State: AGi0PuZzY9eqkvd6tpyta03DLvXOMuTi1MhoRAiG9nmRuIdhFEVOC6f6
 BsRiaKHKZGWv8uRRiUfCqlNt6XNmDxN5q6SyS5sfpQ==
X-Google-Smtp-Source: APiQypK4Y04DV3XhNEdb66Dsm96rNOrnM5vyzC6FyLQ9pLxPdGP3mKpGyotMazaX8TgXg6B+lWsEIipHmTHJXN1XPRQ=
X-Received: by 2002:a2e:a365:: with SMTP id i5mr1242958ljn.293.1588231241153; 
 Thu, 30 Apr 2020 00:20:41 -0700 (PDT)
MIME-Version: 1.0
References: <1587726554-32018-1-git-send-email-sumit.garg@linaro.org>
 <1587726554-32018-3-git-send-email-sumit.garg@linaro.org>
 <20200425112950.3a4815b6@why>
 <6fd3d96181ec53f735ef1b6a79d28da1@kernel.org>
 <CAFA6WYPNNNZeX5zpadayfiZ7P_mHmiREpUd5LZ3Jp+TjGVqoEw@mail.gmail.com>
 <ac57cb4bbb6507ee98f199d68a514503@kernel.org>
In-Reply-To: <ac57cb4bbb6507ee98f199d68a514503@kernel.org>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Thu, 30 Apr 2020 12:50:28 +0530
Message-ID: <CAFA6WYMheJxeKVC_YWN9owNJhcWTBsaOCvZXxq=GVj5ROJ0cvg@mail.gmail.com>
Subject: Re: [RFC Patch v1 2/4] irqchip/gic-v3: Add support to handle SGI as
 pseudo NMI
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_002044_819252_FABCA512 
X-CRM114-Status: GOOD (  44.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On Wed, 29 Apr 2020 at 13:53, Marc Zyngier <maz@kernel.org> wrote:
>
> Hi Sumit,
>
> On 2020-04-28 15:11, Sumit Garg wrote:
> > Hi Marc,
> >
> > Thanks for your comments and apologies for my delayed response as I
> > was exploring ideas that you have shared.
> >
> > On Sat, 25 Apr 2020 at 20:02, Marc Zyngier <maz@kernel.org> wrote:
> >>
> >> On 2020-04-25 11:29, Marc Zyngier wrote:
> >> > On Fri, 24 Apr 2020 16:39:12 +0530
> >> > Sumit Garg <sumit.garg@linaro.org> wrote:
> >> >
> >> > Hi Sumit,
> >> >
> >> >> With pseudo NMIs enabled, interrupt controller can be configured to
> >> >> deliver SGI as a pseudo NMI. So add corresponding handling for SGIs.
> >> >>
> >> >> Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
> >> >> ---
> >> >>  drivers/irqchip/irq-gic-v3.c | 22 +++++++++++++++++-----
> >> >>  1 file changed, 17 insertions(+), 5 deletions(-)
> >> >>
> >> >> diff --git a/drivers/irqchip/irq-gic-v3.c
> >> >> b/drivers/irqchip/irq-gic-v3.c
> >> >> index d7006ef..be361bf 100644
> >> >> --- a/drivers/irqchip/irq-gic-v3.c
> >> >> +++ b/drivers/irqchip/irq-gic-v3.c
> >> >> @@ -609,17 +609,29 @@ static inline void gic_handle_nmi(u32 irqnr,
> >> >> struct pt_regs *regs)
> >> >>      if (irqs_enabled)
> >> >>              nmi_enter();
> >> >>
> >> >> -    if (static_branch_likely(&supports_deactivate_key))
> >> >> -            gic_write_eoir(irqnr);
> >> >>      /*
> >> >>       * Leave the PSR.I bit set to prevent other NMIs to be
> >> >>       * received while handling this one.
> >> >>       * PSR.I will be restored when we ERET to the
> >> >>       * interrupted context.
> >> >>       */
> >> >> -    err = handle_domain_nmi(gic_data.domain, irqnr, regs);
> >> >> -    if (err)
> >> >> -            gic_deactivate_unhandled(irqnr);
> >> >> +    if (likely(irqnr > 15)) {
> >> >> +            if (static_branch_likely(&supports_deactivate_key))
> >> >> +                    gic_write_eoir(irqnr);
> >> >> +
> >> >> +            err = handle_domain_nmi(gic_data.domain, irqnr, regs);
> >> >> +            if (err)
> >> >> +                    gic_deactivate_unhandled(irqnr);
> >> >> +    } else {
> >> >> +            gic_write_eoir(irqnr);
> >> >> +            if (static_branch_likely(&supports_deactivate_key))
> >> >> +                    gic_write_dir(irqnr);
> >> >> +#ifdef CONFIG_SMP
> >> >> +            handle_IPI(irqnr, regs);
> >> >> +#else
> >> >> +            WARN_ONCE(true, "Unexpected SGI received!\n");
> >> >> +#endif
> >> >> +    }
> >> >>
> >> >>      if (irqs_enabled)
> >> >>              nmi_exit();
> >> >
> >> > If there is one thing I would like to avoid, it is to add more ugly
> >> > hacks to the way we handle SGIs. There is very little reason why SGIs
> >> > should be handled differently from all other interrupts. They have the
> >> > same properties, and it is only because of the 32bit legacy that we
> >> > deal
> >> > with them in such a cumbersome way. Nothing that we cannot fix though.
> >> >
> >> > What I would really like to see is first a conversion of the SGIs to
> >> > normal, full fat interrupts. These interrupts can then be configured as
> >> > NMI using the normal API.
> >> >
> >> > I think Julien had something along these lines (or was that limited to
> >> > the PMU?). Otherwise, I'll happily help you with that.
> >>
> >> OK, to give you an idea of what I am after, here's a small series[1]
> >> that
> >> can be used as a base (it has been booted exactly *once* on a model,
> >> and
> >> is thus absolutely perfect ;-).
> >
> > Thanks for this series. I have re-based my patch-set on top of this
> > series [1] and just dropped this patch #2. It works fine for me.
>
> I just had a look.
>
> "irqchip/gic-v3: Enable arch specific IPI as pseudo NMI" is still done
> the wrong way, I'm afraid. You directly poke into the GIC configuration,
> which isn't acceptable, as you leave the rest of the kernel completely
> unaware that this is a NMI. You should make the interrupt a NMI as it
> is being configured in gic_smp_init(), calling request_nmi() at this
> stage.

Sure, I will try to follow your suggestion. But I think it's better to
first generalize the base IPI allocation scheme.

>
> >>
> >> There is still a bit of work to be able to actually request a SGI
> >> (they
> >> are hard-wired as chained interrupts so far, as this otherwise changes
> >> the output of /proc/interrupts, among other things), but you will
> >> hopefully see what I'm aiming for.
> >
> > I was exploring this idea: "request a SGI". I guess here you meant to
> > request a new SGI as a normal NMI/IRQ via common APIs such as
> > request_percpu_nmi() or request_percpu_irq() rather than statically
> > adding a new IPI as per this patch [2], correct? If yes, then I have
> > following follow up queries:
> >
> > 1. Do you envision any drivers to use SGIs in a similar manner as they
> > use SPIs or PPIs?
>
> No. SGIs are already pretty much all allocated for the kernel's internal
> needs and once we allocate an additional one for this KGDB feature,
> we're out of non-secure SGIs. We could start a multiplexing scheme to
> overcome this, but the kernel already has plenty of other mechanisms
> for internal communication. After all, why would you need anything more
> than smp_call_function()?
>
> The single use case I can imagine is that you'd want to signal a CPU
> that isn't running Linux. This would require a lot more work than
> just an interrupt, and is out of scope for the time being.

Thanks for the clarification.

>
> > 2. How do you envision allocation of SGIs as currently they are
> > hardcoded in an arch specific file (like arch/arm64/kernel/smp.c
> > +794)?
>
> What I would like is for the arch code to request these interrupts as
> normal interrupts, for which there is one problem to solve: how do you
> find out about the Linux IRQ number for a given IPI. Or rather, how
> do you get rid of the requirement to have IPI numbers at all and just
> say "give me a per-cpu interrupt that I can use as an IPI, and by the
> way here's the handler you can call".

I think what you are looking for here is something that could be
sufficed via enabling "CONFIG_GENERIC_IRQ_IPI" framework for arm64/arm
architectures. It's currently used for mips architecture. Looking at
its implementation, I think it should be possible to hook up SGIs
under new IPI irq_domain for GICv2/v3.

So with this framework we should be able to dynamically allocate IPIs
and use common APIs such as request_irq()/request_nmi() to tell IPI
specific handlers.

If this approach looks sane to you then I can start working on a PoC
implementation for arm64.

>
> And I insist: this is only for the arch code. Nothing else.
>

Makes sense.

> > 3. AFAIK, the major difference among SGIs and SPIs or PPIs is the
> > trigger method where SGIs are software triggered and SPIs or PPIs are
> > hardware triggered. And I couldn't find a generalized method across
> > architectures to invoke SGIs. So how do you envision drivers to invoke
> > SGIs in an architecture agnostic manner?
>
> Well, SGIs are not architecture agnostic. They are fundamentally part of
> the GIC architecture, which only exists for the two ARM architectures.
>
> SGIs are not a general purpose mechanism. IPIs are, and we have services
> on top of IPIs, such as invoking a function on a remote CPU. What else
> do you need?

Yeah that was mine understanding as well. But I was just clarifying if
you have any further use-cases in mind for IPIs.

-Sunit

>
> Thanks,
>
>           M.
> --
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
