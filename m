Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9371E4A1E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:19:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lFaHq9Z1E0ZRyDay0Oox4W/VSL4+VquWN65AJT018+k=; b=DCG3kC0iHI8JZl
	WlGJDbpT9tSRJAS9TJS9QuevgkFqFFO/Mb5SwRUYWxYZf4C7wpN+w1dTLTknUuWuMx51d4NhJE6Kt
	is2j6ZnNronPrZn0uzSX5G1JR8Xni2NvQWbGoZqioiKmCIPixKxHXN0R7odoZcOfx9je9/E/Duvfs
	55QPUftHq4Nj5UaxKx394W2xRIUQrI6ROJKjxujvf0nC3j5VRiZIBdRVzSD5gVYFG8v6/iGa/5gOg
	HjYb6tbmFPlb+dq/KW+0JGyQqhRUGRgjUOUNgmtKbGWc/JRO9A4Y2gaw6ckvPBSB4nKKFt0sWoVRl
	Knd3aqa398v9LeH7a8ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdE1B-00035k-M2; Tue, 18 Jun 2019 13:19:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdDlk-0005m0-Cy
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:03:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 130192B;
 Tue, 18 Jun 2019 06:03:15 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0EDAE3F246;
 Tue, 18 Jun 2019 06:03:13 -0700 (PDT)
Date: Tue, 18 Jun 2019 14:03:08 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Bharat Kumar Gogada <bharatku@xilinx.com>
Subject: Re: [PATCH v4] PCI: xilinx-nwl: Fix Multi MSI data programming
Message-ID: <20190618130308.GA9002@e121166-lin.cambridge.arm.com>
References: <1560334679-9206-1-git-send-email-bharat.kumar.gogada@xilinx.com>
 <20190617092108.GA18020@e121166-lin.cambridge.arm.com>
 <CH2PR02MB6453032A01A540F5E9C58402A5EA0@CH2PR02MB6453.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CH2PR02MB6453032A01A540F5E9C58402A5EA0@CH2PR02MB6453.namprd02.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_060327_022385_2BB8AB3D 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "marc.zyngier@arm.com" <marc.zyngier@arm.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ravikiran Gummaluri <rgummal@xilinx.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 12:28:02PM +0000, Bharat Kumar Gogada wrote:

[...]

> > Applied to pci/xilinx for v5.3, please have a look and check if the commit log
> > I wrote provides a clear description of the issue.
> > 
> > Lorenzo
> Thanks Lorenzo and Marc.
> Lorenzo, can you please point to link for above commit.

I did already.

Anyway:

https://git.kernel.org/pub/scm/linux/kernel/git/lpieralisi/pci.git/commit/?h=pci/xilinx&id=46c1bfcfcd873f8754f733e4258121748bcae3a3

> Regards,
> Bharat
> > > diff --git a/drivers/pci/controller/pcie-xilinx-nwl.c
> > > b/drivers/pci/controller/pcie-xilinx-nwl.c
> > > index 81538d7..a9e07b8 100644
> > > --- a/drivers/pci/controller/pcie-xilinx-nwl.c
> > > +++ b/drivers/pci/controller/pcie-xilinx-nwl.c
> > > @@ -483,15 +483,13 @@ static int nwl_irq_domain_alloc(struct
> > irq_domain *domain, unsigned int virq,
> > >  	int i;
> > >
> > >  	mutex_lock(&msi->lock);
> > > -	bit = bitmap_find_next_zero_area(msi->bitmap, INT_PCI_MSI_NR, 0,
> > > -					 nr_irqs, 0);
> > > -	if (bit >= INT_PCI_MSI_NR) {
> > > +	bit = bitmap_find_free_region(msi->bitmap, INT_PCI_MSI_NR,
> > > +				      get_count_order(nr_irqs));
> > > +	if (bit < 0) {
> > >  		mutex_unlock(&msi->lock);
> > >  		return -ENOSPC;
> > >  	}
> > >
> > > -	bitmap_set(msi->bitmap, bit, nr_irqs);
> > > -
> > >  	for (i = 0; i < nr_irqs; i++) {
> > >  		irq_domain_set_info(domain, virq + i, bit + i, &nwl_irq_chip,
> > >  				domain->host_data, handle_simple_irq, @@
> > -509,7 +507,8 @@ static
> > > void nwl_irq_domain_free(struct irq_domain *domain, unsigned int virq,
> > >  	struct nwl_msi *msi = &pcie->msi;
> > >
> > >  	mutex_lock(&msi->lock);
> > > -	bitmap_clear(msi->bitmap, data->hwirq, nr_irqs);
> > > +	bitmap_release_region(msi->bitmap, data->hwirq,
> > > +			      get_count_order(nr_irqs));
> > >  	mutex_unlock(&msi->lock);
> > >  }
> > >
> > > --
> > > 2.7.4
> > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
