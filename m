Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF759107539
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 16:51:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y6cUsrBxvNeh0wG8MwL5rzoEcMRnUmvb9sBQGp7M1dc=; b=A/zzBjh60cmNk8Su5Xb6NP5rv
	59g1TQM/9ivI3BxD/DUHv3wuVH8gA3xWZYjrapU6m1m50CdtuTP3NR18er862ZkMpMS8wKqHpyLBv
	Z3GJaWDZsBuOdPnUb9bh0MStnfxXT8hSYooD25uCLCb+IxuJ7DoLqqwUHbRxSQ6+2loXq6L6zbr31
	OVAfnwwtv23wt5wvwnbgbhRw4xeYU1EEPEE7PV982Tj/gzqD0/7WPiELzDE2jH/Nzr1F3tcOjNt8F
	1PIcrZn0DpsMTUb6ADVtT4R1jD5abuF8G3C72+YN1vqHfGaBKCaW7D76Gc8Q+Qq/W4K73m86FMfuL
	2q67Wsz2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYBDj-0002Mx-Gh; Fri, 22 Nov 2019 15:51:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYBDY-0002Me-HG
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 15:51:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 37BE6DA7;
 Fri, 22 Nov 2019 07:51:31 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B60F53F6C4;
 Fri, 22 Nov 2019 07:51:30 -0800 (PST)
Subject: Re: [PATCH v2 09/10] iommu/io-pgtable-arm: Rationalise TCR handling
To: Will Deacon <will@kernel.org>, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
References: <cover.1572024119.git.robin.murphy@arm.com>
 <84e56eb993fff3660376ffad3e915b972d29b008.1572024120.git.robin.murphy@arm.com>
 <20191104191444.GI24909@willie-the-truck>
 <20191104232756.GB16446@jcrouse1-lnx.qualcomm.com>
 <20191120151142.GA26714@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <6e14584c-6942-b3b5-5691-faec4fc345f1@arm.com>
Date: Fri, 22 Nov 2019 15:51:26 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191120151142.GA26714@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_075132_616280_E1E95A64 
X-CRM114-Status: GOOD (  13.23  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/11/2019 3:11 pm, Will Deacon wrote:
> On Mon, Nov 04, 2019 at 04:27:56PM -0700, Jordan Crouse wrote:
>> On Mon, Nov 04, 2019 at 07:14:45PM +0000, Will Deacon wrote:
>>> On Fri, Oct 25, 2019 at 07:08:38PM +0100, Robin Murphy wrote:
>>>> diff --git a/drivers/iommu/qcom_iommu.c b/drivers/iommu/qcom_iommu.c
>>>> index 9a57eb6c253c..059be7e21030 100644
>>>> --- a/drivers/iommu/qcom_iommu.c
>>>> +++ b/drivers/iommu/qcom_iommu.c
>>>> @@ -271,15 +271,13 @@ static int qcom_iommu_init_domain(struct iommu_domain *domain,
>>>>   		iommu_writeq(ctx, ARM_SMMU_CB_TTBR0,
>>>>   				pgtbl_cfg.arm_lpae_s1_cfg.ttbr |
>>>>   				FIELD_PREP(TTBRn_ASID, ctx->asid));
>>>> -		iommu_writeq(ctx, ARM_SMMU_CB_TTBR1,
>>>> -				FIELD_PREP(TTBRn_ASID, ctx->asid));
>>>> +		iommu_writeq(ctx, ARM_SMMU_CB_TTBR1, 0);
>>>
>>> Are you sure it's safe to drop the ASID here? Just want to make sure there
>>> wasn't some "quirk" this was helping with.
>>
>> I was reminded of this recently. Some of our SMMU guys told me that a 0x0 in
>> TTBR1 could cause a S2 fault if a faulty transaction caused a ttbr1 lookup so
>> the "quirk" was writing the ASID so the register wasn't zero. I'm not sure if
>> this is a vendor specific blip or not.
> 
> You should be able to set EPD1 to prevent walks via TTBR1 in that case,
> though. Sticking the ASID in there is still dodgy if EPD1 is clear and
> TTBR1 points at junk (or even physical address 0x0).
> 
> That's probably something which should be folded into this patch.

Note that EPD1 was being set by io-pgtable-arm before this patch, and 
remains set by virtue of arm_smmu_lpae_tcr() afterwards, so presumably 
the brokenness might run a bit deeper than that. Either way, though, I'm 
somewhat dubious since the ASID could well be 0 anyway :/

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
