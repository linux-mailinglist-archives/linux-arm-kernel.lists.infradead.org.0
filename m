Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED34AFF7A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 17:03:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z7Qzwdko/1wYhWTUl26x0ngxNl8Zq3slWrFNGBHAYSA=; b=J0qA6voCNPdAk7
	bEXi4M6Ec++SuYhY9ljdQJFnGji09KzILcme9FaOe0uMMnUvxc4UUVGsJPcrLjyg7fjChWWfDDuEl
	DRk+HlYBjBtQzgYR7kObcFRAmxpX5hMnQafvBXjRE8PiO1VntV6ezB1RZrJiHrgHWBLyf/IvIOpVD
	nPUU+WKMWhQlieMfyEsVFobEjybPhazOu2BFPPqEUuS9tNFnprM4j6ohC3Y1haq20icG5tCChjy1b
	cURmjqPAXi7IzreVPxVcTlcBFWzMN4e2yRNT4jY+0tuhDf4c2vAl1ORHlp/kpRk76H8B3m1UVUri4
	bG2P4zUBoVoXhqdZn+fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i849i-000473-D1; Wed, 11 Sep 2019 15:03:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i849J-000447-6W
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 15:03:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8D1821000;
 Wed, 11 Sep 2019 08:03:12 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2D9AE3F67D;
 Wed, 11 Sep 2019 08:03:11 -0700 (PDT)
Date: Wed, 11 Sep 2019 16:03:08 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the
 ARM SMC/HVC mailbox
Message-ID: <20190911160308.30878cc3@donnerap.cambridge.arm.com>
In-Reply-To: <CABb+yY2rppSOgqMy+R294d94xwi5UPR55Eo-WB8KA6m11nG3iQ@mail.gmail.com>
References: <1567004515-3567-1-git-send-email-peng.fan@nxp.com>
 <1567004515-3567-2-git-send-email-peng.fan@nxp.com>
 <20190909164208.6605054e@donnerap.cambridge.arm.com>
 <CABb+yY2rppSOgqMy+R294d94xwi5UPR55Eo-WB8KA6m11nG3iQ@mail.gmail.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_080313_466486_D03EBF5A 
X-CRM114-Status: GOOD (  24.29  )
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

On Tue, 10 Sep 2019 21:44:11 -0500
Jassi Brar <jassisinghbrar@gmail.com> wrote:

Hi,

> On Mon, Sep 9, 2019 at 10:42 AM Andre Przywara <andre.przywara@arm.com> wrote:
> >
> > On Wed, 28 Aug 2019 03:02:58 +0000
> > Peng Fan <peng.fan@nxp.com> wrote:
> >
[ ... ]
> >  
> > > +
> > > +  arm,func-ids:
> > > +    description: |
> > > +      An array of 32-bit values specifying the function IDs used by each
> > > +      mailbox channel. Those function IDs follow the ARM SMC calling
> > > +      convention standard [1].
> > > +
> > > +      There is one identifier per channel and the number of supported
> > > +      channels is determined by the length of this array.  
> >
> > I think this makes it obvious that arm,num-chans is not needed.
> >
> > Also this somewhat contradicts the driver implementation, which allows the array to be shorter, marking this as UINT_MAX and later on using the first data item as a function identifier. This is somewhat surprising and not documented (unless I missed something).
> >
> > So I would suggest:
> > - We drop the transports property, and always put the client provided data in the registers, according to the SMCCC. Document this here.
> >   A client not needing those could always puts zeros (or garbage) in there, the respective firmware would just ignore the registers.
> > - We drop "arm,num-chans", as this is just redundant with the length of the func-ids array.
> > - We don't impose an arbitrary limit on the number of channels. From the firmware point of view this is just different function IDs, from Linux' point of view just the size of the memory used. Both don't need to be limited artificially IMHO.
> >  
> Sounds like we are in sync.
> 
> > - We mark arm,func-ids as required, as this needs to be fixed, allocated number.
> >  
> I still think func-id can be done without. A client can always pass
> the value as it knows what it expects.

I don't think it's the right abstraction. The mailbox *controller* uses a specific func-id, this has to match the one the firmware expects. So this is a property of the mailbox transport channel (the SMC call), and the *client* should *not* care about it. It just sees the logical channel ID (if we have one), which the controller translates into the func-ID.

So it should really look like this (assuming only single channel controllers):
mailbox: smc-mailbox {
    #mbox-cells = <0>;
    compatible = "arm,smc-mbox";
    method = "smc";
    arm,func-id = <0x820000fe>;
};
scmi {
    compatible = "arm,scmi";
    mboxes = <&smc_mbox>;
    mbox-names = "tx"; /* rx is optional */
    shmem = <&cpu_scp_hpri>;
};

If you allow the client to provide the function ID (and I am not saying this is a good idea): where would this func ID come from? It would need to be a property of the client DT node, then. So one way would be to use the func ID as the Linux mailbox channel ID:
mailbox: smc-mailbox {
    #mbox-cells = <1>;
    compatible = "arm,smc-mbox";
    method = "smc";
};
scmi {
    compatible = "arm,scmi";
    mboxes = <&smc_mbox 0x820000fe>;
    mbox-names = "tx"; /* rx is optional */
    shmem = <&cpu_scp_hpri>;
};

But this doesn't look desirable.

And as I mentioned this before: allowing some mailbox clients to provide the function IDs sound scary, as they could use anything they want, triggering random firmware actions (think PSCI_CPU_OFF).

So I think we should have a required "arm,func-id" property, with exactly one 32-bit value (again assuming single channel controllers).

Cheers,
Andre.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
