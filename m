Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDCD61F71
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 15:18:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GHp2IbNvPaWZ8ePDgIK13AQmWx06BGoISHERENd9S3U=; b=r4vZ3rYlqH1jys
	Fso+q081v2GVmWWmMNgROp0Zndsz3C0pqUMnR+NXd/xraJFo9APSLuKhaUgCnahWdwEwU3tvG2aS7
	NLkTChplGwXbflJQxYUNtHukPpMSNDxGwHvSEhzarGnSGa7Etln0A9TKSSSKE1b9CFCfZuClDGpK8
	BWTeep5+9x/Q+cRJO6UQ/pmnO2wxVHyZSltjcyFnR1gCY5L/1hzv6CVJQXUvKwGsS9Pmm5V0H3wQp
	f44GzGncypy2SdZaM3NzCJJxqlS+f+3HoS1rzEkZrn4i66jEmy/AUm9h2JBL9ZcxubnyXxo64ynZw
	mbe9reXa6qyX7iZi+Puw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkTWy-0007S2-SK; Mon, 08 Jul 2019 13:18:08 +0000
Received: from edison.jonmasters.org ([173.255.233.168])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkTWn-0007RY-Hc
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 13:17:59 +0000
Received: from boston.jonmasters.org ([50.195.43.97]
 helo=tonnant.bos.jonmasters.org)
 by edison.jonmasters.org with esmtpsa (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.71) (envelope-from <jcm@jonmasters.org>)
 id 1hkTWk-0006CH-LQ; Mon, 08 Jul 2019 13:17:55 +0000
To: Mark Rutland <mark.rutland@arm.com>
References: <7dd77cea-d673-269a-044f-4df269db7e5e@jonmasters.org>
 <20190708114716.GA33099@lakrids.cambridge.arm.com>
 <de6f5ca5-9485-620f-b748-9a38e9a4a0ba@jonmasters.org>
 <20190708130952.GB33099@lakrids.cambridge.arm.com>
From: Jon Masters <jcm@jonmasters.org>
Message-ID: <0d132022-2160-5309-200d-dc820d8a8235@jonmasters.org>
Date: Mon, 8 Jul 2019 09:17:45 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190708130952.GB33099@lakrids.cambridge.arm.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 50.195.43.97
X-SA-Exim-Mail-From: jcm@jonmasters.org
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
 edison.jonmasters.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham version=3.3.1
Subject: Re: FYI: Possible HPFAR_EL2 corruption (LPAE guests on AArch64 hosts)
X-SA-Exim-Version: 4.2.1 (built Sun, 08 Nov 2009 07:31:22 +0000)
X-SA-Exim-Scanned: Yes (on edison.jonmasters.org)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_061757_654383_3725F50A 
X-CRM114-Status: GOOD (  23.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: marc.zyngier@arm.com, kvmarm@lists.cs.columbia.edu,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/8/19 9:09 AM, Mark Rutland wrote:
> [Adding Marc for real this time]
> 
> On Mon, Jul 08, 2019 at 08:16:25AM -0400, Jon Masters wrote:
>> On 7/8/19 7:47 AM, Mark Rutland wrote:
>>> On Sun, Jul 07, 2019 at 11:39:46PM -0400, Jon Masters wrote:
>>>> TLDR: We think $subject may be a hardware errata and we are
>>>> investigating. I was asked to drop a note to share my initial analysis
>>>> in case others have been experiencing similar problems with 32-bit VMs.
>>>>
>>>> The Fedora Arm 32-bit builders run as "armv7hl+lpae" (aarch32) LPAE
>>>> (VMSAv8-32 Long-descriptor table format in aarch32 execution state) VMs
>>>> on AArch64 hosts. Under certain conditions, those builders will "pause"
>>>> with the following obscure looking error message:
>>>>
>>>> kvm [10652]: load/store instruction decoding not implemented
>>>>
>>>> (which is caused by a fall-through in io_mem_abort, the code assumes
>>>> that if we couldn't find the guest memslot we're taking an IO abort)
>>>>
>>>> This has been happening on and off for more than a year, tickled further
>>>> by various 32-bit Fedora guest updates, leading to some speculation that
>>>> there was actually a problem with guest toolchains generating
>>>> hard-to-emulate complex load/store instruction sequences not handled in KVM.
>>>>
>>>> After extensive analysis, I believe instead that it appears on the
>>>> platform we are using in Fedora that a stage 2 fault (e.g. v8.0 software
>>>> access bit update in the host) taken during stage 1 guest page table
>>>> walk will result in an HPFAR_EL2 truncation to a 32-bit address instead
>>>> of the full 48-bit IPA in use due to aarch32 LPAE. I believe that this
>>>> is a hardware errata and have requested that the vendor investigate.
>>>>
>>>> Meanwhile, I have a /very/ nasty patch that checks the fault conditions
>>>> in kvm_handle_guest_abort and if they match (S1 PTW, etc.), does a
>>>> software walk through the guest page tables looking for a PTE that
>>>> matches with the lower part of the faulting address bits we did get
>>>> reported to the host, then re-injects the correct fault. With this
>>>> patch, the test builder stays up, albeit correcting various faults:
>>>>
>>>> [  143.670063] JCM: WARNING: Mismatched FIPA and PA translation detected!
>>>> [  143.748447] JCM: Hyper faulting far: 0x3deb0000
>>>> [  143.802808] JCM: Guest faulting far: 0xb6dce3c4 (gfn: 0x3deb)
>>>> [  143.871776] JCM: Guest TTBCR: 0xb5023500, TTBR0: 0x5b06cc40
>>>> [  143.938649] JCM: Guest PGD address: 0x5b06cc50
>>>> [  143.991962] JCM: Guest PGD: 0x5b150003
>>>> [  144.036925] JCM: Guest PMD address: 0x5b150db0
>>>> [  144.090238] JCM: Guest PMD: 0x43deb0003
>>>> [  144.136241] JCM: Guest PTE address: 0x43deb0e70
>>>> [  144.190604] JCM: Guest PTE: 0x42000043bb72fdf
>>>> [  144.242884] JCM: Manually translated as: 0xb6dce3c4->0x43bb72000
>>>> [  144.314972] JCM: Faulting IPA page: 0x3deb0000
>>>> [  144.368286] JCM: Faulting PTE page: 0x43deb0000
>>>> [  144.422641] JCM: Fault occurred while performing S1 PTW -fixing
>>>> [  144.493684] JCM: corrected fault_ipa: 0x43deb0000
>>>> [  144.550133] JCM: Corrected gfn: 0x43deb
>>>> [  144.596145] JCM: handle user_mem_abort
>>>> [  144.641155] JCM: ret: 0x1
>>>
>>> When the conditions are met, does the issue continue to trigger
>>> reliably?
>>
>> Yeah. But only for certain faults - seems to be specifically for stage 1
>> page table walks that cause a trap to stage 2.
> 
> Ok. It sounds like we could write a small guest to trigger that
> deliberately with some pre-allocated page tables placed above a 4GiB
> IPA.

Yea, indeed. It's funny what you realize as you're writing emails about
it - was thinking that earlier :) Ok, that sounds like fun.

>>> e.g. if you return to the guest without fixing the fault, do you always
>>> see the truncation when taking the fault again?
>>
>> I believe so, but I need to specifically check that.
>>
>>> If you try the translation with an AT, does that work as expected? We've
>>> had to use that elsewhere; see __populate_fault_info() in
>>> arch/arm64/kvm/hyp/switch.c.
>>
>> Yea, I've seen that code for the other errata :) The problem is the
>> virtual address in the FAR is different from the one we ultimately have
>> a PA translation for. We take a fault when the hardware walker tries to
>> perform a load to (e.g.) the PTE leaf during the translation of the VA.
>> So the PTE itself is what we are trying to load, not the PA of the VA
>> that the guest userspace/kernel tried to load. Hence an AT won't work,
>> unless I'm missing something. My first thought had been to do that.
> 
> My bad; I thought a failed AT reported the relevant IPA when it failed
> as a result of a stage-2 fault, but I see now that it does not.

Random aside - it would be great if there were an AT variant that did :)

> I don't think that we can reliably walk the guest's Stage-1 tables
> without trapping TLB invalidations (and/or stopping all vCPUs), so
> that's rather unfortunate.

Indeed. In the Fedora case, it's only a single vCPU in each guest so
they effectively already do that (and hence my test hack "works") but
that's another thing that would need to be handled for a real fix.

Jon.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
