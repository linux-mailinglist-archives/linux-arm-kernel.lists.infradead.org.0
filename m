Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8551E074F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 08:55:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/jjZvw0Q+2huPKADIyrAStbiXu6OTA895Yrk6TW8cW4=; b=JgIC9c3LTDT509
	Faa12SZdKufpgOYc2SjaB4KESGAGtFEIDecWDM3i+DyItpqw5iQa9CQx486VCApANPFE6rv8BndSg
	UIoD1iWSEkxO59ECoPQBfcCa3TvUTtSXr8lWWmkCPRcdnK1wuS1ziAWax+TPtgxbYF2kOjp3Gj4ZS
	tTfOY2A8EKF2CYSrKlCWJF9aLXEhz+floSxUVix9uVHuM2hbiSO9lxi3dKirh8RUsCc7LwfshPRiK
	oTnShlTDT792VB39c8JQoTtwJ/mURcxFBRnbQAXCht79/hIvgh0PR0L01EGHFvAZVlg1lfOxbHjD0
	4G2Qt5/DHxDB9ZUO9gUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd718-0005B1-0l; Mon, 25 May 2020 06:55:22 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd70x-0003VD-SN
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 06:55:13 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 2471DDA1EE3F82EA9BC0;
 Mon, 25 May 2020 14:55:01 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.25) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.487.0; Mon, 25 May 2020
 14:54:53 +0800
Subject: Re: [PATCH v2 2/6] arm64: Add level-hinted TLB invalidation helper
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20200423135656.2712-1-yezhenyu2@huawei.com>
 <20200423135656.2712-3-yezhenyu2@huawei.com> <20200522155017.GG26492@gaia>
From: Zhenyu Ye <yezhenyu2@huawei.com>
Message-ID: <3852291c-37cf-39b6-564d-8b4f50f9d86e@huawei.com>
Date: Mon, 25 May 2020 14:54:51 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200522155017.GG26492@gaia>
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_235512_093513_907BBA13 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, peterz@infradead.org, linux-mm@kvack.org,
 guohanjun@huawei.com, will@kernel.org, linux-arch@vger.kernel.org,
 yuzhao@google.com, aneesh.kumar@linux.ibm.com, steven.price@arm.com,
 arm@kernel.org, Dave.Martin@arm.com, arnd@arndb.de, suzuki.poulose@arm.com,
 npiggin@gmail.com, zhangshaokun@hisilicon.com, broonie@kernel.org,
 rostedt@goodmis.org, prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 xiexiangyou@huawei.com, linux-kernel@vger.kernel.org, maz@kernel.org,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/5/22 23:50, Catalin Marinas wrote:
> On Thu, Apr 23, 2020 at 09:56:52PM +0800, Zhenyu Ye wrote:
>> diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
>> index bc3949064725..5f9f189bc6d2 100644
>> --- a/arch/arm64/include/asm/tlbflush.h
>> +++ b/arch/arm64/include/asm/tlbflush.h
>> @@ -10,6 +10,7 @@
>>  
>>  #ifndef __ASSEMBLY__
>>  
>> +#include <linux/bitfield.h>
>>  #include <linux/mm_types.h>
>>  #include <linux/sched.h>
>>  #include <asm/cputype.h>
>> @@ -59,6 +60,35 @@
>>  		__ta;						\
>>  	})
>>  
>> +#define TLBI_TTL_MASK	GENMASK_ULL(47, 44)
>> +
>> +#define __tlbi_level(op, addr, level)					\
>> +	do {								\
> 
> Nitpick: move "do {" on the same line as __tlbi_level() to reduce the
> indentation levels of the whole block.
> 
> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
> 

OK.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
