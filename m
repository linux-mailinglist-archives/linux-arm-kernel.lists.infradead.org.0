Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA31199A11
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:44:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tMy1XMKFwihwQWXN0OtWuH2ekhuUMaZSq6B6wrrrLbA=; b=UbGj7bqqmtoB+72JWS+EdEEdG
	GV6fu5t2F91RNFUUawbtC1XJMKw/5ENr/gqVl1ZMg4EU++rGYEjyaTjAe66wa8tsYClhxSOpNcetY
	xy+c//+H99mvpuvloSKnuTILb+voNxTUIyTZ3O3H9wkhDFMcaRILHyMzlWcP9FimzVkZARaBZ0ZkJ
	Wr0tqowwTE3KKqUQpjH+sZ7ikZt5VyRIB5NZARgD6He2LrsH+PGF4+KHnHvHg3KrPJjvaH105sQvC
	l8Hbckr+pSExnDurtxCzJTvVBOO+Bq3+QSBxZLYbJduHMFTx2ea16Z5UA0ugoxYlnpQyXZcuzFrE0
	OsdjYsVzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJ49-00013P-8X; Tue, 31 Mar 2020 15:44:37 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJ1e-0007oG-Po
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 15:42:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=kGkpE1LHTT+J5A34bqi0i/+EaG5SFmGKZQyI8vARqzs=; b=Ywp6N9ByI78H+y3k8W9AKtXmom
 PgYkyFys/vPNZxwGngVvx5ug7okD3rn21ozR9mVh+A5hr9l7GDcrkzZzb7dV2EpFW71m0r1zmDZep
 /gFIdB5bBWteTPHTqPOpGWLM782x+sj0f5dbayGtTa/b58eAjL86LYVKSeqxRT1APKss7Aw6mNsOC
 0aawLXW5CTflesS1fVQSemeHzfOzvI53Sssv5Zy5ZVwwRzrYE9A7mCJwOWqXG/qWWSNdX1dQPBZw+
 q1CVETODRZC5dYA+TC8USYchS5/Kynxp6vB4vJhth2MOCRHpSmFbzoPSFwB6a8NnIPoNzO7oUzpOI
 47NfCCYg==;
Received: from foss.arm.com ([217.140.110.172])
 by casper.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJHjY-0003Kn-Tf
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 14:19:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0D33E7FA;
 Tue, 31 Mar 2020 07:19:12 -0700 (PDT)
Received: from [10.57.60.204] (unknown [10.57.60.204])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E3A673F71E;
 Tue, 31 Mar 2020 07:19:10 -0700 (PDT)
Subject: Re: [PATCH] iommu/arm-smmu-v3: move error checking into common path
To: luanshi <zhangliguang@linux.alibaba.com>, Will Deacon <will@kernel.org>,
 Joerg Roedel <joro@8bytes.org>
References: <1585663188-114303-1-git-send-email-zhangliguang@linux.alibaba.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <749b7fb7-06c2-bde3-55e9-03232287d727@arm.com>
Date: Tue, 31 Mar 2020 15:19:08 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <1585663188-114303-1-git-send-email-zhangliguang@linux.alibaba.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_151917_480272_D01C7B26 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: -4.2 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-4.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
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
Cc: iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-31 2:59 pm, luanshi wrote:
> Move error checking into common path to be consistent with
> drivers/iommu/arm-smmu.c.
> 
> Signed-off-by: Liguang Zhang <zhangliguang@linux.alibaba.com>
> ---
>   drivers/iommu/arm-smmu-v3.c | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index aa3ac2a..970f1c9 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -3889,13 +3889,13 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
>   	}
>   	smmu->dev = dev;
>   
> -	if (dev->of_node) {
> +	if (dev->of_node)
>   		ret = arm_smmu_device_dt_probe(pdev, smmu);
> -	} else {
> +	else
>   		ret = arm_smmu_device_acpi_probe(pdev, smmu);
> -		if (ret == -ENODEV)
> -			return ret;
> -	}
> +
> +	if (ret)
> +		return ret;

This completely changes the flow WRT the bypass decision below, so 
without a clear justification of why that's OK, NAK.

Robin.

>   
>   	/* Set bypass mode according to firmware probing result */
>   	bypass = !!ret;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
