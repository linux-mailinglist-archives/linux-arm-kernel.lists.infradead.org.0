Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6262F1F792B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 15:58:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MdwwJ8V6LWT8IT59/EtscgZWTah0AESXYQKExF9Efc4=; b=jzawRSvsPqDpvC5Z7QwCqoU3b
	uUBSloBcYCPQAYkuwKXrK3+Fu6mpnLqYntuNZwXT5XCJf8cRITGmP1FJ3X8DMkrfSUikXQErkyD81
	UdicUowE6SHuAdo4ENadGW7ZPUqavBqCAwg4DYZALHzhW9VBBOKc7vbN5ufRNrVXv8O/mC2GvwoH9
	WFbPMZS2cNB6KxLR/04Mwq3033wIEpn4UIP/OEbjQdyepmshO0tLjAUP/3u6hY3bzAwk59ETDh3M/
	iE+fuZRKM2W8sVKdyXSs6gNhoFnvWof+fTF4N2k/d0gudaEJFnOFbQoT2oDoV2Umkki+cjbVWUSEn
	SQf2BoI6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjkCO-0007wj-Qf; Fri, 12 Jun 2020 13:58:24 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjkBb-0007WK-J0
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 13:57:41 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591970256; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=Nnwzt7zuQMOUqUoSvTtGqjQ2ZaQh545isYVqaS3gMII=;
 b=NnsvIN6VO2Mo44u4Ka5MeOS9QV5egFH/BYnXHwBydMvBixmOCo3FvYtMd3mNFx3mZqA6ZCnk
 CQPsWi4esqCUumVKdzJk7WlUCAA98NijnAE8P2aer8MsL9tjM8qe1wc6txl+s2AhCd2Hmd5C
 juYUvy70kW2N+ubhR+y9PNDrP0I=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-east-1.postgun.com with SMTP id
 5ee389cba3d8a4474390599f (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 12 Jun 2020 13:57:31
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id C4A06C43391; Fri, 12 Jun 2020 13:57:30 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.213.44.202] (unknown [202.46.22.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sthombre)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 97A90C433CB;
 Fri, 12 Jun 2020 13:57:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 97A90C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sthombre@codeaurora.org
Subject: Re: [PATCH] arm64: mm: reset address tag set by kasan sw tagging
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1591787384-5823-1-git-send-email-sthombre@codeaurora.org>
 <20200610113626.GI26099@gaia>
From: Shyam Thombre <sthombre@codeaurora.org>
Message-ID: <809f4dc3-cba1-25b9-36cf-492e3b434530@codeaurora.org>
Date: Fri, 12 Jun 2020 19:27:14 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200610113626.GI26099@gaia>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_065736_151199_D19A9FD0 
X-CRM114-Status: GOOD (  18.87  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.27 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, sashal@kernel.org, anshuman.khandual@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, jcrouse@codeaurora.org,
 ard.biesheuvel@arm.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,


On 6/10/2020 5:06 PM, Catalin Marinas wrote:
> On Wed, Jun 10, 2020 at 04:39:44PM +0530, Shyam Thombre wrote:
>> KASAN sw tagging sets a random tag of 8 bits in the top byte of the pointer
>> returned by the memory allocating functions. So for the functions unaware
>> of this change, the top 8 bits of the address must be reset which is done
>> by the function arch_kasan_reset_tag().
>>
>> Signed-off-by: Shyam Thombre <sthombre@codeaurora.org>
>> ---
>>   arch/arm64/mm/mmu.c | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
>> index e7fbc62..eae7655 100644
>> --- a/arch/arm64/mm/mmu.c
>> +++ b/arch/arm64/mm/mmu.c
>> @@ -723,6 +723,7 @@ int kern_addr_valid(unsigned long addr)
>>   	pmd_t *pmdp, pmd;
>>   	pte_t *ptep, pte;
>>   
>> +	addr = arch_kasan_reset_tag(addr);
>>   	if ((((long)addr) >> VA_BITS) != -1UL)
>>   		return 0;
> 
> It would be interesting to know what fails without this patch. The only
> user seems to be read_kcore() and, at a quick look, I don't see how it
> can generate tagged addresses.
> 

This issue is seen in downstream GPU drivers. It currently doesn't look 
to impact any upstream users.


-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
