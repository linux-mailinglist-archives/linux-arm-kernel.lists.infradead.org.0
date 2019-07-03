Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 843B45E134
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 11:43:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ebgsHEqv1FS2wWBK/Q3Q7RsfmQn5xvyhLX3Y3m7eBes=; b=d6VjEf/TlNXhoA
	GyHWaMdLlMzaP0zGg+PNzz15YYhRnhRpL4JiW2BIbVxPmgFE/Y0xNCc76Qcl/f0WF3rxenAYJ/rP/
	Q/R8pNLijKD6H+FKjkhqu2rYK5hIS3MB1TJUzRTSg+h+vF+VSBBkyp/oe7D4NrLp5MhHnLhuUkw1u
	AP5jBytxjPR+7SQOEANEZmHynrlDKJTY5En6N3DoUCzRt9FVDwQYqp2UfE7Wi3OAs519nOOb41T9o
	sCUbUn8KqVr4BFp2WMJ4U40p6ralhcDaO3Gw9QDqYhCCo/0XcSV1+kDwYE0c1017qGCDC6/Di2wO9
	8xB+hHq7qjJdPKovhIOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hibnb-00085A-3t; Wed, 03 Jul 2019 09:43:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hibnO-00084F-Eo
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 09:43:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0DB52344;
 Wed,  3 Jul 2019 02:43:20 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D5CCC3F246;
 Wed,  3 Jul 2019 02:43:17 -0700 (PDT)
Subject: Re: [PATCH] remove the initrd resource in /proc/iomem as the
 initrdhas freed the reserved memblock.
To: huang.junhua@zte.com.cn
References: <201907031716177178158@zte.com.cn>
From: James Morse <james.morse@arm.com>
Message-ID: <8b394f16-5cc5-328c-a1c7-2c2ba352440b@arm.com>
Date: Wed, 3 Jul 2019 10:43:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <201907031716177178158@zte.com.cn>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_024322_840612_FF8C45C5 
X-CRM114-Status: GOOD (  15.53  )
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
Cc: wang.yi59@zte.com.cn, f.fainelli@gmail.com, jiang.xuexin@zte.com.cn,
 david@redhat.com, catalin.marinas@arm.com, will.deacon@arm.com,
 robin.murphy@arm.com, linux-kernel@vger.kernel.org, rppt@linux.vnet.ibm.com,
 xue.zhihong@zte.com.cn, hannes@cmpxchg.org, akpm@linux-foundation.org,
 logang@deltatee.com, linux-arm-kernel@lists.infradead.org,
 ghackmann@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 03/07/2019 10:16, huang.junhua@zte.com.cn wrote:
>> On 02/07/2019 11:34, Yi Wang wrote:
>>> From: Junhua Huang <huang.junhua@zte.com.cn>
>>> The 'commit 50d7ba36b916 ("arm64: export memblock_reserve()d regions via /proc/iomem")'
>>> show the reserved memblock in /proc/iomem. But the initrd's reserved memblock
>>> will be freed in free_initrd_mem(), which executes after the reserve_memblock_reserved_regions().
>>> So there are some incorrect information shown in /proc/iomem. e.g.:
>>> 80000000-bbdfffff : System RAM
>>>   80080000-813effff : Kernel code
>>>   813f0000-8156ffff : reserved
>>>   81570000-817fcfff : Kernel data
>>>   83400000-83ffffff : reserved
>>>   90000000-90004fff : reserved
>>>   b0000000-b2618fff : reserved
>>>   b8c00000-bbbfffff : reserved
>>> In this case, the range from b0000000 to b2618fff is reserved for initrd, which should be
>>> clean from the resource tree after it was freed.
>>
>> (There was some discussion about this over-estimate on the list, but it didn't make it
>> into the commit message.) I think a reserved->free change is fine. If user-space thinks
>> its still reserved nothing bad happens.

>>> As kexec-tool will collect the iomem reserved info 
>>> and use it in second kernel, which causes error message generated a second time.

>> What error message?

> Sorry, it's my mistake. The kexec-tool could not use iomem reserved info in the second kernel.
> The error message I mean is that the initrd reserved memblock region will be shown in 
> second kernel /proc/iomem. But this message comes from the dtb's memreserve node, 
> not the first kernel /proc/iomem.

This doesn't sound right.
Is kexec-tool spraying anything reserved in /proc/iomem into the DT as memreserve?


These top-level 'nomap' and second-level 'reserved' entries exist to stop kexec-tools
trying to write the new kernel over the top of something important. This only matters
between 'load' and 'exec' during the #1-kernel:

| kexec-tools reads /proc/iomem.
| kexec-tools tells #1-kernel "I want this 10MB image to be located at 0xf00".
| #1-kernel knows 0xf00 is in use, so it stores the data else where until kexec-time.
[some time passes]
| #1-kernel kexec's, copying the image to 0xf00
| #2-kernel now owns the machine

This goes wrong if 0xf00 belonged to firmware (nomap), or contained something important
(uefi memory map, acpi tables etc).

Once the second kernel has started running it should re-discover where this important
stuff is from the EFI and ACPI tables.

We deliberately over-estimate these second-level reserved regions as its the simplest
thing to do. (e.g. the per-cpu chunk allocations get swept up too)


Does this mean the amount of usable memory in the system reduces each time you kexec? That
shouldn't be true!


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
