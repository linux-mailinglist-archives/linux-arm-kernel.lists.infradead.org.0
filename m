Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C37742FAD4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 13:23:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BjEzC1MnHoGYKae34pbwH90yVo5s4AL0f73Gxwthz3Q=; b=C7uylKGoAzcnHX
	uEO7KQHNrAQ/fnSA4nm/7cGAfeLjApBEfELIHfv8+C6xMej0sLEewxtbswqTfdrOvnVbpI9YHQtEi
	qtb8YpyH7zZ6AwPdHIk4PuJhsHocsCsh+mh5p05KaK2fP/dQ4qUynoAzbcOUkQPynhMYAQrUvLk9V
	JXuKpffIgP2wEl9FaqC3KHEG6ZtWCE57tb2b0v4L5kP0sRGfj3O1PnFoK0Wp0QjSDf92fGfeLbyxP
	7uLayQKHDDgDo8HDDd5/Vtx7h6p68S0+SO1DYsjGwgu/X5VVvMBZm481og6m20ZMiaciTp6aAMk/6
	myaqkB0YSwMobxjUJusg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWJ9s-0003se-J9; Thu, 30 May 2019 11:23:44 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWJ9l-0003rt-3d
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 11:23:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 21CD1374;
 Thu, 30 May 2019 04:23:35 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B8FA03F5AF;
 Thu, 30 May 2019 04:23:32 -0700 (PDT)
Date: Thu, 30 May 2019 12:23:29 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 0/2] mailbox: arm: introduce smc triggered mailbox
Message-ID: <20190530122329.235d13c7@donnerap.cambridge.arm.com>
In-Reply-To: <AM0PR04MB4481C44F9B5EFCDD076EF728881D0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190523060437.11059-1-peng.fan@nxp.com>
 <4ba2b243-5622-bb27-6fc3-cd9457430e54@gmail.com>
 <AM0PR04MB4481C44F9B5EFCDD076EF728881D0@AM0PR04MB4481.eurprd04.prod.outlook.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_042337_164906_3C1B4993 
X-CRM114-Status: GOOD (  38.59  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 27 May 2019 05:19:41 +0000
Peng Fan <peng.fan@nxp.com> wrote:

Hi,

> > Subject: Re: [PATCH 0/2] mailbox: arm: introduce smc triggered mailbox
> > 
> > Hi,
> > 
> > On 5/22/19 10:50 PM, Peng Fan wrote:  
> > > This is a modified version from Andre Przywara's patch series
> > >  
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.ke
> > rnel.org%2Fpatchwork%2Fcover%2F812997%2F&amp;data=02%7C01%7Cpe
> > ng.fan%40nxp.com%7C010c9ddd5df645c9c66b08d6dfa46cb2%7C686ea1d3b
> > c2b4c6fa92cd99c5c301635%7C0%7C0%7C636942294631442665&amp;sdat
> > a=BbS5ZQtzMANSwaKRDJ62NKrPrAyaED1%2BvymQaT6Qr8E%3D&amp;rese
> > rved=0.  
> > > [1] is a draft implementation of i.MX8MM SCMI ATF implementation that
> > > use smc as mailbox, power/clk is included, but only part of clk has
> > > been implemented to work with hardware, power domain only supports get
> > > name for now.
> > >
> > > The traditional Linux mailbox mechanism uses some kind of dedicated
> > > hardware IP to signal a condition to some other processing unit,
> > > typically a dedicated management processor.
> > > This mailbox feature is used for instance by the SCMI protocol to
> > > signal a request for some action to be taken by the management processor.
> > > However some SoCs does not have a dedicated management core to  
> > provide  
> > > those services. In order to service TEE and to avoid linux shutdown
> > > power and clock that used by TEE, need let firmware to handle power
> > > and clock, the firmware here is ARM Trusted Firmware that could also
> > > run SCMI service.
> > >
> > > The existing SCMI implementation uses a rather flexible shared memory
> > > region to communicate commands and their parameters, it still requires
> > > a mailbox to actually trigger the action.  
> > 
> > We have had something similar done internally with a couple of minor
> > differences:
> > 
> > - a SGI is used to send SCMI notifications/delayed replies to support
> > asynchronism (patches are in the works to actually add that to the Linux SCMI
> > framework). There is no good support for SGI in the kernel right now so we
> > hacked up something from the existing SMP code and adding the ability to
> > register our own IPI handlers (SHAME!). Using a PPI should work and should
> > allow for using request_irq() AFAICT.  
> 
> So you are also implementing a firmware inside ATF for SCMI usecase, right?
> 
> Introducing SGI in ATF to notify Linux will introduce complexity, there is
> no good framework inside ATF for SCMI, and I use synchronization call for
> simplicity for now.

I think we don't disagree, but just to clarify on one thing:

I think we should avoid tying this driver to specific protocol or software on the other end, be it ATF or SCMI. After all it's just a mailbox driver, meant to signal some event (and parameters) to some external entity. Yes, SCMI (or SCPI back then) was the reason to push for this, but it should be independent from that. I am not even sure we should mention it too much in the documentation.

So whether the receiving end is ATF or something else it irrelevant, I think. For instance we have had discussions in Xen to provide guests some virtualised device management support, and using an HVC mailbox seems like a neat solution. This could be using the SCMI (or SCPI) protocol, but that's not a requirement. In this case the Xen hypervisor would be the one to pick up the mailbox trigger, probably forwarding the request to something else (Dom0 in this case).
Also having a generic SMC mailbox could avoid having the actual hardware mailbox drivers in the kernel, so EL3 firmware could forward the request to an external management processor, and Linux would just work, without the need to describe the actual hardware mailbox device in some firmware tables. This might help ACPI on those devices.

Cheers,
Andre.

> > 
> > - the mailbox identifier is indicated as part of the SMC call such that we can
> > have multiple SCMI mailboxes serving both standard protocols and
> > non-standard (in the 0x80 and above) range, also they may have different
> > throughput (in hindsight, these could simply be different channels)
> > 
> > Your patch series looks both good and useful to me, I would just put a
> > provision in the binding to support an optional interrupt such that
> > asynchronism gets reasonably easy to plug in when it is available (and
> > desirable).  
> 
> Ok. Let me think about and add that in new version patch.
> 
> Thanks,
> Peng.
> 
> >   
> > >
> > > This patch series provides a Linux mailbox compatible service which
> > > uses smc calls to invoke firmware code, for instance taking care of SCMI  
> > requests.  
> > > The actual requests are still communicated using the standard SCMI way
> > > of shared memory regions, but a dedicated mailbox hardware IP can be
> > > replaced via this new driver.
> > >
> > > This simple driver uses the architected SMC calling convention to
> > > trigger firmware services, also allows for using "HVC" calls to call
> > > into hypervisors or firmware layers running in the EL2 exception level.
> > >
> > > Patch 1 contains the device tree binding documentation, patch 2
> > > introduces the actual mailbox driver.
> > >
> > > Please note that this driver just provides a generic mailbox
> > > mechanism, though this is synchronous and one-way only (triggered by
> > > the OS only, without providing an asynchronous way of triggering
> > > request from the firmware).
> > > And while providing SCMI services was the reason for this exercise,
> > > this driver is in no way bound to this use case, but can be used
> > > generically where the OS wants to signal a mailbox condition to
> > > firmware or a hypervisor.
> > > Also the driver is in no way meant to replace any existing firmware
> > > interface, but actually to complement existing interfaces.
> > >
> > > [1]
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgith
> > >  
> > ub.com%2FMrVan%2Farm-trusted-firmware%2Ftree%2Fscmi&amp;data=02
> > %7C01%7  
> > >  
> > Cpeng.fan%40nxp.com%7C010c9ddd5df645c9c66b08d6dfa46cb2%7C686ea1
> > d3bc2b4  
> > >  
> > c6fa92cd99c5c301635%7C0%7C0%7C636942294631442665&amp;sdata=kN
> > 9bEFFcsZA  
> > > 1ePeNLLfHmONpVaG6O5ajVQvKMuaBXyk%3D&amp;reserved=0
> > >
> > > Peng Fan (2):
> > >   DT: mailbox: add binding doc for the ARM SMC mailbox
> > >   mailbox: introduce ARM SMC based mailbox
> > >
> > >  .../devicetree/bindings/mailbox/arm-smc.txt        |  96  
> > +++++++++++++  
> > >  drivers/mailbox/Kconfig                            |   7 +
> > >  drivers/mailbox/Makefile                           |   2 +
> > >  drivers/mailbox/arm-smc-mailbox.c                  | 154  
> > +++++++++++++++++++++  
> > >  include/linux/mailbox/arm-smc-mailbox.h            |  10 ++
> > >  5 files changed, 269 insertions(+)
> > >  create mode 100644
> > > Documentation/devicetree/bindings/mailbox/arm-smc.txt
> > >  create mode 100644 drivers/mailbox/arm-smc-mailbox.c  create mode
> > > 100644 include/linux/mailbox/arm-smc-mailbox.h
> > >  
> > 
> > 
> > --
> > Florian  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
