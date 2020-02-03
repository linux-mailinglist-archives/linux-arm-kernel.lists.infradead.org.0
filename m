Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B472D15035E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 10:29:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3n6gGpJFhL67Bb1mTWhXyFrYjly25Ms5iW2vWtiWcQE=; b=VE5hiTWkq9P1Es
	1kRsBSA3GreCxW/AOGUXoyIxUWoCpuntFfZJZ4CyMem+zfLtBKsLKbDvhlm9/qJBPrkQpu6Clc6jF
	9QiOiyY8YmPWzZfsTF6LY1VqZA/B87KNLnCikFZf1y3+ceE1DfykAlKWMv/glrPL9zfsq9T3Gh2dj
	qj4B70gy0/WKXlcW0gcy6W887Q+/1SIJCXFjcCSo+2JCZOq5YfcAX6Jz7jHqWNCbEhzbSKGl6YhvD
	yBYmG+Vz7kXgJEzOmV1+CeYsitiWS5izd5ieOqG8jbyW8tKxOHL/WA8UZ4IJLFYMQuKzOmjB4RLD9
	m81LX3qKHxE7MPY2CzoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyY34-0004h8-Ok; Mon, 03 Feb 2020 09:29:42 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyY2w-0004c6-9I
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 09:29:36 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id ABD6F5AE96757775BE0F;
 Mon,  3 Feb 2020 17:29:13 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Mon, 3 Feb 2020
 17:29:07 +0800
Subject: Re: [PATCH] arm64: csum: Optimise IPv6 header checksum
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>
References: <3a723a4b08938154c37febe2504f029c4480e53c.1579546194.git.robin.murphy@arm.com>
 <20200121103421.GA11819@willie-the-truck>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Message-ID: <f55691eb-2ff4-39af-290a-176365009f30@hisilicon.com>
Date: Mon, 3 Feb 2020 17:29:07 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <20200121103421.GA11819@willie-the-truck>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_012934_892402_B95A9B16 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: catalin.marinas@arm.com, linux-arm-kernel@lists.infradead.org,
 huanglingyan2@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will/Robin,

My apologies for the slow reply because of the Spring Festival in China.

Robin's idea sounds nice, We will test it later because our machine
broke down.

Thanks,
Shaokun

On 2020/1/21 18:34, Will Deacon wrote:
> [+ Shaokun and Lingyan for review and testing feedback]
> 
> On Mon, Jan 20, 2020 at 06:52:29PM +0000, Robin Murphy wrote:
>> Throwing our __uint128_t idioms at csum_ipv6_magic() makes it
>> about 1.3x-2x faster across a range of microarchitecture/compiler
>> combinations. Not much in absolute terms, but every little helps.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
>>
>> Before I move on, this seemed like it might be worth touching as well,
>> comparing what other architectures do.
>>
>>  arch/arm64/include/asm/checksum.h |  7 ++++++-
>>  arch/arm64/lib/csum.c             | 27 +++++++++++++++++++++++++++
>>  2 files changed, 33 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/include/asm/checksum.h b/arch/arm64/include/asm/checksum.h
>> index 8d2a7de39744..b6f7bc6da5fb 100644
>> --- a/arch/arm64/include/asm/checksum.h
>> +++ b/arch/arm64/include/asm/checksum.h
>> @@ -5,7 +5,12 @@
>>  #ifndef __ASM_CHECKSUM_H
>>  #define __ASM_CHECKSUM_H
>>  
>> -#include <linux/types.h>
>> +#include <linux/in6.h>
>> +
>> +#define _HAVE_ARCH_IPV6_CSUM
>> +__sum16 csum_ipv6_magic(const struct in6_addr *saddr,
>> +			const struct in6_addr *daddr,
>> +			__u32 len, __u8 proto, __wsum sum);
>>  
>>  static inline __sum16 csum_fold(__wsum csum)
>>  {
>> diff --git a/arch/arm64/lib/csum.c b/arch/arm64/lib/csum.c
>> index 847eb725ce09..4a522e45f23b 100644
>> --- a/arch/arm64/lib/csum.c
>> +++ b/arch/arm64/lib/csum.c
>> @@ -121,3 +121,30 @@ unsigned int do_csum(const unsigned char *buff, int len)
>>  
>>  	return sum >> 16;
>>  }
>> +
>> +__sum16 csum_ipv6_magic(const struct in6_addr *saddr,
>> +			const struct in6_addr *daddr,
>> +			__u32 len, __u8 proto, __wsum csum)
>> +{
>> +	__uint128_t src, dst;
>> +	u64 sum = (__force u64)csum;
>> +
>> +	src = *(const __uint128_t *)saddr->s6_addr;
>> +	dst = *(const __uint128_t *)daddr->s6_addr;
>> +
>> +	sum += (__force u32)htonl(len);
>> +#ifdef __LITTLE_ENDIAN
>> +	sum += (u32)proto << 24;
>> +#else
>> +	sum += proto;
>> +#endif
>> +	src += (src >> 64) | (src << 64);
>> +	dst += (dst >> 64) | (dst << 64);
>> +
>> +	sum = accumulate(sum, src >> 64);
>> +	sum = accumulate(sum, dst >> 64);
>> +
>> +	sum += ((sum >> 32) | (sum << 32));
>> +	return csum_fold((__force __wsum)(sum >> 32));
>> +}
>> +EXPORT_SYMBOL(csum_ipv6_magic);
>> -- 
>> 2.23.0.dirty
>>
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
