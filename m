Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB17C1A7FD7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 16:32:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzu4t1MWSWrcrcd/JkaaNw5hW/y4gmFjxFzahfxU1kA=; b=pJhPnilWcRtggy
	I/blgqsdUI3xifg8hwYdSDRw0lW86sII0XNnaQvdOhr4U5+vuz78em6bPELGpwKCAskiN0kQNp00N
	XE3PZh4Z891+GvPtjoUoSctNxqkeGTKT30hIxXYFIZty5wnTGUg/Af4HwpDlQIhTYIl7HbJxhRZZC
	BFPPPy4QLC5EOFzFhT9+P7zd1KJl0FNqAtCQ9V0O1trg6FO4GK0LBkb/4TNivPdJYqCYL3W0AUoQA
	EeqCs9H7QZlJ0mKTM+Z9IxC8qL1lI7gl85BVJjbsdtXJnRDmOhkh23dfRszXMT1448V4L5PsnVME5
	Ialv1ezkmiPL44LS+eDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOMc7-0001qU-1x; Tue, 14 Apr 2020 14:32:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOMbz-0001q4-He
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 14:32:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B553E30E;
 Tue, 14 Apr 2020 07:32:22 -0700 (PDT)
Received: from red-moon.cambridge.arm.com (unknown [10.57.27.66])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A55293F73D;
 Tue, 14 Apr 2020 07:32:18 -0700 (PDT)
Date: Tue, 14 Apr 2020 15:32:11 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Subject: Re: [RFC PATCH 1/4] bus: fsl-mc: add custom .dma_configure
 implementation
Message-ID: <20200414143211.GA14905@red-moon.cambridge.arm.com>
References: <20200227100542.13819-1-laurentiu.tudor@nxp.com>
 <20200325125109.GA5430@red-moon.cambridge.arm.com>
 <499fbf9a-416f-d7c7-0655-881d92138a6c@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <499fbf9a-416f-d7c7-0655-881d92138a6c@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_073227_671981_1771B194 
X-CRM114-Status: GOOD (  23.67  )
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
Cc: jason@lakedaemon.net, calvin.johnson@nxp.com, ard.biesheuvel@linaro.org,
 maz@kernel.org, pankaj.bansal@nxp.com, diana.craciun@oss.nxp.com,
 jon@solid-run.com, linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org,
 cristian.sovaiala@nxp.com, tglx@linutronix.de, makarand.pawagi@nxp.com,
 ioana.ciornei@nxp.com, Stuart.Yoder@arm.com, robin.murphy@arm.com,
 joro@8bytes.org, linux-arm-kernel@lists.infradead.org, V.Sethi@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 06:48:55PM +0200, Laurentiu Tudor wrote:
> Hi Lorenzo,
> 
> On 3/25/2020 2:51 PM, Lorenzo Pieralisi wrote:
> > On Thu, Feb 27, 2020 at 12:05:39PM +0200, laurentiu.tudor@nxp.com wrote:
> >> From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> >>
> >> The devices on this bus are not discovered by way of device tree
> >> but by queries to the firmware. It makes little sense to trick the
> >> generic of layer into thinking that these devices are of related so
> >> that we can get our dma configuration. Instead of doing that, add
> >> our custom dma configuration implementation.
> >>
> >> Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> >> ---
> >>  drivers/bus/fsl-mc/fsl-mc-bus.c | 31 ++++++++++++++++++++++++++++++-
> >>  1 file changed, 30 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/bus/fsl-mc/fsl-mc-bus.c b/drivers/bus/fsl-mc/fsl-mc-bus.c
> >> index 36eb25f82c8e..eafaa0e0b906 100644
> >> --- a/drivers/bus/fsl-mc/fsl-mc-bus.c
> >> +++ b/drivers/bus/fsl-mc/fsl-mc-bus.c
> >> @@ -132,11 +132,40 @@ static int fsl_mc_bus_uevent(struct device *dev, struct kobj_uevent_env *env)
> >>  static int fsl_mc_dma_configure(struct device *dev)
> >>  {
> >>  	struct device *dma_dev = dev;
> >> +	struct iommu_fwspec *fwspec;
> >> +	const struct iommu_ops *iommu_ops;
> >> +	struct fsl_mc_device *mc_dev = to_fsl_mc_device(dev);
> >> +	int ret;
> >> +	u32 icid;
> >>  
> >>  	while (dev_is_fsl_mc(dma_dev))
> >>  		dma_dev = dma_dev->parent;
> >>  
> >> -	return of_dma_configure(dev, dma_dev->of_node, 0);
> >> +	fwspec = dev_iommu_fwspec_get(dma_dev);
> >> +	if (!fwspec)
> >> +		return -ENODEV;
> >> +	iommu_ops = iommu_ops_from_fwnode(fwspec->iommu_fwnode);
> >> +	if (!iommu_ops)
> >> +		return -ENODEV;
> >> +
> >> +	ret = iommu_fwspec_init(dev, fwspec->iommu_fwnode, iommu_ops);
> >> +	if (ret)
> >> +		return ret;
> >> +
> >> +	icid = mc_dev->icid;
> >> +	ret = iommu_fwspec_add_ids(dev, &icid, 1);
> > 
> > I see. So with this patch we would use the MC named component only to
> > retrieve the iommu_ops
> 
> Right. I'd also add that the implementation tries to follow the existing
> standard .dma_configure implementations, e.g. of_dma_configure +
> of_iommu_configure. I'd also note that similarly to the ACPI case, this
> MC FW device is probed as a platform device in the DT scenario, binding
> here [1].
> A similar approach is used for the retrieval of the msi irq domain, see
> following patch.
> 
> > - the streamid are injected directly here bypassing OF/IORT bindings translations altogether. 
> 
> Actually I've submitted a v2 [2] that calls into .of_xlate() to allow
> the smmu driver to do some processing on the raw streamid coming from
> the firmware. I have not yet tested this with ACPI but expect it to
> work, however, it's debatable how valid is this approach in the context
> of ACPI.

Actually, what I think you need is of_map_rid() (and an IORT
equivalent, that I am going to write - generalizing iort_msi_map_rid()).

Would that be enough to enable IORT "normal" mappings in the MC bus
named components ?

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
