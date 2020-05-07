Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE451C8678
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 12:15:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jgXPxrVkO12OYlHXDAP0djnZtqr93Ro7cDV4PnkPtMo=; b=Dr3GaA+rxaNGHU2SQSTRSoZhC
	JmJBi+M+xX0ZVdNktZoqbc29hpig4/GoThJFMpFA3nTVK4JmFrlO/xJ66AamCopnUNAS/lIkZLbp8
	TUwdqWzNimz1PHX3dnkNLz+NxGlCUpKH4Ojorm619Oa6MmG0d41zUnQXlPIswPavz9J9V7F2SajPv
	UEV4DAzXk5r2q47zzj5TOT9+k/MUkMmgvNZPgFc6vfdF1dlYX81Yey2Wkfjfo2XIhuJaKwIOi5cQI
	TAsFhoLg9n+OgXQrq+1sVGsC55G4qiq9f94jUoI4A6lxLQ1ky/3cF43vJ05XA5xt8uc5hzhs9nIIU
	Y1u0ZQOXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWdYx-00019p-7h; Thu, 07 May 2020 10:15:31 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWdYm-00016A-7q
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 10:15:26 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588846523; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=XFqf1wHSQnZtSaEYl1tXrhnf2kvJl+dy/TED/57qEYE=;
 b=cDVrHHP9fkZFJNMDN6TKtxkvFI6q7SyMs7mKlF6DDosBGam3fiHKVeUMeKJGDi9OVK4oYvJk
 RipF/ogcKXSv1JHJgPPK89xlVabDOeB3ZfkHHTdQwdSow1ZnXUCSZRQTXp7QBa43oISLqgcQ
 Ld8rU8M+QTQMQEsXf5nqHgvBksI=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb3dfa5.7fb15b8a7d88-smtp-out-n04;
 Thu, 07 May 2020 10:15:01 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 9EB7EC43637; Thu,  7 May 2020 10:15:00 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C0458C433D2;
 Thu,  7 May 2020 10:14:59 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 07 May 2020 15:44:59 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Rob Clark <robdclark@gmail.com>, Jordan
 Crouse <jcrouse@codeaurora.org>
Subject: Re: [PATCH] iomm/arm-smmu: Add stall implementation hook
In-Reply-To: <20200421202004.11686-1-saiprakash.ranjan@codeaurora.org>
References: <20200421202004.11686-1-saiprakash.ranjan@codeaurora.org>
Message-ID: <b491e02ad790a437115fdeab6b21bc48@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_031524_546352_61A9145E 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-msm@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will, Robin

On 2020-04-22 01:50, Sai Prakash Ranjan wrote:
> Add stall implementation hook to enable stalling
> faults on QCOM platforms which supports it without
> causing any kind of hardware mishaps. Without this
> on QCOM platforms, GPU faults can cause unrelated
> GPU memory accesses to return zeroes. This has the
> unfortunate result of command-stream reads from CP
> getting invalid data, causing a cascade of fail.
> 
> Suggested-by: Rob Clark <robdclark@gmail.com>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
> This has been attempted previously by Rob Clark in 2017, 2018.
> Hopefully we can get something concluded in 2020.
>  * https://patchwork.kernel.org/patch/9953803/
>  * https://patchwork.kernel.org/patch/10618713/
> ---
>  drivers/iommu/arm-smmu-qcom.c | 1 +
>  drivers/iommu/arm-smmu.c      | 7 +++++++
>  drivers/iommu/arm-smmu.h      | 1 +
>  3 files changed, 9 insertions(+)
> 
> diff --git a/drivers/iommu/arm-smmu-qcom.c 
> b/drivers/iommu/arm-smmu-qcom.c
> index 24c071c1d8b0..a13b229389d4 100644
> --- a/drivers/iommu/arm-smmu-qcom.c
> +++ b/drivers/iommu/arm-smmu-qcom.c
> @@ -32,6 +32,7 @@ static int qcom_sdm845_smmu500_reset(struct
> arm_smmu_device *smmu)
> 
>  static const struct arm_smmu_impl qcom_smmu_impl = {
>  	.reset = qcom_sdm845_smmu500_reset,
> +	.stall = true,
>  };
> 
>  struct arm_smmu_device *qcom_smmu_impl_init(struct arm_smmu_device 
> *smmu)
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index e622f4e33379..16b03fca9966 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -488,6 +488,11 @@ static irqreturn_t arm_smmu_context_fault(int
> irq, void *dev)
>  			    fsr, iova, fsynr, cbfrsynra, idx);
> 
>  	arm_smmu_cb_write(smmu, idx, ARM_SMMU_CB_FSR, fsr);
> +
> +	if (smmu->impl && smmu->impl->stall && (fsr & ARM_SMMU_FSR_SS))
> +		arm_smmu_cb_write(smmu, idx, ARM_SMMU_CB_RESUME,
> +				  ARM_SMMU_RESUME_TERMINATE);
> +
>  	return IRQ_HANDLED;
>  }
> 
> @@ -659,6 +664,8 @@ static void arm_smmu_write_context_bank(struct
> arm_smmu_device *smmu, int idx)
>  		reg |= ARM_SMMU_SCTLR_S1_ASIDPNE;
>  	if (IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
>  		reg |= ARM_SMMU_SCTLR_E;
> +	if (smmu->impl && smmu->impl->stall)
> +		reg |= ARM_SMMU_SCTLR_CFCFG;
> 
>  	arm_smmu_cb_write(smmu, idx, ARM_SMMU_CB_SCTLR, reg);
>  }
> diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
> index 8d1cd54d82a6..d5134e0d5cce 100644
> --- a/drivers/iommu/arm-smmu.h
> +++ b/drivers/iommu/arm-smmu.h
> @@ -386,6 +386,7 @@ struct arm_smmu_impl {
>  	int (*init_context)(struct arm_smmu_domain *smmu_domain);
>  	void (*tlb_sync)(struct arm_smmu_device *smmu, int page, int sync,
>  			 int status);
> +	bool stall;
>  };
> 
>  static inline void __iomem *arm_smmu_page(struct arm_smmu_device 
> *smmu, int n)

Any comments on this patch?

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
