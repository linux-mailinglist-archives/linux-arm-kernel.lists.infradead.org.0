Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE501FF9C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 18:57:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GlNdGpcc5FBFYvsUttwu00O3vwGou5XQQU4gPXgm9As=; b=ISK3JujtO9mpnNVFWJxCmsMjJ
	bnmTwsRTR0KWgreBq3oVsuVh+/wvQQMdnIVvI+IWMZGeJp4dEzyGIxmqQbGREn04DKIqCtpB4VCnn
	Ru/MUlZK1CCiN1WrJkeo28VTqqKVKNhJ4kAQUSIwKvpoyUsUnnAcqif0KVUhqmxX465oNlXInZkLf
	49KHsdf4o7WTFkNhS8oFhdVMGGsVunHkzk34ixSFYJZ04sP/gf5K2Sr9pzgHPYk2KiE2yUxEg5fTh
	4IvomNgt2WdPTVHMhB5sKdfg20SM12S5DAkKqswb/FmOaG8Go0vJLa1fW2q0kQD/7RC416+1wxDwG
	Gti7z4jJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlxqb-0000lc-Ro; Thu, 18 Jun 2020 16:57:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlxqR-0000lC-9f
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 16:56:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4A46731B;
 Thu, 18 Jun 2020 09:56:54 -0700 (PDT)
Received: from [10.57.9.128] (unknown [10.57.9.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 25A0B3F6CF;
 Thu, 18 Jun 2020 09:56:53 -0700 (PDT)
Subject: Re: [PATCH v2 2/8] iommu: arm-smmu-impl: Use qcom impl for sm8150 and
 sm8250 compatibles
To: Jonathan Marek <jonathan@marek.ca>, linux-arm-msm@vger.kernel.org
References: <20200609194030.17756-1-jonathan@marek.ca>
 <20200609194030.17756-3-jonathan@marek.ca>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <8f63f12e-c0fc-04a9-0762-5dbc63b19206@arm.com>
Date: Thu, 18 Jun 2020 17:56:52 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200609194030.17756-3-jonathan@marek.ca>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_095655_379093_99FF2FEB 
X-CRM114-Status: GOOD (  15.82  )
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
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 "moderated list:ARM SMMU DRIVERS" <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-09 20:40, Jonathan Marek wrote:
> Use the qcom implementation for IOMMU hardware on sm8150 and sm8250 SoCs.

Given a promise that anyone who wants to add more of these in future 
converts it into an of_device_id table exported from arm-smmu-qcom,

Reviewed-by Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Jonathan Marek <jonathan@marek.ca>
> ---
>   drivers/iommu/arm-smmu-impl.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
> index c75b9d957b70..f5f6cab626be 100644
> --- a/drivers/iommu/arm-smmu-impl.c
> +++ b/drivers/iommu/arm-smmu-impl.c
> @@ -172,7 +172,9 @@ struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
>   		smmu->impl = &calxeda_impl;
>   
>   	if (of_device_is_compatible(np, "qcom,sdm845-smmu-500") ||
> -	    of_device_is_compatible(np, "qcom,sc7180-smmu-500"))
> +	    of_device_is_compatible(np, "qcom,sc7180-smmu-500") ||
> +	    of_device_is_compatible(np, "qcom,sm8150-smmu-500") ||
> +	    of_device_is_compatible(np, "qcom,sm8250-smmu-500"))
>   		return qcom_smmu_impl_init(smmu);
>   
>   	return smmu;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
