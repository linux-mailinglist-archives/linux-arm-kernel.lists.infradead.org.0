Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E6E1928E8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 13:51:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r3URSMmHp6A950Zo2KNLDKSWN7cpL4Fz3+44Un9rywQ=; b=b+RzYILAGdhVUM
	T3hl2tH4YeADXasSDn156nPSxGxN2g5pkN/hh1qGCodRX7HhZGyLlGD5ggsL6L39Xfm1Yj3OtXgFe
	5kdpSsRVZoWUQAkpk0Z3S3XNbu7PAaWND2+jiRw3+olg61O84e04KTlAMQlnrSHmZKy4zI3hliswU
	XV9HhLxYlqnGElFCAn/JVYV1smkqAinTfBrODhb3/eErQESnrHd0cAPV0O++AMVXJF+z6pNl7MJ0v
	GfQpXhFyqOpc8yHLakQsTzPqjrZ4CXHvn7mn4/MSdjnrc3x/cum57vnbXEneB/es+HhUX6RIelUP7
	XxrlBzW4AwMcfono8Tcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH5Va-0007EO-Mh; Wed, 25 Mar 2020 12:51:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5VU-0007DZ-J1
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 12:51:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 495FC31B;
 Wed, 25 Mar 2020 05:51:35 -0700 (PDT)
Received: from red-moon.cambridge.arm.com (unknown [10.57.20.165])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3F43B3F71F;
 Wed, 25 Mar 2020 05:51:30 -0700 (PDT)
Date: Wed, 25 Mar 2020 12:51:18 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: laurentiu.tudor@nxp.com
Subject: Re: [RFC PATCH 1/4] bus: fsl-mc: add custom .dma_configure
 implementation
Message-ID: <20200325125109.GA5430@red-moon.cambridge.arm.com>
References: <20200227100542.13819-1-laurentiu.tudor@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227100542.13819-1-laurentiu.tudor@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_055140_671308_99D32718 
X-CRM114-Status: GOOD (  20.20  )
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

On Thu, Feb 27, 2020 at 12:05:39PM +0200, laurentiu.tudor@nxp.com wrote:
> From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> 
> The devices on this bus are not discovered by way of device tree
> but by queries to the firmware. It makes little sense to trick the
> generic of layer into thinking that these devices are of related so
> that we can get our dma configuration. Instead of doing that, add
> our custom dma configuration implementation.
> 
> Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> ---
>  drivers/bus/fsl-mc/fsl-mc-bus.c | 31 ++++++++++++++++++++++++++++++-
>  1 file changed, 30 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/bus/fsl-mc/fsl-mc-bus.c b/drivers/bus/fsl-mc/fsl-mc-bus.c
> index 36eb25f82c8e..eafaa0e0b906 100644
> --- a/drivers/bus/fsl-mc/fsl-mc-bus.c
> +++ b/drivers/bus/fsl-mc/fsl-mc-bus.c
> @@ -132,11 +132,40 @@ static int fsl_mc_bus_uevent(struct device *dev, struct kobj_uevent_env *env)
>  static int fsl_mc_dma_configure(struct device *dev)
>  {
>  	struct device *dma_dev = dev;
> +	struct iommu_fwspec *fwspec;
> +	const struct iommu_ops *iommu_ops;
> +	struct fsl_mc_device *mc_dev = to_fsl_mc_device(dev);
> +	int ret;
> +	u32 icid;
>  
>  	while (dev_is_fsl_mc(dma_dev))
>  		dma_dev = dma_dev->parent;
>  
> -	return of_dma_configure(dev, dma_dev->of_node, 0);
> +	fwspec = dev_iommu_fwspec_get(dma_dev);
> +	if (!fwspec)
> +		return -ENODEV;
> +	iommu_ops = iommu_ops_from_fwnode(fwspec->iommu_fwnode);
> +	if (!iommu_ops)
> +		return -ENODEV;
> +
> +	ret = iommu_fwspec_init(dev, fwspec->iommu_fwnode, iommu_ops);
> +	if (ret)
> +		return ret;
> +
> +	icid = mc_dev->icid;
> +	ret = iommu_fwspec_add_ids(dev, &icid, 1);

I see. So with this patch we would use the MC named component only to
retrieve the iommu_ops - the streamid are injected directly here
bypassing OF/IORT bindings translations altogether. Am I reading this
code correctly ?

Thanks,
Lorenzo

> +	if (ret)
> +		return ret;
> +
> +	if (!device_iommu_mapped(dev)) {
> +		ret = iommu_probe_device(dev);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	arch_setup_dma_ops(dev, 0, *dma_dev->dma_mask + 1, iommu_ops, true);
> +
> +	return 0;
>  }
>  
>  static ssize_t modalias_show(struct device *dev, struct device_attribute *attr,
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
