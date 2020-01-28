Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A903914B352
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 12:09:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KgfWqlgCWMdkVnXL6xBpEk/Oalnd2eOBNEvyzD7ZAWQ=; b=EyJF1qQxXK/Ofu
	tbMygSOTdnwCXTfPXA7XAguWJChGmya1+VD2aFbopIwz2A+RvAqcgWYFgp0Q8nk8bTAN7fMI7BFs+
	RpM7lwhPFecp3obyFTX4Kn35S4chGSXC3CGZf8WzPSOqPvdZKkuFS4WrdewFtAGI9179BE7A+JaAG
	nKDaw4qRWddm/l9VOlR5pTL4RL5la5wBBTDiWjyzavn/gjAXk1rP/FyaR0jIBJaRXZo7eqWPbrXBu
	EPIvUQ4gcLKCb2o+Lb4jwQ1kY7kNiEt2VeEEsy1N3DonCalo2telxVSmkkfgWKEECvLXcHT9wRJCV
	xgvRAg7H8Eq4mRYAc/YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwOkS-00025N-Je; Tue, 28 Jan 2020 11:09:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwOkI-00024Q-TH
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 11:09:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 09CAE30E;
 Tue, 28 Jan 2020 03:09:24 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 147EF3F52E;
 Tue, 28 Jan 2020 03:09:20 -0800 (PST)
Date: Tue, 28 Jan 2020 11:09:16 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Makarand Pawagi <makarand.pawagi@nxp.com>
Subject: Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Message-ID: <20200128110916.GA491@e121166-lin.cambridge.arm.com>
References: <1580198925-50411-1-git-send-email-makarand.pawagi@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1580198925-50411-1-git-send-email-makarand.pawagi@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_030926_990151_BB141501 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: calvin.johnson@nxp.com, stuyoder@gmail.com, nleeder@codeaurora.org,
 ioana.ciornei@nxp.com, cristian.sovaiala@nxp.com, guohanjun@huawei.com,
 will@kernel.org, maz@kernel.org, pankaj.bansal@nxp.com, jon@solid-run.com,
 linux@armlinux.org.uk, linux-acpi@vger.kernel.org, lenb@kernel.org,
 jason@lakedaemon.net, V.Sethi@nxp.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, laurentiu.tudor@nxp.com,
 netdev@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 shameerali.kolothum.thodi@huawei.com, sudeep.holla@arm.com,
 robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 01:38:45PM +0530, Makarand Pawagi wrote:
> ACPI support is added in the fsl-mc driver. Driver will parse
> MC DSDT table to extract memory and other resorces.
> 
> Interrupt (GIC ITS) information will be extracted from MADT table
> by drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c.
> 
> IORT table will be parsed to configure DMA.
> 
> Signed-off-by: Makarand Pawagi <makarand.pawagi@nxp.com>
> ---
>  drivers/acpi/arm64/iort.c                   | 53 +++++++++++++++++++++
>  drivers/bus/fsl-mc/dprc-driver.c            |  3 +-
>  drivers/bus/fsl-mc/fsl-mc-bus.c             | 48 +++++++++++++------
>  drivers/bus/fsl-mc/fsl-mc-msi.c             | 10 +++-
>  drivers/bus/fsl-mc/fsl-mc-private.h         |  4 +-
>  drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c | 71 ++++++++++++++++++++++++++++-
>  include/linux/acpi_iort.h                   |  5 ++
>  7 files changed, 174 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> index 33f7198..beb9cd5 100644
> --- a/drivers/acpi/arm64/iort.c
> +++ b/drivers/acpi/arm64/iort.c
> @@ -15,6 +15,7 @@
>  #include <linux/kernel.h>
>  #include <linux/list.h>
>  #include <linux/pci.h>
> +#include <linux/fsl/mc.h>
>  #include <linux/platform_device.h>
>  #include <linux/slab.h>
>  
> @@ -622,6 +623,29 @@ static int iort_dev_find_its_id(struct device *dev, u32 req_id,
>  }
>  
>  /**
> + * iort_get_fsl_mc_device_domain() - Find MSI domain related to a device
> + * @dev: The device.
> + * @mc_icid: ICID for the fsl_mc device.
> + *
> + * Returns: the MSI domain for this device, NULL otherwise
> + */
> +struct irq_domain *iort_get_fsl_mc_device_domain(struct device *dev,
> +							u32 mc_icid)
> +{
> +	struct fwnode_handle *handle;
> +	int its_id;
> +
> +	if (iort_dev_find_its_id(dev, mc_icid, 0, &its_id))
> +		return NULL;
> +
> +	handle = iort_find_domain_token(its_id);
> +	if (!handle)
> +		return NULL;
> +
> +	return irq_find_matching_fwnode(handle, DOMAIN_BUS_FSL_MC_MSI);
> +}

NAK

I am not willing to take platform specific code in the generic IORT
layer.

ACPI on ARM64 works on platforms that comply with SBSA/SBBR guidelines:

https://developer.arm.com/architectures/platform-design/server-systems

Deviating from those requires butchering ACPI specifications (ie IORT)
and related kernel code which goes totally against what ACPI is meant
for on ARM64 systems, so there is no upstream pathway for this code
I am afraid.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
