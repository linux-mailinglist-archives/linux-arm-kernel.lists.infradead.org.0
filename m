Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F50E15C95B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 18:23:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SiHGSXw2ZrcX0eksX1rmLc5NXDTYRFDEZCuGzCHv9IQ=; b=eGyHs1LnhS06pSmm+M7DZ687P
	sOBTC4+S/nWZ66rQeGAH290p9+cZppdjdBNJewr1N6F5TVKXSXxPS9a2JGjPzVZ6jYfsAQJq+PUB3
	yLGiVlApGV9Mx+Hhx9x+VrbC3OGRXKM0dSB1bGnyCe87iR501LafQN3IIZVPnIOR9NhPUM9PWf0Zu
	dc0BTNJO83iYnbgZfqfioofFxg6zJxYKBclH4avrMha//7baBhbcT2PPqJWrO43niUi5TWXjL1B1u
	/caZzJE1c4PdY3IaCyDSQiDXctuLaYl686PyhwUW7S5xOuovTdCnWGv82ao/y/XxF8Dy69/piHph2
	cKXe7kcig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2ID8-00049a-Sn; Thu, 13 Feb 2020 17:23:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2ID0-00048t-OH
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 17:23:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E75ED328;
 Thu, 13 Feb 2020 09:23:25 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 568773F6CF;
 Thu, 13 Feb 2020 09:23:24 -0800 (PST)
Subject: Re: [PATCH v4 0/5] memory: Introduce memory controller mini-framework
To: Thierry Reding <thierry.reding@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
 Will Deacon <will@kernel.org>, Rob Herring <robh+dt@kernel.org>
References: <20200213163959.819733-1-thierry.reding@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <9841eb35-65e4-632a-ceff-bb2ba3b11bb0@arm.com>
Date: Thu, 13 Feb 2020 17:23:23 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200213163959.819733-1-thierry.reding@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_092326_887861_D372C9AC 
X-CRM114-Status: GOOD (  24.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, linux-tegra@vger.kernel.org,
 iommu@lists.linux-foundation.org, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+ Maxime]

On 13/02/2020 4:39 pm, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Hi,
> 
> this set of patches adds a new binding that allows device tree nodes to
> explicitly define the DMA parent for a given device. This supplements
> the existing interconnect bindings and is useful to disambiguate in the
> case where a device has multiple paths to system memory. Beyond that it
> can also be useful when there aren't any actual interconnect paths that
> can be controlled, so in simple cases this can serve as a simpler
> variant of interconnect paths.

Isn't that still squarely the intent of the "dma-mem" binding, though? 
i.e. it's not meant to be a 'real' interconnect provider, but a very 
simple way to encode DMA parentage piggybacked onto a more general 
binding (with the *option* of being a full-blown interconnect if it 
wants to, but certainly no expectation).

Robin.

> One other case where this is useful is to describe the relationship
> between devices such as the memory controller and an IOMMU, for example.
> On Tegra186 and later, the memory controller is programmed with a set of
> stream IDs that are to be associated with each memory client. This
> programming needs to happen before translations through the IOMMU start,
> otherwise the used stream IDs may deviate from the expected values. The
> memory-controllers property is used in this case to ensure that the
> memory controller driver has been probed (and hence has programmed the
> stream ID mappings) before the IOMMU becomes available.
> 
> Patch 1 introduces the memory controller bindings, both from the
> perspective of the provider and the consumer. Patch 2 makes use of a
> memory-controllers property to determine the DMA parent for the purpose
> of setting up DMA masks (based on the dma-ranges property of the DMA
> parent). Patch 3 introduces a minimalistic framework that is used to
> register memory controllers with along with a set of helpers to look up
> the memory controller from device tree.
> 
> An example of how to register a memory controller is shown in patch 4
> for Tegra186 (and later) and finally the ARM SMMU driver is extended to
> become a consumer of an (optional) memory controller. As described
> above, the goal is to defer probe as long as the memory controller has
> not yet programmed the stream ID mappings.
> 
> Thierry
> 
> Thierry Reding (5):
>    dt-bindings: Add memory controller bindings
>    of: Use memory-controllers property for DMA parent
>    memory: Introduce memory controller mini-framework
>    memory: tegra186: Register as memory controller
>    iommu: arm-smmu: Get reference to memory controller
> 
>   .../bindings/memory-controllers/consumer.yaml |  14 +
>   .../memory-controllers/memory-controller.yaml |  32 +++
>   drivers/iommu/arm-smmu.c                      |  11 +
>   drivers/iommu/arm-smmu.h                      |   2 +
>   drivers/memory/Makefile                       |   1 +
>   drivers/memory/core.c                         | 248 ++++++++++++++++++
>   drivers/memory/tegra/tegra186.c               |   9 +-
>   drivers/of/address.c                          |  25 +-
>   include/linux/memory-controller.h             |  34 +++
>   9 files changed, 366 insertions(+), 10 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/memory-controllers/consumer.yaml
>   create mode 100644 Documentation/devicetree/bindings/memory-controllers/memory-controller.yaml
>   create mode 100644 drivers/memory/core.c
>   create mode 100644 include/linux/memory-controller.h
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
