Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 478D764AF0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 18:46:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oIu+A/TOda0siMypyEfd71Az+09PQkqzIDFcQPmvsTQ=; b=k7eOm96An0LLkZ2QRMe2mCMPD
	g2xCjuqRaBPPgmiKcjRKlglHBE6abwPw/Xpoow0c6SJQWjA6f25VrLihJsZOg2DwuSQ4wJbDfeDY5
	UgFssTcT656OLT9bXTaW1gz54HI6Bs2Dpa/Iy/kLCBd8Bup9SVx/r9Q5pdaO5oWbybSmhrwzaF6lN
	1Z2/vHhJ2PytQm9ttKDmjOU31dpj74AXI7KIoHn4VbzEpHI1HKjAx7FJdq23ZVJZohS/wtviJHeIC
	EfrjOHe23BaGEZ0p0QKzOSWcqq3Mb1gIoLwiDAzYoIHhZCilwqKltc1I6XVzN/zMgTGo6hKJkCD8P
	m7Fm+GuGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlFk4-00055T-Qs; Wed, 10 Jul 2019 16:46:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlFj1-0004qS-Gy
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 16:45:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 85F4C360;
 Wed, 10 Jul 2019 09:45:46 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 12B3A3F246;
 Wed, 10 Jul 2019 09:45:44 -0700 (PDT)
Subject: Re: [RESEND PATCH v2 3/3] iommu/arm-smmu: Add support for
 DOMAIN_ATTR_SPLIT_TABLES
To: Jordan Crouse <jcrouse@codeaurora.org>, freedreno@lists.freedesktop.org
References: <1562612447-19856-1-git-send-email-jcrouse@codeaurora.org>
 <1562612447-19856-4-git-send-email-jcrouse@codeaurora.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <aeae2aa1-9473-d661-dcf3-f086fe36d02a@arm.com>
Date: Wed, 10 Jul 2019 17:45:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1562612447-19856-4-git-send-email-jcrouse@codeaurora.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_094547_919313_090C266D 
X-CRM114-Status: GOOD (  22.07  )
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
Cc: jean-philippe.brucker@arm.com, linux-arm-msm@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, dianders@chromium.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 hoegsberg@google.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08/07/2019 20:00, Jordan Crouse wrote:
> When DOMAIN_ATTR_SPLIT_TABLES is specified for pass ARM_64_LPAE_SPLIT_S1
> to io_pgtable_ops to allocate and initialize TTBR0 and TTBR1 pagetables.
> 
> v3: Moved all the pagetable specific work into io-pgtable-arm
> in a previous patch.
> 
> Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
> ---
> 
>   drivers/iommu/arm-smmu.c | 16 +++++++++++++++-
>   1 file changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index 653b6b3..7a6b4bb 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -257,6 +257,7 @@ struct arm_smmu_domain {
>   	bool				non_strict;
>   	struct mutex			init_mutex; /* Protects smmu pointer */
>   	spinlock_t			cb_lock; /* Serialises ATS1* ops and TLB syncs */
> +	u32 attributes;
>   	struct iommu_domain		domain;
>   };
>   
> @@ -832,7 +833,11 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
>   		ias = smmu->va_size;
>   		oas = smmu->ipa_size;
>   		if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH64) {
> -			fmt = ARM_64_LPAE_S1;
> +			if (smmu_domain->attributes &
> +				(1 << DOMAIN_ATTR_SPLIT_TABLES))
> +				fmt = ARM_64_LPAE_SPLIT_S1;
> +			else
> +				fmt = ARM_64_LPAE_S1;
>   		} else if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH32_L) {
>   			fmt = ARM_32_LPAE_S1;
>   			ias = min(ias, 32UL);
> @@ -1582,6 +1587,10 @@ static int arm_smmu_domain_get_attr(struct iommu_domain *domain,
>   		case DOMAIN_ATTR_NESTING:
>   			*(int *)data = (smmu_domain->stage == ARM_SMMU_DOMAIN_NESTED);
>   			return 0;
> +		case DOMAIN_ATTR_SPLIT_TABLES:
> +			*(int *)data = !!(smmu_domain->attributes &
> +				(1 << DOMAIN_ATTR_SPLIT_TABLES));

I'm not really a fan of always claiming to support this but silently 
ignoring it depending on hardware/kernel configuration - it seems 
somewhat tricky to make callers properly robust against making false 
assumptions (e.g. consider if the system is booted with 
"arm-smmu.force_stage=2").

Robin.

> +			return 0;
>   		default:
>   			return -ENODEV;
>   		}
> @@ -1622,6 +1631,11 @@ static int arm_smmu_domain_set_attr(struct iommu_domain *domain,
>   			else
>   				smmu_domain->stage = ARM_SMMU_DOMAIN_S1;
>   			break;
> +		case DOMAIN_ATTR_SPLIT_TABLES:
> +			if (*((int *)data))
> +				smmu_domain->attributes |=
> +					(1 << DOMAIN_ATTR_SPLIT_TABLES);
> +			break;
>   		default:
>   			ret = -ENODEV;
>   		}
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
