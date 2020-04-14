Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 866181A87C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:42:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMj5MGt4cbTucbA+9JJS4oMAZx2A+eIG7kyCgMPZ9ew=; b=p/NHyyrbPScMiU
	5VNTqtTziNdr3SBxdJy+ygCKjP9QTKqMIt+90qkIdcJE3TDWMG8/Hp0b1P7rQg0jUeo0xGMA+sfAV
	S6w16JgXpJW57TWkaRq5duItMC+fX34E0zTgFXOefwTtYY207KeELLi+BLGMh24WqTRhwHdgSQC91
	5eJrQS32y4n40/ubGKWxGsWbYPLhgOBMyxbbuc6FOWAwTEW83IiXiVx47DHXJ5uhF/JHDQ008pNkc
	hfXt1a/4PlKR7rvKI7W1By2hxoNeRt7wbAicMqIQmyExqyHL59G1WWekSs5+PO59l/FWGlMOIaV7S
	NqUy4IeBwwSYVwVWfAWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPZb-0003gd-RO; Tue, 14 Apr 2020 17:42:11 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPZS-0003ey-Dl
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:42:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586886120;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=qn0/4XY06lpfXEJgej6IE7ApzvujuJKV34PVJTmqIWs=;
 b=Uby3x8ECduaXaXPFp32kg+9hw4iSC3omj321oaT9vMO3lxtqbCzQotvdIBRQl/SbGri3Fg
 rrYDz4IkOuAsJDVJl93pEBmhr7DtGitP2He8VqKYEWgSmZl6AJ1oDyQU0N4St6sdDmS485
 mFSKSV7oegHXk5m26UTEFEC6yvyFN3A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-125-jlHfDNqCNK625HRip7BnHA-1; Tue, 14 Apr 2020 13:41:59 -0400
X-MC-Unique: jlHfDNqCNK625HRip7BnHA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F2350149C0;
 Tue, 14 Apr 2020 17:41:56 +0000 (UTC)
Received: from [10.36.113.201] (ovpn-113-201.ams2.redhat.com [10.36.113.201])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7C5B09F989;
 Tue, 14 Apr 2020 17:41:54 +0000 (UTC)
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
To: James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>
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
 <ba481c82-c69e-043c-4b66-2d2c7732cf07@redhat.com>
 <20200410121013.03b609fd572504c03a666f4a@linux-foundation.org>
 <4ed2fa36-fcd8-7150-03d1-35f15e595ebb@redhat.com>
 <2e3419b2-d00c-51c3-9b45-9de114608cdf@arm.com>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; prefer-encrypt=mutual; keydata=
 mQINBFXLn5EBEAC+zYvAFJxCBY9Tr1xZgcESmxVNI/0ffzE/ZQOiHJl6mGkmA1R7/uUpiCjJ
 dBrn+lhhOYjjNefFQou6478faXE6o2AhmebqT4KiQoUQFV4R7y1KMEKoSyy8hQaK1umALTdL
 QZLQMzNE74ap+GDK0wnacPQFpcG1AE9RMq3aeErY5tujekBS32jfC/7AnH7I0v1v1TbbK3Gp
 XNeiN4QroO+5qaSr0ID2sz5jtBLRb15RMre27E1ImpaIv2Jw8NJgW0k/D1RyKCwaTsgRdwuK
 Kx/Y91XuSBdz0uOyU/S8kM1+ag0wvsGlpBVxRR/xw/E8M7TEwuCZQArqqTCmkG6HGcXFT0V9
 PXFNNgV5jXMQRwU0O/ztJIQqsE5LsUomE//bLwzj9IVsaQpKDqW6TAPjcdBDPLHvriq7kGjt
 WhVhdl0qEYB8lkBEU7V2Yb+SYhmhpDrti9Fq1EsmhiHSkxJcGREoMK/63r9WLZYI3+4W2rAc
 UucZa4OT27U5ZISjNg3Ev0rxU5UH2/pT4wJCfxwocmqaRr6UYmrtZmND89X0KigoFD/XSeVv
 jwBRNjPAubK9/k5NoRrYqztM9W6sJqrH8+UWZ1Idd/DdmogJh0gNC0+N42Za9yBRURfIdKSb
 B3JfpUqcWwE7vUaYrHG1nw54pLUoPG6sAA7Mehl3nd4pZUALHwARAQABtCREYXZpZCBIaWxk
 ZW5icmFuZCA8ZGF2aWRAcmVkaGF0LmNvbT6JAlgEEwEIAEICGwMFCQlmAYAGCwkIBwMCBhUI
 AgkKCwQWAgMBAh4BAheAFiEEG9nKrXNcTDpGDfzKTd4Q9wD/g1oFAl3pImkCGQEACgkQTd4Q
 9wD/g1o+VA//SFvIHUAvul05u6wKv/pIR6aICPdpF9EIgEU448g+7FfDgQwcEny1pbEzAmiw
 zAXIQ9H0NZh96lcq+yDLtONnXk/bEYWHHUA014A1wqcYNRY8RvY1+eVHb0uu0KYQoXkzvu+s
 Dncuguk470XPnscL27hs8PgOP6QjG4jt75K2LfZ0eAqTOUCZTJxA8A7E9+XTYuU0hs7QVrWJ
 jQdFxQbRMrYz7uP8KmTK9/Cnvqehgl4EzyRaZppshruKMeyheBgvgJd5On1wWq4ZUV5PFM4x
 II3QbD3EJfWbaJMR55jI9dMFa+vK7MFz3rhWOkEx/QR959lfdRSTXdxs8V3zDvChcmRVGN8U
 Vo93d1YNtWnA9w6oCW1dnDZ4kgQZZSBIjp6iHcA08apzh7DPi08jL7M9UQByeYGr8KuR4i6e
 RZI6xhlZerUScVzn35ONwOC91VdYiQgjemiVLq1WDDZ3B7DIzUZ4RQTOaIWdtXBWb8zWakt/
 ztGhsx0e39Gvt3391O1PgcA7ilhvqrBPemJrlb9xSPPRbaNAW39P8ws/UJnzSJqnHMVxbRZC
 Am4add/SM+OCP0w3xYss1jy9T+XdZa0lhUvJfLy7tNcjVG/sxkBXOaSC24MFPuwnoC9WvCVQ
 ZBxouph3kqc4Dt5X1EeXVLeba+466P1fe1rC8MbcwDkoUo65Ag0EVcufkQEQAOfX3n0g0fZz
 Bgm/S2zF/kxQKCEKP8ID+Vz8sy2GpDvveBq4H2Y34XWsT1zLJdvqPI4af4ZSMxuerWjXbVWb
 T6d4odQIG0fKx4F8NccDqbgHeZRNajXeeJ3R7gAzvWvQNLz4piHrO/B4tf8svmRBL0ZB5P5A
 2uhdwLU3NZuK22zpNn4is87BPWF8HhY0L5fafgDMOqnf4guJVJPYNPhUFzXUbPqOKOkL8ojk
 CXxkOFHAbjstSK5Ca3fKquY3rdX3DNo+EL7FvAiw1mUtS+5GeYE+RMnDCsVFm/C7kY8c2d0G
 NWkB9pJM5+mnIoFNxy7YBcldYATVeOHoY4LyaUWNnAvFYWp08dHWfZo9WCiJMuTfgtH9tc75
 7QanMVdPt6fDK8UUXIBLQ2TWr/sQKE9xtFuEmoQGlE1l6bGaDnnMLcYu+Asp3kDT0w4zYGsx
 5r6XQVRH4+5N6eHZiaeYtFOujp5n+pjBaQK7wUUjDilPQ5QMzIuCL4YjVoylWiBNknvQWBXS
 lQCWmavOT9sttGQXdPCC5ynI+1ymZC1ORZKANLnRAb0NH/UCzcsstw2TAkFnMEbo9Zu9w7Kv
 AxBQXWeXhJI9XQssfrf4Gusdqx8nPEpfOqCtbbwJMATbHyqLt7/oz/5deGuwxgb65pWIzufa
 N7eop7uh+6bezi+rugUI+w6DABEBAAGJAiUEGAECAA8FAlXLn5ECGwwFCQlmAYAACgkQTd4Q
 9wD/g1qA6w/+M+ggFv+JdVsz5+ZIc6MSyGUozASX+bmIuPeIecc9UsFRatc91LuJCKMkD9Uv
 GOcWSeFpLrSGRQ1Z7EMzFVU//qVs6uzhsNk0RYMyS0B6oloW3FpyQ+zOVylFWQCzoyyf227y
 GW8HnXunJSC+4PtlL2AY4yZjAVAPLK2l6mhgClVXTQ/S7cBoTQKP+jvVJOoYkpnFxWE9pn4t
 H5QIFk7Ip8TKr5k3fXVWk4lnUi9MTF/5L/mWqdyIO1s7cjharQCstfWCzWrVeVctpVoDfJWp
 4LwTuQ5yEM2KcPeElLg5fR7WB2zH97oI6/Ko2DlovmfQqXh9xWozQt0iGy5tWzh6I0JrlcxJ
 ileZWLccC4XKD1037Hy2FLAjzfoWgwBLA6ULu0exOOdIa58H4PsXtkFPrUF980EEibUp0zFz
 GotRVekFAceUaRvAj7dh76cToeZkfsjAvBVb4COXuhgX6N4pofgNkW2AtgYu1nUsPAo+NftU
 CxrhjHtLn4QEBpkbErnXQyMjHpIatlYGutVMS91XTQXYydCh5crMPs7hYVsvnmGHIaB9ZMfB
 njnuI31KBiLUks+paRkHQlFcgS2N3gkRBzH7xSZ+t7Re3jvXdXEzKBbQ+dC3lpJB0wPnyMcX
 FOTT3aZT7IgePkt5iC/BKBk3hqKteTnJFeVIT7EC+a6YUFg=
Organization: Red Hat GmbH
Message-ID: <61192c4b-770d-9b0c-b35b-a76cc3113e18@redhat.com>
Date: Tue, 14 Apr 2020 19:41:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <2e3419b2-d00c-51c3-9b45-9de114608cdf@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_104202_567983_731EA5B5 
X-CRM114-Status: GOOD (  28.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-mm@kvack.org, Eric Biederman <ebiederm@xmission.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>> While there are a couple of ideas floating around here, my current
>> suggestion would be either
>>
>> 1. Indicate all hotplugged memory as "System RAM (hotplugged)" in
>> /proc/iomem and the firmware memmap (on all architectures). This will
>> require kexec changes,
> 
>> but I would have assume that kexec has to be
>> updated in lock-step with the kernel
> 
> News to me: I was using the version I first built when arm64's support was new. I've only
> had to update it once when we had to change user-space.
> 
> I don't think debian updates kexec-tools when it updates the kernel.

I would assume they are also not pushing the latest-greatest kernel in
their current release, after settling on a kexec version, no?

I think you can assume new kernels to require new kexec-tools versions
to provide all features.

> Making changes to /proc/iomem means updating user-space again, (for kdump). I'd like to
> avoid that if its at all possible.

Yes, it's not desirable, but if all that's not working is a "not all
memory will be dumped out of the box", at least I think this is
tolerable. It's not like we're completely breaking kexec.

Your current arm64 patches require the same change AFAIKS - and I think
we already have arm64 hotplug support in Linux distros.

As I said, similarly, makedumpfile has to be upgraded with every kernel
release to make kdump work as expected. And that is no big news I hope :)

>> just like e.g., makedumpfile.
>> Modify kexec() to not place the kexec kernel on these areas (easy) but
>> still consider them as crash regions to dump. When loading a kexec
>> kernel, validate in the kernel that the memory is appropriate.
> 
> 
>> 2. Make kexec() reload the the kernel whenever we e.g., get a udev event
>> for removal of memory in /sys/devices/system/memory/.
> 
> I don't think we can rely on user-space to do something,
> 
> 
>> On every remove_memory(), invalidate the loaded kernel in the kernel.
> 
> This is an option, ... but its a change of behaviour. If user-space asks for two
> impossible things, the second request should fail. Having the first-one disappear is a bit
> spooky...

We are talking about corner cases that are already broken, no?

> 
> Fortunately user-space checks the 'kexec -l' bit happened before it calls reboot() behind
> 'kexec -e'. So this works, but is not intuitive.
> 
> ("Did I load it? What changed and when? oh, half a mile up in dmesg is a message saying
> the kernel discarded the kexec kernel last wednesday.")
> 
> 
>> As I mentioned somewhere, 1. will be interesting for virtio-mem, where
>> we don't want any kexec kernel to be placed on virtio-mem-added memory.
> 
> Do these virtio-mem-added regions need to be accessible by kdump?
> (do we already need a user-space change for that?)

Yes, they have to be accessible by kdump. Currently, they are also
exported as "System RAM" via /proc/iomem - which is why dumping works
e.g., on x86-64 (we'll have to increase the #of memory resources that
can be considered in the future, but that's a different story and only
applies when adding more than 100GB of memory via virtio-mem or so)

But as virtio-mem is fairly new (IOW, about to get queued for
integration soonish), I could still change the memory resources to show
up differently ("System RAM (hotplugged)", "System RAM (virtio-mem)",
etc.) and teach kexec about them.

But learning that we are having similar problems on arm64 (and
theoretically on Hyper-V), I think it makes sense to discuss a solution
that will solve the other issues as well.

> 
> 
> A third option, along the line of what I posted:
> 
> Split the 'offline' and 'removed' ideas, which David mentioned somewhere. We'd end up with
> (yet) another notifier chain, that prevents the memory being removed, but you can still

I dislike limiting memory unplug - and especially making remove_memory()
fail - just because somebody once thought it would be a good place to
load - in the future - some kexec binary onto it.

> mark it as offline in /sys/. (...I'm not quite sure why you would do that...)
> 
> This would need hooking up for ACPI (which covers x86 and arm64), and other architectures
> mechanisms for doing this...
> arm64 can then switch is arch hook that prevents 'bootmem' being removed to this new
> notifier chain, as the kernel can only boot from that was present at boot.


We have two different problems here, right?

1. Don't place kexec binaries on specific memory areas (e.g., arm64,
virtio-mem, hyper-v, ...)

2. Figure out what to do when unplugging memory that was selected as a
target for kexec binaries.


For 1, I have a feeling that /proc/iomem could be the right solution,
eventually requiring kexec changes to handle kdump properly (IOW, dump
all memory). Indicating all hotplugged memory as "System RAM
(hotplugged)" would be the way to go here.

For 2, I think we should unload all kexec images in case they overlap
with memory to be removed (e.g., remove_memory() notifier, which cannot
stop removal, it's only an indication), and make userspace reload kexec
via udev events.


Also, we have to think about kexec_file_load() to deal with 1.

-- 
Thanks,

David / dhildenb


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
