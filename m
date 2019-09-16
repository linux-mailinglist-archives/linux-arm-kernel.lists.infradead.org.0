Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C27B3B388F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 12:46:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3LO4xjYGJUcTnmWCJXoP+jCmCli3bsR/dAdP+cahqF4=; b=V9eX7t2EDCvTA+QojPLfGhY7z
	CA1YzSVVXNohAqfx4MbFfFCE+tp220iOtywrDoIgSaB+Lc3eN43eQLwNJRcBj8LEN/r4Hkq875b+F
	ywYDacsWMORBALiVC57aholjeW+KVhCLSewNEWhwLO6aHDq2sykxMAqyqxV6o/5Y0Vd+hD/BdduXf
	lEwK5Dx/P6S4LQZoBKZoWu9M86HIwzhnxn7qdbs4B9XLWoyaA0YIMjNykVVznz6ggfxfTnjwQLI+n
	0NOIEkWrkdf3dc2v/hkDNTRh2t6NQXEsV0SuBXUUrGl/WYEs9/MqhRb7cW1Q+XoXDjgFJMgoFr+uO
	SNNvBqqWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9oWh-00022g-CD; Mon, 16 Sep 2019 10:46:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9oWQ-00021p-6C
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 10:46:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C462F1000;
 Mon, 16 Sep 2019 03:46:15 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DC62A3F59C;
 Mon, 16 Sep 2019 03:46:12 -0700 (PDT)
Subject: Re: [PATCH] iommu/arm-smmu: Axe a useless test in
 'arm_smmu_master_alloc_smes()'
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>, will@kernel.org,
 joro@8bytes.org
References: <20190915193401.27426-1-christophe.jaillet@wanadoo.fr>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <de9ee628-9efb-3078-590c-6852be61c7d2@arm.com>
Date: Mon, 16 Sep 2019 11:46:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190915193401.27426-1-christophe.jaillet@wanadoo.fr>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_034618_283335_1516B91B 
X-CRM114-Status: GOOD (  18.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: iommu@lists.linux-foundation.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/09/2019 20:34, Christophe JAILLET wrote:
> 'ommu_group_get_for_dev()' never returns NULL, so this test can be removed.

Nit: typo in the function name.

Otherwise, there definitely used to be some path where a NULL return 
could leak out, so I would have had that in mind at the time I wrote 
this, but apparently I never noticed that that had already been cleaned 
up by the time this got merged.

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

Thanks,
Robin.

> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
>   drivers/iommu/arm-smmu.c | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index c3ef0cc8f764..6fae8cdbe985 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -1038,8 +1038,6 @@ static int arm_smmu_master_alloc_smes(struct device *dev)
>   	}
>   
>   	group = iommu_group_get_for_dev(dev);
> -	if (!group)
> -		group = ERR_PTR(-ENOMEM);
>   	if (IS_ERR(group)) {
>   		ret = PTR_ERR(group);
>   		goto out_err;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
