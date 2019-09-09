Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD58BADA08
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 15:33:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KqFcy2m2awvkXsEAFaVtHpIeaAkhRks/3FoRo5wsKec=; b=MMiGo5fe7DwMcC
	k1/X7ffdNKXT3tBMMBRIsoHf0uoE3wiuL4+lvnC811uUYM2mrTiSHI6Ga9ze6dRskB9HWdCy+C/1h
	WyyZ4Ls5kvSsLbeXcF3WQ4/h/zq7mk6fpH61HehclXrTLs3WEJTYgTEn8AKRcA97y/BTr+OObSeSA
	77u+UprvGgVTNR7qLo7SvaWp1emuj7L2RsGa8mo9egGdY0+H59EaoeKHX4lSqMQgeVrxiIjUO49aI
	tr04XBW/60HOPeGjGlXAleESRqgRRyWS0ArJqJDm9rQJ4nvavJbs9/Hcflwe8KpIK+ptM5cLvRmxS
	Odj3mgPd9qpUsQtdcJgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7JnL-00045R-Uu; Mon, 09 Sep 2019 13:33:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7JmZ-00040c-7i
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 13:32:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4238D28;
 Mon,  9 Sep 2019 06:32:34 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D2C2C3F59C;
 Mon,  9 Sep 2019 06:32:32 -0700 (PDT)
Date: Mon, 9 Sep 2019 14:32:30 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the
 ARM SMC/HVC mailbox
Message-ID: <20190909143230.48b1143f@donnerap.cambridge.arm.com>
In-Reply-To: <CABb+yY2t-oz6KqvCTsOJZqcMAUaR9Cbj014m7dCFXSBAMCojww@mail.gmail.com>
References: <1567004515-3567-1-git-send-email-peng.fan@nxp.com>
 <1567004515-3567-2-git-send-email-peng.fan@nxp.com>
 <CABb+yY2tRjazjaogpM7irqgTD+PdwsfqCxk5hP-_czrET3V5xQ@mail.gmail.com>
 <AM0PR04MB4481785CABB44A8C71CFB8D788BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY2TREpO7+TFcGgsgQrkmMWwFAgtuJ4GnLPPQ+GEBuh07w@mail.gmail.com>
 <AM0PR04MB448161C632722DF10989008088BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY2SrMF8e1iLyLqb-rJyBx4ajA0hZ6D=LFtuMNtXYjgccA@mail.gmail.com>
 <AM0PR04MB448133D1F4C887A82C679CEB88BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY2t-oz6KqvCTsOJZqcMAUaR9Cbj014m7dCFXSBAMCojww@mail.gmail.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_063239_510077_276D1204 
X-CRM114-Status: GOOD (  24.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 30 Aug 2019 03:12:29 -0500
Jassi Brar <jassisinghbrar@gmail.com> wrote:

Hi,

> On Fri, Aug 30, 2019 at 3:07 AM Peng Fan <peng.fan@nxp.com> wrote:
> >  
> > > Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
> > > SMC/HVC mailbox
> > >
> > > On Fri, Aug 30, 2019 at 2:37 AM Peng Fan <peng.fan@nxp.com> wrote:  
> > > >
> > > > Hi Jassi,
> > > >  
> > > > > Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc
> > > > > for the ARM SMC/HVC mailbox
> > > > >
> > > > > On Fri, Aug 30, 2019 at 1:28 AM Peng Fan <peng.fan@nxp.com> wrote:
> > > > >  
> > > > > > > > +examples:
> > > > > > > > +  - |
> > > > > > > > +    sram@910000 {
> > > > > > > > +      compatible = "mmio-sram";
> > > > > > > > +      reg = <0x0 0x93f000 0x0 0x1000>;
> > > > > > > > +      #address-cells = <1>;
> > > > > > > > +      #size-cells = <1>;
> > > > > > > > +      ranges = <0 0x0 0x93f000 0x1000>;
> > > > > > > > +
> > > > > > > > +      cpu_scp_lpri: scp-shmem@0 {
> > > > > > > > +        compatible = "arm,scmi-shmem";
> > > > > > > > +        reg = <0x0 0x200>;
> > > > > > > > +      };
> > > > > > > > +
> > > > > > > > +      cpu_scp_hpri: scp-shmem@200 {
> > > > > > > > +        compatible = "arm,scmi-shmem";
> > > > > > > > +        reg = <0x200 0x200>;
> > > > > > > > +      };
> > > > > > > > +    };
> > > > > > > > +
> > > > > > > > +    firmware {
> > > > > > > > +      smc_mbox: mailbox {
> > > > > > > > +        #mbox-cells = <1>;
> > > > > > > > +        compatible = "arm,smc-mbox";
> > > > > > > > +        method = "smc";
> > > > > > > > +        arm,num-chans = <0x2>;
> > > > > > > > +        transports = "mem";
> > > > > > > > +        /* Optional */
> > > > > > > > +        arm,func-ids = <0xc20000fe>, <0xc20000ff>;
> > > > > > > >  
> > > > > > > SMC/HVC is synchronously(block) running in "secure mode", i.e,
> > > > > > > there can only be one instance running platform wide. Right?  
> > > > > >
> > > > > > I think there could be channel for TEE, and channel for Linux.
> > > > > > For virtualization case, there could be dedicated channel for each VM.
> > > > > >  
> > > > > I am talking from Linux pov. Functions 0xfe and 0xff above, can't
> > > > > both be active at the same time, right?  
> > > >
> > > > If I get your point correctly,
> > > > On UP, both could not be active. On SMP, tx/rx could be both active,
> > > > anyway this depends on secure firmware and Linux firmware design.
> > > >
> > > > Do you have any suggestions about arm,func-ids here?
> > > >  
> > > I was thinking if this is just an instruction, why can't each channel be
> > > represented as a controller, i.e, have exactly one func-id per controller node.
> > > Define as many controllers as you need channels ?  
> >
> > I am ok, this could make driver code simpler. Something as below?
> >
> >     smc_tx_mbox: tx_mbox {
> >       #mbox-cells = <0>;
> >       compatible = "arm,smc-mbox";
> >       method = "smc";
> >       transports = "mem";
> >       arm,func-id = <0xc20000fe>;
> >     };
> >
> >     smc_rx_mbox: rx_mbox {
> >       #mbox-cells = <0>;
> >       compatible = "arm,smc-mbox";
> >       method = "smc";
> >       transports = "mem";
> >       arm,func-id = <0xc20000ff>;
> >     };
> >
> >     firmware {
> >       scmi {
> >         compatible = "arm,scmi";
> >         mboxes = <&smc_tx_mbox>, <&smc_rx_mbox 1>;
> >         mbox-names = "tx", "rx";
> >         shmem = <&cpu_scp_lpri>, <&cpu_scp_hpri>;
> >       };
> >     };
> >  
> Yes, the channel part is good.
> But I am not convinced by the need to have SCMI specific "transport" mode.

Why would this be SCMI specific and what is the problem with having this property?
By the very nature of the SMC/HVC call you would expect to also pass parameters in registers. However this limits the amount of data you can push, so the option of reverting to a memory based payload sounds very reasonable.
On the other hand *just* using memory complicates things, in case you have a very simple protocol. You would need a memory region shared between firmware and OS, which is not always easily possible on every platform. Also this doesn't scale easily with multiple mailboxes and channels. Passing parameters via registers is also naturally consistent, as there would be no races and no need for synchronisation with other cores or other users of the mailbox.

So I clearly see the benefit of specifying *both* ways of payload transport. Given that this driver should be protocol agnostic, it makes a lot of sense to introduce both methods *now*, so in the future users can just use the register method, without extending the binding in a incompatible way later (earlier kernels would have the driver, but wouldn't know how to deal with this parameter).

Cheers,
Andre.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
