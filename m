Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3374F14EF33
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 16:09:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wmSiNXIqY78OfKeM58WvB3BFJShuw3KfGpNrc6B/cWg=; b=GLos73xkXYMeZ6
	7CDXc2Lr1DcPDWNDkjRdhfAi3+G2BVgL8IrXwRDUsZfvZqckXD2+do8Fo4p0kdS0hf8ZNg7E2+pYs
	Z3CT6YPNxTtypWAnKiByQj/tUl9YF84u3KQzl5gM/CvrCYO9CJNe1NFXkDvhecucwFhVBeYpDdnIi
	D8fYwhXFTyE2B7SGCxa2QBiHSihhptdjWPk7NTV9GVWo2rt937IRzdps02z7KmbZzPyQMSqKgWp6u
	b1CgAUg6BMol0FDlO+yUbBFBkMkWf9kUrhaatrNEuzAmuiPzF6XheX0JCuiXyPN3fzk1VX+ERHZxy
	+tXCTUIYS94/2NxNOmkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixXvb-0000VW-9q; Fri, 31 Jan 2020 15:09:51 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixXvV-0000VB-LN
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 15:09:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2diiy8c4y3CQgdL4Lzi01JXwoWYa5nYVCP1kWDev+KA=; b=VtV9rSnhaU0/x3uU0Ks1rPZwoy
 udAyQG7ZDC0OTihQpPDz/WkVWXMvNN/aqQsxdfKqkoW3c4SQ2yZdFcgUxpNGOvWeOW6fiDxhTMgbr
 MAw/DzHa16yTES2h6C2kEpkRtp3LtWyVvPX3tDO5U2vDa7SjwSyPDdFS82it+CbcDj1w=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1ixXvF-0007n7-4E; Fri, 31 Jan 2020 16:09:29 +0100
Date: Fri, 31 Jan 2020 16:09:29 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Will Deacon <will@kernel.org>
Subject: Re: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Message-ID: <20200131150929.GB13902@lunn.ch>
References: <20200128110916.GA491@e121166-lin.cambridge.arm.com>
 <DB8PR04MB7164DDF48480956F05886DABEB070@DB8PR04MB7164.eurprd04.prod.outlook.com>
 <12531d6c569c7e14dffe8e288d9f4a0b@kernel.org>
 <CAKv+Gu8uaJBmy5wDgk=uzcmC4vkEyOjW=JRvhpjfsdh-HcOCLg@mail.gmail.com>
 <CABdtJHsu9R9g4mn25=9EW3jkCMhnej_rfkiRzo3OCX4cv4hpUQ@mail.gmail.com>
 <0680c2ce-cff0-d163-6bd9-1eb39be06eee@arm.com>
 <CABdtJHuLZeNd9bQZ-cmQi00WnObYPvM=BdWNw4EMpOFHjRd70w@mail.gmail.com>
 <b136adc4-be48-82df-0592-97b4ba11dd79@arm.com>
 <20200131142906.GG9639@lunn.ch>
 <20200131144737.GA4948@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200131144737.GA4948@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_070945_700181_8824CC4A 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Calvin Johnson <calvin.johnson@nxp.com>, stuyoder@gmail.com,
 nleeder@codeaurora.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>, Hanjun Guo <guohanjun@huawei.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Marc Zyngier <maz@kernel.org>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, Jon Nettleton <jon@solid-run.com>,
 Russell King <linux@armlinux.org.uk>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Len Brown <lenb@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 Andy Wang <Andy.Wang@arm.com>, Makarand Pawagi <makarand.pawagi@nxp.com>,
 Varun Sethi <V.Sethi@nxp.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, Paul Yang <Paul.Yang@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "<netdev@vger.kernel.org>" <netdev@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Devicetree to the rescue!

Yes, exactly. We have good, standardised descriptions for most of this
in device tree. And phylink can handle SFP and SFP+. Nobody has worked
on QSFP yet, since phylink has mostly been pushed by the embedded
world and 40G is not yet popular in the embedded world.

> Entertaining the use of ACPI without any firmware abstraction for this
> hardware really feels like a square peg / round hole situation, so I'm
> assuming somebody's telling you that you need it "FOAR ENTAPRYZE". Who
> is it and can you tell them to bog off?

The issues here is that SFPs are appearing in more and more server
systems, replacing plain old copper Ethernet. If the boxes use off the
shelf Mellanox or Intel PCIe cards, it is not an issue. But silicon
vendors are integrating this into the SoC in the ARM way of doing
things, memory mapped, spread over a number of controllers, not a
single PCIe device.

Maybe we need hybrid systems. Plain, old, simple, boring things like
CPUs, serial ports, SATA, PCIe busses are described in ACPI. Complex
interesting things are in DT. The hard thing is the interface between
the two. DT having a phandle to an ACPI object, e.g a GPIO, interrupt
or an i2c bus.

   Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
