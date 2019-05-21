Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00474254E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 18:07:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ny52J4EegCuIayt+sHt7d6BpQoPK/z2P720mJXDQnC0=; b=eQP0U+WVbxQbOI
	ztEvhb1kaTaUPENvvDegtCfg1IZOoP7ff4ygHCbTHthczOcKvjP6TMPDGaUARD5SO8aWD7nBD7mul
	bYkvmJYzxHWvaM2JG/ArHrOqOLvb6IWIacqH2LVB6uQKn2agqok9vSZFiMG3QyZFX1oesmD4eAt+n
	knCsolXe2/wjImdOTzrdGCx28cVdy7BxovZp1mkB1woVofAUx3J6R58AfTFkOjqtUzJbVkUVDR2Ec
	fabYcVZf6GDKQvThWtLl3rOFQqd2/MRPYokViOlck1RaEguWQ6TbjgxIFmkhU3XpF/mgn1wji8JDg
	DSd0YK7H1TIiKKDjLL4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7Iv-0003xp-SV; Tue, 21 May 2019 16:07:53 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7Io-0003x7-Tt
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 16:07:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CAF7F15A2;
 Tue, 21 May 2019 09:07:44 -0700 (PDT)
Received: from [10.1.196.129] (ostrya.cambridge.arm.com [10.1.196.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4A22B3F718;
 Tue, 21 May 2019 09:07:42 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
Subject: Re: [RFC/PATCH 0/4] Initial support for modular IOMMU drivers
To: "Isaac J. Manjarres" <isaacm@codeaurora.org>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
References: <1558118857-16912-1-git-send-email-isaacm@codeaurora.org>
Message-ID: <2379c1cf-be1b-503f-7dbc-51110650e91f@arm.com>
Date: Tue, 21 May 2019 17:07:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1558118857-16912-1-git-send-email-isaacm@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_090746_978209_2B30D2C7 
X-CRM114-Status: GOOD (  29.01  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: frowand.list@gmail.com, kernel-team@android.com, joro@8bytes.org,
 will.deacon@arm.com, lmark@codeaurora.org, robh+dt@kernel.org,
 bhelgaas@google.com, robin.murphy@arm.com, pratikp@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Isaac,

On 17/05/2019 19:47, Isaac J. Manjarres wrote:
> This series adds initial support for being able to use the ARM
> SMMU driver as a loadable kernel module. The series also adds
> to the IOMMU framework, so that it can defer probing for devices
> that depend on an IOMMU driver that may be a loadable module.
> 
> The primary reason behind these changes is that having the ARM
> SMMU driver as a module allows for the same kernel image to be
> used across different platforms. For example, if one platform
> contains an IOMMU that implements one version of the ARM SMMU
> specification, and another platform simply does not have an
> IOMMU, the only way that these platforms can share the same
> kernel image is if the ARM SMMU driver is compiled into the
> kernel image.
> 
> This solution is not scalable, as it will lead to bloating the
> kernel image with support for several future versions of the
> SMMU specification to maintain a common kernel image that works
> across all platforms. Having the ARM SMMU driver as a module allows
> for a common kernel image to be supported across all platforms,
> while yielding a smaller kernel image size, since the correct
> SMMU driver can be loaded at runtime, if necessary.

It can also be useful if IOMMU drivers want to rely on components that
distros usually build as modules. I have that problem with virtio-iommu,
where the whole virtio transport is usually modular.

> Patchset Summary:
> 
> 1. Since the ARM SMMU driver depends on symbols being exported from
> several subsystems, the first three patches are dedicated to exporting
> the necessary symbols.
> 
> 2. Similar to how the pinctrl framework handles deferring probes,
> the subsequent patch makes it so that the IOMMU framework will defer
> probes indefinitely if there is a chance that the IOMMU driver that a
> device is waiting for is a module. Otherwise, it upholds the current
> behavior of stopping probe deferrals once all of the builtin drivers
> have finished probing.
> 
> The ARM SMMU driver currently has support for the deprecated
> "mmu-masters" binding, which relies on the notion of initcall
> ordering for setting the bus ops to ensure that all SMMU devices
> have been bound to the driver. This poses a problem with
> making the driver a module, as there is no such notion with
> loadable modules. Will support for this be completely deprecated?
> If not, might it be useful to leverage the device tree ordering,
> and assign a property to the last SMMU device, and set the bus ops
> at that point? Or perhaps have some deferred timer based approach
> to know when to set the bus ops? 

Another problem is module unloading: if the user calls rmmod on an IOMMU
module, we have to ensure that endpoints aren't performing DMA anymore.
It could be solved by declaring consumers of an IOMMU with
device_link_add(), so that device drivers are unbound before the IOMMU
module is unloaded.

Thanks,
Jean

> 
> Thanks,
> Isaac
> 
> Isaac J. Manjarres (4):
>   of: Export of_phandle_iterator_args() to modules
>   PCI: Export PCI ACS and DMA searching functions to modules
>   iommu: Export core IOMMU functions to kernel modules
>   iommu: Add probe deferral support for IOMMU kernel modules
> 
>  drivers/iommu/iommu-sysfs.c | 3 +++
>  drivers/iommu/iommu.c       | 6 ++++++
>  drivers/iommu/of_iommu.c    | 8 ++++++--
>  drivers/of/base.c           | 1 +
>  drivers/pci/pci.c           | 1 +
>  drivers/pci/search.c        | 1 +
>  6 files changed, 18 insertions(+), 2 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
