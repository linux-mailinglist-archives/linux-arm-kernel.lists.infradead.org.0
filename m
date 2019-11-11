Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B00FEF736B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 12:53:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yB9ict4ZmQ/TYXLKSpsPju31+wwVUx8StPkAgDizzxQ=; b=RxSdP2yuhOXY28QBi/+hU/DF/
	0K9Qetz64QWXrpaic3NTjSF9w2QD8fvyADWJOeP5vsc0AH4GnqEskdft+cPKN64nA9cTn2Tt+Q9Xj
	B6UxuKFfzY4e0YRYLF0uj2Fu31x3EIpd7e0e1D6BGJra4EZ6J7ZoE6o92b1sMjKU4wGugPBG61Ptq
	+gy6/vEGHeoC8Ez/R8wmhN3cCr8oUWZoC8yteMRnq1NaJ90tCNaSgNlrGOR5fQSItQH+bCKpKhN1R
	J1VNqQuY9y7MQiX2Ep1yan29oP+TOB6rXU6xde4KwIpwMNQK6l4xV7o3gcxzBpHqFArtQDXF+/RKG
	uuy+CbJkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU8Ff-0003TR-Ia; Mon, 11 Nov 2019 11:52:59 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU8FW-0003SU-UM
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 11:52:53 +0000
Received: from lhreml702-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 3AEBA609B00C25622120;
 Mon, 11 Nov 2019 11:52:40 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml702-cah.china.huawei.com (10.201.108.43) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 11 Nov 2019 11:52:39 +0000
Received: from [127.0.0.1] (10.202.226.46) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 11 Nov
 2019 11:52:39 +0000
Subject: Re: [PATCH 1/2] iommu/arm-smmu-v3: Don't display an error when IRQ
 lines are missing
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 <linux-arm-kernel@lists.infradead.org>, <iommu@lists.linux-foundation.org>
References: <20191111111721.4145919-1-jean-philippe@linaro.org>
From: John Garry <john.garry@huawei.com>
Message-ID: <d0dfd82d-dcec-010c-6a69-c8f2b15f5c7a@huawei.com>
Date: Mon, 11 Nov 2019 11:52:38 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20191111111721.4145919-1-jean-philippe@linaro.org>
Content-Language: en-US
X-Originating-IP: [10.202.226.46]
X-ClientProxiedBy: lhreml713-chm.china.huawei.com (10.201.108.64) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_035251_136527_CF0668BF 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: will@kernel.org, joro@8bytes.org, robin.murphy@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/11/2019 11:17, Jean-Philippe Brucker wrote:
> Since commit 7723f4c5ecdb ("driver core: platform: Add an error message
> to platform_get_irq*()"), platform_get_irq_byname() displays an error
> when the IRQ isn't found. Since the SMMUv3 driver uses that function to
> query which interrupt method is available, the message is now displayed
> during boot for any SMMUv3 that doesn't implement the combined
> interrupt, or that implements MSIs.
> 
> [   20.700337] arm-smmu-v3 arm-smmu-v3.7.auto: IRQ combined not found
> [   20.706508] arm-smmu-v3 arm-smmu-v3.7.auto: IRQ eventq not found
> [   20.712503] arm-smmu-v3 arm-smmu-v3.7.auto: IRQ priq not found
> [   20.718325] arm-smmu-v3 arm-smmu-v3.7.auto: IRQ gerror not found
> 
> Use platform_get_irq_byname_optional() to avoid displaying a spurious
> error.
> 
> Fixes: 7723f4c5ecdb ("driver core: platform: Add an error message to platform_get_irq*()")
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>

That stops a nuisance:
Tested-by: John Garry <john.garry@huawei.com>

However, I will say though that the combined irq seems necessary for 
TX2, which is not warned about being missing now.

Finally, A cover letter would have been handy to mention that the new 
API was only introduced after rc1

thanks

> ---
>   drivers/iommu/arm-smmu-v3.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index bfa4a0f39ed0..a89797f346a4 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -5207,19 +5207,19 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
>   
>   	/* Interrupt lines */
>   
> -	irq = platform_get_irq_byname(pdev, "combined");
> +	irq = platform_get_irq_byname_optional(pdev, "combined");
>   	if (irq > 0)
>   		smmu->combined_irq = irq;
>   	else {
> -		irq = platform_get_irq_byname(pdev, "eventq");
> +		irq = platform_get_irq_byname_optional(pdev, "eventq");
>   		if (irq > 0)
>   			smmu->evtq.q.irq = irq;
>   
> -		irq = platform_get_irq_byname(pdev, "priq");
> +		irq = platform_get_irq_byname_optional(pdev, "priq");
>   		if (irq > 0)
>   			smmu->priq.q.irq = irq;
>   
> -		irq = platform_get_irq_byname(pdev, "gerror");
> +		irq = platform_get_irq_byname_optional(pdev, "gerror");
>   		if (irq > 0)
>   			smmu->gerr_irq = irq;
>   	}
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
