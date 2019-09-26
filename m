Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7388BF43F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 15:40:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HdfEGQoTjUzFaaOdWT8fzb8H3MXD/z0o9t99YhFxc08=; b=ARE+wGSWOTp0Q4
	wzdMOC4OY5IS3cPCcr9zrEBvRZvKGkTzJjdRCyWPIBLWiEO+WPY2Y5+EYmd0PhKIYOc1zuch98Ak0
	oudp8U/DrajpNeoa4Jp2SF2Mk3DUU+pmaASLi1TZg1d+6J1mPWOFMdh5o3Yvv5r/+5UyjFbu1rad4
	PkYPFR+QLWtpR8c13y+mSeq/Q3Nn0zrJ66Wxxp8/OF6ytlJmN//cy510hr5VlTDsZk0A/J+/pnNY0
	IznKdyaAHV3kccyiMFy9q9t4ToP4Y2JxcpAXiwXVsfOlV3vhrLSQcY4QJO3jYWYETs7Ovlv53gnoX
	Ef8WSgroLy1ra1qkPTIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDU0p-0000yl-5R; Thu, 26 Sep 2019 13:40:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDTyu-000729-Il
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 13:38:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 27CAB15AD;
 Thu, 26 Sep 2019 06:38:52 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 93A343F534;
 Thu, 26 Sep 2019 06:38:51 -0700 (PDT)
Date: Thu, 26 Sep 2019 14:38:49 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 00/11] PCI dma-ranges parsing consolidation
Message-ID: <20190926133849.GF9720@e119886-lin.cambridge.arm.com>
References: <20190924214630.12817-1-robh@kernel.org>
 <20190926084859.GB9720@e119886-lin.cambridge.arm.com>
 <036f298c-c65c-7da2-92dc-fc80892672c1@free.fr>
 <CAL_JsqLtYYXCgGN6_t8SuPqPmQwhhRJXaf8+kxnKxLHbRQRaDQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqLtYYXCgGN6_t8SuPqPmQwhhRJXaf8+kxnKxLHbRQRaDQ@mail.gmail.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_063852_659413_D4915A1D 
X-CRM114-Status: GOOD (  17.73  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Marc Zyngier <maz@kernel.org>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, Mans Rullgard <mans@mansr.com>,
 Bjorn Helgaas <helgaas@kernel.org>, PCI <linux-pci@vger.kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 08:11:16AM -0500, Rob Herring wrote:
> On Thu, Sep 26, 2019 at 6:20 AM Marc Gonzalez <marc.w.gonzalez@free.fr> wrote:
> >
> > [ Tweaking recipients list ]
> >
> > On 26/09/2019 10:49, Andrew Murray wrote:
> >
> > > On Tue, Sep 24, 2019 at 04:46:19PM -0500, Rob Herring wrote:
> > >
> > >> pci-rcar-gen2 is the only remaining driver doing its own dma-ranges
> > >> handling as it is still using the old ARM PCI functions. Looks like it
> > >> is the last one (in drivers/pci/).
> > >
> > > It also seems that pcie-tango is using of_pci_dma_range_parser_init
> > > and so parsing dma-ranges. Though it's using the dma_ranges for a
> > > slightly different purpose.
> 
> Seems I missed that as I only grep'ed for for_each_of_pci_range...
> 
> >
> > The rationale for that code can be found here:
> >
> >         https://patchwork.kernel.org/patch/9915469/
> >
> > NB: 1) The PCIE_TANGO_SMP8759 Kconfig symbol is marked "depends on BROKEN",
> > and 2) The driver adds TAINT_CRAP,
> > and 3) The maker of the tango platform is dead.
> 

Thanks for the context Marc, much appreciated.

Is there a path to make this driver not BROKEN? Or is this likely to bit rot?

> Given that and that I'd have to rework the probe to do the MSI range
> setup after pci_host_common_probe, I'm just going to leave this one
> alone.

I don't see any harm with that.

Thanks,

Andrew Murray

> 
> Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
