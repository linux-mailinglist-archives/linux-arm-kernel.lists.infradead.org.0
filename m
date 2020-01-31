Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CFB14EE6E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 15:29:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/fRqqEs6caIsU6W3NJpYk1q8LRIXFWoXy95CULAC6Sc=; b=fAP0kQbJb1H9rV
	Y5ArP1tbtm/8dvRmH9a7mwxeRsYrqxSGn1T/GGoVKpAZsLt4SqP6T8hAgmdx9Xu4PZx40FiQkHo0c
	8Pp9vS1ZVo0/DRp00OnJLEJi6OYsTBxbFVMXsPnK3tnobaQeJ8MbbnIlp+tlvm2MrllhJ1p2ym6GA
	/4Ggs1Fzkn+ufoqgBDn6Iuwha9XkB5c+zYERTqA0jHX7RzcEljftmffFOgYzWGPhkfjo6jG1U0KAF
	t8/qtU1Q0e5/w62juDAhLs5CVqDqXPEMdfavDvDR1XOaqueLvnZPLnLiaujjcYRveHUHC/XONY+oB
	WAgw056Et39hWd6qdNIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixXIh-0003nS-DK; Fri, 31 Jan 2020 14:29:39 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixXIZ-0003n7-Go
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 14:29:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wII15MgeqWbZfMqpukw8WbJXMIjvvlTLwoyDgIUTqRM=; b=ShZjamFMEFEi8ZK6lvRTAfg72t
 Vnb01CyPnJ7r54jskpVozNRpja4cak/rpQ3EA+z8tdCxGk/ma0n7XNXXYSzDi8aJs81HiyfqbzIDI
 TBwGIdJHIzI15tZXE3NfSucMK1mqWPVg/4N3IYkodR379POfvridvakg2WpfKOtGPAOs=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1ixXIA-0007bY-Q6; Fri, 31 Jan 2020 15:29:06 +0100
Date: Fri, 31 Jan 2020 15:29:06 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Message-ID: <20200131142906.GG9639@lunn.ch>
References: <1580198925-50411-1-git-send-email-makarand.pawagi@nxp.com>
 <20200128110916.GA491@e121166-lin.cambridge.arm.com>
 <DB8PR04MB7164DDF48480956F05886DABEB070@DB8PR04MB7164.eurprd04.prod.outlook.com>
 <12531d6c569c7e14dffe8e288d9f4a0b@kernel.org>
 <CAKv+Gu8uaJBmy5wDgk=uzcmC4vkEyOjW=JRvhpjfsdh-HcOCLg@mail.gmail.com>
 <CABdtJHsu9R9g4mn25=9EW3jkCMhnej_rfkiRzo3OCX4cv4hpUQ@mail.gmail.com>
 <0680c2ce-cff0-d163-6bd9-1eb39be06eee@arm.com>
 <CABdtJHuLZeNd9bQZ-cmQi00WnObYPvM=BdWNw4EMpOFHjRd70w@mail.gmail.com>
 <b136adc4-be48-82df-0592-97b4ba11dd79@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b136adc4-be48-82df-0592-97b4ba11dd79@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_062931_562716_084854D7 
X-CRM114-Status: GOOD (  11.69  )
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
 Will Deacon <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Marc Zyngier <maz@kernel.org>, Pankaj Bansal <pankaj.bansal@nxp.com>,
 Jon Nettleton <jon@solid-run.com>, Russell King <linux@armlinux.org.uk>,
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
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > But by design SFP, SFP+, and QSFP cages are not fixed function network
> > adapters.  They are physical and logical devices that can adapt to
> > what is plugged into them.  How the devices are exposed should be
> > irrelevant to this conversation it is about the underlying
> > connectivity.
> 
> Apologies - I was under the impression that SFP and friends were a
> physical-layer thing and that a MAC in the SoC would still be fixed such
> that its DMA and interrupt configuration could be statically described
> regardless of what transceiver was plugged in (even if some configurations
> might not use every interrupt/stream ID/etc.) If that isn't the case I shall
> go and educate myself further.

Hi Robin

It gets interesting with QSFP cages. The Q is quad, there are 4 SERDES
lanes. You can use them for 1x 40G link, or you can split them into 4x
10G links. So you either need one MAC or 4 MACs connecting to the
cage, and this can change on the fly when a modules is ejected and
replaced with another module. There are only one set of control pins
for i2c, loss of signal, TX disable, module inserted. So where the
interrupt/stream ID/etc are mapped needs some flexibility.

There is also to some degree a conflict with hiding all this inside
firmware. This is complex stuff. It is much better to have one core
implementing in Linux plus some per hardware driver support, than
having X firmware blobs, generally closed source, each with there own
bugs which nobody can fix.

     Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
