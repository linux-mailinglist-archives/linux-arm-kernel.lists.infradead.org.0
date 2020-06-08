Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F6C1F28E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:58:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5d3fLoVuz3YbG3uTuxtCcuMaFC7LSGEJzfD9vEDtXtk=; b=AvRLI6rWNNrw64
	awCOaKiVe3Wzyc3GwqTzpe+c8GptbSnzJSahwCIenENqAEPtKTm5rSVnADqdqHjiX0fN5C0tvhLYX
	dWpmHf3hN/KZPzaTAdl3YeRf6SteWYWLX9DN3FPSG4YIouZTvUntW4boSSLrqOJDH5LPTRXnUPbJJ
	lmtq3pvNIrBW5ucDiSW9bKjyx3y8J1WuFiuYwA6J8UB3Relsb51DxkWlPk2oq1dMeZ43fZkbd2uI1
	TxwYaBrt3h3WDujZED4JvRfEsbp9N9dTrbhClU9eUuJK3Byo7J6lnK584PIeqcZOWiPVeDe4R7Gmu
	0iMfI8InL+ttoNbZ9cYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiReK-0008GE-Ak; Mon, 08 Jun 2020 23:57:52 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiRJf-0004wS-GG
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 23:36:33 +0000
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1jiRJY-0002nN-Ul; Tue, 09 Jun 2020 01:36:25 +0200
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 65786101181; Tue,  9 Jun 2020 01:36:24 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 "maz\@kernel.org" <maz@kernel.org>, "Saidi\, Ali" <alisaidi@amazon.com>
Subject: Re: [PATCH] irqchip/gic-v3-its: Don't try to move a disabled irq
In-Reply-To: <0940571f9daa9829f70616b3036a2b3b3f25953c.camel@kernel.crashing.org>
References: <AE04B507-C5E2-44D2-9190-41E9BE720F9D@amazon.com>
 <622fb6be108e894ee365d6b213535c8b@kernel.org>
 <f9e9d8c37eb92e4b9576bfcb4386ff6ef00eddce.camel@amazon.com>
 <87mu5dacs7.fsf@nanos.tec.linutronix.de>
 <0940571f9daa9829f70616b3036a2b3b3f25953c.camel@kernel.crashing.org>
Date: Tue, 09 Jun 2020 01:36:24 +0200
Message-ID: <873675870n.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_163631_794956_D3C50F7B 
X-CRM114-Status: GOOD (  18.82  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "jason@lakedaemon.net" <jason@lakedaemon.net>, "Machulsky,
 Zorik" <zorik@amazon.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Zilberman,
 Zeev" <zeev@amazon.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "Woodhouse, David" <dwmw@amazon.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ben,

Benjamin Herrenschmidt <benh@kernel.crashing.org> writes:
> On Mon, 2020-06-08 at 15:48 +0200, Thomas Gleixner wrote:
>> > 	if (cpu != its_dev->event_map.col_map[id]) {
>> > 		target_col = &its_dev->its->collections[cpu];
>> > -		its_send_movi(its_dev, target_col, id);
>> > +
>> > +		/* If the IRQ is disabled a discard was sent so don't move */
>> > +		if (!irqd_irq_disabled(d))
>> 
>> That check needs to be !irqd_is_activated() because enable_irq() does
>> not touch anything affinity related.
>
> Right. Note: other  drivers  (like arch/powerpc/sysdev/xive/common.c
> use irqd_is_started() ... this gets confusing :)

Blast from the past ...

arch/powerpc does not use hierarchical irq domains, so the activated
state does not matter there.


>> > +			its_send_movi(its_dev, target_col, id);
>> > +
>> > 		its_dev->event_map.col_map[id] = cpu;
>> > 		irq_data_update_effective_affinity(d, cpumask_of(cpu));
>> 
>> And then these associtations are disconnected from reality in any case.
>
> Not sure what you mean here, that said...

You skip the setup and then you set that state to look like it really
happened. How is that NOT disconnected from reality and a proper source
for undecodable failure later on beause something else subtly depends on
that state?

>> Something like the completely untested patch below should work.
>
> Ok. One possible issue though is before, the driver always had the
> opportunity to "vet" the affinity mask for whatever platform
> constraints may be there and change it before applying it. This is no
> longer the case on a deactivated interrupt with your patch as far as I
> can tell. I don't know if that is a problem and if drivers that do that
> have what it takes to "fixup" the affinity at startup time, the ones I
> wrote don't need that feature, but...

The driver still has the opportunity to do so when the interrupt is
acticated. And if you look at the conditions of that patch it carefully
applies this only to architectures which actually use hiearachical irq
domains. Everything else including good old PPC won't notice at all.

>> Thanks,
>> 
>>         tglx

<SNIP 60+ lines of useless information ....>

Can you please trim your replies?

Thanks,

        tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
