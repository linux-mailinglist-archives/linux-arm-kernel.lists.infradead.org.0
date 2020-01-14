Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCEB13A7EA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 12:07:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5pjsgJgOE1cjHksfHM5AZNJN5UfWzq8JDG6UWf1lmHQ=; b=gnDJUnPiPMcmnW
	dfk4HKqa7qcSdvDNLce2rqZuJKCQzPZ3yuUib3OBbYPVa27LKH2W9ol29vyp/E9j0cCgttBhenyiA
	Rd2v2Hdr1fgSxFVpRoyEAxfQ5KR8L//eP4BcV1IEzLYcFySHZs89JU8TqREMX7xxU3hK/HVOrh40K
	jl3lsEWcz6qKzqHB0/Wh61Cd/+P02JLURtZ9G01+/r1mszFnIK1iPt5fd6f3i7KbEXEa0hBbDWtiS
	dcgf67ylMZv0kIl9Y7+uVfCwpxLzKb/EUdEbX9kM5jTEi5K5WGDWiw3lXgnlQcvZ0DvJOwMyEJ9HU
	u+yw7LhxJOpKRIFHHgxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irK2S-00060d-Ez; Tue, 14 Jan 2020 11:07:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irK2F-0005z2-Sk
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 11:07:03 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9C6F0206D5;
 Tue, 14 Jan 2020 11:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579000018;
 bh=NUepL9I8VxhkL/G0N0NYGcEM4cH+wKLTDcaEIcpguBw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZUXDxIj3k1xuPdIk/43rzWfhLIyHVCsu6peTMrszGiIL2GjqQGiwJBY+YMhXjZ9Qu
 hYIVZExluD75rG7RLmMDyAZDrmqM0ooSK5PGWTvVRgb5PqsNA9meXdzClU84zB9kZu
 vjyxEKvFPeISAkzr+LkiY2R4VxGgYDHQba/bS0es=
Date: Tue, 14 Jan 2020 11:06:52 +0000
From: Will Deacon <will@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v4 06/13] iommu/arm-smmu-v3: Add context descriptor
 tables allocators
Message-ID: <20200114110651.GA29222@willie-the-truck>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
 <20191219163033.2608177-7-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219163033.2608177-7-jean-philippe@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_030659_950268_0311519B 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 eric.auger@redhat.com, linux-pci@vger.kernel.org, joro@8bytes.org,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org,
 jonathan.cameron@huawei.com, guohanjun@huawei.com, bhelgaas@google.com,
 zhangfei.gao@linaro.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 05:30:26PM +0100, Jean-Philippe Brucker wrote:
> Support for SSID will require allocating context descriptor tables. Move
> the context descriptor allocation to separate functions.
> 
> Reviewed-by: Eric Auger <eric.auger@redhat.com>
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  drivers/iommu/arm-smmu-v3.c | 57 ++++++++++++++++++++++++++++++-------
>  1 file changed, 46 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index b287e303b1d7..43d6a7ded6e4 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -568,6 +568,7 @@ struct arm_smmu_cd_table {
>  struct arm_smmu_s1_cfg {
>  	struct arm_smmu_cd_table	table;
>  	struct arm_smmu_ctx_desc	cd;
> +	u8				s1cdmax;
>  };
>  
>  struct arm_smmu_s2_cfg {
> @@ -1455,6 +1456,31 @@ static int arm_smmu_cmdq_issue_sync(struct arm_smmu_device *smmu)
>  }
>  
>  /* Context descriptor manipulation functions */
> +static int arm_smmu_alloc_cd_leaf_table(struct arm_smmu_device *smmu,
> +					struct arm_smmu_cd_table *table,
> +					size_t num_entries)
> +{
> +	size_t size = num_entries * (CTXDESC_CD_DWORDS << 3);
> +
> +	table->ptr = dmam_alloc_coherent(smmu->dev, size, &table->ptr_dma,
> +					 GFP_KERNEL);
> +	if (!table->ptr) {
> +		dev_warn(smmu->dev,
> +			 "failed to allocate context descriptor table\n");
> +		return -ENOMEM;
> +	}
> +	return 0;
> +}
> +
> +static void arm_smmu_free_cd_leaf_table(struct arm_smmu_device *smmu,
> +					struct arm_smmu_cd_table *table,
> +					size_t num_entries)
> +{
> +	size_t size = num_entries * (CTXDESC_CD_DWORDS << 3);
> +
> +	dmam_free_coherent(smmu->dev, size, table->ptr, table->ptr_dma);
> +}

I think we'd be better off taking the 'arm_smmu_s1_cfg' as a parameter here
instead of the table pointer and a num_entries value, since the code above
implies that we support partial freeing of the context descriptors.

I can do that as a follow-up patch if you agree. Thoughts?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
