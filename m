Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5601A103EA3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 16:30:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GKPlRjrowP7BiPk5ufevIeTUoX7rMQEvNVkqG0GuUrc=; b=u4IKv6TOoDfmLa
	CgXc2e4rLfSq5nviTiqbtRaXB2R6e5oY4vo+Eo1G0u1M0W8AqHpnxuvZvvA3gHspVcOnqjx3Spe7B
	I/ND+iYPxT2khKwry/7pxCjQbjYStr3iEKHrqeEgcSRWtzXJ4EGvgO1ffe/wkwCSb5pu4m2xc+I+Q
	OTTb1Nz8b5T0KuWR5FFYFBTUMvmq4ISqtZDSpaCkFQknOHb1ADmaoGhgviEaakfmcmaPCcMBFmh9q
	ELl+uUpjVd422qSdj5ZTWHKbmZizcehJ4pcZnyaB3n6lK2pgxAZQD7+Awi5KetemDxZ7uTqZ1e7Mt
	+gy0F5R7VFUhpdAKUNkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXRvi-00021w-J4; Wed, 20 Nov 2019 15:30:06 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXRuO-0000KH-1e
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 15:28:45 +0000
Received: by mail-qt1-x843.google.com with SMTP id t20so29310587qtn.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 07:28:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tjFuMYVP6LvkOhZ4QLGzJlV8x7kLev1Tm6Q0c0eOHpE=;
 b=F3ln8NgpnWavlHcyL2Uiqh9IOTJwD2KQ4SHOpMizekKr8euEbvrYgCNvYwb96lIeOk
 ABavxParOXENm1+W709S3ifaWN1J5A4Aj4N7oPO6Fu4QEkUVgb6RouIUzRdNV33VL5UU
 tmB3bMG+9QEs3Ufc3Sv9mH9q1wMQPpDCapmrX/fN4g18cuDM1Mak+SOnLs4McN09QIFg
 N5n4UDkCEtZLrxEK16As3+JdoEk4C8TsW4afHIKEBn+R9avehdz1/XSZ3VjRY2V+gKOx
 7UxrK/xwCFmNUADgNw3EERk3qcWHrklSMpPrEL7y+9XGYRLngA7XHtJFh8DEFQon9M16
 1wAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tjFuMYVP6LvkOhZ4QLGzJlV8x7kLev1Tm6Q0c0eOHpE=;
 b=FL00aZ90RM7a+PtP3Tfuo7a5hQUBvyG+bTeb1g6pQ1T2hWmlYtTb9jCexnP6LcfRDa
 dw/8UQaWVMmLO0LQs4Icu6qFC+wOSOOTTIMOD7Y3dvigkS8DEOyB4q0XENho1O5n96op
 C+pYUvzB3SUJkL/gOQsOsDWxhlNrCrRmHCrinVdfkomKGAhHeiTtBH8GuLcR7XDYIauK
 PRpX+PBuVeMHYh89e50urRlQ4J8O4QXatIA+RizPk552igaEhnUETDyZYiYU8CxokIX3
 +roalQtOD/fxT3ftWBpG3vXl4xGIluvOobq8d+jpJY4Zm0iQKRdMsOZH11E09jbMsKnJ
 etsQ==
X-Gm-Message-State: APjAAAXs8vlCskMMS407/4jjU1GotK4Oy+HYLuPrSVniqtF0AHC0O1qO
 3jhLa6/1/IzwbWPiLf3W+D5PnOvyxOrL65YMrDdOTllp
X-Google-Smtp-Source: APXvYqxa44e3M6mck8PnVwNuePxO2i2BaQrZFQlASVprmsFqMgYXerRXD/iVpw/h1K3bu9SbPwKrszZyPIxjCDFkn68=
X-Received: by 2002:ac8:7b91:: with SMTP id p17mr3097552qtu.318.1574263722349; 
 Wed, 20 Nov 2019 07:28:42 -0800 (PST)
MIME-Version: 1.0
References: <CAPaFbat4MM0=iVB-VazTK9=2qRebAgEN4euYCTESRo3yfx75Kw@mail.gmail.com>
 <20191119233633.GG25745@shell.armlinux.org.uk>
 <CAPaFbatG+ePwjCnBva1tfmzmvpHZv9xW3nM4gj2DTpFn=D+9Vg@mail.gmail.com>
 <2cd3e872-57d5-5cbb-78d7-98da6447dc59@arm.com>
 <392e74d78b48e04040cedfc26ed8ce81@www.loen.fr>
In-Reply-To: <392e74d78b48e04040cedfc26ed8ce81@www.loen.fr>
From: Leonid Movshovich <event.riga@gmail.com>
Date: Wed, 20 Nov 2019 15:28:31 +0000
Message-ID: <CAPaFbavWjCJKjUN6nA8Gc4urAMzLt-YVB4ED5DVarenrvMgnvQ@mail.gmail.com>
Subject: Re: [PATCH] irq-gic: select all CPU's selected in interrupt affinity
 settings
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_072844_130369_2F087FCF 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
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

On Wed, 20 Nov 2019 at 15:04, Marc Zyngier <maz@kernel.org> wrote:
>
> On 2019-11-20 01:15, Robin Murphy wrote:
> > On 2019-11-20 12:24 am, Leonid Movshovich wrote:
> >> On Tue, 19 Nov 2019 at 23:36, Russell King - ARM Linux admin
> >> <linux@armlinux.org.uk> wrote:
> >>>
> >>> On Tue, Nov 19, 2019 at 11:12:26PM +0000, event wrote:
> >>>> So far only a CPU selected with top affinity bit was selected.
> >>>> This
> >>>> resulted in all interrupts
> >>>> being processed by CPU0 by default despite "FF" default affinity
> >>>> setting for all interrupts
> >>>
> >>> Have you checked whether this causes _ALL_ CPUs in the mask to be
> >>> delivered a single interrupt, thereby causing _ALL_ CPUs to be
> >>> slowed down and hit the same locks at the same time.
> >>>
> >> Yes, I've checked this. No, interrupt is delivered to only one CPU.
> >> Also ARM GIC architecture specification specifically states in
> >> chapter
> >> 3.1.1 that hardware interrupts are delivered to a single CPU in
> >> multiprocessor system ("1-N model").
> >
> > But see also section 3.2.3 - just because only one CPU actually runs
> > the given ISR doesn't necessarily guarantee that the others *weren't*
> > interrupted. I'd also hesitate to make any assumptions that all GIC
> > implementations behave exactly the same way.
>
> What happens is that *all* CPUs are being sent the interrupt, and there
> is some logic in the GIC that ensures that only one sees it (the first
> one to read the IAR register). All the other see a spurious (1023)
> interrupt, and have wasted some precious cycles in doing so.

Cycles are only precious when system is under high load. Under high
load, to achieve fair spread of interrupts between CPUs one would need
a userspace app (irqbalance) to sit there and constantly rebalance
smp_affinity based on /proc/interrupts. Hard to believe such an
approach wastes less cycles.


>
> I get this patch, more or less well written, every other year.
> My answer is that it may help a very small minority of use cases, and
> suck for everyone else. So thank you, but no, thank you.

I was wondering, why such an obvious change was never made. Now I know
whom to blame :).

Anyway, I don't suggest "happiness for everyone". I suggest to change
the behaviour AND default affinity. So existing setups are not
affected AND "small minority" gets the benefit.

>
> Note that GICv3's version of the thing is even more unusable:
> - the configuration is secure only
> - the distribution mode is IMPDEF
> - LPIs can only be precisely routed
>
>          M.
> --
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
