Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E59FF135A02
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 14:23:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+C7mPtHMy4Vxvtn/+LxEiZw2JRENKq723eyfbGPvN3E=; b=rGUwisZGSY5l4LQroRc5j2gCV
	5QUQPb+TxMC9eGq6PpwAAuYYTAJAwyAwm6e0DPksY6UYuc/clAp3hCJB1QFnL6AdNBSd02gvghdNE
	RFi2gCdVrcCin3uEnTXg2fJ4b2yBRs1JaPS3Ze78GbH5ixEEyMikN5FjWzt7JCzniFfOtG46Xv+xY
	oIznbSgdYr6+uSKaOj5iIOVx1qGLyVb5MZzc8WEnolK3ztTPIWL749PcZ64hLCfZceG0n9yKYubSd
	v8WrvOera9Pl24RJRuNJ9Dtm5nLZ44IH4OPlKlWpp3RKQpTB99GY06iYsOef4l8xRKACFOGbN9Per
	u4JUQUDLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipXmY-0006ea-1Y; Thu, 09 Jan 2020 13:23:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipXmR-0006dd-SV
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 13:23:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C00EE31B;
 Thu,  9 Jan 2020 05:23:16 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DAA833F534;
 Thu,  9 Jan 2020 05:23:15 -0800 (PST)
Subject: Re: [PATCH] iommu/arm-smmu-v3: fix resource_size check
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org
References: <20191226095056.30256-1-yamada.masahiro@socionext.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <2cd8ed11-56df-b46b-aa21-5ecc0e2e3082@arm.com>
Date: Thu, 9 Jan 2020 13:23:14 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191226095056.30256-1-yamada.masahiro@socionext.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_052319_966390_A33163E9 
X-CRM114-Status: GOOD (  16.02  )
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

On 26/12/2019 9:50 am, Masahiro Yamada wrote:
> This is an off-by-one mistake.
> 
> resource_size() returns res->end - res->start + 1.

Heh, despite the optimism of "Avoid one-off errors by introducing a 
resource_size() function", life finds a way...

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
>   drivers/iommu/arm-smmu-v3.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index d9e0d9c19b4f..b463599559d2 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -3599,7 +3599,7 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
>   
>   	/* Base address */
>   	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	if (resource_size(res) + 1 < arm_smmu_resource_size(smmu)) {
> +	if (resource_size(res) < arm_smmu_resource_size(smmu)) {
>   		dev_err(dev, "MMIO region too small (%pr)\n", res);
>   		return -EINVAL;
>   	}
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
