Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A191B12AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 19:09:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HNNrMzJcJ6AbYPju+6GQWbpZyipz7BaehsiVaQI8nGM=; b=p1tLa83Ynz62EAHVbEY/nf/Lo
	ZcvJ3Z/QeCdhVH8zy1hZcjK5rl3sWC3NmmO6gH+4zFSSIk0tiYVSOZkkn7YOTUUMW1U/PZ7NbRUNE
	meaSca9mSyDxaYvvGEavpHnmSlhnquGWiHRcYBAOSE4NQStm3LbceKWwi0MA0IFWa6odYYFGOsACx
	KIZTqHZEad4tSC046CCQyE0CqtZ8ABHaGfXqU0Py6AS4NVCuQIaJKDP715CTE7bNQQeuYJ/giIU+J
	oimsMe7dteluqdNs8FCVQfErXkiwmqUSzcimXvODBy7GUxMwvYn+myVkL6CTSl/FD5zp79kdTfRK4
	htoplMkTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQZvc-0003QR-9p; Mon, 20 Apr 2020 17:09:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQZvS-0003PP-NX
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 17:09:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A5B4331B;
 Mon, 20 Apr 2020 10:09:36 -0700 (PDT)
Received: from [10.57.33.63] (unknown [10.57.33.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 602183F73D;
 Mon, 20 Apr 2020 10:09:34 -0700 (PDT)
Subject: Re: [PATCHv3 4/6] iommu/arm-smmu-qcom: Request direct mapping for
 modem device
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Sibi Sankar <sibis@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jordan Crouse <jcrouse@codeaurora.org>, Rob Clark <robdclark@gmail.com>
References: <cover.1587400573.git.saiprakash.ranjan@codeaurora.org>
 <509d88fbe7592aa15f867933c177b61bc7ba8efa.1587400573.git.saiprakash.ranjan@codeaurora.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <49c8c377-961b-3f95-a99c-08528def4cb7@arm.com>
Date: Mon, 20 Apr 2020 18:09:32 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <509d88fbe7592aa15f867933c177b61bc7ba8efa.1587400573.git.saiprakash.ranjan@codeaurora.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_100942_826014_E8725B3D 
X-CRM114-Status: GOOD (  17.15  )
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 iommu@lists.linux-foundation.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-20 5:42 pm, Sai Prakash Ranjan wrote:
> From: Sibi Sankar <sibis@codeaurora.org>
> 
> Request direct mapping for modem on platforms which don't have TrustZone
> (which programs the modem SIDs) to prevent the following global faults seen
> on Cheza/Trogdor:

Not strictly true - it's patch #6/6 that prevents *those* faults (and 
these days the driver should be reporting unmatched streams a little 
more helpfully). This change would resolve the context faults and/or 
weird memory corruption that might result from applying patch #6 alone - 
this is the crazy thing where transactions sometimes go directly to DRAM 
round the side of the SMMU so we can never safely remap anything, right?

Robin.

> arm-smmu 15000000.iommu: Unexpected global fault, this could be serious
> arm-smmu 15000000.iommu: GFSR 0x80000002, GFSYNR0 0x00000000,
> 			 GFSYNR1 0x00000781, GFSYNR2 0x00000000
> 
> arm-smmu 15000000.iommu: Unexpected global fault, this could be serious
> arm-smmu 15000000.iommu: GFSR 0x80000002, GFSYNR0 0x00000000,
> 			 GFSYNR1 0x00000461, GFSYNR2 0x00000000
> 
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>   drivers/iommu/arm-smmu-qcom.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/iommu/arm-smmu-qcom.c b/drivers/iommu/arm-smmu-qcom.c
> index 5bedf21587a5..cf01d0215a39 100644
> --- a/drivers/iommu/arm-smmu-qcom.c
> +++ b/drivers/iommu/arm-smmu-qcom.c
> @@ -17,7 +17,9 @@ static const struct of_device_id qcom_smmu_client_of_match[] = {
>   	{ .compatible = "qcom,mdp4" },
>   	{ .compatible = "qcom,mdss" },
>   	{ .compatible = "qcom,sc7180-mdss" },
> +	{ .compatible = "qcom,sc7180-mss-pil" },
>   	{ .compatible = "qcom,sdm845-mdss" },
> +	{ .compatible = "qcom,sdm845-mss-pil" },
>   	{ }
>   };
>   
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
