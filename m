Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B243137C49
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 09:10:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NEtAcrETjW9UIe+gzdlK2N7I4/8L8MlncF8SAsP/tBE=; b=bqi8snemcGl4zE
	rCb6kXqtJt2wLUHViqbuHThBfWJGCjmCpFqn+cvFY55AmhT6RMfR0SKn81JzlAP+tzR0in+iCPQaw
	mzlq5f14bdjUwduYoifBS4xgEUHJMfYLqPO4TruTJ/BUiteNA7FT8uAn9tJ1cvN5PyYWBSwz0le3D
	jCUn137igYaXien9tY+Wq1COrakNtXW0Z/JuGDMAVxrX4iCS1CohuSV66iY9n7FYGSzhABKZfCT9H
	H/D3FKPlMedFzIbIS/1lkpuI0hJTTuSaIwG2qBRAK726edykP8+wJJ1CLzYH29vEcYOEJZXr618DW
	Bf99qvojYn4ZDQQ8AFbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqBqL-00071h-8K; Sat, 11 Jan 2020 08:10:01 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqBqD-00071A-E9
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 08:09:55 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 5576012AA3392DEB7B25;
 Sat, 11 Jan 2020 16:09:42 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Sat, 11 Jan 2020
 16:09:32 +0800
Subject: Re: [PATCH v4] arm64: lib: accelerate do_csum
To: Will Deacon <will@kernel.org>, <robin.murphy@arm.com>
References: <1573006806-12037-1-git-send-email-zhangshaokun@hisilicon.com>
 <20200108172040.GA20541@willie-the-truck>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Message-ID: <def6ee59-cc90-76d7-caad-e3c421c9b868@hisilicon.com>
Date: Sat, 11 Jan 2020 16:09:31 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <20200108172040.GA20541@willie-the-truck>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_000953_643571_99DAF8B0 
X-CRM114-Status: GOOD (  12.18  )
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
Cc: Lingyan Huang <huanglingyan2@huawei.com>, Ard
 Biesheuvel <ard.biesheuvel@linaro.org>, zhaoyuke@huawei.com,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+Cc Yuke Zhang who has used this patch and enjoyed the patch's gain when debugged
the performance issue.

Hi Will,

Thanks for reactivate this thread.
Robin, any comments are welcome and hopefully it can be merged in mainline.

Thanks,
Shaokun

On 2020/1/9 1:20, Will Deacon wrote:
> On Wed, Nov 06, 2019 at 10:20:06AM +0800, Shaokun Zhang wrote:
>> From: Lingyan Huang <huanglingyan2@huawei.com>
>>
>> Function do_csum() in lib/checksum.c is used to compute checksum,
>> which is turned out to be slowly and costs a lot of resources.
>> Let's accelerate the checksum computation for arm64.
>>
>> While we test its performance on Huawei Kunpeng 920 SoC, as follow:
>>  1cycle  general(ns)  csum_128(ns) csum_64(ns)
>>   64B:        160            80             50
>>  256B:        120            70             60
>> 1023B:        350           140            150
>> 1024B:        350           130            140
>> 1500B:        470           170            180
>> 2048B:        630           210            240
>> 4095B:       1220           390            430
>> 4096B:       1230           390            430
>>
>> Cc: Will Deacon <will@kernel.org>
>> Cc: Robin Murphy <robin.murphy@arm.com>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
>> Originally-from: Robin Murphy <robin.murphy@arm.com>
>> Signed-off-by: Lingyan Huang <huanglingyan2@huawei.com>
>> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
>> ---
>> Hi,                                                                
>> Apologies that we post this version so later, because we want to   
>> optimise it better, Lingyan tested it performance which is attached
>> in commit log. Both(128 and 64) are much better than the initial   
>> code.                                                              
>> ChangeLog:
>>     based on Robin's code and change strides from 64 to 128.
>>
>>  arch/arm64/include/asm/checksum.h |  3 ++
>>  arch/arm64/lib/Makefile           |  2 +-
>>  arch/arm64/lib/csum.c             | 81 +++++++++++++++++++++++++++++++++++++++
>>  3 files changed, 85 insertions(+), 1 deletion(-)
>>  create mode 100644 arch/arm64/lib/csum.c
> 
> Robin -- any chance you could look at this please? If it's based on your
> code then hopefully it's straightforward to review ;)
> 
> Will
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
