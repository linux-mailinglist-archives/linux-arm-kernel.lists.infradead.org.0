Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00331B55BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 20:56:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6bFBm1RqiR+ClldwSfQBgaCy6Q5Kgjf8vf/H0NtXjbs=; b=cIyzXylRFlhW93
	fk6tcJkQo1htZq9nMxcIspSfFd71GguvzxU/sb67BMeTL3My2Qes48u76LjNzYH7OixOQ1TQhmIpN
	YahRBlPZBGhpOYRERN68NNqojpRJeXqxnIF1hQRTE8Z3VgQO7Rg8RGHu9cWrA6/TvC4qiG13v84zq
	/wPL1Jky+pBijkp/O0m3Tmd9ca3nmMGVA739HmA7nDjs5wz6dNUzJp2MI+OQEhCQU911uwOQyxM9l
	H7KYUb7rrMo9Da9I6E851UsiT6ySeWzfAjSqsT5M5EHkhXRlPnO7QV0VdipCEVBwtXlFzGQTXD7yq
	IkLHvXKP+LYjoh5Q8ghA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAIe2-0003hE-G0; Tue, 17 Sep 2019 18:56:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAIdc-0003gX-Db
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 18:55:46 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 29EB5214AF;
 Tue, 17 Sep 2019 18:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568746542;
 bh=GES6jY4SrgchwiFDLmCd0LxgVWZjnEk+gbEGOc928XQ=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=k9LwQx38N2BdNc66+3x/viHSY2juEQIkGNDwqC7RC5qWXwJi29ZVStsSdAb4mMl/s
 QwXwITGlVNF3gB3KQrxck1nkk79fvRSbAffQgGL0DxcRj6yvF6E3eUh8Ik6KDGZqrp
 keQixx7YXQIb8U8MUxG+ZkXC3m274H2HeGOHSe6E=
MIME-Version: 1.0
In-Reply-To: <1566327992-362-4-git-send-email-jcrouse@codeaurora.org>
References: <1566327992-362-1-git-send-email-jcrouse@codeaurora.org>
 <1566327992-362-4-git-send-email-jcrouse@codeaurora.org>
To: Jordan Crouse <jcrouse@codeaurora.org>, freedreno@lists.freedesktop.org
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 3/7] iommu/arm-smmu: Add a SMMU variant for the Adreno GPU
User-Agent: alot/0.8.1
Date: Tue, 17 Sep 2019 11:55:41 -0700
Message-Id: <20190917185542.29EB5214AF@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_115544_482177_32BE23D5 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Jordan Crouse (2019-08-20 12:06:28)
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index 39e81ef..3f41cf7 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -1858,6 +1858,7 @@ ARM_SMMU_MATCH_DATA(arm_mmu401, ARM_SMMU_V1_64K, GENERIC_SMMU);
>  ARM_SMMU_MATCH_DATA(arm_mmu500, ARM_SMMU_V2, ARM_MMU500);
>  ARM_SMMU_MATCH_DATA(cavium_smmuv2, ARM_SMMU_V2, CAVIUM_SMMUV2);
>  ARM_SMMU_MATCH_DATA(qcom_smmuv2, ARM_SMMU_V2, QCOM_SMMUV2);
> +ARM_SMMU_MATCH_DATA(qcom_adreno_smmuv2, ARM_SMMU_V2, QCOM_ADRENO_SMMUV2);
>  
>  static const struct of_device_id arm_smmu_of_match[] = {
>         { .compatible = "arm,smmu-v1", .data = &smmu_generic_v1 },
> @@ -1867,6 +1868,7 @@ static const struct of_device_id arm_smmu_of_match[] = {
>         { .compatible = "arm,mmu-500", .data = &arm_mmu500 },
>         { .compatible = "cavium,smmu-v2", .data = &cavium_smmuv2 },
>         { .compatible = "qcom,smmu-v2", .data = &qcom_smmuv2 },
> +       { .compatible = "qcom,adreno-smmu-v2", .data = &qcom_adreno_smmuv2 },

Can this be sorted on compat?

>         { },
>  };
>  
> diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
> index 91a4eb8..e5a2cc8 100644
> --- a/drivers/iommu/arm-smmu.h
> +++ b/drivers/iommu/arm-smmu.h
> @@ -222,6 +222,7 @@ enum arm_smmu_implementation {
>         ARM_MMU500,
>         CAVIUM_SMMUV2,
>         QCOM_SMMUV2,
> +       QCOM_ADRENO_SMMUV2,

Can this be sorted alphabetically?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
