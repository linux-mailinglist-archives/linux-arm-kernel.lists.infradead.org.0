Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4E2607AF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:18:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=acdd0UFw0yzvqrhMACNOlpQe/lGG3UlFoe5vlyFKSJs=; b=XfG6c97/DjE6tb
	TEdCGSqslkFKp5qvyhZTtCi2LHijBDDg3ldZH3qadMBeQd7t4WLMa4/4cjup3+WJqBPdmXFVGGsGN
	Sgf25Yj4elnt1hIEQpNSHPHyDpIHaNTEao5pioavgdDSoQdyj5Ihf0ZpR4FsERQOSczcrVPD2Ffcq
	hQZoHthGE/sd9mHmnNHWQTwiU4277GtJBg+H7bJjqlq92Va1qEBEMRPP8McpKH1jgtQ1HD8yjYzAG
	I9nwbao9KaikciUs4Mqh+RLBzuWU83pNY2VTfJTIPnLUI5dKFwqLSKfx320ydFrPIgw9Ucu4GCXVS
	Kp+X7AKQGBo27tD9mRTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjP2J-000312-T3; Fri, 05 Jul 2019 14:18:03 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjP2C-0002zp-Me
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:17:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0z9CIVciZe5vAlRJMaaQlkX+nFxrNy2GVg1AACos6H0=; b=ssTHZh29EXplmq5I/Y4E+Wl/Np
 MtcXP5ckMD3dWBWTFnb587xyqdnEptEWmDOF5O8KWhLzKl6Tqq4zYBoorb+OdIQIE/d5TxELlORFX
 x/mk1R8K/kw4PROwYDKKIk/BygNRN/sEH9vaTTMfg9JJ7NnHnJQ19L4z/tGfCJtb8bGLxMNkHbeNH
 9oDKkgq97OrCuSHBqSRV0LtT8piDn2WmMpc9WiDslv+ZH+FGUdG/USOPMPiA+pIm73gKa7ftcKPK6
 wbBkFlghTKvcS7VgAnsK3qQmKPvHrs+BmXIRiLGnMJOd7bbNLkNeVyBa1mOZ/pyNl8czPttA3MaU0
 ljiGBcFg==;
Received: from foss.arm.com ([217.140.110.172])
 by casper.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hjLoe-0004Na-DA
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 10:51:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D92252B;
 Fri,  5 Jul 2019 03:51:06 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CAA563F703;
 Fri,  5 Jul 2019 03:51:01 -0700 (PDT)
Subject: Re: [PATCH] remove the initrd resource in /proc/iomem as theinitrdhas
 freed the reserved memblock.
To: huang.junhua@zte.com.cn
References: <201907031942125390348@zte.com.cn>
From: James Morse <james.morse@arm.com>
Message-ID: <d25eadb8-266f-6b95-d375-1c2db2144e5f@arm.com>
Date: Fri, 5 Jul 2019 11:51:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <201907031942125390348@zte.com.cn>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_115144_715903_D5018DE0 
X-CRM114-Status: GOOD (  26.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: wang.yi59@zte.com.cn,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 f.fainelli@gmail.com, jiang.xuexin@zte.com.cn, david@redhat.com,
 catalin.marinas@arm.com, will.deacon@arm.com, robin.murphy@arm.com,
 linux-kernel@vger.kernel.org, rppt@linux.vnet.ibm.com, xue.zhihong@zte.com.cn,
 hannes@cmpxchg.org, akpm@linux-foundation.org, logang@deltatee.com,
 linux-arm-kernel@lists.infradead.org, ghackmann@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

(CC: +devicetree list:
memreserving the initrd, which linux then frees causes a zombie memreserve in all future
kexec'd kernels)

On 03/07/2019 12:42, huang.junhua@zte.com.cn wrote:
>>>> On 02/07/2019 11:34, Yi Wang wrote:
>>>>> From: Junhua Huang <huang.junhua@zte.com.cn>
>>>>> The 'commit 50d7ba36b916 ("arm64: export memblock_reserve()d regions via /proc/iomem")'
>>>>> show the reserved memblock in /proc/iomem. But the initrd's reserved memblock
>>>>> will be freed in free_initrd_mem(), which executes after the reserve_memblock_reserved_regions().
>>>>> So there are some incorrect information shown in /proc/iomem. e.g.:
>>>>> 80000000-bbdfffff : System RAM
>>>>>   80080000-813effff : Kernel code
>>>>>   813f0000-8156ffff : reserved
>>>>>   81570000-817fcfff : Kernel data
>>>>>   83400000-83ffffff : reserved
>>>>>   90000000-90004fff : reserved
>>>>>   b0000000-b2618fff : reserved
>>>>>   b8c00000-bbbfffff : reserved
>>>>> In this case, the range from b0000000 to b2618fff is reserved for initrd, which should be
>>>>> clean from the resource tree after it was freed.
>>>>
>>>> (There was some discussion about this over-estimate on the list, but it didn't make it
>>>> into the commit message.) I think a reserved->free change is fine. If user-space thinks
>>>> its still reserved nothing bad happens.
>>
>>>>> As kexec-tool will collect the iomem reserved info 
>>>>> and use it in second kernel, which causes error message generated a second time.
>>
>>>> What error message?
>>
>>> Sorry, it's my mistake. The kexec-tool could not use iomem reserved info in the second kernel.
>>> The error message I mean is that the initrd reserved memblock region will be shown in 
>>> second kernel /proc/iomem. But this message comes from the dtb's memreserve node, 
>>> not the first kernel /proc/iomem.
>>
>> This doesn't sound right.
>> Is kexec-tool spraying anything reserved in /proc/iomem into the DT as memreserve?

> No, it isn't. The kexec-tool could not spray resserved info to DT as memreserve.

(well, it generates the second DT, and it has the reserved /proc/iomem entries on hand)


> After we started the kernel from uboot, the /sys/firmware/fdt in this kernel has been add some infos,
> incluing the dtb memreserve and ramdisk memreserve info.

Aha! Ugh.
arm64_memblock_init() memblock_reserves() this, as does fdt_init_reserved_mem().
But then we memblock_free() it in free_initrd_mem().


> And then we use this fdt as the kexec dtb, and the second kernel would read 
> the memreserve node and reserve the memblock.

> So we can see the first kernel initrd reserved info from the second kernel /proc/iomem.

[...]

> This phenomenon is not caused by first kernel /proc/iomem or kexec, but dtb.

Right, so the options are:

(1) Delete the memreserve node from the DT when we free the initrd. I don't think this is
the sort of thing the kernel should be doing.

(2) Memreserving the initramfs implies 'keepinitrd' on the commandline. The DT has told us
to "exclude reserved memory from normal usage". If the bootloader didn't mean for us to
reserve this memory forever, it should drop the memreserve.

(3) kexec-tools determines this memreserve is no longer needed and removes it from the new
DT. It has the details to do this: /sys/firmware/fdt will show the physical addresses of
the initramfs. With your patch /proc/iomem will show that this region is regular memory.
(not covered by any reserved type). This is safe with older kernels.


My preference is 2 then 3.

[...]

> I agree. The kexec-tool will use the second-level reserved info to avoid the load address 
> conflict with the important thing, It is true that if the image load address kexec-tools set 
> would belong to other important thing, something would go wrong. 
> So I think we need clean the initrd reserved info from /proc/iomem, it is useless.

If we've freed the memory and we can update that file, sure.
I think at the time of that patch the assumption was only the arch code does
memblock_reserve() early, so we never need to update /proc/iomem.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
