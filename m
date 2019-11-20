Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB38310413F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 17:46:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NZgR5GTu5c7NkGsKjAL1MpBhcS69s/R0w9fgr/3Ikxw=; b=pjxr0dPc0azLBI
	2cFABsZXss+reZ/rdiFRWlo4dUlLQZpnXAPl5NJPB/Rj1J8apVvp+icRqGoGVQxxBmH3uLsg/+Hu8
	Yu0G0HAGGzQRqmk1ORFQpY68LtywvYX1CgVr5I9fOU2NSTD4hyRQOWuCJBjaj/N+6qCaUZiLmea6I
	WxjI9Gku/koasPB0PTR/7rG10bPTE4A6spfRTtktUX8on8yD8g2lu15m0DvxA1v5LbgEzg2swLsks
	MrwqxObK20Q0s6vJl5ThqGs97Ft4sknK5IDlEmaaR5BF8Vjxs8PAEP0Ku+rVmufsdDxstTX6J4Ese
	FwUCuSt+71CTJYQimuyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXT7d-00061M-BA; Wed, 20 Nov 2019 16:46:29 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXT7L-0005vb-PB
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 16:46:15 +0000
Received: by mail-qt1-x844.google.com with SMTP id t8so223781qtc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 08:46:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=H1I8Q0uvTMftFbsqo385XibMFqOnKgz+EL3S74lwt5g=;
 b=YciHKmfyc8d2nqxQs2mnuKjbwBonwtFfob2R9jC5U7JkQT0Hy1/2tLxVwYqg7SI5w9
 8TVAOk9AbD0jFa4D4rofqTmKI7perOD9YJiW+ZGPRa32Mbj+crk2ARTTY9BHMyiTLOrF
 tiOOs66yAnPScQDkkmybVx6ZxQkizO7QEwPWidf2wj7n8XeSzlI9dyAnW/G1P2DThVeP
 URwFJ/OcEdGjb7AUZ/BBeu1ZHJzyDozuqliXGyU19zH/Avkj8tGesLhUcbBsU++2Tjhm
 9W8qGy+mLRdzukef6KLq2hXcI3J5UH1UHJi+fltK2Gm1CzCherBBZc5WpGctLPdxPzV+
 ZhMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=H1I8Q0uvTMftFbsqo385XibMFqOnKgz+EL3S74lwt5g=;
 b=lJZQjjMNTqKCrOWcZK1UYT/9GimbokQtRYCmkZtXna3Yy95Uye8RIHMa2Adf/2sMof
 fHteLbilKpSo/xqA6kDH2aeHUhnfhRhs8xA5OqRnFbX1hYDz467ZIkwIikXIx4xM2lLD
 Q/m0nHkrun3BCm0MuvJCy1iybmk7pnKWJU07Y0xUVQsderI2hK91OhhAYCCn0QjIY7Eo
 TW2z+gdyrbgc3DXv7T0qkg631gBnZzDpdP9kb+Kf+eeT8ph1GWJhGCVAi0mM6fFY3y41
 eDyzHbg2WApg9VJ0ZwmAqdNz38u6KefAF8+0GvjiUOmIviitRUSMVZt1Q4UhncGAA+H0
 2rPw==
X-Gm-Message-State: APjAAAXjh12WZZG8MLADNAY+Ggcr/iNT3OTzGag95LPyTCRCbex5dxo7
 YIcmesPHAnZ8/+q3zDTjDFcRWeLxkg0PzSe7qP0=
X-Google-Smtp-Source: APXvYqyIyGwFgibwBrnWG32yPo77Ns1KeZcW/fPNm3vY+P21naFPr+fo5MNmuF4azFwIk/x0OaSXgsDijDcyzrKIexA=
X-Received: by 2002:ac8:5249:: with SMTP id y9mr3418796qtn.81.1574268370364;
 Wed, 20 Nov 2019 08:46:10 -0800 (PST)
MIME-Version: 1.0
References: <CAPaFbat4MM0=iVB-VazTK9=2qRebAgEN4euYCTESRo3yfx75Kw@mail.gmail.com>
 <20191119233633.GG25745@shell.armlinux.org.uk>
 <CAPaFbatG+ePwjCnBva1tfmzmvpHZv9xW3nM4gj2DTpFn=D+9Vg@mail.gmail.com>
 <2cd3e872-57d5-5cbb-78d7-98da6447dc59@arm.com>
 <392e74d78b48e04040cedfc26ed8ce81@www.loen.fr>
 <CAPaFbavWjCJKjUN6nA8Gc4urAMzLt-YVB4ED5DVarenrvMgnvQ@mail.gmail.com>
 <5b230ce5eb43fc014a9c7224d980e79a@www.loen.fr>
In-Reply-To: <5b230ce5eb43fc014a9c7224d980e79a@www.loen.fr>
From: Leonid Movshovich <event.riga@gmail.com>
Date: Wed, 20 Nov 2019 16:45:59 +0000
Message-ID: <CAPaFbatgHvu-0q4R7pbVyKOwOY5D1rZvMUweGgLkfGsZk0SH1A@mail.gmail.com>
Subject: Re: [PATCH] irq-gic: select all CPU's selected in interrupt affinity
 settings
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_084611_867471_BCF4D09A 
X-CRM114-Status: GOOD (  24.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (event.riga[at]gmail.com)
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
Cc: Robin Murphy <robin.murphy@arm.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 20 Nov 2019 at 15:39, Marc Zyngier <maz@kernel.org> wrote:
>
> On 2019-11-20 15:28, Leonid Movshovich wrote:
> > On Wed, 20 Nov 2019 at 15:04, Marc Zyngier <maz@kernel.org> wrote:
> >>
> >> On 2019-11-20 01:15, Robin Murphy wrote:
> >> > On 2019-11-20 12:24 am, Leonid Movshovich wrote:
> >> >> On Tue, 19 Nov 2019 at 23:36, Russell King - ARM Linux admin
> >> >> <linux@armlinux.org.uk> wrote:
> >> >>>
> >> >>> On Tue, Nov 19, 2019 at 11:12:26PM +0000, event wrote:
> >> >>>> So far only a CPU selected with top affinity bit was selected.
> >> >>>> This
> >> >>>> resulted in all interrupts
> >> >>>> being processed by CPU0 by default despite "FF" default
> >> affinity
> >> >>>> setting for all interrupts
> >> >>>
> >> >>> Have you checked whether this causes _ALL_ CPUs in the mask to
> >> be
> >> >>> delivered a single interrupt, thereby causing _ALL_ CPUs to be
> >> >>> slowed down and hit the same locks at the same time.
> >> >>>
> >> >> Yes, I've checked this. No, interrupt is delivered to only one
> >> CPU.
> >> >> Also ARM GIC architecture specification specifically states in
> >> >> chapter
> >> >> 3.1.1 that hardware interrupts are delivered to a single CPU in
> >> >> multiprocessor system ("1-N model").
> >> >
> >> > But see also section 3.2.3 - just because only one CPU actually
> >> runs
> >> > the given ISR doesn't necessarily guarantee that the others
> >> *weren't*
> >> > interrupted. I'd also hesitate to make any assumptions that all
> >> GIC
> >> > implementations behave exactly the same way.
> >>
> >> What happens is that *all* CPUs are being sent the interrupt, and
> >> there
> >> is some logic in the GIC that ensures that only one sees it (the
> >> first
> >> one to read the IAR register). All the other see a spurious (1023)
> >> interrupt, and have wasted some precious cycles in doing so.
> >
> > Cycles are only precious when system is under high load. Under high
> > load, to achieve fair spread of interrupts between CPUs one would
> > need
> > a userspace app (irqbalance) to sit there and constantly rebalance
> > smp_affinity based on /proc/interrupts. Hard to believe such an
> > approach wastes less cycles.
>
> You'd be surprised. As always when looking at these things, do come up
> with actual figures with a wide range of workloads that show benefits
> for the approach you're suggesting.
>
> Also, if your system isn't under high load, why would you even care
> about this kind of distribution?

Coming back to my network example, under moderate load, without
distribution, you'd get one CPU struggling to process all the traffic,
while others sitting idle.

>
> >> I get this patch, more or less well written, every other year.
> >> My answer is that it may help a very small minority of use cases,
> >> and
> >> suck for everyone else. So thank you, but no, thank you.
> >
> > I was wondering, why such an obvious change was never made. Now I
> > know
> > whom to blame :).
>
> The MAINTAINERS file (and a basic git log) would have told you that.
> And yes, I'm proudly taking the blame of having resisted this all
> along.
>
> > Anyway, I don't suggest "happiness for everyone". I suggest to change
> > the behaviour AND default affinity. So existing setups are not
> > affected AND "small minority" gets the benefit.
>
> As I said above, show me the numbers on a wide range of HW, with a wide
> range of workloads.

If the default affinity would be changed, then behaviour will stay the
same as it it now. Thus, change would only affect those who would
deliberately and knowingly want to spread the load.

>
>          M.
> --
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
