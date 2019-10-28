Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2BF6E78C8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 19:52:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LjTOf0hebv08dOtkuY4R0c7wjSlufVEEXB8tOryt2lc=; b=nusHJslx5NORr/gbx3LU3/nNV
	QCWt4hZ6Wk9ztZ14JHL1nR6Vpu8LKlbbS2KvZE8K5KybLLOuKVmyHlne8Htn5qORq4+r9OR3yJsv3
	MQAhnaNAmuq1W2pOUV0Ee1NpoI0ceJ3fMkytGmIOUb7tR928qkeEgttB3evTQxi0exUKwxrvohXUH
	Umn9A89JG4M6QFu6YmfK7jsa2C2KJuyY36U2ffPK5/zCHcIReYgBjG2/G/0l1iqov2YYq50+Fn7wd
	IbYw1pSjRvoyECtrA8Gn6iI/ozSAJKeEWtGjgEXPU+XXI+pcH1j51PJj0VjTtVmrZ7E6owyFkgamk
	zzO4v3CbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPA7c-0004C8-3e; Mon, 28 Oct 2019 18:52:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPA7S-0004Bk-5m
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 18:51:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EDA7B1F1;
 Mon, 28 Oct 2019 11:51:56 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 61A103F71F;
 Mon, 28 Oct 2019 11:51:56 -0700 (PDT)
Subject: Re: [PATCH v2 08/10] iommu/io-pgtable-arm: Rationalise TTBRn handling
To: Steven Price <steven.price@arm.com>, will@kernel.org
References: <cover.1572024119.git.robin.murphy@arm.com>
 <74ada0e6c488a2310206a553eb108cc28fd52457.1572024120.git.robin.murphy@arm.com>
 <5324d888-857a-b07c-439c-4ae4ea3a9784@arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <a74dcecd-7061-ce4b-85e1-deaadd0f71a4@arm.com>
Date: Mon, 28 Oct 2019 18:51:55 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <5324d888-857a-b07c-439c-4ae4ea3a9784@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_115158_262045_1AD51F1D 
X-CRM114-Status: GOOD (  15.96  )
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
Cc: iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/10/2019 15:09, Steven Price wrote:
[...]
>> --- a/drivers/iommu/io-pgtable-arm-v7s.c
>> +++ b/drivers/iommu/io-pgtable-arm-v7s.c
>> @@ -822,15 +822,13 @@ static struct io_pgtable *arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
>>   	/* Ensure the empty pgd is visible before any actual TTBR write */
>>   	wmb();
>>   
>> -	/* TTBRs */
>> -	cfg->arm_v7s_cfg.ttbr[0] = virt_to_phys(data->pgd) |
>> -				   ARM_V7S_TTBR_S | ARM_V7S_TTBR_NOS |
>> -				   (cfg->coherent_walk ?
>> -				   (ARM_V7S_TTBR_IRGN_ATTR(ARM_V7S_RGN_WBWA) |
>> -				    ARM_V7S_TTBR_ORGN_ATTR(ARM_V7S_RGN_WBWA)) :
>> -				   (ARM_V7S_TTBR_IRGN_ATTR(ARM_V7S_RGN_NC) |
>> -				    ARM_V7S_TTBR_ORGN_ATTR(ARM_V7S_RGN_NC)));
>> -	cfg->arm_v7s_cfg.ttbr[1] = 0;
>> +	/* TTBR */
>> +	cfg->arm_v7s_cfg.ttbr = virt_to_phys(data->pgd) | ARM_V7S_TTBR_S |
>> +				(cfg->coherent_walk ? (ARM_V7S_TTBR_NOS |
>> +				  ARM_V7S_TTBR_IRGN_ATTR(ARM_V7S_RGN_WBWA) |
>> +				  ARM_V7S_TTBR_ORGN_ATTR(ARM_V7S_RGN_WBWA)) :
>> +				 (ARM_V7S_TTBR_IRGN_ATTR(ARM_V7S_RGN_NC) |
>> +				  ARM_V7S_TTBR_ORGN_ATTR(ARM_V7S_RGN_NC)));
> 
> ARM_V7S_TTBR_NOS seems to have sneaked into the cfg->coherent_walk
> condition here - which you haven't mentioned in the commit log, so it
> doesn't look like it should be in this commit.

Ah, yes, it's taken a while to remember whether this was something 
important that got muddled up in rebasing, but it's actually just 
trivial cleanup. For !coherent_walk, the non-cacheable output attribute 
makes shareable accesses implicitly outer-shareable, so setting TTBR.NOS 
for that case actually does nothing except look misleading. Thus this is 
essentially just a cosmetic change included in the reformatting for 
clarity and consistency with the LPAE version. I'll call that out in the 
commit message, thanks for spotting!

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
