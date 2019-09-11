Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B75CAFBA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 13:44:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qtw9i9ebJWuXhGYrezrYFqWq8v+rMwSNgiiC9fpbyY4=; b=mFCQOIjNAGWTru
	0D3tjNHo6fH7/bRuBYdwttML09h6OKG/mMz/kF23f3s734+omop2pto3QIn8br7VFPOv4OMMrRPEB
	yVGHjRrNwXvsCwRbEGxETY1nAWqMHbSjMugKKEH0vfwX7VgpTkc4eF5yjAvC4ZRzhThZjsuylkVdR
	Oq5J1rmjUYGRRqjhmdlaFhbLlGukiyFZppKwLepsZxyNGlOUe5l1xSIU6oPRpBEns2k9SoDuW+K9C
	zBvZ61mZbA1GGHqiR6pM///65koHAb5ZghiXpIN6vZ/VZR7yYrA1kxCp52XJ68oB9bYkdfsxCqwII
	uf0m6OmjfhmrDnqyA6Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i812V-0000B7-Gb; Wed, 11 Sep 2019 11:44:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i811a-0008O0-TB
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 11:43:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9CF3228;
 Wed, 11 Sep 2019 04:43:00 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 452D43F59C;
 Wed, 11 Sep 2019 04:42:59 -0700 (PDT)
Date: Wed, 11 Sep 2019 12:42:55 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the
 ARM SMC/HVC mailbox
Message-ID: <20190911124255.45e44be3@donnerap.cambridge.arm.com>
In-Reply-To: <CABb+yY3kfLbdSSdQtZUu9HU1YbXSpbQWW85m0sieR7bJJYBaFA@mail.gmail.com>
References: <1567004515-3567-1-git-send-email-peng.fan@nxp.com>
 <1567004515-3567-2-git-send-email-peng.fan@nxp.com>
 <CABb+yY2tRjazjaogpM7irqgTD+PdwsfqCxk5hP-_czrET3V5xQ@mail.gmail.com>
 <AM0PR04MB4481785CABB44A8C71CFB8D788BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY2TREpO7+TFcGgsgQrkmMWwFAgtuJ4GnLPPQ+GEBuh07w@mail.gmail.com>
 <AM0PR04MB448161C632722DF10989008088BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY2SrMF8e1iLyLqb-rJyBx4ajA0hZ6D=LFtuMNtXYjgccA@mail.gmail.com>
 <AM0PR04MB448133D1F4C887A82C679CEB88BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY2t-oz6KqvCTsOJZqcMAUaR9Cbj014m7dCFXSBAMCojww@mail.gmail.com>
 <20190909143230.48b1143f@donnerap.cambridge.arm.com>
 <CABb+yY3kfLbdSSdQtZUu9HU1YbXSpbQWW85m0sieR7bJJYBaFA@mail.gmail.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_044303_083954_4D69A3BD 
X-CRM114-Status: GOOD (  25.13  )
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

On Tue, 10 Sep 2019 21:36:35 -0500
Jassi Brar <jassisinghbrar@gmail.com> wrote:

Hi,

> On Mon, Sep 9, 2019 at 8:32 AM Andre Przywara <andre.przywara@arm.com> wrote:
> >
> > On Fri, 30 Aug 2019 03:12:29 -0500
> > Jassi Brar <jassisinghbrar@gmail.com> wrote:
> >
> > Hi,
> >  
> > > On Fri, Aug 30, 2019 at 3:07 AM Peng Fan <peng.fan@nxp.com> wrote:  
> > > >  
> > > > > Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
> > > > > SMC/HVC mailbox
> > > > >
> > > > > On Fri, Aug 30, 2019 at 2:37 AM Peng Fan <peng.fan@nxp.com> wrote:  
> > > > > >
> > > > > > Hi Jassi,
> > > > > >  
> > > > > > > Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc
> > > > > > > for the ARM SMC/HVC mailbox
> > > > > > >
> > > > > > > On Fri, Aug 30, 2019 at 1:28 AM Peng Fan <peng.fan@nxp.com> wrote:
> > > > > > >  
> > > > > > > > > > +examples:
> > > > > > > > > > +  - |
> > > > > > > > > > +    sram@910000 {
> > > > > > > > > > +      compatible = "mmio-sram";
> > > > > > > > > > +      reg = <0x0 0x93f000 0x0 0x1000>;
> > > > > > > > > > +      #address-cells = <1>;
> > > > > > > > > > +      #size-cells = <1>;
> > > > > > > > > > +      ranges = <0 0x0 0x93f000 0x1000>;
> > > > > > > > > > +
> > > > > > > > > > +      cpu_scp_lpri: scp-shmem@0 {
> > > > > > > > > > +        compatible = "arm,scmi-shmem";
> > > > > > > > > > +        reg = <0x0 0x200>;
> > > > > > > > > > +      };
> > > > > > > > > > +
> > > > > > > > > > +      cpu_scp_hpri: scp-shmem@200 {
> > > > > > > > > > +        compatible = "arm,scmi-shmem";
> > > > > > > > > > +        reg = <0x200 0x200>;
> > > > > > > > > > +      };
> > > > > > > > > > +    };
> > > > > > > > > > +
> > > > > > > > > > +    firmware {
> > > > > > > > > > +      smc_mbox: mailbox {
> > > > > > > > > > +        #mbox-cells = <1>;
> > > > > > > > > > +        compatible = "arm,smc-mbox";
> > > > > > > > > > +        method = "smc";
> > > > > > > > > > +        arm,num-chans = <0x2>;
> > > > > > > > > > +        transports = "mem";
> > > > > > > > > > +        /* Optional */
> > > > > > > > > > +        arm,func-ids = <0xc20000fe>, <0xc20000ff>;
> > > > > > > > > >  
> > > > > > > > > SMC/HVC is synchronously(block) running in "secure mode", i.e,
> > > > > > > > > there can only be one instance running platform wide. Right?  
> > > > > > > >
> > > > > > > > I think there could be channel for TEE, and channel for Linux.
> > > > > > > > For virtualization case, there could be dedicated channel for each VM.
> > > > > > > >  
> > > > > > > I am talking from Linux pov. Functions 0xfe and 0xff above, can't
> > > > > > > both be active at the same time, right?  
> > > > > >
> > > > > > If I get your point correctly,
> > > > > > On UP, both could not be active. On SMP, tx/rx could be both active,
> > > > > > anyway this depends on secure firmware and Linux firmware design.
> > > > > >
> > > > > > Do you have any suggestions about arm,func-ids here?
> > > > > >  
> > > > > I was thinking if this is just an instruction, why can't each channel be
> > > > > represented as a controller, i.e, have exactly one func-id per controller node.
> > > > > Define as many controllers as you need channels ?  
> > > >
> > > > I am ok, this could make driver code simpler. Something as below?
> > > >
> > > >     smc_tx_mbox: tx_mbox {
> > > >       #mbox-cells = <0>;
> > > >       compatible = "arm,smc-mbox";
> > > >       method = "smc";
> > > >       transports = "mem";
> > > >       arm,func-id = <0xc20000fe>;
> > > >     };
> > > >
> > > >     smc_rx_mbox: rx_mbox {
> > > >       #mbox-cells = <0>;
> > > >       compatible = "arm,smc-mbox";
> > > >       method = "smc";
> > > >       transports = "mem";
> > > >       arm,func-id = <0xc20000ff>;
> > > >     };
> > > >
> > > >     firmware {
> > > >       scmi {
> > > >         compatible = "arm,scmi";
> > > >         mboxes = <&smc_tx_mbox>, <&smc_rx_mbox 1>;
> > > >         mbox-names = "tx", "rx";
> > > >         shmem = <&cpu_scp_lpri>, <&cpu_scp_hpri>;
> > > >       };
> > > >     };
> > > >  
> > > Yes, the channel part is good.
> > > But I am not convinced by the need to have SCMI specific "transport" mode.  
> >
> > Why would this be SCMI specific and what is the problem with having this property?
> > By the very nature of the SMC/HVC call you would expect to also pass parameters in registers.
> > However this limits the amount of data you can push, so the option of reverting to a
> > memory based payload sounds very reasonable.
> >  
> Of course, it is very legit to pass data via mem and many platforms do
> that. But as you note in your next post, the 'transport' doesn't seem
> necessary doing what it does in the driver.

Yes, indeed. I didn't realise that until looking more deeply into the driver later.
So I think we are on the same page regarding this: the *controller* driver and its binding does not need to know about the transport, that's something between the mailbox client and the firmware implementation.

Cheers,
Andre.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
