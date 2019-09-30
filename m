Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5FDC2518
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 18:26:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uSLzfmL5ajdAPoNQ2nrmfC3ebTEwYlDgunYP7hEGSH4=; b=OXYvPFRj5gMipA
	ojoVQ2bQeXBu4t95h5i+Qn+70JV2B6VeS9+ixjxE8y4co1kl/erj95uXz4ZIlGHXNTF+D3xmgYinY
	ic46i13iENWvIqLfv7Nwqwtq/TduIV0zkZYHGKVVbBiwR6NjtfEiYWN46cSPhW1YrfdVJM3oP4GRf
	ytaZMst3mQG9HxdHPLkYUrOSiHXwzp3kwkAf1UdUdqtqo5bztaldi9yru+FMsJfozbu/2w81M3XCj
	4zxzB5FNjtXQKbxc/0zt1tp0/d53Bc2V6BAxe/XBeGGXqbECR5nXcRJB4unrRJAVqoNPqn7unJ1Qz
	5Ravo/GuFeIsYB7KqO1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEyVY-00037E-4A; Mon, 30 Sep 2019 16:26:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEyVO-00036b-Tg
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 16:26:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 96E931570;
 Mon, 30 Sep 2019 09:26:30 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3147C3F534;
 Mon, 30 Sep 2019 09:26:29 -0700 (PDT)
Subject: Re: [PATCH 2/2] drm/panfrost: Use coherent pagetable walk on Juno
To: Robin Murphy <robin.murphy@arm.com>, robh@kernel.org,
 tomeu.vizoso@collabora.com, sudeep.holla@arm.com
References: <88dc6386929b3dcd7a65ba8063628c62b66b330c.1569856049.git.robin.murphy@arm.com>
 <1e499f85220b735849126171e64ebdd1da0302ce.1569856049.git.robin.murphy@arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <167ec566-1936-8a05-83fc-74d20d9fb8bc@arm.com>
Date: Mon, 30 Sep 2019 17:26:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1e499f85220b735849126171e64ebdd1da0302ce.1569856049.git.robin.murphy@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_092635_003092_A4A03645 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com, liviu.dudau@arm.com,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/09/2019 16:24, Robin Murphy wrote:
> Although going full "dma-coherent" ends badly due to GEM objects still
> being forcibly mapped non-cacheable, we can at least take advantage of
> Juno's ACE-lite integration to skip cache maintenance for pagetables.
> 
> CC: Rob Herring <robh@kernel.org>
> CC: Tomeu Vizoso <tomeu.vizoso@collabora.com>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> 
> This isn't really meant as a series, I'm just sending it together
> with patch #1 for context.
> 
>  drivers/gpu/drm/panfrost/panfrost_mmu.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panfrost/panfrost_mmu.c b/drivers/gpu/drm/panfrost/panfrost_mmu.c
> index bdd990568476..560439f63277 100644
> --- a/drivers/gpu/drm/panfrost/panfrost_mmu.c
> +++ b/drivers/gpu/drm/panfrost/panfrost_mmu.c
> @@ -365,6 +365,9 @@ int panfrost_mmu_pgtable_alloc(struct panfrost_file_priv *priv)
>  		.iommu_dev	= pfdev->dev,
>  	};
>  
> +	if (of_device_is_compatible(pfdev->dev->of_node, "arm,juno-mali"))
> +		pfdev->mmu->pgtbl_cfg.coherent_walk = true;

Should be:
	mmu->pgtbl_cfg.coherent_walk = true;

Also I'm not sure whether we should do this based on a compatible
string. kbase has a "system-coherency" device-tree flag for it. In
theory we could end up with a long list of compatibles here...

Steve

> +
>  	mmu->pgtbl_ops = alloc_io_pgtable_ops(ARM_MALI_LPAE, &mmu->pgtbl_cfg,
>  					      priv);
>  	if (!mmu->pgtbl_ops)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
