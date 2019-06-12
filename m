Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CA04193F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 02:06:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yrTYfWOSdR8pEhaXG+5h9TVLno022yOJ8NrcYn2pu/w=; b=bPvDmJpPUZcqyX
	yopC6V/2CGNMF0Li+ZbM7NnP6RuhbKxnDnG3NMyPuIp/TISehUPDdDUUb/aGDH0uuaFw5Sm0B8B4C
	6op7zx78+OuISXi3l9lyqmGKdFk1oyOVz0Mf1Y4HT5z/HpZCDzeq/kdtslwCY6MRLx7DO2U9hgNd0
	sKuyZL683udtqyTD96C2nIpg6wpWRYRbxHd7O5cWH2/ADi/h4IKLteTrpHjXbGxYDZhUBl8Kw85M1
	YexqzKl/9ZdNk5hJmGeWdGF6RvzI76HjsRD35jjScSk5xJRmAtLVf2wxA62LflGOtKYBHOBp+8Luy
	rtWzQy9NvM0ZHfv7ZAOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haqmb-0006zd-FG; Wed, 12 Jun 2019 00:06:29 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haqmR-0006zI-Uy
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 00:06:21 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x5C066Ek023739;
 Tue, 11 Jun 2019 19:06:07 -0500
Message-ID: <97fd2516fdde7f9f01688af426c103806f68dd2c.camel@kernel.crashing.org>
Subject: Re: [PATCH/RESEND] arm64: acpi/pci: invoke _DSM whether to preserve
 firmware PCI setup
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Date: Wed, 12 Jun 2019 10:06:06 +1000
In-Reply-To: <20190611233908.GA13533@google.com>
References: <56715377f941f1953be43b488c2203ec090079a1.camel@kernel.crashing.org>
 <20190604014945.GE189360@google.com>
 <960c94eb151ba1d066090774621cf6ca6566d135.camel@kernel.crashing.org>
 <20190604124959.GF189360@google.com>
 <e520a4269224ac54798314798a80c080832e68b1.camel@kernel.crashing.org>
 <d53fc77e1e754ddbd9af555ed5b344c5fa523154.camel@kernel.crashing.org>
 <20190611233908.GA13533@google.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_170620_152524_2A72D014 
X-CRM114-Status: GOOD (  21.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-pci@vger.kernel.org,
 Sinan Kaya <okaya@kernel.org>, "Zilberman, Zeev" <zeev@amazon.com>, "Saidi,
 Ali" <alisaidi@amazon.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-06-11 at 18:39 -0500, Bjorn Helgaas wrote:
> On Thu, Jun 06, 2019 at 07:00:12PM +1000, Benjamin Herrenschmidt wrote:
> > From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > 
> > On arm64 ACPI systems, we unconditionally reconfigure the entire PCI
> > hierarchy at boot. This is a departure from what is customary on ACPI
> > systems, and may break assumptions in some places (e.g., EFIFB), that
> > the kernel will leave BARs of enabled PCI devices where they are.
> > 
> > Given that PCI already specifies a device specific ACPI method (_DSM)
> > for PCI root bridge nodes that tells us whether the firmware thinks
> > the configuration should be left alone, let's sidestep the entire
> > policy debate about whether the PCI configuration should be preserved
> > or not, and put it under the control of the firmware instead.
> 
> The current PCI Firmware spec r3.2 specifies _DSM function 5 for
> PCI-to-PCI bridge objects, which does not include host bridge
> (PNP0A03) nodes, but the proposed revision does allow it under host
> bridges.  So I'm fine with this, but we should update the commit log
> so it doesn't say "PCI *already* specifies this".
> 
> > [BenH: Added pci_assign_unassigned_root_bus_resources()]
> > 
> > Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> 
> I think you should add a signed-off-by for yourself?

I should, I forgot. That said, Lorenzo wants to wait for the actual
ECN... and we're also discussing some details.
> 

 .../...

> > +	/*
> > +	 * Invoke the PCI device specific method (_DSM) #5 'Ignore PCI Boot
> > +	 * Configuration', which tells us whether the firmware wants us to
> > +	 * preserve the configuration of the PCI resource tree for this root
> > +	 * bridge.
> > +	 */
> > +	obj = acpi_evaluate_dsm(ACPI_HANDLE(bus->bridge), &pci_acpi_dsm_guid, 1,
> > +	                        IGNORE_PCI_BOOT_CONFIG_DSM, NULL);
> > +	if (obj && obj->type == ACPI_TYPE_INTEGER && obj->integer.value == 0) {
> 
> This is fine, but can we make a tiny step toward doing this in generic
> code instead of adding more arch-specific stuff?
> 
> E.g., evaluate the _DSM in the generic acpi_pci_root_add(), set a
> "preserve_config" bit in the struct acpi_pci_root, and test the bit
> here?

I'd rather have the flag in the host bridge no ?

> It would also be nice to add a printk in the oter
> pci_acpi_scan_root() implementations if the bit is set so we know that
> the platform supplied the _DSM but we're ignoring it.

Ok.

Talking of which, look at the ongoing discussion I have with Lorenzo
when it comes to pci_bus_claim_resources vs. what x86 does, I'd love
for you to chime in. I'd like to try to consolidate things further
accross architectures but there might be reasons I don't see as to why
things are different in that area, so ...

Cheers,
Ben.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
