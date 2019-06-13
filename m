Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E114451A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:42:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5JBpiYfddBv2SFETgK1s98BuwaV5XANQYauNdhLJpdc=; b=E7/VaSM2j8gmNYVI0NE4eDjgQ
	LW5d6DI7S0U2qM+sqi/6E72zPTL8NouMFxA4p20Eh3D15LcBF5lZW9y9L+/o8ZstUg70Bqu3rdXyO
	cmbMl01UfYhBcIslxNFciW8itjxAfQDkqLpnchmlsdR9+F8s7c5k6xKzhj3QtHEjaJR+O+OrbW5p9
	jel+lTYQoKs5t1skxUJIc/I0dnZEfv8nBFFw2aehfWYKePMXqbc5Z0mGzxYinWzcYKKLt9nHlUXYz
	rbYliuh/BEy8+hJ7Q7iY52lbhvsXj/tR8o94a7OKGGVUD/IB9SjeZnsJLGQh4y+pq0DUwF/wbH+tf
	PBqEKNLmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSnc-0006XQ-Pq; Thu, 13 Jun 2019 16:42:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSnR-0006WZ-IZ; Thu, 13 Jun 2019 16:41:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 23D96367;
 Thu, 13 Jun 2019 09:41:53 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9B7EF3F694;
 Thu, 13 Jun 2019 09:41:49 -0700 (PDT)
Subject: Re: [PATCH 05/10] iommu/dma-iommu: convert to SPDX license tags
To: Yangtao Li <tiny.windzz@gmail.com>, joro@8bytes.org,
 m.szyprowski@samsung.com, kgene@kernel.org, krzk@kernel.org,
 will.deacon@arm.com, agross@kernel.org, david.brown@linaro.org,
 robdclark@gmail.com, heiko@sntech.de, thierry.reding@gmail.com,
 jonathanh@nvidia.com
References: <20190613162703.986-1-tiny.windzz@gmail.com>
 <20190613162703.986-5-tiny.windzz@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <867e7308-7ef7-b2a3-e088-7e9419878b76@arm.com>
Date: Thu, 13 Jun 2019 17:41:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190613162703.986-5-tiny.windzz@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_094153_659422_80F807BD 
X-CRM114-Status: GOOD (  18.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-samsung-soc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux-foundation.org, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/06/2019 17:26, Yangtao Li wrote:
> Updates license to use SPDX-License-Identifier.

A more complete version of this (which also covers the header) is 
already queued in -next.

Robin.

> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>   drivers/iommu/dma-iommu.c | 13 +------------
>   1 file changed, 1 insertion(+), 12 deletions(-)
> 
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index 129c4badf9ae..2d76bac43b82 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0
>   /*
>    * A fairly generic DMA-API to IOMMU-API glue layer.
>    *
> @@ -5,18 +6,6 @@
>    *
>    * based in part on arch/arm/mm/dma-mapping.c:
>    * Copyright (C) 2000-2004 Russell King
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License
> - * along with this program.  If not, see <http://www.gnu.org/licenses/>.
>    */
>   
>   #include <linux/acpi_iort.h>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
