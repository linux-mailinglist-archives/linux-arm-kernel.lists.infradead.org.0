Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17848191F6D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 03:48:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iHdpovoI1eemSI9kkQHM444jQDDgFe0nyoQrZkAOQME=; b=CsF6B2aba6zVJ1
	YC/WAGNwfXMQDoPbfle6aMpFahtjEv3UJR/tPWwXo5ktRXbtUOiVdsWk0i6JdRsQ6823yTutioXv1
	vCYu0cUF8agNrDHVTPLGYcwqx9x1xIt+M2sY0bMj3/MHzzDUIABpD8soRuH+wyhTZ75YCwvfr0oq3
	CDOehM20E3/XRe2e2d+tQFCSWtaCcDxeekgpYR0TvXlqMYkOukZV/7tbYFJhIt79i/6pwefyR/GL+
	9owJCwi4jAckyeHS8hWUZlzV7ySqNkbs4wbfphQc/NnnxVab+3hCnIa9p9Y+7PZ+/BO0j13TmuCUN
	LNNurHT4a5/oHzaI33ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGw5I-0002d7-7E; Wed, 25 Mar 2020 02:48:00 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGw59-0002bl-9A
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 02:47:53 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id D916CC1B1F67DC29052A;
 Wed, 25 Mar 2020 10:47:41 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.25) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.487.0; Wed, 25 Mar 2020
 10:47:32 +0800
Subject: Re: [RFC PATCH v4 3/6] arm64: Add level-hinted TLB invalidation
 helper to tlbi_user
To: Marc Zyngier <maz@kernel.org>
References: <20200324134534.1570-1-yezhenyu2@huawei.com>
 <20200324134534.1570-4-yezhenyu2@huawei.com> <20200324141939.51917225@why>
From: Zhenyu Ye <yezhenyu2@huawei.com>
Message-ID: <8cf6c576-f0e2-9a52-6919-cb5e27d2ffb5@huawei.com>
Date: Wed, 25 Mar 2020 10:47:31 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200324141939.51917225@why>
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_194751_496990_65F46941 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 linux-mm@kvack.org, guohanjun@huawei.com, will@kernel.org,
 linux-arch@vger.kernel.org, yuzhao@google.com, aneesh.kumar@linux.ibm.com,
 steven.price@arm.com, arm@kernel.org, Dave.Martin@arm.com, arnd@arndb.de,
 suzuki.poulose@arm.com, npiggin@gmail.com, zhangshaokun@hisilicon.com,
 broonie@kernel.org, rostedt@goodmis.org, prime.zeng@hisilicon.com,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 xiexiangyou@huawei.com, linux-kernel@vger.kernel.org,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2020/3/24 22:19, Marc Zyngier wrote:
> On Tue, 24 Mar 2020 21:45:31 +0800
> Zhenyu Ye <yezhenyu2@huawei.com> wrote:
> 
>> Add a level-hinted parameter to __tlbi_user, which only gets used
>> if ARMv8.4-TTL gets detected.
>>
>> ARMv8.4-TTL provides the TTL field in tlbi instruction to indicate
>> the level of translation table walk holding the leaf entry for the
>> address that is being invalidated.
>>
>> This patch set the default level value to 0.
>>
>> Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>
>> ---
>>  arch/arm64/include/asm/tlbflush.h | 42 ++++++++++++++++++++++++++-----
>>  1 file changed, 36 insertions(+), 6 deletions(-)
>>
>> diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
>> index a3f70778a325..d141c080e494 100644
>> --- a/arch/arm64/include/asm/tlbflush.h
>> +++ b/arch/arm64/include/asm/tlbflush.h
>> @@ -89,6 +89,36 @@
>>  		__tlbi(op,  arg);					\
>>  	} while(0)
>>  
>> +#define __tlbi_user_level(op, addr, level)				\
>> +	do {								\
>> +		u64 arg = addr;						\
>> +									\
>> +		if (!arm64_kernel_unmapped_at_el0())			\
>> +			break;						\
>> +									\
>> +		if (cpus_have_const_cap(ARM64_HAS_ARMv8_4_TTL) &&	\
>> +		    level) {						\
>> +			u64 ttl = level;				\
>> +									\
>> +			switch (PAGE_SIZE) {				\
>> +			case SZ_4K:					\
>> +				ttl |= 1 << 2;				\
>> +				break;					\
>> +			case SZ_16K:					\
>> +				ttl |= 2 << 2;				\
>> +				break;					\
>> +			case SZ_64K:					\
>> +				ttl |= 3 << 2;				\
>> +				break;					\
>> +			}						\
>> +									\
>> +			arg &= ~TLBI_TTL_MASK;				\
>> +			arg |= FIELD_PREP(TLBI_TTL_MASK, ttl);		\
>> +		}							\
>> +									\
>> +		__tlbi(op,  (arg) | USER_ASID_FLAG);
>> 	\
>> +	} while (0)
>> +
> 
> Isn't this just:
> 
> define __tlbi_user_level(op, addr, level)			\
> 	do {							\
> 		if (!arm64_kernel_unmapped_at_el0())		\
> 			break;					\
> 								\
> 		__tlbi_level(op, addr | USER_ASID_FLAG, level);	\
> 	} while (0)
> 
> Thanks,
> 
> 	M.
> 

Yeah, your code is more clear!  I will take it in next version. ;-)

Thanks,
zhenyu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
