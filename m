Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC25C1CD3AA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 10:20:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nDgHRMbD3Q4wzRkBKIuHvjiqCkdSCIkb+IIviBP35mo=; b=jX5OCsTkezaRN2
	kISsjSnX2CLYfhfSarRku+pKHrui3KNn4E0zcvVWVpeJjUZ1jRLlsy61NgJa9nih37xxO/pZicZfz
	q52HJfrj44A5HTjbDCe6zUfYJo2tB2ZXoxdF5hV6EuCu1YpQOG6M0IIc0hBk/0qZGqIzHwBMvETb0
	ge/+fae1VbFPVnh8m9G/PKMxpSbcJy6b13juTgqEcxi/jt0SbYbtx2NYHqzp8c3sn8Tjwp4UqVZqZ
	kmsVRRw80DmnDZf4/zr9jCRcLw7XxL6TgBkrQo3f4ZjnsnCKKc9XJ1dRc29hz8wcyVSiXm/wt7IT8
	jDBXcvo4SNzs4vL5w3Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY3fh-0006tR-H1; Mon, 11 May 2020 08:20:21 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY3fN-0006Q7-7e
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 08:20:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589185196;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=ED/KtwWNX8kZtzKBB+JiqfmDOUSoCgGCG/AbtIBSQP8=;
 b=R/qIbykAaL33haYFlSMlfWB/DDZ8+UJCUwVz047lN2zQ08Z+FwxL6yMVaQY/dYMiqzN9Iv
 zmNMdZFDl2gmklC85JtafoSg8RgrCIdjHOhodwpcaYQPGRdLwwtRws4ZQx1e9hPk7fLlRQ
 WsWza9D7yxjfEyoqKVmwjCQqIhIU+7Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-198-4--R5nExO7KgkjxykuuPfg-1; Mon, 11 May 2020 04:19:52 -0400
X-MC-Unique: 4--R5nExO7KgkjxykuuPfg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5636E8015CF;
 Mon, 11 May 2020 08:19:51 +0000 (UTC)
Received: from [10.36.114.224] (ovpn-114-224.ams2.redhat.com [10.36.114.224])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EE92510016DA;
 Mon, 11 May 2020 08:19:46 +0000 (UTC)
Subject: Re: [PATCH] kexec: Discard loaded image on memory hotplug
To: "Eric W. Biederman" <ebiederm@xmission.com>
References: <20200501165701.24587-1-james.morse@arm.com>
 <40b07632-b044-d1cd-96a2-81eec3da93e7@redhat.com>
 <8736892l92.fsf@x220.int.ebiederm.org>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; prefer-encrypt=mutual; keydata=
 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
Organization: Red Hat GmbH
Message-ID: <a1c162fe-74de-c5ca-dadf-d451e970fdea@redhat.com>
Date: Mon, 11 May 2020 10:19:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <8736892l92.fsf@x220.int.ebiederm.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_012001_357561_C9F5C26D 
X-CRM114-Status: GOOD (  21.59  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Baoquan He <bhe@redhat.com>, kexec@lists.infradead.org, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>, Dave Young <dyoung@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09.05.20 17:14, Eric W. Biederman wrote:
> David Hildenbrand <david@redhat.com> writes:
> 
>> On 01.05.20 18:57, James Morse wrote:
>>> On x86, the kexec payload contains a copy of the current memory map.
>>> If memory is added or removed, this copy of the memory map becomes
>>> stale. Getting this wrong may prevent the next kernel from booting.
>>> The first kernel may die if it tries to re-assemble the next kernel
>>> in memory that has been removed.
>>>
>>> Discard the loaded kexec image when the memory map changes, user-space
>>> should reload it.
>>>
>>> Kdump is unaffected, as it is placed within the crashkernel reserved
>>> memory area and only uses this memory. The stale memory map may affect
>>> generation of the vmcore, but the kdump kernel should be in a position
>>> to validate it.
>>>
>>> Signed-off-by: James Morse <james.morse@arm.com>
>>> ---
>>> This patch obsoletes:
>>>  * kexec/memory_hotplug: Prevent removal and accidental use
>>> https://lore.kernel.org/linux-arm-kernel/20200326180730.4754-1-james.morse@arm.com/
>>>
>>>  kernel/kexec_core.c | 40 ++++++++++++++++++++++++++++++++++++++++
>>>  1 file changed, 40 insertions(+)
>>>
>>> diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
>>> index c19c0dad1ebe..e1901e5bd4b5 100644
>>> --- a/kernel/kexec_core.c
>>> +++ b/kernel/kexec_core.c
>>> @@ -12,6 +12,7 @@
>>>  #include <linux/slab.h>
>>>  #include <linux/fs.h>
>>>  #include <linux/kexec.h>
>>> +#include <linux/memory.h>
>>>  #include <linux/mutex.h>
>>>  #include <linux/list.h>
>>>  #include <linux/highmem.h>
>>> @@ -22,10 +23,12 @@
>>>  #include <linux/elf.h>
>>>  #include <linux/elfcore.h>
>>>  #include <linux/utsname.h>
>>> +#include <linux/notifier.h>
>>>  #include <linux/numa.h>
>>>  #include <linux/suspend.h>
>>>  #include <linux/device.h>
>>>  #include <linux/freezer.h>
>>> +#include <linux/pfn.h>
>>>  #include <linux/pm.h>
>>>  #include <linux/cpu.h>
>>>  #include <linux/uaccess.h>
>>> @@ -1219,3 +1222,40 @@ void __weak arch_kexec_protect_crashkres(void)
>>>  
>>>  void __weak arch_kexec_unprotect_crashkres(void)
>>>  {}
>>> +
>>> +/*
>>> + * If the memory layout changes, any loaded kexec image should be evicted
>>> + * as it may contain a copy of the (now stale) memory map. This also means
>>> + * we don't need to check the memory is still present when re-assembling the
>>> + * new kernel at machine_kexec() time.
>>> + */
>>
>> Onlining/offlining is not a change of the memory map.
> 
> Phrasing it that way is non-sense.  What is important is memory
> available in the system.  A memory map is just a reflection upon that,
> a memory map is not the definition of truth.
> 
> So if this notifier reflects when memory is coming and going on the
> system this is a reasonable approach.  
> 
> Do these notifiers might fire for special kinds of memory that should
> only be used for very special purposes?
> 
> This change with the addition of some filters say to limit taking action
> to MEM_ONLINE and MEM_OFFLINE looks reasonable to me.  Probably also
> filtering out special kinds of memory that is not gernally useful.

There are cases, where this notifier will not get called (e.g., hotplug
a DIMM and don't online it) or will get called, although nothing changed
(offline+re-online to a different zone triggered by user space). AFAIK,
nothing in kexec (*besides kdump) cares about online vs. offline memory.
This is why this feels wrong.

add_memory()/try_remove_memory() is the place where:
- Memblocks are created/deleted (if the memblock allocator is still
  alive)
- Memory resources are created/deleted (e.g., reflected in /proc/iomem)
- Firmware memmap entries are created/deleted (/sys/firmware/memmap)

My idea would be to add something like
kexec_map_add()/kexec_map_remove() where we have
firmware_map_add_hotplug()/firmware_map_remove(). From there, we can
unload the kexec image like done in this patch.

And these callbacks might come in handy for fixing up the kexec initial
memmap in case of kexec_file_load(). AFAIKS on x86_64:
- Hotplugging a DIMM will not add that memory to
  e820_table_kexec
- Hotunplugging a DIMM will not remove that memory from e820_table_kexec

Maybe we have similar things to handle on other architectures.

-- 
Thanks,

David / dhildenb


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
