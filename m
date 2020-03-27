Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49924195A12
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 16:40:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4eQvqiWnx6txKXEzNaoNXWRIdhFXeogFiuccBZYF2Fc=; b=QSvq/mgG7Li1aO
	ooOOYBN5TtCWCMFzjbnVJsWzYvkRSDgb3+xwOXAKpwfXlRnFsIg5S39+GfJshv8MzSSwAauLYWJaa
	9KEDuTg821LQa5xAc6vf1I75T2Ik0rtL9eDthPD17GzjdDxfOBpQIEX4fXGp5HfPFucir80rRzYz6
	HyR3Si0jRAB5HRd4XfHAMjrVkFti85Oi1hJRhvLXGappzcPB6q6xv4Lz6XXdtXpLroq6CvRuBQcxc
	AsqHMvh7ccNvjEJDVnI3bbCEWXB2ekDGb91gqQEUeMwB4Z69rutXwMbgV6ifl4QV92y98IWfg1lnE
	MTzl5N2YHvpNzsoG4gHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHr6G-00089b-FC; Fri, 27 Mar 2020 15:40:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHr5w-00087K-NR; Fri, 27 Mar 2020 15:40:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 84FA11FB;
 Fri, 27 Mar 2020 08:40:27 -0700 (PDT)
Received: from [172.16.1.108] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EBA7B3F71F;
 Fri, 27 Mar 2020 08:40:25 -0700 (PDT)
Subject: Re: [PATCH 0/3] kexec/memory_hotplug: Prevent removal and accidental
 use
To: Baoquan He <bhe@redhat.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200327021135.GN3039@MiWiFi-R3L-srv>
From: James Morse <james.morse@arm.com>
Openpgp: preference=signencrypt
Message-ID: <cc059a2a-f9d5-8a55-a38f-034b4133f291@arm.com>
Date: Fri, 27 Mar 2020 15:40:24 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200327021135.GN3039@MiWiFi-R3L-srv>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_084029_284723_F3E8D467 
X-CRM114-Status: GOOD (  20.79  )
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Baoquan,

On 3/27/20 2:11 AM, Baoquan He wrote:
> On 03/26/20 at 06:07pm, James Morse wrote:
>> arm64 recently queued support for memory hotremove, which led to some
>> new corner cases for kexec.
>>
>> If the kexec segments are loaded for a removable region, that region may
>> be removed before kexec actually occurs. This causes the first kernel to
>> lockup when applying the relocations. (I've triggered this on x86 too).

> Do you mean you use 'kexec -l /boot/vmlinuz-xxxx --initrd ...' to load a
> kernel, next you hot remove some memory regions, then you execute
> 'kexec -e' to trigger kexec reboot?

Yes. But to make it more fun, get someone else to trigger the hot-remove behind
your back!


> I may not get the point clearly, but we usually do the loading and
> triggering of kexec-ed kernel at the same time. 

But its two syscalls. Should the second one fail if the memory layout has
changed since the first?

(UEFI does this for exit-boot-services, there is handshake to prove you know
what the current memory map is)


>> The first patch adds a memory notifier for kexec so that it can refuse
>> to allow in-use regions to be taken offline.
>>
>>
>> This doesn't solve the problem for arm64, where the new kernel must
>> initially rely on the data structures from the first boot to describe
>> memory. These don't describe hotpluggable memory.
>> If kexec places the kernel in one of these regions, it must also provide
>> a DT that describes the region in which the kernel was mapped as memory.
>> (and somehow ensure its always present in the future...)
>>
>> To prevent this from happening accidentally with unaware user-space,
>> patches two and three allow arm64 to give these regions a different
>> name.
>>
>> This is a change in behaviour for arm64 as memory hotadd and hotremove
>> were added separately.
>>
>>
>> I haven't tried kdump.
>> Unaware kdump from user-space probably won't describe the hotplug
>> regions if the name is different, which saves us from problems if
>> the memory is no longer present at kdump time, but means the vmcore
>> is incomplete.

> Currently, we will monitor udev events of mem hot add/remove, then
> reload kdump kernel. That reloading is only update the elfcorehdr,
> because crashkernel has to be reserved during 1st kernel bootup. I don't
> think this will have problem.

Great. I don't think there is much the kernel can do for the kdump case, so its
good to know the tools already exist for detecting and restarting the kdump load
when the memory layout changes.

For kdump via kexec-file-load, we would need to regenerate the elfcorehdr, I'm
hoping that can be done in core code.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
