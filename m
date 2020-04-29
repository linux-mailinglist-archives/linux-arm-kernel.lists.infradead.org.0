Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC991BE1ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 17:02:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/1WdzIEgylUk0bEVbM99WOdQTXw9ysZQFFFu8dprgZw=; b=QJTyJH/cY1CdyF
	6DxsP3yj8rd8Rg6UmyQVQDIxb9odU3oxgeuSo0VFglmcnKXhWdGncz8WembQX9Dl4gCtk3JgnrnF3
	1cKV1A/gnNGQLQgjxi60PEecFgpgBpxrVukgqDpmDvtgDcELk0pU9v1/1GHl7N/+4YoQh0lMzYC6T
	ty1Wd26ne5Vbq4UQRdp9xPae+cZvMik2ep7laSGRMC3bHz2mNW7Zl9a5N1OcBCuDJPnivWdvlkbWW
	sFVCixSyLAnVF24WVnGgKakUwqAH2PDbenoQCJ9wjFLC+6wR1uOa0Okd5tqcvpovucUMathdRYUHk
	sPlrsiBwxMiqcy3ae26A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jToEb-0005Gy-4E; Wed, 29 Apr 2020 15:02:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jToDD-00055X-Hz
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 15:01:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 366431045;
 Wed, 29 Apr 2020 08:01:18 -0700 (PDT)
Received: from [10.37.8.197] (unknown [10.37.8.197])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 153833F68F;
 Wed, 29 Apr 2020 08:01:16 -0700 (PDT)
Subject: Re: [PATCH] arm64: vdso: Add -fasynchronous-unwind-tables to cflags
To: Will Deacon <will@kernel.org>
References: <20200428133411.44092-1-vincenzo.frascino@arm.com>
 <20200429145426.GB30247@willie-the-truck>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <a006790d-24bd-a2cf-619f-8572f4c15b35@arm.com>
Date: Wed, 29 Apr 2020 16:02:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200429145426.GB30247@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_080123_639327_11218ACB 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: tamas.zsoldos@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/29/20 3:54 PM, Will Deacon wrote:
> On Tue, Apr 28, 2020 at 02:34:11PM +0100, Vincenzo Frascino wrote:
>> On arm64 linux gcc uses -fasynchronous-unwind-tables -funwind-tables
>> by default since gcc-8, so now the de facto platform ABI is to allow
>> unwinding from async signal handlers.
>>
>> However on bare metal targets (aarch64-none-elf), and on old gcc,
>> async and sync unwind tables are not enabled by default to avoid
>> runtime memory costs.
>>
>> This means if linux is built with a baremetal toolchain the vdso.so
>> may not have unwind tables which breaks the gcc platform ABI guarantee
>> in userspace.
>>
>> Add -fasynchronous-unwind-tables explicitly to the vgettimeofday.o
>> cflags to address the ABI change.
>>
>> Cc: Will Deacon <will@kernel.org>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Reported-by: Szabolcs Nagy <szabolcs.nagy@arm.com>
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>> ---
>>  arch/arm64/kernel/vdso/Makefile | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
>> index 331290a0cead..b388ce4c6d5f 100644
>> --- a/arch/arm64/kernel/vdso/Makefile
>> +++ b/arch/arm64/kernel/vdso/Makefile
>> @@ -33,7 +33,8 @@ KCOV_INSTRUMENT			:= n
>>  CFLAGS_vgettimeofday.o = -O2 -mcmodel=tiny
>>  
>>  ifneq ($(c-gettimeofday-y),)
>> -  CFLAGS_vgettimeofday.o += -include $(c-gettimeofday-y)
>> +  CFLAGS_vgettimeofday.o += -include $(c-gettimeofday-y) \
>> +				-fasynchronous-unwind-tables
> 
> Minor comment, but why is this inside the conditional block and not part
> of the CFLAGS_vgettimeofday.o directly above it?
>

Because I rushed the patch out without rechecking it, sorry. Going to send v2.

> Anyway, Szabolcs -- please can you confirm this fixes the problem for you?
> 
> Thanks,
> 
> Will
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
