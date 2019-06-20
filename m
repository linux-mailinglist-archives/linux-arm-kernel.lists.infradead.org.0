Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E04234DD92
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 00:56:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RlKlg9UaJ78eB/26guAa/tzYuWJ2Oy7vsel15SWINgg=; b=k4QvDHg09nrU01
	f2ZIcX66SQ4vFoXJofbg8MJ+3aCW/ksHKR1NCTdQgGxpp+Linz1tAreLqPqfW9P4MxES46czyhVWg
	E+jqUDbk9Z1hWRAFbaLDYEBktOzUCuv5XGAC9GD/cq5bp1zefMZiy8gJWjPX+R2IDQtUXKWzdaSLJ
	84mdEtp56qsxEVOla1r1iWxSAC1Y1YXdAo3F7tJpEk2yRJHz33Fbo4TOl/W2GtJZqYeQ0nrI/UR9Q
	QRTWUpTyXzChL9i8sNn+qG01uQkoelyGIFeECz14q7oHWJNwLtsTQXcXBTRDcoVvHdoCk2juWMtHO
	o21+KeHFtOBe4eSiHvaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he5yW-0001Zt-No; Thu, 20 Jun 2019 22:56:12 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he5yL-0001ZG-JC
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 22:56:03 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x5KMthDS002646;
 Thu, 20 Jun 2019 17:55:44 -0500
Message-ID: <a2ab2f2e6588fa12642dc16fbe908de55ba7b684.camel@kernel.crashing.org>
Subject: Re: [PATCH 1/4] arm64: pci: acpi: Use
 pci_assign_unassigned_root_bus_resources()
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Date: Fri, 21 Jun 2019 08:55:43 +1000
In-Reply-To: <20190620171357.GD18771@e121166-lin.cambridge.arm.com>
References: <20190615002359.29577-1-benh@kernel.crashing.org>
 <20190620171357.GD18771@e121166-lin.cambridge.arm.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_155601_785710_D90E36BF 
X-CRM114-Status: GOOD (  19.64  )
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-pci@vger.kernel.org,
 Sinan Kaya <okaya@kernel.org>, Zeev Zilberman <zeev@amazon.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Bjorn Helgaas <helgaas@kernel.org>, Ali Saidi <alisaidi@amazon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-06-20 at 18:13 +0100, Lorenzo Pieralisi wrote:
> On Sat, Jun 15, 2019 at 10:23:56AM +1000, Benjamin Herrenschmidt wrote:
> > Instead of the simpler
> > 
> > 	pci_bus_size_bridges(bus);
> > 	pci_bus_assign_resources(bus);
> > 
> > Use pci_assign_unassigned_root_bus_resources(). This should have no effect
> > as long as we are reassigning everything. Once we start honoring FW
> > resource allocations, this will bring up the "reallocation" feature
> > which can help making room for SR-IOV when necessary.
> 
> I would like to add more details on why we want to make this change,
> I will update the log when we merge it, it is a bit too late for v5.3,
> even if in theory no functional change is intended.

Ok. The why is that a subsequent patch will turn the code into

	if (claim)
		claim()
	pci_assign_unassigned*

And I wanted the patch replacing the existing 2 calls with the above
separate and bisectable in case we missed some odd effect of the
change.

Cheers,
Ben.

> 
> > Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> > ---
> >  arch/arm64/kernel/pci.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm64/kernel/pci.c b/arch/arm64/kernel/pci.c
> > index bb85e2f4603f..1419b1b4e9b9 100644
> > --- a/arch/arm64/kernel/pci.c
> > +++ b/arch/arm64/kernel/pci.c
> > @@ -193,8 +193,7 @@ struct pci_bus *pci_acpi_scan_root(struct acpi_pci_root *root)
> >  	if (!bus)
> >  		return NULL;
> >  
> > -	pci_bus_size_bridges(bus);
> > -	pci_bus_assign_resources(bus);
> > +	pci_assign_unassigned_root_bus_resources(bus);
> 
> These hunks should be identical, minus the additional resource size
> handling and realloc policy (which are *missing* features in current
> code). We must document this change in the log.
> 
> Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> 
> >  	list_for_each_entry(child, &bus->children, node)
> >  		pcie_bus_configure_settings(child);
> > -- 
> > 2.17.1
> > 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
