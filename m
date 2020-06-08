Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F741F1BC5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 17:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mnglSFrGM64B14hIF2sqTmLAHUex15HapCm61GAv29A=; b=S6fd4U87m6x8E1
	7pGfYUTHHDz5FYprGw+Z3K3LKe3+klakTG7tm7ktskMlpa3EZCmsZ/pubvoXrriEcm5XF4Gnv/jdk
	Aq2l8uD69wifyZWgKIPI6inT7tlpxuNwv1S2zzXOmLyuBCozjPz/RTFG1GWWvHjshC6MWQWG3PHTf
	zx7X5vHezTIcsof1G5OgLh1WZyvY6qqnM464VZH/iC/gO5VYMYKVfm64JlJ0cn0aBWekGTkGDE9BR
	snfkld3oqRl7wiRoXbLM9SOd9x95n6O1q6l0ABaFNiILMzspJJOn2/VTn3v+Wo9H6lz/ZKwxZzoI5
	RjgGzLX5REsjwswKP0Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiJSi-0003jd-Jo; Mon, 08 Jun 2020 15:13:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiJSb-0003ii-UH
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 15:13:15 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CFFBE2064C;
 Mon,  8 Jun 2020 15:13:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591629193;
 bh=tqmNda7HBIejgaZeX5xWNh1g+XYUKXmSNmP+2Xa8+uk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RRjy7+Fp91CTEsYxYNd2ee6/qMl5ukLmjlfcRoc9tsCixzdo5D5os9ofKPeQC1D0f
 Z8aGOtvK94u6jG0qLLo/Z8XMc0KArq3nPyTp1ewvZqlcTaVvKaJnO3u/DFSfyoqnOQ
 CUe2cVWU2q/IR78hgR4FfVJQ6iiczo5GT18rtF/U=
Date: Mon, 8 Jun 2020 16:13:08 +0100
From: Will Deacon <will@kernel.org>
To: Jordan Crouse <jcrouse@codeaurora.org>
Subject: Re: [PATCH v2] iommu/arm-smmu: Mark qcom_smmu_client_of_match as
 possibly unused
Message-ID: <20200608151308.GB8060@willie-the-truck>
References: <20200604203905.31964-1-jcrouse@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604203905.31964-1-jcrouse@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_081314_004025_231AEA51 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 02:39:04PM -0600, Jordan Crouse wrote:
> When CONFIG_OF=n of_match_device() gets pre-processed out of existence
> leaving qcom-smmu_client_of_match unused. Mark it as possibly unused to
> keep the compiler from warning in that case.
> 
> Fixes: 0e764a01015d ("iommu/arm-smmu: Allow client devices to select direct mapping")
> Reported-by: kbuild test robot <lkp@intel.com>
> Acked-by: Will Deacon <will@kernel.org>
> Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
> ---
> 
>  drivers/iommu/arm-smmu-qcom.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/arm-smmu-qcom.c b/drivers/iommu/arm-smmu-qcom.c
> index cf01d0215a39..be4318044f96 100644
> --- a/drivers/iommu/arm-smmu-qcom.c
> +++ b/drivers/iommu/arm-smmu-qcom.c
> @@ -12,7 +12,7 @@ struct qcom_smmu {
>  	struct arm_smmu_device smmu;
>  };
>  
> -static const struct of_device_id qcom_smmu_client_of_match[] = {
> +static const struct of_device_id qcom_smmu_client_of_match[] __maybe_unused = {
>  	{ .compatible = "qcom,adreno" },
>  	{ .compatible = "qcom,mdp4" },
>  	{ .compatible = "qcom,mdss" },

Thanks. Joerg -- can you pick this one up, please? I don't have any other
SMMU fixes pending at the moment.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
