Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C071A61C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 05:35:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vU2DiHDBbYYK+z61/Ms5mDQiCSoxR41MQ52Wa6YchU0=; b=OP+62D/tmTLHos
	xIQdtsX5Fn1Cu+9IZr1h03wcgGxMSrvOvf4B4RHDBcW9ggkr0PHyvoNJrakHW+eItCGsgpD1n2stm
	pmV9Qb/5qzVgGN94UgfZAkHgcLufdELf5xWT3+nYBzgvDeDzzTtIcn/dOAwAlowZ6H0tN4AhZ9xxu
	kaK5AP8VuopaFDc+ze8XpcUtn4z8LZn2WgFvjIloMgoPXwOFiV+LRTemG+GYtcYVFqlCc5dEaNqiW
	2buApoGe7C6O33Ib0kxP6EL5XMm2XoW8SSx1aDu3RXGZLuamDdGSzLWygk3ZDV52cHGYIiIAifOpt
	HCLiXCKf3B47pGSeRthQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNpsx-0002s1-St; Mon, 13 Apr 2020 03:35:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNpso-0002rZ-5O
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 03:35:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4227230E;
 Sun, 12 Apr 2020 20:35:37 -0700 (PDT)
Received: from [10.163.1.49] (unknown [10.163.1.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 811A43F6C4;
 Sun, 12 Apr 2020 20:35:35 -0700 (PDT)
Subject: Re: [PATCH 2/6] arm64/cpufeature: Add DIT and CSV2 feature bits in
 ID_PFR0 register
To: Will Deacon <will@kernel.org>
References: <1580215149-21492-1-git-send-email-anshuman.khandual@arm.com>
 <1580215149-21492-3-git-send-email-anshuman.khandual@arm.com>
 <20200409125526.GC13078@willie-the-truck>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <a6c8042f-bca7-22a9-287f-cee05ae347a8@arm.com>
Date: Mon, 13 Apr 2020 09:05:28 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200409125526.GC13078@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_203538_248713_54B40341 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 04/09/2020 06:25 PM, Will Deacon wrote:
> On Tue, Jan 28, 2020 at 06:09:05PM +0530, Anshuman Khandual wrote:
>> Enable DIT and CSV2 feature bits in ID_PFR0 register as per ARM DDI 0487E.a
>> specification. Except RAS and AMU, all other feature bits are now enabled.
>>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will@kernel.org>
>> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
>> Cc: linux-kernel@vger.kernel.org
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>> ---
>>  arch/arm64/include/asm/sysreg.h | 3 +++
>>  arch/arm64/kernel/cpufeature.c  | 2 ++
>>  2 files changed, 5 insertions(+)
>>
>> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
>> index 054aab7ebf1b..469d61c8fabf 100644
>> --- a/arch/arm64/include/asm/sysreg.h
>> +++ b/arch/arm64/include/asm/sysreg.h
>> @@ -718,6 +718,9 @@
>>  #define ID_ISAR6_DP_SHIFT		4
>>  #define ID_ISAR6_JSCVT_SHIFT		0
>>  
>> +#define ID_PFR0_DIT_SHIFT		24
>> +#define ID_PFR0_CSV2_SHIFT		16
>> +
>>  #define ID_PFR2_SSBS_SHIFT		4
>>  #define ID_PFR2_CSV3_SHIFT		0
>>  
>> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
>> index c1e837fc8f97..9e4dab15c608 100644
>> --- a/arch/arm64/kernel/cpufeature.c
>> +++ b/arch/arm64/kernel/cpufeature.c
>> @@ -341,6 +341,8 @@ static const struct arm64_ftr_bits ftr_id_isar6[] = {
>>  };
>>  
>>  static const struct arm64_ftr_bits ftr_id_pfr0[] = {
>> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_PFR0_DIT_SHIFT, 4, 0),
>> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_PFR0_CSV2_SHIFT, 4, 0),
> 
> Same comment as CSV3 here. Why is CSV2 being treated as strict here, but not
> in the aa64* register?

Sure, will change.

> 
> Will
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
