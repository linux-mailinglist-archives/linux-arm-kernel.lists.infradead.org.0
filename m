Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DBD143FEE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 15:48:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XOx7Uzi4IcnZELpleUiBtQJo38J64dPRIwafyh2vF1U=; b=GvQ1GCHM4jfXBfd/CZPbYZjEy
	ajKXseOllkmDCJ/lPJshLNffpJaGWiHEIU61VQ+RUKZ70rWjkzKZu2coPTwZ+wu5j522abSSLomWZ
	PJ7Ez7AhC/zYJj8BHjUhaEaAQkbFoNU/KyM70jFQ60hNE/rqo9uht7I+qXyojYj29S+8jIRomBnbO
	0Gn1FDoAY6OB172r3h5to4OpLNfFV9KgU7y4XoYEzO7NZmcOQAUP/A1N57ehRRiKjNkaC7m0MXZzg
	eu6ZvMyh9lCubEKk88ONFX7FCpb6rs5nazJQ3ndn6Pa/t/w8c4f8S5h+4UQS8XRpoNdK/Z9xsK0AU
	1mC1IIkJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itup3-0005z8-Ho; Tue, 21 Jan 2020 14:48:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ituon-0005xQ-6h
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 14:47:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4EECE30E;
 Tue, 21 Jan 2020 06:47:47 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5EBF93F52E;
 Tue, 21 Jan 2020 06:47:46 -0800 (PST)
Subject: Re: [PATCH v3 2/5] iommu/arm-smmu: Add support for split pagetables
To: Jordan Crouse <jcrouse@codeaurora.org>, iommu@lists.linux-foundation.org
References: <1576514271-15687-1-git-send-email-jcrouse@codeaurora.org>
 <1576514271-15687-3-git-send-email-jcrouse@codeaurora.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <03d68ca6-254d-227f-e428-b85f6f4d7981@arm.com>
Date: Tue, 21 Jan 2020 14:47:44 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1576514271-15687-3-git-send-email-jcrouse@codeaurora.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_064749_284406_B3A783AC 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Oh, one more thing...

On 16/12/2019 4:37 pm, Jordan Crouse wrote:
[...]
> @@ -651,6 +659,7 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
>   	enum io_pgtable_fmt fmt;
>   	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
>   	struct arm_smmu_cfg *cfg = &smmu_domain->cfg;
> +	u32 quirks = 0;
>   
>   	mutex_lock(&smmu_domain->init_mutex);
>   	if (smmu_domain->smmu)
> @@ -719,6 +728,8 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
>   		oas = smmu->ipa_size;
>   		if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH64) {
>   			fmt = ARM_64_LPAE_S1;
> +			if (smmu_domain->split_pagetables)
> +				quirks |= IO_PGTABLE_QUIRK_ARM_TTBR1;

To avoid me forgetting and questioning it again in future, I'd recommend 
sticking a comment somewhere near here that we don't reduce cfg->ias in 
this case because we're currently assuming SEP_UPSTREAM.

Robin.

>   		} else if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH32_L) {
>   			fmt = ARM_32_LPAE_S1;
>   			ias = min(ias, 32UL);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
