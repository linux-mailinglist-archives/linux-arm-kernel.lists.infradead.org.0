Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9C3EE6B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 03:32:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fYDRlyan1FJ7lHXc1QZdLu45enWsM7IU17fHIvTMgXo=; b=VwQ+7SWNsM0u4O
	W0sBkvBIZqNtnITq1PyCCfJ+KfLpXWIy4asiYZE0OFcWFU0P27LV6yiKrmr4aI37BtVi88xnhtr4w
	fMlOsJu6lQOVlVZNLGo5WD25OjJLVLiPeLghfJckYTF/li15jZev74BkNoIE2F4q78+BAxOeWrkQC
	rJJoxML5/hBa7G+t4H+dVLVcFpkN6b4ROv2QHpW/OrIxcZDDeIRHAS//X3db3HrfD8KjoNEA8z43q
	fQIsieQXeQ5R7/NefD4n+8Oyyo0wg2qW+uS0+zxuYNCuATuVFVeqAgkB9mE1jgdEiKA8qZDn/gD7l
	3EhXxwMPh+oHVHf7sUAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLHdB-0006BE-TQ; Tue, 30 Apr 2019 01:32:25 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLHd5-0006Am-9H
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 01:32:21 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 2E75528EDC33F8A37B35;
 Tue, 30 Apr 2019 09:32:09 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Tue, 30 Apr 2019
 09:32:03 +0800
Subject: Re: [PATCH 2/2] arm64: cacheinfo: Update cache_line_size detected
 from PPTT
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1556242821-5080-1-git-send-email-zhangshaokun@hisilicon.com>
 <1556242821-5080-2-git-send-email-zhangshaokun@hisilicon.com>
 <20190427161636.blc7dqsq7os4wvho@mbp>
From: Zhangshaokun <zhangshaokun@hisilicon.com>
Message-ID: <97f0c014-1c2c-bf62-bddc-e15f4541f754@hisilicon.com>
Date: Tue, 30 Apr 2019 09:32:03 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <20190427161636.blc7dqsq7os4wvho@mbp>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_183219_496771_19B75C39 
X-CRM114-Status: GOOD (  12.76  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: john.garry@huawei.com, Will Deacon <will.deacon@arm.com>,
 qiuzhenfa@hisilicon.com, linux-arm-kernel@lists.infradead.org,
 guohanjun@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

On 2019/4/28 0:16, Catalin Marinas wrote:
> On Fri, Apr 26, 2019 at 09:40:21AM +0800, Shaokun Zhang wrote:
>> diff --git a/arch/arm64/include/asm/cache.h b/arch/arm64/include/asm/cache.h
>> index 926434f413fa..f120d48b27ac 100644
>> --- a/arch/arm64/include/asm/cache.h
>> +++ b/arch/arm64/include/asm/cache.h
>> @@ -91,11 +91,7 @@ static inline u32 cache_type_cwg(void)
>>  
>>  #define __read_mostly __attribute__((__section__(".data..read_mostly")))
>>  
>> -static inline int cache_line_size(void)
>> -{
>> -	u32 cwg = cache_type_cwg();
>> -	return cwg ? 4 << cwg : ARCH_DMA_MINALIGN;
>> -}
>> +extern int cache_line_size(void);
> 
> Nitpick: no need for 'extern' on function prototypes.
> 

Oh, yes, my bad mistake.

>>  /*
>>   * Read the effective value of CTR_EL0.
>> diff --git a/arch/arm64/kernel/cacheinfo.c b/arch/arm64/kernel/cacheinfo.c
>> index 0bf0a835122f..0b26d53790a8 100644
>> --- a/arch/arm64/kernel/cacheinfo.c
>> +++ b/arch/arm64/kernel/cacheinfo.c
>> @@ -28,6 +28,21 @@
>>  #define CLIDR_CTYPE(clidr, level)	\
>>  	(((clidr) & CLIDR_CTYPE_MASK(level)) >> CLIDR_CTYPE_SHIFT(level))
>>  
>> +int cache_line_size(void)
>> +{
>> +	u32 cwg = cache_type_cwg();
>> +
>> +	if (cwg == 0)
>> +		return ARCH_DMA_MINALIGN;
>> +#ifdef CONFIG_ACPI
>> +	/* compare cache line size detected from PPTT with CWG reporting */
>> +	if (coherency_max_size > (4 << cwg))
>> +		return coherency_max_size;
>> +#endif
>> +
>> +	return 4 << cwg;
>> +}
> 
> I'd rather have cache_line_size() report the PPTT information if
> available, ignoring CWG with a fallback to the latter if not available.
> 

Okay, got it, I will follow it in next version.

> We don't use cache_line_size() for DMA cache coherency, only
> performance, so I think it's safe to return a value smaller than CWG in
> cache_line_size().

Agree, a nice idea.

Thanks,
Shaokun

> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
