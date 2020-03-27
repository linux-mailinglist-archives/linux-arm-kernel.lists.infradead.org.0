Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE14E195A19
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 16:43:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nMeyViq1BPrJOtphYAPv7sKNtYNq4Gju/qzLchWZtsw=; b=FQOJ4jcA4qsLaB
	OubwIylS/4WxWDhsGSXK0+UkrkYRwYzcJXoDjaHUkYTsILfpETCpO+lYog3SL/Zfb5fJoDvPq5KY2
	6g8H5+qz1QyESclHx7iSfOX1SXB0pbdcZNDoaIqcfB+9wvSlHvcdQgfgtcGfnGKWuvYafTfvVYdHC
	FIBMP0oVAKG8vP397rSNRrNj2ghBoppK5saaknb8q9LAPdKyqsn5ImGbpZm/Me4bvrvmEAMl6u9l/
	c0nbs8F4WZdAmp6DYcAx8S91itP20DQt5xtlz3gHcVR/fxcbZW/pUWuHqMyaCFZrmDmGYpJOo6uqN
	tQo0K0jaWdUMoAgyf7lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHr8Y-00006o-8G; Fri, 27 Mar 2020 15:43:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHr8K-00005N-I1; Fri, 27 Mar 2020 15:42:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3FAFA1FB;
 Fri, 27 Mar 2020 08:42:55 -0700 (PDT)
Received: from [172.16.1.108] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AA2013F71F;
 Fri, 27 Mar 2020 08:42:53 -0700 (PDT)
Subject: Re: [PATCH 0/3] kexec/memory_hotplug: Prevent removal and accidental
 use
To: David Hildenbrand <david@redhat.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <6725543d-81ee-537f-e132-ef26fe62c452@redhat.com>
From: James Morse <james.morse@arm.com>
Openpgp: preference=signencrypt
Message-ID: <0ee0556d-9903-1b17-8c58-e847f4c00816@arm.com>
Date: Fri, 27 Mar 2020 15:42:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <6725543d-81ee-537f-e132-ef26fe62c452@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_084256_687261_12F6E815 
X-CRM114-Status: GOOD (  19.01  )
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

Hi David,

On 3/27/20 9:27 AM, David Hildenbrand wrote:
> On 26.03.20 19:07, James Morse wrote:
>> arm64 recently queued support for memory hotremove, which led to some
>> new corner cases for kexec.
>>
>> If the kexec segments are loaded for a removable region, that region may
>> be removed before kexec actually occurs. This causes the first kernel to
>> lockup when applying the relocations. (I've triggered this on x86 too).
>>
>> The first patch adds a memory notifier for kexec so that it can refuse
>> to allow in-use regions to be taken offline.

> IIRC other architectures handle that by setting the affected pages
> PageReserved. Any reason why to not stick to the same?

Hmm, I didn't spot this. How come core code doesn't do it if its needed?

Doesn't PG_Reserved prevent the page from being used for regular allocations?
(or is that only if its done early)

I prefer the runtime check as the dmesg output gives the user some chance of
knowing why their memory-offline failed, and doing something about it!


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

> Whenever memory is added/removed, kdump.service is to be restarted from
> user space, which will fixup the data structures such that kdump will
> not try to dump unplugged memory.

Cunning.


> Also, makedumpfile will check if the
> sections are still around IIRC.

Curious. I thought the vmcore was virtually addressed, how does it know which
linear-map portions correspond to sysfs memory nodes with KASLR?


> Not sure what you mean by "Unaware kdump from user-space".

The existing kexec-tools binaries, that (I assume) don't go probing to find out
if 'System RAM' is removable or not, loading a kdump kernel, along with the
user-space generated blob that describes the first kernel's memory usage to the
second kernel.

'user-space' here to distinguish all this from kexec_file_load().



Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
