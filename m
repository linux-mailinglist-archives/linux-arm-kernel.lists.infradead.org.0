Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9342F1AAC1A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 17:43:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SzNLpQ4CdEMK6A88IxeoU2PCKBupdH+KUnuBKO3ber0=; b=ed/3+D8ymlyNrS
	ZBXKgmqAb1stvCJ1oZTEFaQUcCAm0XIf872IzFwM9bldA2fZr9RLEJ+Up2qC+TEWNE8M7fv99AXQM
	9dRngRLMrkqFMtUJwd+BtE/CNDg4qMHitljDG5H37sMqekOB0hRSbBKX3rt8Luv8+DKNlBKR1hEtw
	efyTcjAgqL5ShdPBMuhUzpLuhIlGLFjouNWzpZqQgyhEGV0Q8nl2lcOT6N2j+tXDORFdy1m9/pzU+
	0CZzMkYAQk0vM/vOZKtbPp8T2LWbci15vkt00A4Pp3eAToxjByLEhKyhXSQ+mtzjAq3rOlpQTicz2
	SNjvBRdQ6tpFfBuHX78A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOkCQ-0008Tt-If; Wed, 15 Apr 2020 15:43:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOkCI-0008TT-BT
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 15:43:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 145191FB;
 Wed, 15 Apr 2020 08:43:27 -0700 (PDT)
Received: from red-moon.cambridge.arm.com (unknown [10.57.31.189])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 562743F6C4;
 Wed, 15 Apr 2020 08:43:24 -0700 (PDT)
Date: Wed, 15 Apr 2020 16:43:18 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Makarand Pawagi <makarand.pawagi@nxp.com>
Subject: Re: [EXT] Re: [RFC PATCH 1/4] bus: fsl-mc: add custom .dma_configure
 implementation
Message-ID: <20200415153901.GA21296@red-moon.cambridge.arm.com>
References: <20200227100542.13819-1-laurentiu.tudor@nxp.com>
 <20200325125109.GA5430@red-moon.cambridge.arm.com>
 <499fbf9a-416f-d7c7-0655-881d92138a6c@nxp.com>
 <20200414143211.GA14905@red-moon.cambridge.arm.com>
 <DB7PR04MB4986A8A3427DBA096628D6FBEBDB0@DB7PR04MB4986.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB7PR04MB4986A8A3427DBA096628D6FBEBDB0@DB7PR04MB4986.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_084330_479613_ABF942E1 
X-CRM114-Status: GOOD (  31.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "jason@lakedaemon.net" <jason@lakedaemon.net>,
 Calvin Johnson <calvin.johnson@nxp.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "maz@kernel.org" <maz@kernel.org>, Pankaj Bansal <pankaj.bansal@nxp.com>,
 "Diana Madalina Craciun \(OSS\)" <diana.craciun@oss.nxp.com>,
 "jon@solid-run.com" <jon@solid-run.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jeremy.linton@arm.com" <jeremy.linton@arm.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>, Varun Sethi <V.Sethi@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 "Stuart.Yoder@arm.com" <Stuart.Yoder@arm.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "joro@8bytes.org" <joro@8bytes.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 05:42:03AM +0000, Makarand Pawagi wrote:
> 
> 
> > -----Original Message-----
> > From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Sent: Tuesday, April 14, 2020 8:02 PM
> > To: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> > Cc: linux-kernel@vger.kernel.org; iommu@lists.linux-foundation.org; linux-arm-
> > kernel@lists.infradead.org; linux-acpi@vger.kernel.org;
> > robin.murphy@arm.com; ard.biesheuvel@linaro.org; Ioana Ciornei
> > <ioana.ciornei@nxp.com>; Diana Madalina Craciun (OSS)
> > <diana.craciun@oss.nxp.com>; maz@kernel.org; jon@solid-run.com; Pankaj
> > Bansal <pankaj.bansal@nxp.com>; Makarand Pawagi
> > <makarand.pawagi@nxp.com>; Calvin Johnson <calvin.johnson@nxp.com>;
> > Varun Sethi <V.Sethi@nxp.com>; Cristi Sovaiala <cristian.sovaiala@nxp.com>;
> > Stuart.Yoder@arm.com; jeremy.linton@arm.com; joro@8bytes.org;
> > tglx@linutronix.de; jason@lakedaemon.net
> > Subject: [EXT] Re: [RFC PATCH 1/4] bus: fsl-mc: add custom .dma_configure
> > implementation
> > 
> > Caution: EXT Email
> > 
> > On Wed, Mar 25, 2020 at 06:48:55PM +0200, Laurentiu Tudor wrote:
> > > Hi Lorenzo,
> > >
> > > On 3/25/2020 2:51 PM, Lorenzo Pieralisi wrote:
> > > > On Thu, Feb 27, 2020 at 12:05:39PM +0200, laurentiu.tudor@nxp.com wrote:
> > > >> From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> > > >>
> > > >> The devices on this bus are not discovered by way of device tree
> > > >> but by queries to the firmware. It makes little sense to trick the
> > > >> generic of layer into thinking that these devices are of related so
> > > >> that we can get our dma configuration. Instead of doing that, add
> > > >> our custom dma configuration implementation.
> > > >>
> > > >> Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> > > >> ---
> > > >>  drivers/bus/fsl-mc/fsl-mc-bus.c | 31
> > > >> ++++++++++++++++++++++++++++++-
> > > >>  1 file changed, 30 insertions(+), 1 deletion(-)
> > > >>
> > > >> diff --git a/drivers/bus/fsl-mc/fsl-mc-bus.c
> > > >> b/drivers/bus/fsl-mc/fsl-mc-bus.c index 36eb25f82c8e..eafaa0e0b906
> > > >> 100644
> > > >> --- a/drivers/bus/fsl-mc/fsl-mc-bus.c
> > > >> +++ b/drivers/bus/fsl-mc/fsl-mc-bus.c
> > > >> @@ -132,11 +132,40 @@ static int fsl_mc_bus_uevent(struct device
> > > >> *dev, struct kobj_uevent_env *env)  static int
> > > >> fsl_mc_dma_configure(struct device *dev)  {
> > > >>    struct device *dma_dev = dev;
> > > >> +  struct iommu_fwspec *fwspec;
> > > >> +  const struct iommu_ops *iommu_ops;  struct fsl_mc_device *mc_dev
> > > >> + = to_fsl_mc_device(dev);  int ret;
> > > >> +  u32 icid;
> > > >>
> > > >>    while (dev_is_fsl_mc(dma_dev))
> > > >>            dma_dev = dma_dev->parent;
> > > >>
> > > >> -  return of_dma_configure(dev, dma_dev->of_node, 0);
> > > >> +  fwspec = dev_iommu_fwspec_get(dma_dev);  if (!fwspec)
> > > >> +          return -ENODEV;
> > > >> +  iommu_ops = iommu_ops_from_fwnode(fwspec->iommu_fwnode);
> > > >> +  if (!iommu_ops)
> > > >> +          return -ENODEV;
> > > >> +
> > > >> +  ret = iommu_fwspec_init(dev, fwspec->iommu_fwnode, iommu_ops);
> > > >> + if (ret)
> > > >> +          return ret;
> > > >> +
> > > >> +  icid = mc_dev->icid;
> > > >> +  ret = iommu_fwspec_add_ids(dev, &icid, 1);
> > > >
> > > > I see. So with this patch we would use the MC named component only
> > > > to retrieve the iommu_ops
> > >
> > > Right. I'd also add that the implementation tries to follow the
> > > existing standard .dma_configure implementations, e.g.
> > > of_dma_configure + of_iommu_configure. I'd also note that similarly to
> > > the ACPI case, this MC FW device is probed as a platform device in the
> > > DT scenario, binding here [1].
> > > A similar approach is used for the retrieval of the msi irq domain,
> > > see following patch.
> > >
> > > > - the streamid are injected directly here bypassing OF/IORT bindings
> > translations altogether.
> > >
> > > Actually I've submitted a v2 [2] that calls into .of_xlate() to allow
> > > the smmu driver to do some processing on the raw streamid coming from
> > > the firmware. I have not yet tested this with ACPI but expect it to
> > > work, however, it's debatable how valid is this approach in the
> > > context of ACPI.
> > 
> > Actually, what I think you need is of_map_rid() (and an IORT equivalent, that I
> > am going to write - generalizing iort_msi_map_rid()).
> > 
> 
> That would help.
> 
> > Would that be enough to enable IORT "normal" mappings in the MC bus named
> > components ?
> > 
> 
> But still the question remain unanswered that how we are going to represent MC? As Platform device with single ID mapping flag?

No, "normal" mappings, that's what I wrote above and it is not a
platform device it is a named component in ACPI/IORT terms.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
