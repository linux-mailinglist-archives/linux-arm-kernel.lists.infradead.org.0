Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD246135A6E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 14:42:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x20fAykMKQTqs2lPbyRm1/BOuSBjwXBSaMvePc5FVYQ=; b=RZYHHl1KBftpOouvRhL9R1h+s
	piAza9atdSFAbuv9CHvxRYthrXJ7YZMkOQXLg+U4mJrgRC1TpAi/opqUqxRkxYbD8J6h5dfNoPLl6
	Z2+3AIzaCGXofEGjOf77ZLsXx0oa4IwUtKOYLfaFRqBApPE+Z1m8bxvmoCtuvPQPK20cUagraLexh
	oxechJpjfyRej8b1V2ARZ+AtjtiuTpNk3CLuT8YwVcQ72dYZRKSGA/TY/g8E+kwm5/qqpVtSCBIt3
	H4hpDB6gRhj4j1qeeSFqIA9YmVr/HsDau1EMo6YQgwK8kMTP346Z/jiR9rsJm1ilJmNlkPBqcT0sm
	BKiOsTPfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipY4c-0007VX-Rn; Thu, 09 Jan 2020 13:42:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipY4V-0007UR-NF
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 13:42:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2492031B;
 Thu,  9 Jan 2020 05:41:59 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 329D43F534;
 Thu,  9 Jan 2020 05:41:58 -0800 (PST)
Subject: Re: [PATCH 2/2] iommu/arm-smmu-v3: simplify parse_driver_options()
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org
References: <20191226095141.30352-1-yamada.masahiro@socionext.com>
 <20191226095141.30352-2-yamada.masahiro@socionext.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <1383eeb0-4148-a798-5e24-81ce33013f1d@arm.com>
Date: Thu, 9 Jan 2020 13:41:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191226095141.30352-2-yamada.masahiro@socionext.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_054159_797338_AB7EF335 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26/12/2019 9:51 am, Masahiro Yamada wrote:
> Using ARRAY_SIZE() instead of the sentinel is slightly simpler, IMHO.

Given that it's fairly well-decided that we don't want to add any more 
of these anyway, I'd be inclined to lose the array/loop machinery 
altogether. As it is we'd need a lot more options for it to actually 
offer any kind of code size saving.

Robin.

> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
>   drivers/iommu/arm-smmu-v3.c | 7 +++----
>   1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index ed9933960370..b27489b7f9d8 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -676,7 +676,6 @@ struct arm_smmu_option_prop {
>   static const struct arm_smmu_option_prop arm_smmu_options[] = {
>   	{ ARM_SMMU_OPT_SKIP_PREFETCH, "hisilicon,broken-prefetch-cmd" },
>   	{ ARM_SMMU_OPT_PAGE0_REGS_ONLY, "cavium,cn9900-broken-page1-regspace"},
> -	{ 0, NULL},
>   };
>   
>   static inline void __iomem *arm_smmu_page1_fixup(unsigned long offset,
> @@ -696,16 +695,16 @@ static struct arm_smmu_domain *to_smmu_domain(struct iommu_domain *dom)
>   
>   static void parse_driver_options(struct arm_smmu_device *smmu)
>   {
> -	int i = 0;
> +	int i;
>   
> -	do {
> +	for (i = 0; i < ARRAY_SIZE(arm_smmu_options); i++) {
>   		if (of_property_read_bool(smmu->dev->of_node,
>   						arm_smmu_options[i].prop)) {
>   			smmu->options |= arm_smmu_options[i].opt;
>   			dev_notice(smmu->dev, "option %s\n",
>   				arm_smmu_options[i].prop);
>   		}
> -	} while (arm_smmu_options[++i].opt);
> +	};
>   }
>   
>   /* Low-level queue manipulation functions */
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
