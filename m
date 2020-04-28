Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 321E11BC0D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:12:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PitA6O+v7PB9sAPSb8uGD7SHY9vF3NtFsC3y7Df3ptM=; b=o4nzUNvB8AbcIb
	tKc2UZyH6PIMvQIlM+u6GYQD20x7cNEqZDIrjfI24e+flEcWiY8L7bHEjC9M0gUiAwfdtUbC+JD3P
	WNgMQbuKiRDCZAHlvVcQTDnoiUtSKdd37PfixwPmmNkhurRNLSsE9UxEHbPuPz7ykAr0bYasWDD9t
	BkD+2DaNTDaB6OzyBY+ndqJUGzyFdVdmUCTZMOR/cUaITJufWKkH2ZjaLvme7Cdj49H71nINnkdSr
	NWwCYEdj1zdMzDUBcsy2/ODgZglEqbCRT3aU//kHQqJU+QP19kKdYjzhAn5dJ47eQUz7SV/L6IXqH
	V0a7FVedgBGMnNu7n9uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQyA-0005da-B9; Tue, 28 Apr 2020 14:12:18 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQxy-0005cb-6h
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:12:08 +0000
Received: by mail-lj1-x243.google.com with SMTP id f11so17044227ljp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 07:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9t0tu6yYKzN35uBYTbFFPc0dS5Ew+chbn+hE8zcVYWQ=;
 b=TyNk0pickYyy84k5NMTmvZ7WzQe7BnjIVvEcEofdf2pnFIF3UDagf9JUJ7ut92Rts+
 nXjwA9FP0UEvwZWuaI149nPEKt2yL8xUPonbQ9mtHTJjvMD/Ne/JMiOEcPscYQxC3BVd
 abFsVjRNuG1rglN1RNryTYcYXYInUM8AtHmY6EsqusqThuai3b1BiDUeb8DBaR3Mr8kf
 D9CZS48ljYs/GL52sBAI0g72KUUbAxeFaqGK+hw9/sGTqDJmNdX0D+nQKFKNj+3ua56o
 3qSpsNHTdHoduEWEIm2bb+bl32dw2mvf8MjPPX++HTjz3y89q2OJqYHsBwaDuCVI+U1T
 9/Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9t0tu6yYKzN35uBYTbFFPc0dS5Ew+chbn+hE8zcVYWQ=;
 b=h3AuPkQVxM0g6FxGX0TXeVt8IV+qeiYEZQT6VrHwKw+2mJ20JDphXP0hB5KMKcaURw
 69rf2oVDLGM1hn9RKiV8yIeKAwij5Txx751D+i3cH/u2qKfAuQMg4MUyf/u7ofB/P+0G
 9exYkmVSNKGDKiznkX6aVlN1ab2Ju931umHFvTV283Tt8uer8V3MF5SuIUUxPxrzDWKk
 oEI8ovb8Dkhw6J5Vg3zOZoDwZ/nRWMchhQA3u07vuazth2lNhyhHpHpZH6UWSOI3ryVm
 /gxEhnXtpunKlZPPCRolx7xO6Rali0BFG2gMPTXU08rj7D93NxCFDNRw8R+HYRcvAvBE
 gDBA==
X-Gm-Message-State: AGi0Pua/RC9xt3GQWSiiOT7/it4LVPPzq3PHepIgWe+Gn1w54u0meyXJ
 /3dfXgZyU10ladFVSpcvtni6s+/i9FHNgNfkf2Xx/w==
X-Google-Smtp-Source: APiQypLKjTvcl707sIjTA8Gi7R58xVWA0sIpl7IXDlKPS6s5Rejq4xHZpXS8mo+iRC6XTT0VWMqVNlDJbIp6fcMI3sI=
X-Received: by 2002:a2e:3809:: with SMTP id f9mr17881928lja.281.1588083123472; 
 Tue, 28 Apr 2020 07:12:03 -0700 (PDT)
MIME-Version: 1.0
References: <1587726554-32018-1-git-send-email-sumit.garg@linaro.org>
 <1587726554-32018-3-git-send-email-sumit.garg@linaro.org>
 <20200425112950.3a4815b6@why>
 <6fd3d96181ec53f735ef1b6a79d28da1@kernel.org>
In-Reply-To: <6fd3d96181ec53f735ef1b6a79d28da1@kernel.org>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Tue, 28 Apr 2020 19:41:50 +0530
Message-ID: <CAFA6WYPNNNZeX5zpadayfiZ7P_mHmiREpUd5LZ3Jp+TjGVqoEw@mail.gmail.com>
Subject: Re: [RFC Patch v1 2/4] irqchip/gic-v3: Add support to handle SGI as
 pseudo NMI
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_071206_244798_18758333 
X-CRM114-Status: GOOD (  29.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Thanks for your comments and apologies for my delayed response as I
was exploring ideas that you have shared.

On Sat, 25 Apr 2020 at 20:02, Marc Zyngier <maz@kernel.org> wrote:
>
> On 2020-04-25 11:29, Marc Zyngier wrote:
> > On Fri, 24 Apr 2020 16:39:12 +0530
> > Sumit Garg <sumit.garg@linaro.org> wrote:
> >
> > Hi Sumit,
> >
> >> With pseudo NMIs enabled, interrupt controller can be configured to
> >> deliver SGI as a pseudo NMI. So add corresponding handling for SGIs.
> >>
> >> Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
> >> ---
> >>  drivers/irqchip/irq-gic-v3.c | 22 +++++++++++++++++-----
> >>  1 file changed, 17 insertions(+), 5 deletions(-)
> >>
> >> diff --git a/drivers/irqchip/irq-gic-v3.c
> >> b/drivers/irqchip/irq-gic-v3.c
> >> index d7006ef..be361bf 100644
> >> --- a/drivers/irqchip/irq-gic-v3.c
> >> +++ b/drivers/irqchip/irq-gic-v3.c
> >> @@ -609,17 +609,29 @@ static inline void gic_handle_nmi(u32 irqnr,
> >> struct pt_regs *regs)
> >>      if (irqs_enabled)
> >>              nmi_enter();
> >>
> >> -    if (static_branch_likely(&supports_deactivate_key))
> >> -            gic_write_eoir(irqnr);
> >>      /*
> >>       * Leave the PSR.I bit set to prevent other NMIs to be
> >>       * received while handling this one.
> >>       * PSR.I will be restored when we ERET to the
> >>       * interrupted context.
> >>       */
> >> -    err = handle_domain_nmi(gic_data.domain, irqnr, regs);
> >> -    if (err)
> >> -            gic_deactivate_unhandled(irqnr);
> >> +    if (likely(irqnr > 15)) {
> >> +            if (static_branch_likely(&supports_deactivate_key))
> >> +                    gic_write_eoir(irqnr);
> >> +
> >> +            err = handle_domain_nmi(gic_data.domain, irqnr, regs);
> >> +            if (err)
> >> +                    gic_deactivate_unhandled(irqnr);
> >> +    } else {
> >> +            gic_write_eoir(irqnr);
> >> +            if (static_branch_likely(&supports_deactivate_key))
> >> +                    gic_write_dir(irqnr);
> >> +#ifdef CONFIG_SMP
> >> +            handle_IPI(irqnr, regs);
> >> +#else
> >> +            WARN_ONCE(true, "Unexpected SGI received!\n");
> >> +#endif
> >> +    }
> >>
> >>      if (irqs_enabled)
> >>              nmi_exit();
> >
> > If there is one thing I would like to avoid, it is to add more ugly
> > hacks to the way we handle SGIs. There is very little reason why SGIs
> > should be handled differently from all other interrupts. They have the
> > same properties, and it is only because of the 32bit legacy that we
> > deal
> > with them in such a cumbersome way. Nothing that we cannot fix though.
> >
> > What I would really like to see is first a conversion of the SGIs to
> > normal, full fat interrupts. These interrupts can then be configured as
> > NMI using the normal API.
> >
> > I think Julien had something along these lines (or was that limited to
> > the PMU?). Otherwise, I'll happily help you with that.
>
> OK, to give you an idea of what I am after, here's a small series[1]
> that
> can be used as a base (it has been booted exactly *once* on a model, and
> is thus absolutely perfect ;-).

Thanks for this series. I have re-based my patch-set on top of this
series [1] and just dropped this patch #2. It works fine for me.

>
> There is still a bit of work to be able to actually request a SGI (they
> are hard-wired as chained interrupts so far, as this otherwise changes
> the output of /proc/interrupts, among other things), but you will
> hopefully see what I'm aiming for.

I was exploring this idea: "request a SGI". I guess here you meant to
request a new SGI as a normal NMI/IRQ via common APIs such as
request_percpu_nmi() or request_percpu_irq() rather than statically
adding a new IPI as per this patch [2], correct? If yes, then I have
following follow up queries:

1. Do you envision any drivers to use SGIs in a similar manner as they
use SPIs or PPIs?
2. How do you envision allocation of SGIs as currently they are
hardcoded in an arch specific file (like arch/arm64/kernel/smp.c
+794)?
3. AFAIK, the major difference among SGIs and SPIs or PPIs is the
trigger method where SGIs are software triggered and SPIs or PPIs are
hardware triggered. And I couldn't find a generalized method across
architectures to invoke SGIs. So how do you envision drivers to invoke
SGIs in an architecture agnostic manner?

[1] https://git.linaro.org/people/sumit.garg/linux.git/?h=kgdb-nmi
[2] https://git.linaro.org/people/sumit.garg/linux.git/commit/?h=kgdb-nmi&id=fc89e5f395f89966110554a15ab0fa0f0d471132

-Sumit

>
> Thanks,
>
>          M.
>
> [1]
> https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git/log/?h=irq/gic-sgi
> --
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
