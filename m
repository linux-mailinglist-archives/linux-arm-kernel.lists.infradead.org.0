Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 832362AF45
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 09:15:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=228wx2bP4fylgCiCiWapjfc5E21F9XJN7PEWSGGJZLU=; b=uLQ3DnCpAafyKn
	BoD61eASNoXXWEXqgQC9YZg8QqRFjL3jT36d0GGXHy99Z3w9uDSTNe20mR+MEZwlIrTSNILVu03L5
	WJIru85++YogObpgXadl2+V3HOTv0h+fQEgbMD/ayEkieof4mP7wqr8hHC4wCXwCn8Z5PHzPfBYDW
	xw0HWh1zLEIYFe3w61bXtI2Vmmz9cqTHlFRHzZdpWnqDf/PZtLGg7IHBgLaHvN9bE5eXTYoQisBqb
	64QNr6HJ690scP3cEJ/A9WWHMskGbp+NLDgjHfeVq/M5kV5dAadBQxMWh2Dr1ifiXO9rBaq/joICr
	Lrg/5VT5j8QHebgEKHIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV9qi-0000we-8V; Mon, 27 May 2019 07:15:12 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV9qZ-00004w-4o
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 07:15:04 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 9B8B216F5327146B6375;
 Mon, 27 May 2019 15:14:56 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0; Mon, 27 May 2019
 15:14:50 +0800
Subject: Re: [PATCH v3 2/2] arm64: cacheinfo: Update cache_line_size detected
 from DT or PPTT
To: Greg KH <gregkh@linuxfoundation.org>
References: <1558922768-29155-1-git-send-email-zhangshaokun@hisilicon.com>
 <1558922768-29155-2-git-send-email-zhangshaokun@hisilicon.com>
 <20190527060829.GA8106@kroah.com>
From: Zhangshaokun <zhangshaokun@hisilicon.com>
Message-ID: <dd27d90c-e712-7aa5-b647-925042bb8669@hisilicon.com>
Date: Mon, 27 May 2019 15:14:50 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <20190527060829.GA8106@kroah.com>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_001503_417943_8F6D198A 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, Zhenfa Qiu <qiuzhenfa@hisilicon.com>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,

On 2019/5/27 14:08, Greg KH wrote:
> On Mon, May 27, 2019 at 10:06:08AM +0800, Shaokun Zhang wrote:
>> cache_line_size is derived from CTR_EL0.CWG field and is called mostly
>> for I/O device drivers. For HiSilicon certain plantform, like the
>> Kunpeng920 server SoC, cache line sizes are different between L1/2
>> cache and L3 cache while L1 cache line size is 64-byte and L3 is 128-byte,
>> but CTR_EL0.CWG is misreporting using L1 cache line size.
>>
>> We shall correct the right value which is important for I/O performance.
>> Let's update the cache line size if it is detected from DT or PPTT
>> information.
>>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will.deacon@arm.com>
>> Cc: Sudeep Holla <sudeep.holla@arm.com>
>> Cc: Jeremy Linton <jeremy.linton@arm.com>
>> Cc: Zhenfa Qiu <qiuzhenfa@hisilicon.com>
>> Reported-by: Zhenfa Qiu <qiuzhenfa@hisilicon.com>
>> Suggested-by: Catalin Marinas <catalin.marinas@arm.com>
>> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
>> ---
>>  arch/arm64/include/asm/cache.h |  6 +-----
>>  arch/arm64/kernel/cacheinfo.c  | 11 +++++++++++
>>  2 files changed, 12 insertions(+), 5 deletions(-)
>>
>> diff --git a/arch/arm64/include/asm/cache.h b/arch/arm64/include/asm/cache.h
>> index 926434f413fa..758af6340314 100644
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
>> +int cache_line_size(void);
>>  
>>  /*
>>   * Read the effective value of CTR_EL0.
>> diff --git a/arch/arm64/kernel/cacheinfo.c b/arch/arm64/kernel/cacheinfo.c
>> index 0bf0a835122f..3d54b0024246 100644
>> --- a/arch/arm64/kernel/cacheinfo.c
>> +++ b/arch/arm64/kernel/cacheinfo.c
>> @@ -28,6 +28,17 @@
>>  #define CLIDR_CTYPE(clidr, level)	\
>>  	(((clidr) & CLIDR_CTYPE_MASK(level)) >> CLIDR_CTYPE_SHIFT(level))
>>  
>> +int cache_line_size(void)
>> +{
>> +	u32 cwg = cache_type_cwg();
>> +
>> +	if (coherency_max_size != 0)
>> +		return coherency_max_size;
> 
> Ah, you use it here.
> 

Yeah, we check it here.

>> +
>> +	return cwg ? 4 << cwg : ARCH_DMA_MINALIGN;
> 
> Shouldn't you set the variable if it is 0 here as well?
> 

As discussed this with Catalin,
https://www.spinics.net/lists/arm-kernel/msg723848.html

I think it is unnecessary, if coherency_max_size is not detected from firmware,
We will return the cpu core reporting value as the cache line size and
coherency_max_size won't be used in other place.

>> +}
>> +EXPORT_SYMBOL(cache_line_size);
> 
> EXPORT_SYMBOL_GPL()?
> 

Ok.

Thanks,
Shaokun

> thanks,
> 
> greg k-h
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
