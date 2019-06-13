Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D77343603
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 14:45:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yfjZnZv4Qu+TibzoFLisWVk4xo8GlTQcspHvc4bfJuE=; b=NPtG3giT2m4tWX
	vglIJRb7x2krGqQ7hwkzIjygWR9aHH6fUaagHGGA455ZDlenPnQ1kDkUZP7OvTeagVoqOHmZTM7K3
	AH/q2mblr+8Fr2cPT/VcqvnmpmMpboCvZCSs4EJcklWMpToNgMji3nK/tFEtPvv5mbYQE9KW2gLb5
	Kcx9xDOHQF2L1PR9elkXUXpgSTBAxi+nreCj6r8iBjVfYa6MRn1HJ+mEKenXxqr45CFZiAjEj4fwe
	KQliauuzDqs7/FQoni8srCeKLEFhqa4VWtx9inK4EiBnU4hr512QnZVZ+btNk3Ojh1fZ2ZRHOzUp+
	MIwznKcxQa96ObDRdVOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbP6A-0000B0-6y; Thu, 13 Jun 2019 12:44:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbP4d-0008AX-5J; Thu, 13 Jun 2019 12:43:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E04BE2B;
 Thu, 13 Jun 2019 05:43:20 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 76DA33F694;
 Thu, 13 Jun 2019 05:43:18 -0700 (PDT)
Subject: Re: [PATCH 0/4] support reserving crashkernel above 4G on arm64 kdump
To: Chen Zhou <chenzhou10@huawei.com>
References: <20190507035058.63992-1-chenzhou10@huawei.com>
 <51995efd-8469-7c15-0d5e-935b63fe2d9f@arm.com>
 <638a5d22-8d51-8d63-2d8a-a38bbb8fb1d6@huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <72a9c52b-1b24-57e8-e29f-b5a53524744b@arm.com>
Date: Thu, 13 Jun 2019 13:43:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <638a5d22-8d51-8d63-2d8a-a38bbb8fb1d6@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_054324_279742_862B2082 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Hi Chen Zhou,

On 13/06/2019 12:27, Chen Zhou wrote:
> On 2019/6/6 0:32, James Morse wrote:
>> On 07/05/2019 04:50, Chen Zhou wrote:
>>> We use crashkernel=X to reserve crashkernel below 4G, which will fail
>>> when there is no enough memory. Currently, crashkernel=Y@X can be used
>>> to reserve crashkernel above 4G, in this case, if swiotlb or DMA buffers
>>> are requierd, capture kernel will boot failure because of no low memory.
>>
>>> When crashkernel is reserved above 4G in memory, kernel should reserve
>>> some amount of low memory for swiotlb and some DMA buffers. So there may
>>> be two crash kernel regions, one is below 4G, the other is above 4G.
>>
>> This is a good argument for supporting the 'crashkernel=...,low' version.
>> What is the 'crashkernel=...,high' version for?
>>
>> Wouldn't it be simpler to relax the ARCH_LOW_ADDRESS_LIMIT if we see 'crashkernel=...,low'
>> in the kernel cmdline?
>>
>> I don't see what the 'crashkernel=...,high' variant is giving us, it just complicates the
>> flow of reserve_crashkernel().
>>
>> If we called reserve_crashkernel_low() at the beginning of reserve_crashkernel() we could
>> use crashk_low_res.end to change some limit variable from ARCH_LOW_ADDRESS_LIMIT to
>> memblock_end_of_DRAM().
>> I think this is a simpler change that gives you what you want.
> 
> According to your suggestions, we should do like this:
> 1. call reserve_crashkernel_low() at the beginning of reserve_crashkernel()
> 2. mark the low region as 'nomap'
> 3. use crashk_low_res.end to change some limit variable from ARCH_LOW_ADDRESS_LIMIT to
> memblock_end_of_DRAM()
> 4. rename crashk_low_res as "Crash kernel (low)" for arm64

> 5. add an 'linux,low-memory-range' node in DT

(This bit would happen in kexec-tools)


> Do i understand correctly?

Yes, I think this is simpler and still gives you what you want.
It also leaves the existing behaviour unchanged, which helps with keeping compatibility
with existing user-space and older kdump kernels.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
