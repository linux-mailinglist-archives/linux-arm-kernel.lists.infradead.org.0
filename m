Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1C01CD9AB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 14:26:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x29ZCR9ay1VcvHlQ2CezR565rUJDxOsuFpRXv1DJml8=; b=hFSjzoJ/pJHGPl
	89BN1419AD9cF9FOvJA0xQE7M8C/XOhzz3+4wJcx9as6DxFUoBRdaiUscdVze/zr5gC5z4v/bIx4R
	8tiQBt4J8RUcRDkXdrFtrZV01UOSkqd8Hj83qTf9+9noYkgl3etiXsMoxhRYBsjbb7DbxkVMJ3yMC
	NnVxh8CIjf/E96D7Q+E5D2RmnehgtLt6mcy+ffMfTdSl2P5mrImfEcoXTw1ANtNn4qg38+ukdDSMq
	I4XeULLPOJ513LqfvrCiXzQYudiJPEY7riXFaPRHYAI5A7E2ldXfbwlGO2ipjjnHtjuvXTb8s6sFr
	v8bUkITveXO9PIsqI9aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY7VN-0002xN-Hu; Mon, 11 May 2020 12:25:57 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY7VD-0002wQ-9Q
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 12:25:48 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 009F7FA603E696F8AFB2;
 Mon, 11 May 2020 20:25:43 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.25) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.487.0; Mon, 11 May 2020
 20:25:32 +0800
Subject: Re: [RFC PATCH v3 1/2] arm64: tlb: Detect the ARMv8.4 TLBI RANGE
 feature
To: Mark Rutland <mark.rutland@arm.com>
References: <20200414112835.1121-1-yezhenyu2@huawei.com>
 <20200414112835.1121-2-yezhenyu2@huawei.com>
 <20200505101405.GB82424@C02TD0UTHF1T.local>
From: Zhenyu Ye <yezhenyu2@huawei.com>
Message-ID: <cb9d32b6-a9d8-3737-e69d-df4191b7afa9@huawei.com>
Date: Mon, 11 May 2020 20:25:30 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200505101405.GB82424@C02TD0UTHF1T.local>
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_052547_485339_434E0AB0 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arch@vger.kernel.org, maz@kernel.org, suzuki.poulose@arm.com,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, xiexiangyou@huawei.com,
 steven.price@arm.com, zhangshaokun@hisilicon.com, linux-mm@kvack.org,
 arm@kernel.org, prime.zeng@hisilicon.com, guohanjun@huawei.com, olof@lixom.net,
 kuhn.chenqun@huawei.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/5/5 18:14, Mark Rutland wrote:
> On Tue, Apr 14, 2020 at 07:28:34PM +0800, Zhenyu Ye wrote:
>> ARMv8.4-TLBI provides TLBI invalidation instruction that apply to a
>> range of input addresses. This patch detect this feature.
>>
>> Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>
>> ---
>>  arch/arm64/include/asm/cpucaps.h |  3 ++-
>>  arch/arm64/include/asm/sysreg.h  |  4 ++++
>>  arch/arm64/kernel/cpufeature.c   | 11 +++++++++++
>>  3 files changed, 17 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
>> index 8eb5a088ae65..950095a72617 100644
>> --- a/arch/arm64/include/asm/cpucaps.h
>> +++ b/arch/arm64/include/asm/cpucaps.h
>> @@ -61,7 +61,8 @@
>>  #define ARM64_HAS_AMU_EXTN			51
>>  #define ARM64_HAS_ADDRESS_AUTH			52
>>  #define ARM64_HAS_GENERIC_AUTH			53
>> +#define ARM64_HAS_TLBI_RANGE			54
>>  
>> -#define ARM64_NCAPS				54
>> +#define ARM64_NCAPS				55
>>  
>>  #endif /* __ASM_CPUCAPS_H */
>> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
>> index ebc622432831..ac1b98650234 100644
>> --- a/arch/arm64/include/asm/sysreg.h
>> +++ b/arch/arm64/include/asm/sysreg.h
>> @@ -592,6 +592,7 @@
>>  
>>  /* id_aa64isar0 */
>>  #define ID_AA64ISAR0_RNDR_SHIFT		60
>> +#define ID_AA64ISAR0_TLBI_RANGE_SHIFT	56
>>  #define ID_AA64ISAR0_TS_SHIFT		52
>>  #define ID_AA64ISAR0_FHM_SHIFT		48
>>  #define ID_AA64ISAR0_DP_SHIFT		44
>> @@ -605,6 +606,9 @@
>>  #define ID_AA64ISAR0_SHA1_SHIFT		8
>>  #define ID_AA64ISAR0_AES_SHIFT		4
>>  
>> +#define ID_AA64ISAR0_TLBI_RANGE_NI	0x0
>> +#define ID_AA64ISAR0_TLBI_RANGE		0x2
>> +
>>  /* id_aa64isar1 */
>>  #define ID_AA64ISAR1_I8MM_SHIFT		52
>>  #define ID_AA64ISAR1_DGH_SHIFT		48
>> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
>> index 9fac745aa7bb..31bcfd0722b5 100644
>> --- a/arch/arm64/kernel/cpufeature.c
>> +++ b/arch/arm64/kernel/cpufeature.c
>> @@ -124,6 +124,7 @@ static bool __system_matches_cap(unsigned int n);
>>   */
>>  static const struct arm64_ftr_bits ftr_id_aa64isar0[] = {
>>  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_RNDR_SHIFT, 4, 0),
>> +	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_TLBI_RANGE_SHIFT, 4, 0),
> 
> This should be FTR_HIDDEN as userspace has no reason to see this.
> 
> Otherwise this all seems to match the ARM ARM.
> 
> Mark.
> 

OK, I will change it to FTR_HIDDEN in next version series.

Thanks,
Zhenyu



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
