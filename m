Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A881EE6EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 16:50:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kHF0ywOdp016BLFR4KdOU2rFzGg7I541Fsu7WPiECa4=; b=egS6lq0PHSXJCF
	S04a3MsC5CFL6CGnEC1Hs5nqJlLjreaZjZLNzwaDYgBGPk6taF/O2CsCRGow7AX1bsZ1SQ+5UH1+b
	gDCMSayJNjDJf7jLCtStW5EKMuYYgycZwLzPDQsFvg7IxGmLli0GLezbRWpgkmEjTzaQlRnmo9xou
	7PooQzCzhg8E+bh8p6gNuJErUrS2GBMC4tkqlh+h3NdRWfjLiAOBXvli1PUwWuJlfyoxAGCA2sQqi
	kBgte/w4qga25/g83EOt/tsSEPpkrx7cSTIKvTBRCegbzdNcJtWsxfDH3fQpE3EOs142jDJTYvydY
	0m20GdQWPBSJdaoJvUqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgrCB-0003aQ-I6; Thu, 04 Jun 2020 14:50:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgrBt-0003Zl-Ni
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 14:49:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1C5B62B;
 Thu,  4 Jun 2020 07:49:57 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9ECCE3F305;
 Thu,  4 Jun 2020 07:49:54 -0700 (PDT)
Date: Thu, 4 Jun 2020 15:49:52 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 07/12] of/device: Add input id to of_dma_configure()
Message-ID: <20200604144952.GB476@e121166-lin.cambridge.arm.com>
References: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
 <20200521130008.8266-8-lorenzo.pieralisi@arm.com>
 <CAL_JsqJw3wyiUrbd1AekwDc5+uqhHi9BwoB-rYpypUEGNgzCtw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqJw3wyiUrbd1AekwDc5+uqhHi9BwoB-rYpypUEGNgzCtw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_074957_858350_39343055 
X-CRM114-Status: GOOD (  21.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Diana Craciun <diana.craciun@oss.nxp.com>,
 PCI <linux-pci@vger.kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Sudeep Holla <sudeep.holla@arm.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, linux-acpi@vger.kernel.org,
 Linux IOMMU <iommu@lists.linux-foundation.org>, Marc Zyngier <maz@kernel.org>,
 Hanjun Guo <guohanjun@huawei.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 05:02:20PM -0600, Rob Herring wrote:
> On Thu, May 21, 2020 at 7:00 AM Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com> wrote:
> >
> > Devices sitting on proprietary busses have a device ID space that
> > is owned by the respective bus and related firmware bindings. In order
> > to let the generic OF layer handle the input translations to
> > an IOMMU id, for such busses the current of_dma_configure() interface
> > should be extended in order to allow the bus layer to provide the
> > device input id parameter - that is retrieved/assigned in bus
> > specific code and firmware.
> >
> > Augment of_dma_configure() to add an optional input_id parameter,
> > leaving current functionality unchanged.
> >
> > Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Robin Murphy <robin.murphy@arm.com>
> > Cc: Joerg Roedel <joro@8bytes.org>
> > Cc: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> > ---
> >  drivers/bus/fsl-mc/fsl-mc-bus.c |  4 ++-
> >  drivers/iommu/of_iommu.c        | 53 +++++++++++++++++++++------------
> >  drivers/of/device.c             |  8 +++--
> >  include/linux/of_device.h       | 16 ++++++++--
> >  include/linux/of_iommu.h        |  6 ++--
> >  5 files changed, 60 insertions(+), 27 deletions(-)
> >
> > diff --git a/drivers/bus/fsl-mc/fsl-mc-bus.c b/drivers/bus/fsl-mc/fsl-mc-bus.c
> > index 40526da5c6a6..8ead3f0238f2 100644
> > --- a/drivers/bus/fsl-mc/fsl-mc-bus.c
> > +++ b/drivers/bus/fsl-mc/fsl-mc-bus.c
> > @@ -118,11 +118,13 @@ static int fsl_mc_bus_uevent(struct device *dev, struct kobj_uevent_env *env)
> >  static int fsl_mc_dma_configure(struct device *dev)
> >  {
> >         struct device *dma_dev = dev;
> > +       struct fsl_mc_device *mc_dev = to_fsl_mc_device(dev);
> > +       u32 input_id = mc_dev->icid;
> >
> >         while (dev_is_fsl_mc(dma_dev))
> >                 dma_dev = dma_dev->parent;
> >
> > -       return of_dma_configure(dev, dma_dev->of_node, 0);
> > +       return of_dma_configure_id(dev, dma_dev->of_node, 0, &input_id);
> >  }
> >
> >  static ssize_t modalias_show(struct device *dev, struct device_attribute *attr,
> > diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
> > index ad96b87137d6..4516d5bf6cc9 100644
> > --- a/drivers/iommu/of_iommu.c
> > +++ b/drivers/iommu/of_iommu.c
> > @@ -139,25 +139,53 @@ static int of_pci_iommu_init(struct pci_dev *pdev, u16 alias, void *data)
> >         return err;
> >  }
> >
> > -static int of_fsl_mc_iommu_init(struct fsl_mc_device *mc_dev,
> > -                               struct device_node *master_np)
> > +static int of_iommu_configure_dev_id(struct device_node *master_np,
> > +                                    struct device *dev,
> > +                                    const u32 *id)
> 
> Should have read this patch before #6. I guess you could still make
> of_pci_iommu_init() call
> of_iommu_configure_dev_id.

Yes that makes sense, I will update it.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
