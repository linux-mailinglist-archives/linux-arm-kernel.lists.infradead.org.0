Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D2633666
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 19:19:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B5wqbrYm7cWl+d3yKR1y/ZmrRz4M2CZBQZrqxezxLGM=; b=nr8UrrR6X5Blub
	qe5OmLjd2OqMKmgw78hmvP2vniIObFUvZAuqmGFvyn+lMd6OKPIZXnvXHdOr2AGPzGppTinyB6U5S
	jPuMZKQAfdsWAKPuRhyyYhnBtcbx104mpV4eOxSGk8wrtcTeSptLa9R2/qTPgJWP02LMQ7EAr1sZJ
	invsHUX0Nr1IOraO0+P2+j19/KGdN54WqrSMj/4EzbzCWKOivQ+dGyhucbYSsPIRRVA7kaMJR4AQU
	+i5CNfJ9SCrzC3q/dVCQFsfxNoQ7zrIohebbiLf12o27M0Wt5AqCk99LhKm79ex0J4LB1hWg2CnZ5
	MmIPbuw273KdxwCJg6Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXqcF-0005sx-Qs; Mon, 03 Jun 2019 17:19:23 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqc9-0005sI-68
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 17:19:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3258480D;
 Mon,  3 Jun 2019 10:19:16 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C0D223F5AF;
 Mon,  3 Jun 2019 10:19:13 -0700 (PDT)
Date: Mon, 3 Jun 2019 18:18:56 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH V2 1/2] DT: mailbox: add binding doc for the ARM SMC
 mailbox
Message-ID: <20190603181856.34996aaa@donnerap.cambridge.arm.com>
In-Reply-To: <20190603165651.GA12196@e107155-lin>
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-2-peng.fan@nxp.com>
 <ae4c79f0-4aec-250e-e312-20aba5554665@gmail.com>
 <20190603165651.GA12196@e107155-lin>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_101917_235344_40EFE20E 
X-CRM114-Status: GOOD (  27.33  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, peng.fan@nxp.com,
 Florian Fainelli <f.fainelli@gmail.com>, festevam@gmail.com,
 jassisinghbrar@gmail.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, van.freenix@gmail.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 3 Jun 2019 17:56:51 +0100
Sudeep Holla <sudeep.holla@arm.com> wrote:

Hi,

> On Mon, Jun 03, 2019 at 09:22:16AM -0700, Florian Fainelli wrote:
> > On 6/3/19 1:30 AM, peng.fan@nxp.com wrote:  
> > > From: Peng Fan <peng.fan@nxp.com>
> > >
> > > The ARM SMC mailbox binding describes a firmware interface to trigger
> > > actions in software layers running in the EL2 or EL3 exception levels.
> > > The term "ARM" here relates to the SMC instruction as part of the ARM
> > > instruction set, not as a standard endorsed by ARM Ltd.
> > >
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > ---
> > >
> > > V2:
> > > Introduce interrupts as a property.
> > >
> > > V1:
> > > arm,func-ids is still kept as an optional property, because there is no
> > > defined SMC funciton id passed from SCMI. So in my test, I still use
> > > arm,func-ids for ARM SIP service.
> > >
> > >  .../devicetree/bindings/mailbox/arm-smc.txt        | 101 +++++++++++++++++++++
> > >  1 file changed, 101 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.txt
> > >
> > > diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.txt b/Documentation/devicetree/bindings/mailbox/arm-smc.txt
> > > new file mode 100644
> > > index 000000000000..401887118c09
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/mailbox/arm-smc.txt
> > > @@ -0,0 +1,101 @@  
> 
> [...]
> 
> > > +Optional properties:
> > > +- arm,func-ids		An array of 32-bit values specifying the function
> > > +			IDs used by each mailbox channel. Those function IDs
> > > +			follow the ARM SMC calling convention standard [1].
> > > +			There is one identifier per channel and the number
> > > +			of supported channels is determined by the length
> > > +			of this array.
> > > +- interrupts		SPI interrupts may be listed for notification,
> > > +			each channel should use a dedicated interrupt
> > > +			line.  
> >
> > I would not go about defining a specific kind of interrupt, since SPI is
> > a GIC terminology, this firmware interface could be used in premise with
> > any parent interrupt controller, for which the concept of a SPI/PPI/SGI
> > may not be relevant.
> >  
> 
> While I agree the binding document may not contain specifics, I still
> don't see how to use SGI with this. Also note it's generally reserved
> for OS future use(IPC) and using this for other than IPC may be bit
> challenging IMO. It opens up lots of questions.

Well, a PPI might be possible to use, although it's somewhat dodgy to hijack the GIC's (re-)distributor from EL3 to write to GICD_ISPENDR<n>. Need to ask Marc about his feelings towards this. But it's definitely possible from a hypervisor to inject arbitrary interrupts into a guest.

But more importantly: is there any actual reason this needs to be a GIC interrupt? If I understand the code correctly, this could just be any interrupt, including one of an interrupt combiner or a GPIO chip. So why not just use the standard wording of: "exactly one interrupt specifier for each channel"?

By the way: Shouldn't new bindings use the YAML format instead?

Cheers,
Andre.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
