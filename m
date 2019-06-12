Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 526C142C55
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 18:31:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A8680AeAfKC08eHynTxnu6MpCgohCOCv1fEmEAoBbSg=; b=JkZ9KPiVWJKkx9
	O+hLqh+RGy4gjEd2AX2VTtpqPcP99jnscdGEmo/FVQOhqsb5cQkc75CMWIKdiHUjk3oGobQhaBh34
	yrZjRk4E+3clliu3Qu0j9V0ocPNCzgDGZGymUXfIdUIW0x7w40lXbXnA78XVqmO0bYArnl3IVGEeL
	OVbFydAOgPIOc4OlRMUBefMhLoZgVgk+U2mDTfAq5GPB79G1f0imkkjOpEjf1NoeRInYaJUt0Ldyx
	xcig7jRvsWV4cfoc8/iPsoBDBhfYbQYKqC1ZBuIRJJlFE62E+ezhl9VEu9d+pKd+7Ii2zzcTU2zlC
	/TpYlc4gnMajxVyFNEyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb69z-0005A3-PG; Wed, 12 Jun 2019 16:31:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb69k-00058X-Jz
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 16:31:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 62D892B;
 Wed, 12 Jun 2019 09:31:23 -0700 (PDT)
Received: from redmoon (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 603CE3F73C;
 Wed, 12 Jun 2019 09:31:22 -0700 (PDT)
Date: Wed, 12 Jun 2019 17:31:20 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH v4] PCI: xilinx-nwl: Fix Multi MSI data programming
Message-ID: <20190612163120.GG15747@redmoon>
References: <1560334679-9206-1-git-send-email-bharat.kumar.gogada@xilinx.com>
 <86r27zarej.wl-marc.zyngier@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <86r27zarej.wl-marc.zyngier@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_093124_747010_2113D9DC 
X-CRM114-Status: GOOD (  23.90  )
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
Cc: Bharat Kumar Gogada <bharat.kumar.gogada@xilinx.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, rgummal@xilinx.com,
 bhelgaas@google.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 02:01:56PM +0100, Marc Zyngier wrote:
> On Wed, 12 Jun 2019 11:17:59 +0100,
> Bharat Kumar Gogada <bharat.kumar.gogada@xilinx.com> wrote:
> > 
> > The current Multi MSI data programming fails if multiple end points
> > requesting MSI and multi MSI are connected with switch, i.e the current
> > multi MSI data being given is not considering the number of vectors
> > being requested in case of multi MSI.
> > Ex: Two EP's connected via switch, EP1 requesting single MSI first,
> > EP2 requesting Multi MSI of count four. The current code gives
> > MSI data 0x0 to EP1 and 0x1 to EP2, but EP2 can modify lower two bits
> > due to which EP2 also sends interrupt with MSI data 0x0 which results
> > in always invoking virq of EP1 due to which EP2 MSI interrupt never
> > gets handled.
> 
> I think there is a much simpler explanation for this: Multi-MSI
> mandates that the base interrupt number is naturally aligned to its
> size. Having switches in the middle is just a way to expose the issue,
> but you could see it failing with a single end-point and two MSIs that
> are assigned on an odd boundary.

Agreed, I will rewrite the commit log with a link to the specs,
a switch has no role to play in this bug.

Lorenzo

> > Fix Multi MSI data programming with required alignment by
> > using number of vectors being requested.
> > 
> > Fixes: ab597d35ef11 ("PCI: xilinx-nwl: Add support for Xilinx NWL PCIe
> > Host Controller")
> > 
> > Signed-off-by: Bharat Kumar Gogada <bharat.kumar.gogada@xilinx.com>
> > ---
> > V4:
> >  - Using a different bitmap registration API whcih serves single and multi
> >    MSI requests.
> > ---
> >  drivers/pci/controller/pcie-xilinx-nwl.c | 11 +++++------
> >  1 file changed, 5 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/pci/controller/pcie-xilinx-nwl.c b/drivers/pci/controller/pcie-xilinx-nwl.c
> > index 81538d7..a9e07b8 100644
> > --- a/drivers/pci/controller/pcie-xilinx-nwl.c
> > +++ b/drivers/pci/controller/pcie-xilinx-nwl.c
> > @@ -483,15 +483,13 @@ static int nwl_irq_domain_alloc(struct irq_domain *domain, unsigned int virq,
> >  	int i;
> >  
> >  	mutex_lock(&msi->lock);
> > -	bit = bitmap_find_next_zero_area(msi->bitmap, INT_PCI_MSI_NR, 0,
> > -					 nr_irqs, 0);
> > -	if (bit >= INT_PCI_MSI_NR) {
> > +	bit = bitmap_find_free_region(msi->bitmap, INT_PCI_MSI_NR,
> > +				      get_count_order(nr_irqs));
> > +	if (bit < 0) {
> >  		mutex_unlock(&msi->lock);
> >  		return -ENOSPC;
> >  	}
> >  
> > -	bitmap_set(msi->bitmap, bit, nr_irqs);
> > -
> >  	for (i = 0; i < nr_irqs; i++) {
> >  		irq_domain_set_info(domain, virq + i, bit + i, &nwl_irq_chip,
> >  				domain->host_data, handle_simple_irq,
> > @@ -509,7 +507,8 @@ static void nwl_irq_domain_free(struct irq_domain *domain, unsigned int virq,
> >  	struct nwl_msi *msi = &pcie->msi;
> >  
> >  	mutex_lock(&msi->lock);
> > -	bitmap_clear(msi->bitmap, data->hwirq, nr_irqs);
> > +	bitmap_release_region(msi->bitmap, data->hwirq,
> > +			      get_count_order(nr_irqs));
> >  	mutex_unlock(&msi->lock);
> >  }
> >  
> > -- 
> > 2.7.4
> > 
> 
> As for the body of the patch:
> 
> Suggested-by: Marc Zyngier <marc.zyngier@arm.com>
> Acked-by: Marc Zyngier <marc.zyngier@arm.com>
> 
> Thanks,
> 
> 	M.
> 
> -- 
> Jazz is not dead, it just smells funny.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
