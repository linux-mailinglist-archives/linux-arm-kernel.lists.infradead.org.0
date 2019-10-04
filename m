Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 456C8CB894
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 12:48:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QesIXHbBUg0TdrGiP2yPalPus1xMsxNeAy2CQNAJO7o=; b=S1Ph30CFHJiZ3q
	7T/fba2PclhD5vBN79kOZJiSPmQ6yu0OXRJPnV8/c/AoFJOO2aDtYLn7GeHmm/Ulq3RYWgKdlB1g7
	z8KBLl8LRZKeLvi6WOMW+20rXX28jb48kktgRlZxpl0Q5ZuO5roLjgIDu2IPTC3LDDa+v0KW2Sybg
	XBfCfD4fya+MJndt+qdjgaTXunlVeUjdaW0w6OXl+dGn30OaKb4+davJ2YiMw2XXwkm1x7bebiJpf
	yKLwST/cshBPTIRbe2M3HTa1aVgBZ1qPifSSRwDfTucLtuq9WUCBpMU6qgwjYMIEDRAifXCNmVGoA
	JvooZqWDaH2BtcoKjkaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGL7o-0004Ua-FT; Fri, 04 Oct 2019 10:47:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGL7f-0004Tz-Tt
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 10:47:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 420C915A1;
 Fri,  4 Oct 2019 03:47:43 -0700 (PDT)
Received: from [10.163.1.5] (unknown [10.163.1.5])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 61DF33F706;
 Fri,  4 Oct 2019 03:47:41 -0700 (PDT)
Subject: Re: [PATCH] arm64/mm: Poison initmem while freeing with
 free_reserved_area()
To: Steven Price <steven.price@arm.com>, linux-arm-kernel@lists.infradead.org
References: <1570163038-32067-1-git-send-email-anshuman.khandual@arm.com>
 <600676fd-1b39-74f4-49a7-3c807ee24cff@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <50d88564-c645-62f4-b5b3-3ce7a4425b0a@arm.com>
Date: Fri, 4 Oct 2019 16:18:01 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <600676fd-1b39-74f4-49a7-3c807ee24cff@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_034744_007674_037F86F9 
X-CRM114-Status: GOOD (  18.76  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/04/2019 03:49 PM, Steven Price wrote:
> On 04/10/2019 05:23, Anshuman Khandual wrote:
>> Platform implementation for free_initmem() should poison the memory while
>> freeing it up. Hence pass across POISON_FREE_INITMEM while calling into
>> free_reserved_area(). The same is being followed in the generic fallback
>> for free_initmem() and some other platforms overriding it.
>>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will@kernel.org>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: linux-kernel@vger.kernel.org
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> 
> Is there a good reason you haven't made a similar change to
> free_initrd_mem() - the same logic seems to apply. However this change
> looks fine to me.

We will use generic free_initrd_mem() going forward as proposed in a recent
patch which does call free_reserved_area() with POISON_FREE_INITMEM.

https://patchwork.kernel.org/patch/11165379/

> 
> Reviewed-by: Steven Price <steven.price@arm.com>
> 
>> ---
>>  arch/arm64/mm/init.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
>> index 45c00a54909c..ea7d38011e83 100644
>> --- a/arch/arm64/mm/init.c
>> +++ b/arch/arm64/mm/init.c
>> @@ -571,7 +571,7 @@ void free_initmem(void)
>>  {
>>  	free_reserved_area(lm_alias(__init_begin),
>>  			   lm_alias(__init_end),
>> -			   0, "unused kernel");
>> +			   POISON_FREE_INITMEM, "unused kernel");
>>  	/*
>>  	 * Unmap the __init region but leave the VM area in place. This
>>  	 * prevents the region from being reused for kernel modules, which
>>
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
