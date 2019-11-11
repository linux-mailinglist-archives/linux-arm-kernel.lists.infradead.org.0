Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA5CF76D9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 15:45:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rOeinLAL/vkxnD5G69JvjZtcmrcK1AGyvC6TOyR1Su8=; b=FixpbaRdm4emPV0unLPmO6K7V
	wpMtD7zUkBvZGGt1+K7fzD/yJ381IcZCq/GQuzj48gAdO/NFCb33zoNvy9j2xIxBOGKVFqoIBfTu2
	hwBOV0jtN8jZBlExSCzONyoNvxjQ4PGxkkAxdbbznx34356R2Ie3zSVFFG6IAkRED2teChMBOVtaS
	YB18Fner/yadmYbcVBOGyU8lHsmhnruwvk+iLY6iHE8kNNs0S7l13UNsojWLOuEvE4v0Al7LyugTC
	Tuh+bQFLf6aiYfMCGlNiJpjS2+ZQ3E8x2wifKhSQofi+4Mv/r7b0RocAt0iog+8GFNuLct1Ma1Yix
	w4h8gPeeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUAwP-0004U2-Uq; Mon, 11 Nov 2019 14:45:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUAun-0003Dj-6M
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 14:43:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 052C131B;
 Mon, 11 Nov 2019 06:43:35 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2AC603F52E;
 Mon, 11 Nov 2019 06:43:33 -0800 (PST)
Subject: Re: [PATCH 2/2] iommu/arm-smmu: Remove duplicate error message
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux-foundation.org
References: <20191111111721.4145919-1-jean-philippe@linaro.org>
 <20191111111721.4145919-2-jean-philippe@linaro.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <09ac62ed-c483-79ba-bd31-939b50e8d20f@arm.com>
Date: Mon, 11 Nov 2019 14:43:22 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191111111721.4145919-2-jean-philippe@linaro.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_064337_461534_6A1448FD 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: joro@8bytes.org, will@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/11/2019 11:17, Jean-Philippe Brucker wrote:
> Since commit 7723f4c5ecdb ("driver core: platform: Add an error message
> to platform_get_irq*()"), platform_get_irq() displays an error when the
> IRQ isn't found. Remove the error print from the SMMU driver. Note the
> slight change of behaviour: no message is printed if platform_get_irq()
> returns -EPROBE_DEFER, which probably doesn't concern the SMMU.
> 
> Fixes: 7723f4c5ecdb ("driver core: platform: Add an error message to platform_get_irq*()")
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>   drivers/iommu/arm-smmu.c | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index 7c503a6bc585..6f676686752c 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -2062,10 +2062,8 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
>   	for (i = 0; i < num_irqs; ++i) {
>   		int irq = platform_get_irq(pdev, i);
>   
> -		if (irq < 0) {
> -			dev_err(dev, "failed to get irq index %d\n", i);
> +		if (irq < 0)
>   			return -ENODEV;

It's a preexisting issue, but we should really "return irq" here.

Robin.

> -		}
>   		smmu->irqs[i] = irq;
>   	}
>   
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
