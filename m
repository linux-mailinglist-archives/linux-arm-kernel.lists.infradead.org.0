Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 553AE1465FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 11:52:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DlN+DCKv9laFRfHiylGB16OiLyTCWkLTfjQPa1l6jVE=; b=l1GbjZhyLEBRsZ
	SHNED7qFGe9fH7ekxyXPC5rriY480qFn+NWfY7hjU2QfTuBkx0tqYkZ2ySECxxzyer+RXfIJqokwk
	svwupv42rGHUqT5qYR4deav+yofFj1VuHVuct4lfMPgiAeUFh3GSCpqDcUhFgCMB4IFF6u74J/L4S
	kpfJK6rnDfqpjAAAkdsyk6P2QL0MnOhFy12upHcVfv+kg5w47uf2hzVj95xdhtnE6BraG31pZgP8m
	MXqhPU5rPIpEyBSIe5s43Sy4ofJG5cTNt6eCCYVHK2QH2nXw6mnk9lwm0d4LczAmuun7zmBiGOfPA
	7tRQ4qhvw68gvRKeffaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iua6R-0004Ul-0X; Thu, 23 Jan 2020 10:52:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iua62-0004KJ-0e
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 10:52:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iua5w-0008JX-K1; Thu, 23 Jan 2020 11:52:16 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iua5u-0006ds-Rl; Thu, 23 Jan 2020 11:52:14 +0100
Date: Thu, 23 Jan 2020 11:52:14 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: STM32MP1 level triggered interrupts
Message-ID: <20200123105214.ru4j76xbisjtbtgw@pengutronix.de>
References: <20bb72d0-8258-abc0-e729-4d3d5a75c41c@denx.de>
 <d6e02817-2464-51b9-246a-7720b607b8d6@st.com>
 <65a1c5b2-c1b9-322f-338c-e6ff6379d8d1@denx.de>
 <129d04a0-c846-506d-5726-4a1024d977a6@st.com>
 <80db762c-3b3d-f007-2f9b-dadbffd95782@denx.de>
 <360b1adc-32f1-7993-c463-e52c7a5a8a67@st.com>
 <c4f08f59acd31951527ef1d6e9409e6f@kernel.org>
 <20200123101225.nscpc5t4nmlarbw2@pengutronix.de>
 <03fd1cb7b5985b3221f66c6b0058adc8@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <03fd1cb7b5985b3221f66c6b0058adc8@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_025222_074818_E4505525 
X-CRM114-Status: GOOD (  23.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Marek Vasut <marex@denx.de>, Alexandre Torgue <alexandre.torgue@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 23, 2020 at 10:44:03AM +0000, Marc Zyngier wrote:
> On 2020-01-23 10:12, Uwe Kleine-K=F6nig wrote:
> > On Thu, Jan 23, 2020 at 09:22:48AM +0000, Marc Zyngier wrote:
> > > On 2020-01-23 08:27, Alexandre Torgue wrote:
> > > > On 1/22/20 8:29 PM, Marek Vasut wrote:
> > > > > On 1/22/20 6:19 PM, Alexandre Torgue wrote:
> > > > >
> > > > > Hi,
> > > > >
> > > > > [...]
> > > > >
> > > > > > > > Concerning, your question:
> > > > > > > >
> > > > > > > > Setting your gpioC interruption as "falling edge" should
> > > > > > > > be enough. On
> > > > > > > > gpioCx falling edge, a high-level signal is generated by
> > > > > > > > exti and sent
> > > > > > > > to GIC (which triggers GIC interrupt). This signal
> > > > > > > > remains high until
> > > > > > > > stm32_irq_ack is called.
> > > > > > > >
> > > > > > > > So you only need: (ex for gpioc 1).
> > > > > > > >
> > > > > > > > interrupt-parent =3D <&gpioc>;
> > > > > > > > interrupts =3D <1 IRQ_TYPE_EDGE_FALLING>;
> > > > > > >
> > > > > > > How does this deal with the case where the device holds the
> > > > > > > interrupt
> > > > > > > line low (since it's level-sensitive, active low) after the d=
river
> > > > > > > interrupt handler finishes ? Does such condition generate ano=
ther
> > > > > > > interrupt and call the driver interrupt handler again ? I
> > > > > > > would expect
> > > > > > > the answer is no, because the interrupt is edge-triggered
> > > > > > > and there is
> > > > > > > no edge.
> > > > > >
> > > > > > Your assumption is good. If your device continue to hold the
> > > > > > line to low
> > > > > > at the end of your interrupt handler, no more interrupt will be
> > > > > > generated.
> > > > >
> > > > > But does that basically mean that such a device cannot be used wi=
th
> > > > > STM32MP1 or am I fundamentally mistaken and don't understand how a
> > > > > level-triggered interrupt works ? :)
> > > >
> > > > You need to release the line in your device interrupt handler. If n=
ot,
> > > > yes, you will miss interrupts :$
> > > =

> > > So to sum it up, this SoC doesn't support external level interrupts
> > > on its own, full stop. You'd need some additional external sampling
> > > HW to retrigger an edge on EOI.
> > =

> > Or you need software support that marks the irq pending again if on
> > unmask the irq line is still active.
> =

> Assuming you can actually observe the state of the line directly,
> without having to add specific knowledge of the generating device.

Ack, you won't want to look into the registers of the irq generating
device for that. I assumed the line's state is observable in an
irq-controller specific way.

> Doing this kind of tricks in 2020 is pretty poor for a modern SoC.

With the above assumption given, I think that is ok even in 2020. (But I
wonder about SoCs in 2020 not being able to handle level sensitive irqs
:-)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
