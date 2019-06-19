Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5494B77A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 13:54:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ASGW74VekdL6dsN5Y+BGJAo3Q1dPse94vERlI/gQnLQ=; b=lh/sR4dEAN21O5
	PT380qIdp1nbr5vuYusXLO4E6YXI3e2CVsOMsBWV8yEU1UmNMvl8if3TUZbcmqbcmgqvdWaS7qE1i
	rz9BoX6aXfxe01NJyMbNbwkAvhHra2B6h5sxb7nA0ThDqbNZylIQSgGbpGilRMY6SLh5E8o3f3Xq5
	DgD/45jDzsX59yHtpVQ54jSEz3SwJ+1M1xWEuHpIUaxKBkuLnvpk58EJvvvrjfbMCkzZ2Lxua8uhj
	2nna3Fbc54divU2La3Sgv438HGNSsKpnvY7wIlnzhEn6+slpVLe12WYEyZu6Cjwd+lDlwlzOt3f5m
	/KP9aF8rQpKIIu31xqaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdZAY-0004m9-0o; Wed, 19 Jun 2019 11:54:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdZAP-0004lg-Gn
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 11:54:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 89DB6360;
 Wed, 19 Jun 2019 04:54:16 -0700 (PDT)
Received: from [10.1.196.129] (ostrya.cambridge.arm.com [10.1.196.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 71F893F738;
 Wed, 19 Jun 2019 04:56:01 -0700 (PDT)
Subject: Re: [PATCH 3/8] iommu/arm-smmu-v3: Support platform SSID
To: Will Deacon <will.deacon@arm.com>
References: <20190610184714.6786-1-jean-philippe.brucker@arm.com>
 <20190610184714.6786-4-jean-philippe.brucker@arm.com>
 <20190618180851.GK4270@fuggles.cambridge.arm.com>
From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
Message-ID: <73cfb797-5ae7-b9d9-01ea-fe98a1bed5c3@arm.com>
Date: Wed, 19 Jun 2019 12:53:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190618180851.GK4270@fuggles.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_045417_604009_D67AACF5 
X-CRM114-Status: GOOD (  15.18  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "jacob.jun.pan@linux.intel.com" <jacob.jun.pan@linux.intel.com>,
 "joro@8bytes.org" <joro@8bytes.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "eric.auger@redhat.com" <eric.auger@redhat.com>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Robin Murphy <Robin.Murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/06/2019 19:08, Will Deacon wrote:
>> +	/*
>> +	 * If the SMMU doesn't support 2-stage CD, limit the linear
>> +	 * tables to a reasonable number of contexts, let's say
>> +	 * 64kB / sizeof(ctx_desc) = 1024 = 2^10
>> +	 */
>> +	if (!(smmu->features & ARM_SMMU_FEAT_2_LVL_CDTAB))
>> +		master->ssid_bits = min(master->ssid_bits, 10U);
> 
> Please introduce a #define for the 10, so that it is computed in the way
> you describe in the comment (a bit like we do for things like queue sizes).

Ok

>> +
>>  	group = iommu_group_get_for_dev(dev);
>>  	if (!IS_ERR(group)) {
>>  		iommu_group_put(group);
>> diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
>> index f04a6df65eb8..04f4f6b95d82 100644
>> --- a/drivers/iommu/of_iommu.c
>> +++ b/drivers/iommu/of_iommu.c
>> @@ -206,8 +206,12 @@ const struct iommu_ops *of_iommu_configure(struct device *dev,
>>  			if (err)
>>  				break;
>>  		}
>> -	}
>>  
>> +		fwspec = dev_iommu_fwspec_get(dev);
>> +		if (!err && fwspec)
>> +			of_property_read_u32(master_np, "pasid-num-bits",
>> +					     &fwspec->num_pasid_bits);
>> +	}
> 
> Hmm. Do you know if there's anything in ACPI for this?

Yes, IORT version D introduced a "substream width" field for the Named
component node (platform device). I don't think it existed last time I
checked, so I'll see about supporting it.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
