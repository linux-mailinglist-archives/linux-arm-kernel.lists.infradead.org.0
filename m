Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6170B43582
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 13:29:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQYetvgfwl2Zyf2un61SSVzWrqlyGXackY6BiPj/joQ=; b=pOzRKPfYBV3S4Y
	iCLgvrs9cVfP2yPUGjo9pqA3HED4qviQI+h3bDwnr+7q0t/50vA0/+wLufYSXCEY2oh5F+UtqPxbD
	O0ZZn3Sd5C9WWJp5CdpA/1Ozn/+41TCnE/w/iH/AVEQek/pTa9XwiAIPtT/UuJu0ltV1ByDbkDTG/
	wuhfTw06o24ed1nh3unDB1poyUkb1KR1MnC7iXl+rpTMsc70mI+9eM/nc3QG754tdPQ70zV0Ug821
	RnzO6KDVlblnVvm4mrOTb17g/FJnqHRcbZw0j8gx56yUjyua5gz6yJihlhAaMyW1UXiuIRBNHm51b
	+YfgC+jap9ar4bY5P/WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbNv0-0001MY-NG; Thu, 13 Jun 2019 11:29:22 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbNtX-0000kY-BQ; Thu, 13 Jun 2019 11:27:53 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 6D86DE8FDE300608686F;
 Thu, 13 Jun 2019 19:27:48 +0800 (CST)
Received: from [127.0.0.1] (10.177.131.64) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Thu, 13 Jun 2019
 19:27:43 +0800
Subject: Re: [PATCH 0/4] support reserving crashkernel above 4G on arm64 kdump
To: James Morse <james.morse@arm.com>
References: <20190507035058.63992-1-chenzhou10@huawei.com>
 <51995efd-8469-7c15-0d5e-935b63fe2d9f@arm.com>
From: Chen Zhou <chenzhou10@huawei.com>
Message-ID: <638a5d22-8d51-8d63-2d8a-a38bbb8fb1d6@huawei.com>
Date: Thu, 13 Jun 2019 19:27:40 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <51995efd-8469-7c15-0d5e-935b63fe2d9f@arm.com>
X-Originating-IP: [10.177.131.64]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_042752_262940_2FA229A3 
X-CRM114-Status: GOOD (  18.56  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: wangkefeng.wang@huawei.com, horms@verge.net.au, ard.biesheuvel@linaro.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 rppt@linux.ibm.com, linux-mm@kvack.org, takahiro.akashi@linaro.org,
 mingo@redhat.com, bp@alien8.de, ebiederm@xmission.com,
 kexec@lists.infradead.org, akpm@linux-foundation.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/6/6 0:32, James Morse wrote:
> Hi!
> 
> On 07/05/2019 04:50, Chen Zhou wrote:
>> We use crashkernel=X to reserve crashkernel below 4G, which will fail
>> when there is no enough memory. Currently, crashkernel=Y@X can be used
>> to reserve crashkernel above 4G, in this case, if swiotlb or DMA buffers
>> are requierd, capture kernel will boot failure because of no low memory.
> 
>> When crashkernel is reserved above 4G in memory, kernel should reserve
>> some amount of low memory for swiotlb and some DMA buffers. So there may
>> be two crash kernel regions, one is below 4G, the other is above 4G.
> 
> This is a good argument for supporting the 'crashkernel=...,low' version.
> What is the 'crashkernel=...,high' version for?
> 
> Wouldn't it be simpler to relax the ARCH_LOW_ADDRESS_LIMIT if we see 'crashkernel=...,low'
> in the kernel cmdline?
> 
> I don't see what the 'crashkernel=...,high' variant is giving us, it just complicates the
> flow of reserve_crashkernel().
> 
> If we called reserve_crashkernel_low() at the beginning of reserve_crashkernel() we could
> use crashk_low_res.end to change some limit variable from ARCH_LOW_ADDRESS_LIMIT to
> memblock_end_of_DRAM().
> I think this is a simpler change that gives you what you want.

According to your suggestions, we should do like this:
1. call reserve_crashkernel_low() at the beginning of reserve_crashkernel()
2. mark the low region as 'nomap'
3. use crashk_low_res.end to change some limit variable from ARCH_LOW_ADDRESS_LIMIT to
memblock_end_of_DRAM()
4. rename crashk_low_res as "Crash kernel (low)" for arm64
5. add an 'linux,low-memory-range' node in DT

Do i understand correctly?

> 
> 
>> Then
>> Crash dump kernel reads more than one crash kernel regions via a dtb
>> property under node /chosen,
>> linux,usable-memory-range = <BASE1 SIZE1 [BASE2 SIZE2]>.
> 
> Won't this break if your kdump kernel doesn't know what the extra parameters are?
> Or if it expects two ranges, but only gets one? These DT properties should be treated as
> ABI between kernel versions, we can't really change it like this.
> 
> I think the 'low' region is an optional-extra, that is never mapped by the first kernel. I
> think the simplest thing to do is to add an 'linux,low-memory-range' that we
> memblock_add() after memblock_cap_memory_range() has been called.
> If its missing, or the new kernel doesn't know what its for, everything keeps working.
> 
> 
>> Besides, we need to modify kexec-tools:
>>   arm64: support more than one crash kernel regions(see [1])
> 
>> I post this patch series about one month ago. The previous changes and
>> discussions can be retrived from:
> 
> Ah, this wasn't obvious as you've stopped numbering the series. Please label the next one
> 'v6' so that we can describe this as 'v5'. (duplicate numbering would be even more confusing!)
> 
ok.

> 
> Thanks,
> 
> James
> 
> .
> 

Thanks,
Chen Zhou


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
