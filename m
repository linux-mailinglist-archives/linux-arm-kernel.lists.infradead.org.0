Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9096E163E97
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 09:12:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gKV6MJbZlal93B/pxMFcDDRXS1kDnvjuS8tufjLDOGQ=; b=ngV3aMZhHTQtGj
	sz0vjIX/utWxrSeXZrZbH4F+VDCh2Y/asXG+MnxNLczkH6IQPEzlyl/SGFgyry0Jjk0vZ8vZjpFLF
	l0eGpyAgJZAp9WLVWDVumRxh2obATghfOkji8qqN0LSEFx+MXZu2c5B2AiviDywPbONIEDBgNHIE6
	AlZ/nUr3miFItkfyUfzwQ5A8KPu7pU3DWfutPTqR141JpAIvhFn/pd00BCcgS8dkzzxRDANSDwQ+e
	mxX2RzxoOyJY60bdHo6OqPH8pb4gGAqSEx6GIuk7x9AtdmXhVewIBy+vbXf6dLL2n2/x01vnGa71G
	V6tOysqEuzHVoG12qvsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4KSg-0005rY-Ac; Wed, 19 Feb 2020 08:12:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4KSV-0005r1-Sp
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 08:11:53 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5DCC32176D;
 Wed, 19 Feb 2020 08:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582099911;
 bh=QfU8iG3TjKxX5yhqwL+LRUe53aZyIy+gvaXUuliPqbg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ahFy/0bNrSNT6TxkKoZyef6m1GZfFipzdpOtruXbovl7mcipDDL9gWBa7SAlf3ZKo
 1W504MjHeHa3ipk9lMGCcKv3draY0I7miXUG1c+aAwCwjg5psgyKDyYK6lEczG031I
 DFqNxIrNsJGc/zqiW2t2ERpYCAJlGbfukfjo2itU=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j4KST-006SGG-J4; Wed, 19 Feb 2020 08:11:49 +0000
Date: Wed, 19 Feb 2020 08:11:48 +0000
From: Marc Zyngier <maz@kernel.org>
To: Alan Mikhak <alan.mikhak@sifive.com>
Subject: Re: [PATCH 2/3] pci: designware: add separate driver for the MSI
 part of the RC
Message-ID: <20200219081148.5307e30a@why>
In-Reply-To: <CABEDWGxDz6njYYQN879XnGmY2vxOKvbygeg=9nBK54U6WP8_ug@mail.gmail.com>
References: <20170821192907.8695-3-ard.biesheuvel@linaro.org>
 <1581728065-5862-1-git-send-email-alan.mikhak@sifive.com>
 <CAKv+Gu9W0v9owp85hkAatwCvu-y9z4BZxvbKf92N-s_nnD910Q@mail.gmail.com>
 <867e0o6ssr.wl-maz@kernel.org>
 <CABEDWGxDz6njYYQN879XnGmY2vxOKvbygeg=9nBK54U6WP8_ug@mail.gmail.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: alan.mikhak@sifive.com, ardb@kernel.org,
 Joao.Pinto@synopsys.com, bhelgaas@google.com, graeme.gregory@linaro.org,
 jingoohan1@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, leif@nuviainc.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_001151_972890_4909E6E6 
X-CRM114-Status: GOOD (  30.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Graeme Gregory <graeme.gregory@linaro.org>, Jingoo Han <jingoohan1@gmail.com>,
 linux-pci <linux-pci@vger.kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Leif Lindholm <leif@nuviainc.com>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 18 Feb 2020 11:09:10 -0800
Alan Mikhak <alan.mikhak@sifive.com> wrote:

> On Sat, Feb 15, 2020 at 2:36 AM Marc Zyngier <maz@kernel.org> wrote:
> >
> > On Sat, 15 Feb 2020 09:35:56 +0000,
> > Ard Biesheuvel <ardb@kernel.org> wrote:  
> > >
> > > (updated some email addresses in cc, including my own)
> > >
> > > On Sat, 15 Feb 2020 at 01:54, Alan Mikhak <alan.mikhak@sifive.com> wrote:  
> > > >
> > > > Hi..
> > > >
> > > > What is the right approach for adding MSI support for the generic
> > > > Linux PCI host driver?
> > > >
> > > > I came across this patch which seems to address a similar
> > > > situation. It seems to have been dropped in v3 of the patchset
> > > > with the explanation "drop MSI patch [for now], since it
> > > > turns out we may not need it".
> > > >
> > > > [PATCH 2/3] pci: designware: add separate driver for the MSI part of the RC
> > > > https://lore.kernel.org/linux-pci/20170821192907.8695-3-ard.biesheuvel@linaro.org/
> > > >
> > > > [PATCH v2 2/3] pci: designware: add separate driver for the MSI part of the RC
> > > > https://lore.kernel.org/linux-pci/20170824184321.19432-3-ard.biesheuvel@linaro.org/
> > > >
> > > > [PATCH v3 0/2] pci: add support for firmware initialized designware RCs
> > > > https://lore.kernel.org/linux-pci/20170828180437.2646-1-ard.biesheuvel@linaro.org/
> > > >  
> > >
> > > For the platform in question, it turned out that we could use the MSI
> > > block of the core's GIC interrupt controller directly, which is a much
> > > better solution.
> > >
> > > In general, turning MSIs into wired interrupts is not a great idea,
> > > since the whole point of MSIs is that they are sufficiently similar to
> > > other DMA transactions to ensure that the interrupt won't arrive
> > > before the related memory transactions have completed.
> > >
> > > If your interrupt controller does not have this capability, then yes,
> > > you are stuck with this little widget that decodes an inbound write to
> > > a magic address and turns it into a wired interrupt.  
> >
> > I can only second this. It is much better to have a generic block
> > implementing MSI *in a non multiplexed way*, for multiple reasons:
> >
> > - the interrupt vs DMA race that Ard mentions above,
> >
> > - MSIs are very often used to describe the state of per-CPU queues. If
> >   you multiplex MSIs behind a single multiplexing interrupt, it is
> >   always the same CPU that gets interrupted, and you don't benefit
> >   from having multiple queues at all.
> >
> > Even if you have to implement the support as a bunch of wired
> > interrupts, there is still a lot of value in keeping a 1:1 mapping
> > between MSIs and wires.
> >
> > Thanks,
> >
> >         M.
> >
> > --
> > Jazz is not dead, it just smells funny.  
> 
> Ard and Marc, Thanks for you comments. I will take a look at the code
> related to MSI block of GIC interrupt controller for some reference.

GICv2m or GICv3 MBI are probably your best bets. Don't get anywhere near
the GICv3 ITS, there lies madness. ;-)

> I am looking into supporting MSI in a non-multiplexed way when using
> ECAM and the generic Linux PCI host driver when Linux is booted
> from U-Boot.

I don't really get the relationship between ECAM and MSIs. They should
be fairly independent, unless that has to do with the allowing the MSI
doorbell to be reached from the PCIe endpoint.

> Specifically, what is the right approach for sharing the physical
> address of the MSI data block used in Linux with U-Boot?
> 
> I imagine the Linux driver for MSI interrupt controller allocates
> some DMA-able memory for use as the MSI data block. The
> U-Boot PCIe driver would program an inbound ATU region to
> map mem writes from endpoint devices to that MSI data block
> before booting Linux.

The "MSI block" is really a piece of HW, not memory. So whatever you
have to program in the PCIe RC must allow an endpoint to reach that
device with a 32bit write.

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
