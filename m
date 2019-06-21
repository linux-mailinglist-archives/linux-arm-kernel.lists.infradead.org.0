Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F534F0E8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 00:59:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=stxNz7oJq1zh40m2bRC4QDeemNBSHMH/2WCWYyE7lLI=; b=QaCqgIiyO8rwhc
	+Vj/V/GxOv0B/K5FuK3Z4CpUmGu9rdKByxC9by5QjOwxbIG1q7cR07SRPxUFbKsALvXQ80LEecON1
	5aSWVsqtYPyMvYg/jXwLSG8bdwn4qMEwjA0GJ2oCqXou9nFw02Upu9pf1s/Lm3rbZhclcnI0sOadY
	oBLsz16UUukAItF7xBN0NAuNpuH+mJcXbKWtmZE+suR8oK4RzvUR36k1Cl57AlPBMIaekNnYIHfpX
	SgrRFkNotNz4ErQoVYUFZ1sqd0R1Iyd3GYjefWLK+ECeawWE7XLEYf1xjoRLfDGADY6K5SmkbZsHL
	KU/BBfy1+IiXTDIgIR8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heSUq-0007HO-0A; Fri, 21 Jun 2019 22:59:04 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heSUd-0007Gx-Rx
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 22:58:53 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x5LMwGXK028050;
 Fri, 21 Jun 2019 17:58:35 -0500
Message-ID: <4d758a3bfff0fbcec94f51cf1872b649108170db.camel@kernel.crashing.org>
Subject: Re: [PATCH 1/4] arm64: pci: acpi: Use
 pci_assign_unassigned_root_bus_resources()
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Date: Sat, 22 Jun 2019 08:58:16 +1000
In-Reply-To: <20190621204839.GF127746@google.com>
References: <20190615002359.29577-1-benh@kernel.crashing.org>
 <20190621204839.GF127746@google.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_155852_055406_CE67AC91 
X-CRM114-Status: GOOD (  14.69  )
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
 Sinan Kaya <okaya@kernel.org>, Zeev Zilberman <zeev@amazon.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ali Saidi <alisaidi@amazon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-06-21 at 15:48 -0500, Bjorn Helgaas wrote:
> On Sat, Jun 15, 2019 at 10:23:56AM +1000, Benjamin Herrenschmidt
> wrote:
> > Instead of the simpler
> > 
> > 	pci_bus_size_bridges(bus);
> > 	pci_bus_assign_resources(bus);
> > 
> > Use pci_assign_unassigned_root_bus_resources(). This should have no
> > effect
> > as long as we are reassigning everything. Once we start honoring FW
> > resource allocations, this will bring up the "reallocation" feature
> > which can help making room for SR-IOV when necessary.
> > 
> > Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> 
> I applied these to pci/resource, with my comments and acks from
> Lorenzo and Ard.  Let me know if I was too aggressive or got
> something
> wrong; I consider these branches malleable until the merge window.
> 
> Thanks for the first step on this long journey :)

Heh thanks :-)

Cheers,
Ben.

> > ---
> >  arch/arm64/kernel/pci.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm64/kernel/pci.c b/arch/arm64/kernel/pci.c
> > index bb85e2f4603f..1419b1b4e9b9 100644
> > --- a/arch/arm64/kernel/pci.c
> > +++ b/arch/arm64/kernel/pci.c
> > @@ -193,8 +193,7 @@ struct pci_bus *pci_acpi_scan_root(struct
> > acpi_pci_root *root)
> >  	if (!bus)
> >  		return NULL;
> >  
> > -	pci_bus_size_bridges(bus);
> > -	pci_bus_assign_resources(bus);
> > +	pci_assign_unassigned_root_bus_resources(bus);
> >  
> >  	list_for_each_entry(child, &bus->children, node)
> >  		pcie_bus_configure_settings(child);
> > -- 
> > 2.17.1
> > 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
