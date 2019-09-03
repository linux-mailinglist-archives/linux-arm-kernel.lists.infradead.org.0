Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEDDA618B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 08:34:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z0CAdYqgrTx1JPyhdJ8P5Je+/PA0549iWoBab0BqEi0=; b=XMl/NCWrhQYjWN
	OOCK6Yx+YGiCbDo0sW2Od8Kjt5d2Bb8oLn85y75xZCIyA0B+8oA9H+ROy+1G1RLh8+UGDPchKDynC
	YGXp28tdkgitQevhFAWdoF160XA5Q3uwNJxPv/acU6lMFR5dcOeU2MLXi71z71y/MiCKz32hOiE+N
	BpPazQ9N+vbU/4DG7iiJRas5AfRIXaZB5lDUb2c/A/HAnoJndPYtMGWAzTz9ZpzIrJfBWVZv7UFI6
	SqW2JnS+Ts5s+vJDifE/B30ldJIF1SGasVYzhzi2WlBvPI91+jcoSSp1cb5V2Z9BnayqGt1fNXbI4
	hakKP/gczLChkFGijY1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i52Os-0006vT-Si; Tue, 03 Sep 2019 06:34:46 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i52Od-0006uP-UC
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 06:34:33 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 44FED515EAFCE51C88B3;
 Tue,  3 Sep 2019 14:34:26 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 3 Sep 2019 14:34:22 +0800
Subject: Re: [PATCH -next] iommu/arm-smmu-v3: Fix build error without
 CONFIG_PCI_ATS
To: Will Deacon <will@kernel.org>
References: <20190903024212.20300-1-yuehaibing@huawei.com>
 <20190903063028.6ryuk5dmaohi2fqa@willie-the-truck>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <e246593a-e518-2d79-c89e-5191d28e9e34@huawei.com>
Date: Tue, 3 Sep 2019 14:34:21 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20190903063028.6ryuk5dmaohi2fqa@willie-the-truck>
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_233432_159005_A016CD39 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: joro@8bytes.org, robin.murphy@arm.com, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/9/3 14:30, Will Deacon wrote:
> On Tue, Sep 03, 2019 at 10:42:12AM +0800, YueHaibing wrote:
>> If CONFIG_PCI_ATS is not set, building fails:
>>
>> drivers/iommu/arm-smmu-v3.c: In function arm_smmu_ats_supported:
>> drivers/iommu/arm-smmu-v3.c:2325:35: error: struct pci_dev has no member named ats_cap; did you mean msi_cap?
>>   return !pdev->untrusted && pdev->ats_cap;
>>                                    ^~~~~~~
>>
>> ats_cap should only used when CONFIG_PCI_ATS is defined,
>> so use #ifdef block to guard this.
>>
>> Fixes: bfff88ec1afe ("iommu/arm-smmu-v3: Rework enabling/disabling of ATS for PCI masters")
>> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
>> ---
>>  drivers/iommu/arm-smmu-v3.c | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
>> index 66bf641..44ac9ac 100644
>> --- a/drivers/iommu/arm-smmu-v3.c
>> +++ b/drivers/iommu/arm-smmu-v3.c
>> @@ -2313,7 +2313,7 @@ static void arm_smmu_install_ste_for_dev(struct arm_smmu_master *master)
>>  
>>  static bool arm_smmu_ats_supported(struct arm_smmu_master *master)
>>  {
>> -	struct pci_dev *pdev;
>> +	struct pci_dev *pdev __maybe_unused;
>>  	struct arm_smmu_device *smmu = master->smmu;
>>  	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(master->dev);
>>  
>> @@ -2321,8 +2321,10 @@ static bool arm_smmu_ats_supported(struct arm_smmu_master *master)
>>  	    !(fwspec->flags & IOMMU_FWSPEC_PCI_RC_ATS) || pci_ats_disabled())
>>  		return false;
>>  
>> +#ifdef CONFIG_PCI_ATS
>>  	pdev = to_pci_dev(master->dev);
>>  	return !pdev->untrusted && pdev->ats_cap;
>> +#endif
>>  }
> 
> Hmm, I really don't like the missing return statement here, even though we
> never get this far thanks to the feature not getting set during ->probe().
> I'd actually prefer just to duplicate the function:
> 
> #ifndef CONFIG_PCI_ATS
> static bool
> arm_smmu_ats_supported(struct arm_smmu_master *master) { return false; }
> #else
> <current code here>
> #endif
> 
> Can you send a v2 like that, please?

Ok, will send v2 as your suggestion.

> 
> Will
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
