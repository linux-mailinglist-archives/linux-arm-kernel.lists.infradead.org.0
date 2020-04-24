Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD811B6F1E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 09:40:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5N0JKRW0iBJLnSSx2OGwgn7eAZDW0IvJXmYiUatwtqg=; b=RboPsN2aGzylIO
	3fla8O2cPG1a+XZZElpoGTq/L0PBgHaWJzeU62tKhcMZ5G7uXt/5F5K+GK7TYfq594xuySCyjY4wj
	gw1BaZ23qKQbJTYxh6zUDdgESEqD3nqnbpF/Ks7RvV/zI34T4YTPUSkeKHy/fCJcOotKMM6Kj16hS
	mH/jpo8GdJaypw9iednPxCM8nPWt5tySLK8PpR6fbIzXZLZimvkJexKPZbpQukfsyHRsBKT8QwyM6
	gaQZW+oN4EbKsCB4IhO27+4E+IvZ6CLLhGLKQH2Kyair6KDe9jas9Ox9yhEOwRxrC/+ToYxzguRnX
	JUZg8UJTs+YV0es/rnGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRswA-0000Gf-2P; Fri, 24 Apr 2020 07:39:50 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRsvt-0000Fx-7Z
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 07:39:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587713972;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=aNxlKYwgJG4hi61htBIsmsJO7dK9IBMS50zV2gyXdls=;
 b=i/Pu0FR/dlRxEQhwYq+orrU6ImZb5YGc2VyxCfhr/1ZTiw5rcBYWutHFeizPr5oGNBiCXh
 Qm832flTsB1eAgxP6WcMsL6YkwpGih0mBV6WDeRaLPO6N0+vkQWqAQLXCTQbWOXbaRVcqp
 rXjK5VTDjskfcLTPgyYASqNIsDMZPnA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-470-RfVNamZaMp2cTOrg0kCeAA-1; Fri, 24 Apr 2020 03:39:30 -0400
X-MC-Unique: RfVNamZaMp2cTOrg0kCeAA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E926D461;
 Fri, 24 Apr 2020 07:39:28 +0000 (UTC)
Received: from [10.36.113.138] (ovpn-113-138.ams2.redhat.com [10.36.113.138])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A049D600E8;
 Fri, 24 Apr 2020 07:39:26 +0000 (UTC)
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
To: "Eric W. Biederman" <ebiederm@xmission.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-2-james.morse@arm.com>
 <87d088h4k8.fsf@x220.int.ebiederm.org>
 <a694cea6-4449-c77a-98f7-bd7a49cf47fc@arm.com>
 <87y2qn1r18.fsf@x220.int.ebiederm.org>
 <a29beedb-750b-b838-6c2a-6e47ade2186a@redhat.com>
 <87ftcuxj1a.fsf@x220.int.ebiederm.org>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; prefer-encrypt=mutual; keydata=
 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
Organization: Red Hat GmbH
Message-ID: <4ca41c5f-4cbf-342c-528a-d274c4e2ca10@redhat.com>
Date: Fri, 24 Apr 2020 09:39:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <87ftcuxj1a.fsf@x220.int.ebiederm.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_003933_350933_E257E06A 
X-CRM114-Status: GOOD (  24.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-mm@kvack.org, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23.04.20 18:29, Eric W. Biederman wrote:
> David Hildenbrand <david@redhat.com> writes:
> 
>>> The confusing part was talking about memory being still in use,
>>> that is actually scheduled for use in the future.
>>
>> +1
>>
>>>
>>>>> Usually somewhere in the loaded image
>>>>> is a copy of the memory map at the time the kexec kernel was loaded.
>>>>> That will invalidate the memory map as well.
>>>>
>>>> Ah, unconditionally. Sure, x86 needs this.
>>>> (arm64 re-discovers the memory map from firmware tables after kexec)
>>
>> Does this include hotplugged DIMMs e.g., under KVM?
>> [...]
> 
> As far as I know.  If the memory map changes we need to drop the loaded
> image.
> 
> 
> Having thought about it a little more I suspect it would be the
> other way and just block all hotplug actions after a kexec_load.
> As all we expect to happen is running shutdown scripts.
> 
> If blocking the hotplug action uses printk to print a nice message
> saying something like: "Hotplug blocked because of a loaded kexec image",
> then people will be able to figure out what is going on and
> call kexec -u if they haven't started the shutdown scripts yet.
> 
> 
> Either way it is something simple and unconditional that will make
> things work.
> 

Personally, I consider memory hotplug more important than keeping loaded
kexec data alive (just because somebody once decided to do a "kexec -l"
and never did a "kexec -e" we should not block any memory hot(un)plug -
especially in virtualized environments - for all eternity).

So IMHO we would invalidate loaded kexec data (not the crashkernel, of
course) on memory hot(un)plug and print a warning. In addition, we can
let kexec-tools try to reload whatever they loaded after getting
notified that something changed.

The "something changed" is visible to user space e.g., via udev events
for /sys/devices/memory/memoryX/

>>>>> All of this should be for a very brief window of a few seconds, as
>>>>> the loaded kexec image is quite short.
>>>>
>>>> It seems I'm the outlier anticipating anything could happen between
>>>> those syscalls.
>>>
>>> The design is:
>>> 	sys_kexec_load()
>>> 	shutdown scripts
>>>         sys_reboot(LINUX_REBOOT_CMD_KEXEC);
>>>
>>> There are two system call simply so that the shutdown scripts can run.
>>> Now maybe someone somewhere does something different but that is not
>>> expected.
>>>
>>> Only the kexec on panic kernel is expected to persist somewhat
>>> indefinitely.  But that should be in memory that is reserved from boot
>>> time, and so the memory hotplug should have enough visibility to not
>>> allow that memory to be given up.
>>
>> Yes, and AFAIK, memory blocks which hold the reserved crashkernel area
>> can usually not get offlined and, therefore, the memory cannot get removed.
>>
>> Interestingly, s390x even has a hotplug notifier for that
>>
>> arch/s390/kernel/setup.c:kdump_mem_notifier()
>>
>> (offlining of memory on s390x can result in memory getting depopulated
>> in the hypervisor, so after it would have been offlined, it would no
>> longer be accessible. I somewhat doubt that this notifier is really
>> needed - all pages in the crashkernel area should look like ordinary
>> allocated pages when the area is reserved early during boot via the
>> memblock allocator, and therefore offlining cannot succeed. But that's a
>> different story - and I suspect this is a leftover from pre-memblock times.)
> 
> It might be worth seeing if that is true, or if we need to generalize the
> s390x code.

I'll try to find some time to test if the s390x handler is still relevant.


-- 
Thanks,

David / dhildenb


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
