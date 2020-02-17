Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D846D1617DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 17:27:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kitdU9UAbt8S4uCwOmbowkH12777yUrBRBCX6PvD7cs=; b=rcaKXKi5e1zIKq
	ohaOGRk4WIIf3sFq/xTcu0w2CDWdNymzl/zFzZLhyHPw32NXN6cRirsmM+1aOhHvi5FmCewsaYvtR
	ZdLVB6/0gxaRvETh7TlYwtHZ/c5Gh/N7yI983abmTz5Xw/dlUXL2BPHixZbVcf6BYdUY3KAAYhkea
	fx2VeB9tySurnihyP24kNb53po42ndJ29otU/zhRZm3NsjMRiL6FyQTJV7727aGFhg2crktun2YhA
	i2f7qwXCYkC/y5ZiKd+0W8E4HD6jPssyA2b9vrvmKMTbEtaaj9GKfGq6xbWkMOYUSts0c/SZ5EgMc
	OVRA6HFQZtXDJ1W6Gylw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3jET-00063E-NF; Mon, 17 Feb 2020 16:26:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3jEL-00062O-Ek
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 16:26:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C490F30E;
 Mon, 17 Feb 2020 08:26:43 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 680E33F68F;
 Mon, 17 Feb 2020 08:26:40 -0800 (PST)
Date: Mon, 17 Feb 2020 16:26:26 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Message-ID: <20200217162604.GA24829@e121166-lin.cambridge.arm.com>
References: <CAKv+Gu8uaJBmy5wDgk=uzcmC4vkEyOjW=JRvhpjfsdh-HcOCLg@mail.gmail.com>
 <VI1PR0401MB249622CFA9B213632F1DE955F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <7349fa0e6d62a3e0d0e540f2e17646e0@kernel.org>
 <VI1PR0401MB2496373E0C6D1097F22B3026F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <20200214161957.GA27513@e121166-lin.cambridge.arm.com>
 <VI1PR0401MB2496800C88A3A2CF912959E6F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <20200214174949.GA30484@e121166-lin.cambridge.arm.com>
 <VI1PR0401MB2496308C27B7DAA7A5396970F1160@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <20200217152518.GA18376@e121166-lin.cambridge.arm.com>
 <384eb5378ee2b240d6ab7d89aef2d5c7@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <384eb5378ee2b240d6ab7d89aef2d5c7@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_082645_583644_0DB0CB68 
X-CRM114-Status: GOOD (  18.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Will Deacon <will@kernel.org>, Pankaj Bansal <pankaj.bansal@nxp.com>,
 jon@solid-run.com, Russell King <linux@armlinux.org.uk>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Len Brown <lenb@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 Andy Wang <Andy.Wang@arm.com>, Makarand Pawagi <makarand.pawagi@nxp.com>,
 Varun Sethi <V.Sethi@nxp.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, Paul Yang <Paul.Yang@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, netdev@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 03:35:01PM +0000, Marc Zyngier wrote:
> On 2020-02-17 15:25, Lorenzo Pieralisi wrote:
> > On Mon, Feb 17, 2020 at 12:35:12PM +0000, Pankaj Bansal wrote:
> 
> Hi Lorenzo,
> 
> [...]
> 
> > > > Side note: can you explain to me please how the MSI allocation flow
> > > > and kernel data structures/drivers are modeled in DT ? I had a quick
> > > > look at:
> > > >
> > > > drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c
> > > >
> > > > and to start with, does that code imply that we create a
> > > > DOMAIN_BUS_FSL_MC_MSI on ALL DT systems with an ITS device node ?
> > > 
> > > Yes. It's being done for all DT systems having ITS node.
> > 
> > This does not seem correct to me, I will let Marc comment on
> > the matter.
> 
> Unfortunately, there isn't a very good way to avoid that ATM,
> other than defering the registration of the irqdomain until
> we know that a particular bus (for example a PCIe RC) is registered.
> 
> I started working on that at some point, and ended up nowhere because
> no bus (PCI, FSL, or anything else) really give us the right information
> when it is actually required (when a device starts claiming interrupts).
> 
> I *think* we could try a defer it until a bus root is found, and that
> this bus has a topological link to an ITS. probably invasive though,
> as you would need a set of "MSI providers" for each available irqchip
> node.

Yes I see, it is not trivial - I just raised the point while reading the
code to understand how the IRQ domain structures are connected in the DT
bootstrap case, I don't think that's an urgent issue to solve, just
noticed and reported it to make sure you are aware.

Thanks !
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
