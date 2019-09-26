Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3E0BF419
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 15:32:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1CtxfIXnVSTyOW3NLc9hvAtm6h8nxW9xnl1ZMNRVpJI=; b=PnnoKwaVwpHUoP
	ygmgAWVbhIzbZ+aJG5sm26q5eJ5//UBF9K1MOezjY/Qe+ZiUG7hDUBeZbjQ3YrbNtAuZgRks0maTl
	eygEFtcabFR/4bUqn4RNHLaopaelArE2c2QY0EqW5yVqIYjzuVZvcLh5KEjvIJOJSNZ2TRNLcwGmo
	vC9RuepuJtaqKysPsXSVRpLApP0BZ9AGLM1qNFZYpw6Gho9mXixVRKN6mTs5eYV2AkIuTmuh4uQpg
	mH1/4LoWENwqGKXC0DOSGZUwowBueSUVgMfbd4wX8ilauZwNdsYVfIggvSw/P+DRukqEbUy4UGzJ9
	dh+iBknCf0zyetjwFULA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDTsZ-0004ZR-73; Thu, 26 Sep 2019 13:32:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDTsK-0004Yp-PD
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 13:32:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 076E9142F;
 Thu, 26 Sep 2019 06:32:03 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 73A213F70D;
 Thu, 26 Sep 2019 06:32:02 -0700 (PDT)
Date: Thu, 26 Sep 2019 14:32:00 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 11/11] PCI: rcar: Use inbound resources for setup
Message-ID: <20190926133200.GE9720@e119886-lin.cambridge.arm.com>
References: <20190924214630.12817-1-robh@kernel.org>
 <20190924214630.12817-12-robh@kernel.org>
 <20190926084718.GA9720@e119886-lin.cambridge.arm.com>
 <CAL_Jsq+5cbPd_7Yoo6DvK9LFwf-npChWxRPMq-TtqFSALbXuDw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+5cbPd_7Yoo6DvK9LFwf-npChWxRPMq-TtqFSALbXuDw@mail.gmail.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_063204_908626_B35930E7 
X-CRM114-Status: GOOD (  20.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Simon Horman <horms@verge.net.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 07:53:20AM -0500, Rob Herring wrote:
> On Thu, Sep 26, 2019 at 3:47 AM Andrew Murray <andrew.murray@arm.com> wrote:
> >
> > On Tue, Sep 24, 2019 at 04:46:30PM -0500, Rob Herring wrote:
> > > Now that the helpers provide the inbound resources in the host bridge
> > > 'dma_ranges' resource list, convert Renesas R-Car PCIe host bridge to
> > > use the resource list to setup the inbound addresses.
> > >
> > > Cc: Simon Horman <horms@verge.net.au>
> > > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > Cc: Bjorn Helgaas <bhelgaas@google.com>
> > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > ---
> > >  drivers/pci/controller/pcie-rcar.c | 45 +++++++++++-------------------
> > >  1 file changed, 16 insertions(+), 29 deletions(-)
> > >
> > > diff --git a/drivers/pci/controller/pcie-rcar.c b/drivers/pci/controller/pcie-rcar.c
> > > index b8d6e86a5539..453c931aaf77 100644
> > > --- a/drivers/pci/controller/pcie-rcar.c
> > > +++ b/drivers/pci/controller/pcie-rcar.c
> > > @@ -1014,16 +1014,16 @@ static int rcar_pcie_get_resources(struct rcar_pcie *pcie)
> > >  }
> > >
> > >  static int rcar_pcie_inbound_ranges(struct rcar_pcie *pcie,
> > > -                                 struct of_pci_range *range,
> > > +                                 struct resource_entry *entry,
> > >                                   int *index)
> > >  {
> > > -     u64 restype = range->flags;
> > > -     u64 cpu_addr = range->cpu_addr;
> > > -     u64 cpu_end = range->cpu_addr + range->size;
> > > -     u64 pci_addr = range->pci_addr;
> > > +     u64 restype = entry->res->flags;
> > > +     u64 cpu_addr = entry->res->start;
> > > +     u64 cpu_end = entry->res->end;
> > > +     u64 pci_addr = entry->res->start - entry->offset;
> > >       u32 flags = LAM_64BIT | LAR_ENABLE;
> > >       u64 mask;
> > > -     u64 size;
> > > +     u64 size = resource_size(entry->res);
> > >       int idx = *index;
> > >
> > >       if (restype & IORESOURCE_PREFETCH)
> > > @@ -1037,9 +1037,7 @@ static int rcar_pcie_inbound_ranges(struct rcar_pcie *pcie,
> > >               unsigned long nr_zeros = __ffs64(cpu_addr);
> > >               u64 alignment = 1ULL << nr_zeros;
> > >
> > > -             size = min(range->size, alignment);
> > > -     } else {
> > > -             size = range->size;
> > > +             size = min(size, alignment);
> > >       }
> >
> > AFAICT the (if cpu_addr > 0) is here because the result of __ffs64 is undefined
> > if no bits are set (according to the comment). However by removing the else
> > statement we no longer guarantee that nr_zeros is defined.
> 
> You might want to read this again...
> 
> The 'if (cpu_addr > 0) {' is still there and nr_zeros is only under
> that condition. We just init 'size' instead of setting it in the else
> clause.

Ah yes, apologies for the noise, thanks for your patience.

Andrew Murray

> 
> Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
