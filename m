Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E96E926556
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 16:02:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SPI/XFPHK+Q1slFad951UrnvRm6Kg2/AVymuV7HZY24=; b=rspueiNkryxYxe
	10Y5FI4dSUUSyQr31wPz2O81bPbpt9VlOedeNsUknGzO/idywZqwlH8MeYgRp0FAUStUajOubfY22
	sPqff8Mjo77Fm35MGEK6En4ngJg0lHWH5Whxm/zr8iJKHN4j05L4qGb9qjtoO2q9ShD5O+mbucKWc
	Q1KxfGD7VPJCj741vGfOz6gkP7uGuFaKgxEJ2dQEFuDjY5XW+LoqKTyoJcf0CC9msejWjW7v9+9dJ
	YB0+ZGvA6X/0bXAUEfetMPYj8Rlq9tdTkwSjqpbBusVXLxmk0SMwE3Ykf80FZmPixbTfbqzH7lGDI
	moFasBJSg/spZRWR2uYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTRpM-0005jt-92; Wed, 22 May 2019 14:02:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTRpF-0005jM-If
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 14:02:38 +0000
Received: from localhost (173-25-83-245.client.mchsi.com [173.25.83.245])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0C56320675;
 Wed, 22 May 2019 14:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558533757;
 bh=KTu3NjSg2iiGDgoB9aRWVmkH5c55r6B+TEQSSjSQf3U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TiB5IfV+S9KxIVjx6O4i4vgHsQOlh+RmPNLDUeSKScVe/Ik1n+H4rDSt4n0688O7h
 lNapBWDrWoQDfX/n8gtkEjdNgBr/q6eYeOZmzfMtERPy3LMVl33T2tZ5QrDXkTbzA0
 iit2/21VJMjnlzoVA1c/tDP/mr6ZVU4mSkNK1WOQ=
Date: Wed, 22 May 2019 09:02:36 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V7 04/15] PCI: dwc: Move config space capability search API
Message-ID: <20190522140235.GB79339@google.com>
References: <20190517123846.3708-1-vidyas@nvidia.com>
 <20190517123846.3708-5-vidyas@nvidia.com>
 <20190521211757.GF57618@google.com>
 <fd164d1f-cf99-fe81-c368-46e3a3742a59@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fd164d1f-cf99-fe81-c368-46e3a3742a59@nvidia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_070237_647650_ADCEF0C5 
X-CRM114-Status: GOOD (  27.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, kishon@ti.com, kthota@nvidia.com, thierry.reding@gmail.com,
 gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 linux-tegra@vger.kernel.org, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 02:26:08PM +0530, Vidya Sagar wrote:
> On 5/22/2019 2:47 AM, Bjorn Helgaas wrote:
> > On Fri, May 17, 2019 at 06:08:35PM +0530, Vidya Sagar wrote:
> > > Move PCIe config space capability search API to common DesignWare file
> > > as this can be used by both host and ep mode codes.

> > >   .../pci/controller/dwc/pcie-designware-ep.c   | 37 +----------------
> > >   drivers/pci/controller/dwc/pcie-designware.c  | 40 +++++++++++++++++++
> > >   drivers/pci/controller/dwc/pcie-designware.h  |  2 +
> > >   3 files changed, 44 insertions(+), 35 deletions(-)

> > > --- a/drivers/pci/controller/dwc/pcie-designware.c
> > > +++ b/drivers/pci/controller/dwc/pcie-designware.c
> > > @@ -14,6 +14,46 @@
> > >   #include "pcie-designware.h"
> > > +/*
> > > + * These APIs are different from standard pci_find_*capability() APIs in the
> > > + * sense that former can only be used post device enumeration as they require
> > > + * 'struct pci_dev *' pointer whereas these APIs require 'struct dw_pcie *'
> > > + * pointer and can be used before link up also.
> > 
> > I think this comment is slightly misleading because it suggests the
> > reason we need these DW interfaces is because we're doing something
> > before a pci_dev pointer is available.
> > 
> > But these DW interfaces are used on devices that will *never* have a
> > pci_dev pointer because they are not PCI devices.  They're used on
> > host controller devices, which have a PCIe link on the downstream
> > side, but the host controller driver operates them using their
> > upstream, non-PCI interfaces.  Logically, I think they would be
> > considered parts of Root Complexes, not Root Ports.
> > 
> > There's actually no reason why that upstream interface should look
> > anything like PCI; it doesn't need to organize registers into
> > capability lists at all.  It might be convenient for the hardware to
> > do that and share things with a Root Port device, which *is* a PCI
> > device, but it's not required.
> > 
> > It also really has nothing to do with whether the link is up.  This
> > code operates on hardware that is upstream from the link, so we can
> > reach it regardless of the link.
>
> I added this comment after receiving a review comment to justify why
> standard pci_find_*capability() APIs can't be used here. Hence added
> this.  I understand your comment that DW interface need not have to
> be a PCI device, but what is present in the hardware is effectively
> a root port implementation and post enumeration, we get a 'struct
> pci_dev' created for it, hence I thought it is fine to bring 'struct
> pci_dev' into picture.

This code operates on the host controller.  It configures the bridge
that leads *to* PCI devices.  Since that bridge is not a PCI device,
the PCI specs don't say anything about how to program it.

The fact that the host controller programming interface happens to
resemble the PCI programming interface is purely coincidental.

> Also, I agree that mention of 'link up' is unwarranted and could be
> reworded in a better way.
>
> Do you suggest to remove this comment altogether or reword it s/and
> can be used before link up also/and can be used before 'struct
> pci_dev' is available/ ?

Maybe something like this?

    These interfaces resemble the pci_find_*capability() interfaces,
    but these are for configuring host controllers, which are bridges
    *to* PCI devices but are not PCI devices themselves.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
