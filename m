Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC17A6176
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 08:31:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JXJ0Xzra0TJL9uIq4FFI9ImxW8Hm+t2T9znnX/wWizU=; b=Q7GqyZafjcfzPU
	yZ1TndXEDgjrk6LZGQWQei+KjtdfpzjbG6+ke5BNhQqU7ujeKmIQoHwYEM664xy/1CSSpj9vcDXrG
	PDHYxTJYcFob71Hjsh85VXmV3hJl3p0w0ao12hKKTQb13LmA0rLdBqN175fjMrFBkVpmMOSsbRSx7
	IItMx608P4ftEoElJkb/intMyJgLzj6GRNmHLGUTk8APpHcmZIJQCuHl/cIwM2m5E8eUJPhyWnUj3
	M6NJ1qo1bHaiVeoTp1jgP2q4aOcjbXAwa5Y5+Wvspljm4poxlq8db7vL2JSvqh3ze8VRSyx0WrMha
	iG1tF27AC+CIqLMssdhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i52LG-0005mu-RE; Tue, 03 Sep 2019 06:31:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i52Ku-0005lj-1T
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 06:30:41 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BB09120882;
 Tue,  3 Sep 2019 06:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567492233;
 bh=PNDgAQs78MSbUv+4jSX7U1x7Syw3aaKg9ZwbknDGfpU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2flIbda+GBUm/IB7GHSnk6uGdGg0zgS5DOJ+/IYOI0/7RxHS85LYg1CpCRZ5uXKP+
 1xprgvh3okb4QOafNS8bl7iN0uwzrb5gsZMPqlFFm2mfJ/u2XkC71UU1Dypl1bZgCB
 giogOpYJbdIltm4YZZA3oIaIqs7T3Ca005jAjOcc=
Date: Tue, 3 Sep 2019 07:30:29 +0100
From: Will Deacon <will@kernel.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] iommu/arm-smmu-v3: Fix build error without
 CONFIG_PCI_ATS
Message-ID: <20190903063028.6ryuk5dmaohi2fqa@willie-the-truck>
References: <20190903024212.20300-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903024212.20300-1-yuehaibing@huawei.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_233040_215210_29A7AF41 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: joro@8bytes.org, robin.murphy@arm.com, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 03, 2019 at 10:42:12AM +0800, YueHaibing wrote:
> If CONFIG_PCI_ATS is not set, building fails:
> 
> drivers/iommu/arm-smmu-v3.c: In function arm_smmu_ats_supported:
> drivers/iommu/arm-smmu-v3.c:2325:35: error: struct pci_dev has no member named ats_cap; did you mean msi_cap?
>   return !pdev->untrusted && pdev->ats_cap;
>                                    ^~~~~~~
> 
> ats_cap should only used when CONFIG_PCI_ATS is defined,
> so use #ifdef block to guard this.
> 
> Fixes: bfff88ec1afe ("iommu/arm-smmu-v3: Rework enabling/disabling of ATS for PCI masters")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/iommu/arm-smmu-v3.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index 66bf641..44ac9ac 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -2313,7 +2313,7 @@ static void arm_smmu_install_ste_for_dev(struct arm_smmu_master *master)
>  
>  static bool arm_smmu_ats_supported(struct arm_smmu_master *master)
>  {
> -	struct pci_dev *pdev;
> +	struct pci_dev *pdev __maybe_unused;
>  	struct arm_smmu_device *smmu = master->smmu;
>  	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(master->dev);
>  
> @@ -2321,8 +2321,10 @@ static bool arm_smmu_ats_supported(struct arm_smmu_master *master)
>  	    !(fwspec->flags & IOMMU_FWSPEC_PCI_RC_ATS) || pci_ats_disabled())
>  		return false;
>  
> +#ifdef CONFIG_PCI_ATS
>  	pdev = to_pci_dev(master->dev);
>  	return !pdev->untrusted && pdev->ats_cap;
> +#endif
>  }

Hmm, I really don't like the missing return statement here, even though we
never get this far thanks to the feature not getting set during ->probe().
I'd actually prefer just to duplicate the function:

#ifndef CONFIG_PCI_ATS
static bool
arm_smmu_ats_supported(struct arm_smmu_master *master) { return false; }
#else
<current code here>
#endif

Can you send a v2 like that, please?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
