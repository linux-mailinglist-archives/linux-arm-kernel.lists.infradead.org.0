Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A378245AC9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 12:43:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gbwv+YABhJnmIh669KHUsIsbWRlMiBZNpQf1lVS3kBo=; b=GlIa+XYsFxe22X
	IaBhNhrKm3dM5vwUw00rQULV7BCpgcyxf/UICs1Cuh5kVLz5H/NZbwvFJNnVrar5Lrh4CQvjZ56jE
	Aao2I5471dyUdMBv05GheiC+FuSAzdUEDcJiAz3Zl68eK1Y/jOhgMQ7P/4fpfPg4LCnFfzdrVDq+h
	CsvUfrxir9+p4WrkWfuvxy7vln2h6Y4cdiB1I6wEH9v5RmMNPE7sXk8fo0EYLazUrwCl1SDgzuivm
	yqgD8XpmvF59YXynDlVImwp8v+tOivw2ZRblywXNIHU/Wnr0eZLLoRuOebU9aF0OAi2fsh9scSHgJ
	S3Hk48J1uZ2saehUu7TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbjgU-0001Iv-24; Fri, 14 Jun 2019 10:43:50 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbjgA-0001GP-JW
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 10:43:34 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x5EAhJFG009086;
 Fri, 14 Jun 2019 05:43:20 -0500
Message-ID: <84320a45ef9395d82bf1c5d4d2d7e6db189cbfda.camel@kernel.crashing.org>
Subject: Re: [RFC PATCH v2] arm64: acpi/pci: invoke _DSM whether to preserve
 firmware PCI setup
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Date: Fri, 14 Jun 2019 20:43:19 +1000
In-Reply-To: <906b2576756e82a54b584c3de2d8362602de07ce.camel@kernel.crashing.org>
References: <5783e36561bb77a1deb6ba67e5a9824488cc69c6.camel@kernel.crashing.org>
 <20190613190248.GH13533@google.com>
 <e6c7854ae360be513f6f43729ed6d4052e289376.camel@kernel.crashing.org>
 <CAKv+Gu95pQ7_OfLbEXHZ_bhYnqOgTBKCmTgqUY27un-Y708BgQ@mail.gmail.com>
 <d5d3e7b9553438482854c97e09543afb7de23eaa.camel@kernel.crashing.org>
 <20190614095742.GA27188@e121166-lin.cambridge.arm.com>
 <906b2576756e82a54b584c3de2d8362602de07ce.camel@kernel.crashing.org>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_034330_820706_85964FE4 
X-CRM114-Status: GOOD (  13.99  )
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
Cc: linux-pci <linux-pci@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
 Sinan Kaya <okaya@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-06-14 at 20:36 +1000, Benjamin Herrenschmidt wrote:
> On Fri, 2019-06-14 at 10:57 +0100, Lorenzo Pieralisi wrote:
> > > Also using "probe_only" for _DSM #5 = 0 isn't a good idea, at least as
> > > implemented today in the rest of the kernel, probe_only also means we
> > > shouldn't assign what was left unassigned. However _DSM #5 allows this.
> > 
> > I am not sure about this. PCI_PROBE_ONLY cannot stop an OS from
> > reassigning BARs that are clearly misconfigured, it does not make
> > any sense.
> 
> PCI_PROBE_ONLY is a linux thing which, as implemented today, implies no
> assignment at all. I believe it originates as a merge of variants of
> the same thing, at least one of them being one I created for powerpc
> back in the days due to our proprietary hypervisor not letting you
> touch any of the PCI config space.

Well... you could "touch" things and even BAR size but mostly we don't
even do that on powerpc on these systems these days, we read the BAR
values (and a bunch of other things) from OFW and manufacture the
pci_dev. The generic code still use cfg space to fill up the blanks.
sparc64 uses the same technique.

This least to another conversation we hinted at earlier.. we should
probably have a way to do the same at least for BARs on ACPI systems so
we don't have to temporarily disable access to a device to size them.

This can be problematic is the device in question need to be used
during the sizing. It can happen with some system devices used behind
the scene by FW, or the device on which the console is (how many time
did I crash bcs I had too verbose printk's in the PCI code during BAR
sizing of the framebuffer or the serial card...)

Cheers,
Ben.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
