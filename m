Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FD2158B4F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 09:35:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T+a3P4ojVA13aNxclA22CbYgg4B89/06MGkReR8xePk=; b=Vdwjr7eb5pAEei
	d1sg4qw5trjl116nGxy7wCtqDM1h3Xpq39MTZxn7AeB0jTXQfEcECePrhUOlUp6uLVb6bPKqDiUTH
	vf6zjWWdyiBA27r1yZODdKJgXP5NQIgF6DfPhkCZNKani1T7d+ajI3een3NS1jx/BX/1MguEOnt7v
	SFhdTIQPAVwE3Ib1xMsPRtOO+yIDdWLo8Nc++GityhJUt/p25J6mQqifeKJHjDA9G6v5YLUbF369m
	I4OwLyZq53FTglJO3i7DPQlP0Rh2B7CBZLluAAzslyxaF84bI1ilrZvTvpzYG2gdOeKO/6U8MTECM
	ZAlfQ7S4npXwIApmLv8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1R14-0003JX-7H; Tue, 11 Feb 2020 08:35:34 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1R0w-0003It-Ol
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 08:35:28 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 07D6CA2B1162CF7E61FF;
 Tue, 11 Feb 2020 16:35:15 +0800 (CST)
Received: from [127.0.0.1] (10.177.131.64) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Tue, 11 Feb 2020
 16:35:08 +0800
Subject: Re: [PATCH] arm64: csum: Optimise IPv6 header checksum
To: Shaokun Zhang <zhangshaokun@hisilicon.com>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>
References: <3a723a4b08938154c37febe2504f029c4480e53c.1579546194.git.robin.murphy@arm.com>
 <20200121103421.GA11819@willie-the-truck>
 <f55691eb-2ff4-39af-290a-176365009f30@hisilicon.com>
From: Chen Zhou <chenzhou10@huawei.com>
Message-ID: <0ea2156e-43e9-a4d3-e527-c61d1825bd4d@huawei.com>
Date: Tue, 11 Feb 2020 16:35:06 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <f55691eb-2ff4-39af-290a-176365009f30@hisilicon.com>
X-Originating-IP: [10.177.131.64]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_003526_976337_C7CBF22B 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: wxf.wang@hisilicon.com, catalin.marinas@arm.com,
 Hanjun Guo <guohanjun@huawei.com>, linux-arm-kernel@lists.infradead.org,
 huanglingyan2@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will/Robin/Shaokun,

Shaokun's machine broken down, so i tested it.

On KunPeng920 board, the optimised ipv6 header checksum can get
about 1.2 times performance gain and my gcc version is 7.3.0.

Thanks,
Chen Zhou

On 2020/2/3 17:29, Shaokun Zhang wrote:
> Hi Will/Robin,
> 
> My apologies for the slow reply because of the Spring Festival in China. 
> 
> Robin's idea sounds nice, We will test it later because our machine
> broke down.
> 
> Thanks,
> Shaokun
> 
> On 2020/1/21 18:34, Will Deacon wrote:
>> [+ Shaokun and Lingyan for review and testing feedback]
>>
>> On Mon, Jan 20, 2020 at 06:52:29PM +0000, Robin Murphy wrote:
>>> Throwing our __uint128_t idioms at csum_ipv6_magic() makes it
>>> about 1.3x-2x faster across a range of microarchitecture/compiler
>>> combinations. Not much in absolute terms, but every little helps.
>>>
>>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>>> ---
>>>
>>> Before I move on, this seemed like it might be worth touching as well,
>>> comparing what other architectures do.
>>>
>>>  arch/arm64/include/asm/checksum.h |  7 ++++++-
>>>  arch/arm64/lib/csum.c             | 27 +++++++++++++++++++++++++++
>>>  2 files changed, 33 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm64/include/asm/checksum.h b/arch/arm64/include/asm/checksum.h
>>> index 8d2a7de39744..b6f7bc6da5fb 100644
>>> --- a/arch/arm64/include/asm/checksum.h
>>> +++ b/arch/arm64/include/asm/checksum.h
>>> @@ -5,7 +5,12 @@
>>>  #ifndef __ASM_CHECKSUM_H
>>>  #define __ASM_CHECKSUM_H
>>>  
>>> -#include <linux/types.h>
>>> +#include <linux/in6.h>
>>> +
>>> +#define _HAVE_ARCH_IPV6_CSUM
>>> +__sum16 csum_ipv6_magic(const struct in6_addr *saddr,
>>> +			const struct in6_addr *daddr,
>>> +			__u32 len, __u8 proto, __wsum sum);
>>>  
>>>  static inline __sum16 csum_fold(__wsum csum)
>>>  {
>>> diff --git a/arch/arm64/lib/csum.c b/arch/arm64/lib/csum.c
>>> index 847eb725ce09..4a522e45f23b 100644
>>> --- a/arch/arm64/lib/csum.c
>>> +++ b/arch/arm64/lib/csum.c
>>> @@ -121,3 +121,30 @@ unsigned int do_csum(const unsigned char *buff, int len)
>>>  
>>>  	return sum >> 16;
>>>  }
>>> +
>>> +__sum16 csum_ipv6_magic(const struct in6_addr *saddr,
>>> +			const struct in6_addr *daddr,
>>> +			__u32 len, __u8 proto, __wsum csum)
>>> +{
>>> +	__uint128_t src, dst;
>>> +	u64 sum = (__force u64)csum;
>>> +
>>> +	src = *(const __uint128_t *)saddr->s6_addr;
>>> +	dst = *(const __uint128_t *)daddr->s6_addr;
>>> +
>>> +	sum += (__force u32)htonl(len);
>>> +#ifdef __LITTLE_ENDIAN
>>> +	sum += (u32)proto << 24;
>>> +#else
>>> +	sum += proto;
>>> +#endif
>>> +	src += (src >> 64) | (src << 64);
>>> +	dst += (dst >> 64) | (dst << 64);
>>> +
>>> +	sum = accumulate(sum, src >> 64);
>>> +	sum = accumulate(sum, dst >> 64);
>>> +
>>> +	sum += ((sum >> 32) | (sum << 32));
>>> +	return csum_fold((__force __wsum)(sum >> 32));
>>> +}
>>> +EXPORT_SYMBOL(csum_ipv6_magic);
>>> -- 
>>> 2.23.0.dirty
>>>
>>
>> .
>>
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
