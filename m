Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB39C104240
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 18:38:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dkPlojJnwnA1m8RsuY+w+ARISuqTK5IgGrOL9AoCVO4=; b=LPN/dIIkMJM+TQ
	Or48n/O9OKSil5Athb+/1vfUN3jJHbSFZhPFUAd/uHdXdNvBoq6RvYtVDkJ3QIV1gcIm7L7osv+/t
	NI6aBjCCOWtAAoOqAlD5vMRenuMlvQ2jOxVZTALLFpgJMagAEOTw18YNbEF7pGDms1fm+6/VDddIq
	kI+LDYZijHMBPXbGUpUYdobVEBXDLd6XhOMipAev/P0Nl1a2vEEAY9uW3A3Md/jdB/bqp8u5vYlQQ
	Q4Coe48CDatdEfff0K2GwJ+9YdzMk0F8fmwiaGg3o3kedLYzhtBbBMc2L9wREE0Qo/tMTpQimGb5S
	Ya0D2wBXxt0jQ1PfTTwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXTvV-00057y-QM; Wed, 20 Nov 2019 17:38:01 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXTvK-00056g-Vz
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 17:37:54 +0000
Received: by mail-qk1-x741.google.com with SMTP id e187so542243qkf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 09:37:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fesbL/ltc6XQDr7oG/FjvoAgHPbO7ab6UgrcJGo+8Hc=;
 b=g3TIkayaTEvvKvU0ileR89DPAUCOJryGja1kQr1Ucq06s2pNwvmw69Tf3fi/8PDsdF
 0O5Ee/OTobHyZ2SrDKSNFVPslVyEQ3OiheZa9ZJ9HQOuU+xa+dFVr8R2kleIOxeQAbQl
 QROWQzei1mFL0OQzXXVlcRs/fInxkH8TXIJdqOW4OEcpQckoY2q+jj2sCb/V5rdiRC9X
 dfbF089nfJmX1Nx4gU3wILi2g2SIcbjHyCW71g3GhAK6unzmY5zTfBr02J1qOl/1pwH4
 b+HPe8XqFY5HXjwn3uP2FhGzXUfESxLrvL5oORtkk/fX/pP7LzvV32yggdWnxFX0epvc
 oX2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fesbL/ltc6XQDr7oG/FjvoAgHPbO7ab6UgrcJGo+8Hc=;
 b=i4bPB3Nl9VM+aj+si12AoDYaOTD11QK78wWtR2fok4Ch8S/gf7pplxfaUWWKe5jYll
 THhPYOrhEL/mWKbqHJ1MT8C+1N4smOHS4YmZb+f/62WG/VFkWFPfRvRlLHDlM3H+eDYA
 BWkEkhRt+JWuu0yye5z/M94QIqwd9ZNp+VwI4BO1vOjWFYxAC1INqLW4j9v+VUHBsoa/
 RR+7nbznDjm5wXeBx7DQ6mJ/T/TfrynBOf8BgHzRbT8lRm5H2kzbrqbnmDjUI53PyS1o
 eCOnD1v2hWzJGBYwH3nCmSKdNDO4isPqaYFvsy7eN7PmgSApiSpxWGOBoq/AJr8QMz94
 qsqQ==
X-Gm-Message-State: APjAAAWO04w+825mQC9lXJK4mpsXyb7ItsgWs4Xydt6wlZh+Oq/LyKXJ
 KjHUrxxCerd0nNR4868eBeBco9OsDyJZb7JHMpY=
X-Google-Smtp-Source: APXvYqy5yXdceFkYNT7jspSKvJ+BW74cAL15vpDGtarNDdPeo2tJz2L+ynjyT3BNe4/TxJrzJayAlEtipBH7JmdbN9Y=
X-Received: by 2002:a05:620a:12cb:: with SMTP id
 e11mr3596810qkl.247.1574271469680; 
 Wed, 20 Nov 2019 09:37:49 -0800 (PST)
MIME-Version: 1.0
References: <CAPaFbat4MM0=iVB-VazTK9=2qRebAgEN4euYCTESRo3yfx75Kw@mail.gmail.com>
 <20191119233633.GG25745@shell.armlinux.org.uk>
 <CAPaFbatG+ePwjCnBva1tfmzmvpHZv9xW3nM4gj2DTpFn=D+9Vg@mail.gmail.com>
 <2cd3e872-57d5-5cbb-78d7-98da6447dc59@arm.com>
 <392e74d78b48e04040cedfc26ed8ce81@www.loen.fr>
 <CAPaFbavWjCJKjUN6nA8Gc4urAMzLt-YVB4ED5DVarenrvMgnvQ@mail.gmail.com>
 <5b230ce5eb43fc014a9c7224d980e79a@www.loen.fr>
 <CAPaFbatgHvu-0q4R7pbVyKOwOY5D1rZvMUweGgLkfGsZk0SH1A@mail.gmail.com>
 <20191120171755.GU25745@shell.armlinux.org.uk>
In-Reply-To: <20191120171755.GU25745@shell.armlinux.org.uk>
From: Leonid Movshovich <event.riga@gmail.com>
Date: Wed, 20 Nov 2019 17:37:38 +0000
Message-ID: <CAPaFbat7zuOz9fnu38jknEva4j=vTOMK769XYMqTMSFjrGT=eg@mail.gmail.com>
Subject: Re: [PATCH] irq-gic: select all CPU's selected in interrupt affinity
 settings
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_093751_033103_87CCA309 
X-CRM114-Status: GOOD (  24.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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
Cc: Marc Zyngier <maz@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 20 Nov 2019 at 17:18, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Wed, Nov 20, 2019 at 04:45:59PM +0000, Leonid Movshovich wrote:
> > On Wed, 20 Nov 2019 at 15:39, Marc Zyngier <maz@kernel.org> wrote:
> > >
> > > On 2019-11-20 15:28, Leonid Movshovich wrote:
> > > > On Wed, 20 Nov 2019 at 15:04, Marc Zyngier <maz@kernel.org> wrote:
> > > >>
> > > >> On 2019-11-20 01:15, Robin Murphy wrote:
> > > >> > On 2019-11-20 12:24 am, Leonid Movshovich wrote:
> > > >> >> On Tue, 19 Nov 2019 at 23:36, Russell King - ARM Linux admin
> > > >> >> <linux@armlinux.org.uk> wrote:
> > > >> >>>
> > > >> >>> On Tue, Nov 19, 2019 at 11:12:26PM +0000, event wrote:
> > > >> >>>> So far only a CPU selected with top affinity bit was selected.
> > > >> >>>> This
> > > >> >>>> resulted in all interrupts
> > > >> >>>> being processed by CPU0 by default despite "FF" default
> > > >> affinity
> > > >> >>>> setting for all interrupts
> > > >> >>>
> > > >> >>> Have you checked whether this causes _ALL_ CPUs in the mask to
> > > >> be
> > > >> >>> delivered a single interrupt, thereby causing _ALL_ CPUs to be
> > > >> >>> slowed down and hit the same locks at the same time.
> > > >> >>>
> > > >> >> Yes, I've checked this. No, interrupt is delivered to only one
> > > >> CPU.
> > > >> >> Also ARM GIC architecture specification specifically states in
> > > >> >> chapter
> > > >> >> 3.1.1 that hardware interrupts are delivered to a single CPU in
> > > >> >> multiprocessor system ("1-N model").
> > > >> >
> > > >> > But see also section 3.2.3 - just because only one CPU actually
> > > >> runs
> > > >> > the given ISR doesn't necessarily guarantee that the others
> > > >> *weren't*
> > > >> > interrupted. I'd also hesitate to make any assumptions that all
> > > >> GIC
> > > >> > implementations behave exactly the same way.
> > > >>
> > > >> What happens is that *all* CPUs are being sent the interrupt, and
> > > >> there
> > > >> is some logic in the GIC that ensures that only one sees it (the
> > > >> first
> > > >> one to read the IAR register). All the other see a spurious (1023)
> > > >> interrupt, and have wasted some precious cycles in doing so.
> > > >
> > > > Cycles are only precious when system is under high load. Under high
> > > > load, to achieve fair spread of interrupts between CPUs one would
> > > > need
> > > > a userspace app (irqbalance) to sit there and constantly rebalance
> > > > smp_affinity based on /proc/interrupts. Hard to believe such an
> > > > approach wastes less cycles.
> > >
> > > You'd be surprised. As always when looking at these things, do come up
> > > with actual figures with a wide range of workloads that show benefits
> > > for the approach you're suggesting.
> > >
> > > Also, if your system isn't under high load, why would you even care
> > > about this kind of distribution?
> >
> > Coming back to my network example, under moderate load, without
> > distribution, you'd get one CPU struggling to process all the traffic,
> > while others sitting idle.
>
> And you think that receiving TCP packet 1 on CPU0, TCP packet 2 on
> CPU1, TCP packet 2 on CPU2 etc will help?
>
> I guess you're not aware of network features such as GRO which
> combine consecutive packets.  Forcing each packet onto a different
> CPU will bounce the cache lines associated with managing the state
> between different CPUs => negative performance impact.

I guess, you're not aware that TCP is not the only protocol in the
internet. And that GRO is not a "network feature" but rather a NIC
feature. And, that not all NICs support it.

>
> Userspace doesn't see individual packets.

And packet destinations, other then userspace processes.

>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
