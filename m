Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C45156836
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Feb 2020 01:01:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u/pjuuVay/tyF5otFgJtWAXYwiMPTeeFfOF2KvaMD84=; b=EqhMM3w7+BKEQq
	YQrITq6Y/tGhee4/GVgeP+EswEV/uZjfEb2mKGWWUgdzq+BUnsS7rOJ0hlF/o45CJWjvIVCib1Tdr
	PqEVEM1+ldY0PkNqPydqg0ou1dO2TIFjO99idzSFCjl29SqtHj+FHOjzqorIHafvqIhL6LiiSxXWV
	grqB1BEqcocDc11/nbZ4P0VCGPh6CmzB2PPxoTi4OmYfErWmpLol/YYPVe4lnovjI9OqeEe3yUvd1
	D5UzinbmbLBKxyhhxJvAtD0mocvSe2FuW49ksVoNMgnZzeBYjpIJzJYR5hjyo/8GKP4FAHnUA0vZz
	DCeNtatg03T+jZrmPB/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0a2D-0003gx-Gv; Sun, 09 Feb 2020 00:01:13 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0a27-0003gA-Kk
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Feb 2020 00:01:09 +0000
Received: by mail-pg1-x543.google.com with SMTP id u131so1809409pgc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Feb 2020 16:01:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=KWYuYSQscJFjEOwJSH3DjqreOwAqOvNwuPxdqRtzkyQ=;
 b=tsY6c8Zp34BFWVlO3JnG99l/nv2GxJEIYPNYCJeVPEdmpzAgBvVD/d98DcL2DPJ1E8
 1owKgkk198flFbdTlEDw2yUcI6MWJKIq8ydFRJW6fBp00zwBIDtE7Pzw6nyR+Qck10VO
 lQzO5qBNnOdKWn3Y61SCHqAxkkZf1EkvLrQDHlavWfQiNi0lUjQMNpYDM7fF8Rzw+zqQ
 amqTFnRjGKcGRGHW1yi+eUbOHM3t8cu3/rcI71EwTlH05H+F2b5IYN6Lu4de+Og3NCk6
 H5J7+cEkkvyIP1pTvE+fTQTR3TsXvDNOvX61hK8eIBoSe6fLYYveggHJocO2G4bDWWZe
 y2+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KWYuYSQscJFjEOwJSH3DjqreOwAqOvNwuPxdqRtzkyQ=;
 b=iTKaFx5Ibh921uEmOvmCYIFEEnImcXe9y0c7troMdxoDnJ+F9jcLg7iQ4cxP9ceW0p
 hh/rQTfqQJ6YypAiweh4i56DwF2ceVwEzWFxPzuwswsXv10nnAi9aRDiomlU6kpjUUzv
 +FoRJQsjSLGskspvBnelXJwIVdtu335VeLN+nuVmg5RM89Fnegb5LtwhOesf+FMHe/XN
 U0jWjNUumGXbjN9yMMTElACnT4ff9AV64O6w/XQawU6waUizXuofgaTQtfmEwM0CvfAk
 PXDgWqYI+HusJPxSMsS92VXGj/Bueg0Eob5PgYdD0iWZs6l/jszL7GNCbgnnZmT8RXob
 NxvQ==
X-Gm-Message-State: APjAAAV5aTAEhJ0EHW2BktkqOcH/rjd+z5dZmz3T7hpaFNCPavOSElbv
 nsiOyyJZPZexIb6w973TC0pY3Q==
X-Google-Smtp-Source: APXvYqzR0flCofwFqUkheDzbGPVFJIBJyNBgBn7Z4+U50I3hGaNFRhfapXdIj2fQ490UigbTwQpbDg==
X-Received: by 2002:a63:d207:: with SMTP id a7mr6908057pgg.225.1581206464258; 
 Sat, 08 Feb 2020 16:01:04 -0800 (PST)
Received: from ripper (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id l15sm5955972pgi.31.2020.02.08.16.01.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 Feb 2020 16:01:03 -0800 (PST)
Date: Sat, 8 Feb 2020 16:00:17 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH 1/2] iommu: arm-smmu-impl: Convert to a generic reset
 implementation
Message-ID: <20200209000017.GD955802@ripper>
References: <cover.1579692800.git.saiprakash.ranjan@codeaurora.org>
 <e7ba4dbd8e9c8aedd6f5db1b3453d9782b7943cd.1579692800.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e7ba4dbd8e9c8aedd6f5db1b3453d9782b7943cd.1579692800.git.saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_160107_743555_7C86F590 
X-CRM114-Status: GOOD (  19.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Clark <robdclark@gmail.com>, Tomasz Figa <tfiga@chromium.org>,
 Rajendra Nayak <rnayak@codeaurora.org>, Will Deacon <will@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Jordan Crouse <jcrouse@codeaurora.org>,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-msm@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 22 Jan 03:48 PST 2020, Sai Prakash Ranjan wrote:

> Currently the QCOM specific smmu reset implementation is very
> specific to SDM845 SoC and has a wait-for-safe logic which
> may not be required for other SoCs. So move the SDM845 specific
> logic to its specific reset function. Also add SC7180 SMMU
> compatible for calling into QCOM specific implementation.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
>  drivers/iommu/arm-smmu-impl.c |  8 +++++---
>  drivers/iommu/arm-smmu-qcom.c | 16 +++++++++++++---
>  2 files changed, 18 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
> index 74d97a886e93..c75b9d957b70 100644
> --- a/drivers/iommu/arm-smmu-impl.c
> +++ b/drivers/iommu/arm-smmu-impl.c
> @@ -150,6 +150,8 @@ static const struct arm_smmu_impl arm_mmu500_impl = {
>  
>  struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
>  {
> +	const struct device_node *np = smmu->dev->of_node;
> +
>  	/*
>  	 * We will inevitably have to combine model-specific implementation
>  	 * quirks with platform-specific integration quirks, but everything
> @@ -166,11 +168,11 @@ struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
>  		break;
>  	}
>  
> -	if (of_property_read_bool(smmu->dev->of_node,
> -				  "calxeda,smmu-secure-config-access"))
> +	if (of_property_read_bool(np, "calxeda,smmu-secure-config-access"))
>  		smmu->impl = &calxeda_impl;
>  
> -	if (of_device_is_compatible(smmu->dev->of_node, "qcom,sdm845-smmu-500"))
> +	if (of_device_is_compatible(np, "qcom,sdm845-smmu-500") ||
> +	    of_device_is_compatible(np, "qcom,sc7180-smmu-500"))
>  		return qcom_smmu_impl_init(smmu);
>  
>  	return smmu;
> diff --git a/drivers/iommu/arm-smmu-qcom.c b/drivers/iommu/arm-smmu-qcom.c
> index 24c071c1d8b0..64a4ab270ab7 100644
> --- a/drivers/iommu/arm-smmu-qcom.c
> +++ b/drivers/iommu/arm-smmu-qcom.c
> @@ -15,8 +15,6 @@ static int qcom_sdm845_smmu500_reset(struct arm_smmu_device *smmu)
>  {
>  	int ret;
>  
> -	arm_mmu500_reset(smmu);
> -
>  	/*
>  	 * To address performance degradation in non-real time clients,
>  	 * such as USB and UFS, turn off wait-for-safe on sdm845 based boards,
> @@ -30,8 +28,20 @@ static int qcom_sdm845_smmu500_reset(struct arm_smmu_device *smmu)
>  	return ret;
>  }
>  
> +static int qcom_smmu500_reset(struct arm_smmu_device *smmu)
> +{
> +	const struct device_node *np = smmu->dev->of_node;
> +
> +	arm_mmu500_reset(smmu);
> +
> +	if (of_device_is_compatible(np, "qcom,sdm845-smmu-500"))
> +		return qcom_sdm845_smmu500_reset(smmu);
> +
> +	return 0;
> +}
> +
>  static const struct arm_smmu_impl qcom_smmu_impl = {
> -	.reset = qcom_sdm845_smmu500_reset,
> +	.reset = qcom_smmu500_reset,
>  };
>  
>  struct arm_smmu_device *qcom_smmu_impl_init(struct arm_smmu_device *smmu)
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
