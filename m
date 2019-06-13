Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17296444BF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:39:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C9JE+P4FJ0uQ+ByFNtfzsceUeBMFuiurpxtqe7JoSTs=; b=ohjfKAI447UdId
	Ln8H0fxUrm26OBpKPU9wcEn45E0RvcsCMDCB6irVmKEir19e+M0yCz/OI8uDA5F5yzd/OxS3i56F2
	VkX1V+tUCvteJsdp0p04raqDeQfZTdnagrKVj+V4VmeUoLhTo8ZVXHbTGXyJ5uzsFaVwnhWi5BIIV
	dDP6FI4JS9yaHPEWEdkWXkz9FlvYOQ4IexlKsRmDxiJWlNGIu/SrzpDxSWVsCLUr5o+/vgOXOJHM+
	PswQ38oXu4NTF+/oi5dVvl+5O3LZxs8Y+nJBmq5lniMSGOjuQ4cP1D2KJkFU+GwuEstF13x/Oceq2
	cZI68CPEjaqudJvnSwWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSlL-0004jm-R0; Thu, 13 Jun 2019 16:39:43 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSkw-0004WV-Uy; Thu, 13 Jun 2019 16:39:21 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5DGd8ns038871;
 Thu, 13 Jun 2019 11:39:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560443948;
 bh=oAxd7WsqqxVifhcKmMTYcuvBXH5GAfbEq6A7S7y01t4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=CZadsBz6yW6A12cVWwuWQ8fd4z6F8QjnHIBMKdvs/T3a7WcevNTwMybpYoHQ+gGtB
 eC+dAIp+qMlCEhaeq6BWlNwb51tH5CUKzIJB1ePSyXV1elfUtEvx3H0KKb0aqsk0Cp
 xNa5RMpgq62tJz990OtcijyQjsdod/99wmTKRVuI=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5DGd8CM108463
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 13 Jun 2019 11:39:08 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 13
 Jun 2019 11:39:08 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 13 Jun 2019 11:39:08 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5DGd8wc055409;
 Thu, 13 Jun 2019 11:39:08 -0500
Subject: Re: [PATCH 03/10] iommu/omap: convert to SPDX license tags
To: Yangtao Li <tiny.windzz@gmail.com>, "joro@8bytes.org" <joro@8bytes.org>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>, "kgene@kernel.org"
 <kgene@kernel.org>, "krzk@kernel.org" <krzk@kernel.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>, "robin.murphy@arm.com"
 <robin.murphy@arm.com>, "agross@kernel.org" <agross@kernel.org>,
 "david.brown@linaro.org" <david.brown@linaro.org>, "robdclark@gmail.com"
 <robdclark@gmail.com>, "heiko@sntech.de" <heiko@sntech.de>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 "jonathanh@nvidia.com" <jonathanh@nvidia.com>
References: <20190613162703.986-1-tiny.windzz@gmail.com>
 <20190613162703.986-3-tiny.windzz@gmail.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <ac67e363-70cf-af64-d634-c3b0b6d408fa@ti.com>
Date: Thu, 13 Jun 2019 11:39:08 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190613162703.986-3-tiny.windzz@gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_093919_204296_B8D08130 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yangtao,

On 6/13/19 11:26 AM, Yangtao Li wrote:
> Updates license to use SPDX-License-Identifier.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>

Thanks for the patch. Can you also update another related file
while at this. Will leave it to Joerg if he prefers it as a separate
patch, or folded into this patch.

include/linux/platform_data/iommu-omap.h

Acked-by: Suman Anna <s-anna@ti.com>

regards
Suman

> ---
>  drivers/iommu/omap-iommu-debug.c | 5 +----
>  drivers/iommu/omap-iommu.c       | 5 +----
>  drivers/iommu/omap-iommu.h       | 5 +----
>  drivers/iommu/omap-iopgtable.h   | 5 +----
>  4 files changed, 4 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/iommu/omap-iommu-debug.c b/drivers/iommu/omap-iommu-debug.c
> index 4abc0ef522a8..55ec67a45101 100644
> --- a/drivers/iommu/omap-iommu-debug.c
> +++ b/drivers/iommu/omap-iommu-debug.c
> @@ -1,13 +1,10 @@
> +// SPDX-License-Identifier: GPL-2.0
>  /*
>   * omap iommu: debugfs interface
>   *
>   * Copyright (C) 2008-2009 Nokia Corporation
>   *
>   * Written by Hiroshi DOYU <Hiroshi.DOYU@nokia.com>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
>   */
>  
>  #include <linux/err.h>
> diff --git a/drivers/iommu/omap-iommu.c b/drivers/iommu/omap-iommu.c
> index d2fb347aa4ff..e6442876913f 100644
> --- a/drivers/iommu/omap-iommu.c
> +++ b/drivers/iommu/omap-iommu.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0
>  /*
>   * omap iommu: tlb and pagetable primitives
>   *
> @@ -6,10 +7,6 @@
>   *
>   * Written by Hiroshi DOYU <Hiroshi.DOYU@nokia.com>,
>   *		Paul Mundt and Toshihiro Kobayashi
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
>   */
>  
>  #include <linux/dma-mapping.h>
> diff --git a/drivers/iommu/omap-iommu.h b/drivers/iommu/omap-iommu.h
> index 1703159ef5af..5256e17d86a7 100644
> --- a/drivers/iommu/omap-iommu.h
> +++ b/drivers/iommu/omap-iommu.h
> @@ -1,13 +1,10 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
>  /*
>   * omap iommu: main structures
>   *
>   * Copyright (C) 2008-2009 Nokia Corporation
>   *
>   * Written by Hiroshi DOYU <Hiroshi.DOYU@nokia.com>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
>   */
>  
>  #ifndef _OMAP_IOMMU_H
> diff --git a/drivers/iommu/omap-iopgtable.h b/drivers/iommu/omap-iopgtable.h
> index 01a315227bf0..871c2a38f453 100644
> --- a/drivers/iommu/omap-iopgtable.h
> +++ b/drivers/iommu/omap-iopgtable.h
> @@ -1,13 +1,10 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
>  /*
>   * omap iommu: pagetable definitions
>   *
>   * Copyright (C) 2008-2010 Nokia Corporation
>   *
>   * Written by Hiroshi DOYU <Hiroshi.DOYU@nokia.com>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
>   */
>  
>  #ifndef _OMAP_IOPGTABLE_H
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
