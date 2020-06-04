Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2167E1EE69F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 16:27:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Tzy4ggVAvd9lzuCI+G0Nfy84XG1V/rKJnUaUQYH9I0=; b=GuVm3NiQCHMHBW
	DpEZkcXYvY4iXMqTmUHgxUHYqs9O5RW+SBgO/I5TPEIQt+hzg+JOo8Gki8u5WXxBEnK4mZJu0SwOH
	0KIl8MvlrZogbILB5b7EIttq3vX2Q70wFXe08elwRDoKjc4by8R5Y5P6PBsH2Tw9+m56qFnsKYD0D
	9djAW3UhborbJmzkMRo/iNDIfxLtxrf2eFW/iSK+p20zDkuobK/PmwIPHAV03QWWOwSdvrSoP3lc6
	DPdkkAjZbCnt/boiMleMIWP3tAuRsls4yHnMTYT4JSCS/US0R15VXKdNKjJhQur+dPdrdTAnxkzRk
	mCKc+3gP6MeBAAMoY+Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgqq2-0007wx-QT; Thu, 04 Jun 2020 14:27:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgqpv-0007vm-B3
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 14:27:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AC7EA2B;
 Thu,  4 Jun 2020 07:27:11 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 384F03F305;
 Thu,  4 Jun 2020 07:27:09 -0700 (PDT)
Date: Thu, 4 Jun 2020 15:27:03 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 06/12] of/iommu: Make of_map_rid() PCI agnostic
Message-ID: <20200604142703.GA476@e121166-lin.cambridge.arm.com>
References: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
 <20200521130008.8266-7-lorenzo.pieralisi@arm.com>
 <CAL_JsqK5aiEMAZpqgTmrOq=HPRSFEoQWJrpR2YA0hziEtLMwrg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqK5aiEMAZpqgTmrOq=HPRSFEoQWJrpR2YA0hziEtLMwrg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_072715_465582_8043E8F7 
X-CRM114-Status: GOOD (  22.85  )
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
Cc: devicetree@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Diana Craciun <diana.craciun@oss.nxp.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Hanjun Guo <guohanjun@huawei.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, linux-acpi@vger.kernel.org,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 PCI <linux-pci@vger.kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 04:47:19PM -0600, Rob Herring wrote:
> On Thu, May 21, 2020 at 7:00 AM Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com> wrote:
> >
> > There is nothing PCI specific (other than the RID - requester ID)
> > in the of_map_rid() implementation, so the same function can be
> > reused for input/output IDs mapping for other busses just as well.
> >
> > Rename the RID instances/names to a generic "id" tag and provide
> > an of_map_rid() wrapper function so that we can leave the existing
> > (and legitimate) callers unchanged.
> 
> It's not all that clear to a casual observer that RID is a PCI thing,
> so I don't know that keeping it buys much. And there's only 3 callers.

Yes I agree - I think we can remove the _rid interface.

> > No functionality change intended.
> >
> > Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Joerg Roedel <joro@8bytes.org>
> > Cc: Robin Murphy <robin.murphy@arm.com>
> > Cc: Marc Zyngier <maz@kernel.org>
> > ---
> >  drivers/iommu/of_iommu.c |  2 +-
> >  drivers/of/base.c        | 42 ++++++++++++++++++++--------------------
> >  include/linux/of.h       | 17 +++++++++++++++-
> >  3 files changed, 38 insertions(+), 23 deletions(-)
> >
> > diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
> > index 20738aacac89..ad96b87137d6 100644
> > --- a/drivers/iommu/of_iommu.c
> > +++ b/drivers/iommu/of_iommu.c
> > @@ -145,7 +145,7 @@ static int of_fsl_mc_iommu_init(struct fsl_mc_device *mc_dev,
> >         struct of_phandle_args iommu_spec = { .args_count = 1 };
> >         int err;
> >
> > -       err = of_map_rid(master_np, mc_dev->icid, "iommu-map",
> > +       err = of_map_id(master_np, mc_dev->icid, "iommu-map",
> 
> I'm not sure this is an improvement because I'd refactor this function
> and of_pci_iommu_init() into a single function:
> 
> of_bus_iommu_init(struct device *dev, struct device_node *np, u32 id)
> 
> Then of_pci_iommu_init() becomes:
> 
> of_pci_iommu_init()
> {
>   return of_bus_iommu_init(info->dev, info->np, alias);
> }
> 
> And replace of_fsl_mc_iommu_init call with:
> err = of_bus_iommu_init(dev, master_np, to_fsl_mc_device(dev)->icid);

I will follow up on this on patch 7.

> >                          "iommu-map-mask", &iommu_spec.np,
> >                          iommu_spec.args);
> >         if (err)
> > diff --git a/drivers/of/base.c b/drivers/of/base.c
> > index ae03b1218b06..e000e17bd602 100644
> > --- a/drivers/of/base.c
> > +++ b/drivers/of/base.c
> > @@ -2201,15 +2201,15 @@ int of_find_last_cache_level(unsigned int cpu)
> >  }
> >
> >  /**
> > - * of_map_rid - Translate a requester ID through a downstream mapping.
> > + * of_map_id - Translate a requester ID through a downstream mapping.
> 
> Still a requester ID?

Fixed, thanks.

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
