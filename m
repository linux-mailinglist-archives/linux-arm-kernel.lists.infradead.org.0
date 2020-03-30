Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B540198322
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 20:14:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wZr0HRWx37YM9SgkhHkzYd2d8uJROmeHNluhoe8HOfM=; b=BD6qtmjYe/2S/B
	0nD69g4FXmg7KzwZIYgrkdcKMu7Gu++RtnOSvyufkQjGpHfMOMzbppaV6PsfcfHIwS1pVXl9Ijp/2
	JZ6VlDLZ3YHTxt5TH/IG1/TnOIVUjrDen+cahz5LtvxfhbxIErDfJs2+hQQNoZFRGLa6SGKbrEGRC
	OAp6SMwCuAp06DR9u+JLGkZtHqM8u2cRNrwrpRjxf+L29SaCum+g6JQkpqdOL3KnJhOWEdwhtWcfV
	WvoGrv9FB/KirVegGIBLZLWFjIc9JLcQ1A7KwxRjmwNip+19VG6wv0XfuI486rcxdl9lu/ma4TZ8x
	oeCBMXnuaKAb6BZ00YfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIyvc-0008EI-9T; Mon, 30 Mar 2020 18:14:28 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIyvM-0008D3-8s
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 18:14:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585592051;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=WSSOiFHOZwW6Akj9RYyMY2jtCBIFW/zVvB8W9MGVsm8=;
 b=fyVKzhpwreYgHrkfeiu0+lVGR1OuyuLfnmdUBndqJlaxjKLQE964BcQjN33QPn3+tFN8uf
 L4Ftm+8Rf10BYgCjrypu8IEyfaMm8fOF5t2IFs7Y3E3e4MpEryDuncFejYaqZwdjJswFk9
 65CgSgjYnHRd0TDerZYHrLDPgn57j0Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-144-SvP_wE0yN56mWXsOdFH-og-1; Mon, 30 Mar 2020 14:14:08 -0400
X-MC-Unique: SvP_wE0yN56mWXsOdFH-og-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6B7C6149C3;
 Mon, 30 Mar 2020 18:14:06 +0000 (UTC)
Received: from [10.36.113.227] (ovpn-113-227.ams2.redhat.com [10.36.113.227])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EA6BA10016EB;
 Mon, 30 Mar 2020 18:14:03 +0000 (UTC)
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
To: James Morse <james.morse@arm.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-2-james.morse@arm.com>
 <321e6bf7-e898-7701-dd60-6c25237ff9cd@redhat.com>
 <a21d90ea-2566-a2bc-ad2f-6464a416c97f@arm.com>
 <9cb4ea0d-34c3-de42-4b3f-ee25a59c4835@redhat.com>
 <b0443908-e36f-9bc4-4a8a-4206cb782d4b@arm.com>
 <72672e2c-a57a-8df9-0cff-8035cbce7740@redhat.com>
 <34274b02-60ba-eb78-eacd-6dc1146ed3cd@arm.com>
 <80e4d1d7-f493-3f66-f700-86f18002d692@redhat.com>
 <dfacf85f-d79d-8742-7a13-1ac0a67bad04@arm.com>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; prefer-encrypt=mutual; keydata=
 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
Organization: Red Hat GmbH
Message-ID: <ba481c82-c69e-043c-4b66-2d2c7732cf07@redhat.com>
Date: Mon, 30 Mar 2020 20:14:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <dfacf85f-d79d-8742-7a13-1ac0a67bad04@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_111412_421401_0798BF2C 
X-CRM114-Status: GOOD (  30.83  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 30.03.20 19:17, James Morse wrote:
> Hi David,
> 
> On 3/30/20 2:13 PM, David Hildenbrand wrote:
>>> Adding a sentence about the way kexec load works may help, the first paragraph
>>> would read:
>>>
>>> | Kexec allows user-space to specify the address that the kexec image should be
>>> | loaded to. Because this memory may be in use, an image loaded for kexec is not
>>> | stored in place, instead its segments are scattered through memory, and are
>>> | re-assembled when needed. In the meantime, the target memory may have been
>>> | removed.
>>>
>>> Do you think thats clearer?
>>
>> Yes, very much. Maybe add, that the target is described by user space
>> during kexec_load() and that user space - right now - parses /proc/iomem
>> to find applicable system memory.
> 
> (I don't think x86 parses /proc/iomem anymore). I'll repost this patch with that
> expanded commit message, once we've agreed this is the right thing to do!

Right, I can see kexec-tools parsing /sys/firmware/memmap first.
Unfortunately, all hotplugged memory (via add_memory()) is indicated
there as System RAM ... including memory added by virtio-mem.

I think we should adapt the type there as well. (in your patch #2)

	firmware_map_add_hotplug(start, start + size, "System RAM");

> 
> 
>>>> I wonder if we should instead make the "kexec -e" fail. It tries to
>>>> touch random system memory.
>>>
>>> Heh, isn't touching random system memory what kexec does?!
>>
>> Having a racy user interface that can trigger kernel crashes feels very
>> wrong. We should limit the impact.
> 
> 
>>> Its all described to user-space as 'System RAM'. Teaching it to probe
>>> /sys/devices/memory/... would require a user-space change.
>>
>> I think we should really rename hotplugged memory on all architectures.
>>
>> Especially also relevant for virtio-mem/hyper-v balloon, where some
>> pieces of (hotplugged )memory blocks are partially unavailable and
>> should not be touched - accessing them results in unpredictable behavior
>> (e.g., crashes or discarded writes).
> 
> I'll need to look into these. I'd assume for KVM that virtio-mem can be brought
> back when its accessed ... its just going to be slow.

Touching unplugged virtio-mem memory can result in unpredictable
behavior. Touching (some) unplugged Hyper-V memory will be handled
similarly AFAIK.

[...]

>> 1. It's racy. If memory is getting offlined/unplugged just while user
>> space is about to trigger the kexec_load(), you end up with the very
>> same triple-fault.
> 
> load? How is this different to user-space providing a bogus address?

I guess it's not different. It's just racy because user space with good
intend could crash the system :)

> 
> Sure, user-space may take a nap between parsing /proc/iomem and calling
> kexec_load(), but the kernel should reject these as they would never work.
> 
> (I can't see where sanity_check_segment_list() considers the platform's memory.
> If it doesn't, we should fix it)

Right, that's what I meant. I was not able to find any sanity checks.
Maybe they are in place but I was not able to spot them.

> 
> Once the image is loaded, and clashes with a request to remove the memory there
> are two choices: secretly unload the image, or prevent the memory being taken
> offline.

Exactly. Or make "kexec -e" fail.

> 
> 
>> 2. It's semantically wrong. kexec does not need online memory ("managed
>> by the buddy"), but still you disallow offlining memory.
> 
> It does need the memory if you want 'kexec -e' to succeed.
> If there were any sanity tests, they should have happened at load time.

Offlining != removing. That's the point I was trying to make. (and we
don't want to block removing of memory in the kernel any other way)

> 
> The memory is effectively in use by the loaded kexec image. User-space told the
> kernel to use this memory, you should not be able to then remove it, without
> unloading the kexec image first.

It's not in use before you do the "kexec -e" IMHO.

> Are you saying feeding bogus addresses to kexec_load() is _expected_ to blow up
> like this?

No, not at all. I think this should be fixed if this is possible.

> 
>> I would really much rather want to see user-space choosing boot memory
>> (e.g., renaming hotplugged memory on all architectures), and checking
>> during "kexec -e" if the selected memory is actually "there", before
>> trying to write to it.
> 
> How does 'kexec -e' know where the kexec kernel was loaded? You'd need to pass
> something between 'load' and 'exec'. How do you keep existing user-space working
> as much as possible?

If we use new types (e.g., "System RAM (hotplugged)"), looks like most
of kexec will continue working (memory will be treated like
RANGE_RESERVED or ignored).

I guess we would still have to teach kexec-tools the new types,
primarily to keep the crash memory ranges from getting detected
properly. (no idea how they are used, will have to take a closer look)

> 
> What do you do if the memory isn't there? User-space just called reboot(), it
> would be better to avoid getting into the situation where we have to fail that call.

In kernel_kexec() we already fail if there is no kernel image loaded, so
we can similarly simply fail if the kernel image cannot be moved to the
target memory IMHO.

-- 
Thanks,

David / dhildenb


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
