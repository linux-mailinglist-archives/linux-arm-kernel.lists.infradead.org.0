Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 317D31CD908
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:55:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ykiBJd2KMImDutZxvFmeue4HQEyxn+QHlsL6c1aKkKM=; b=tRULJXQLrsv5m3
	olOspeuhU/jMxdILl0WxhrAT+SSwi8vtSRSWSQ6DLcPQbcgapJXrl4egmE5Fyo6Lw6FEnKyiPbhy4
	YGhEb2WzHchF1JV/TKnS//B5t2cgLUgfu9GEK8yTCCogooOZqdJX2iKyaVuKBpsQnewIgYVc7afCp
	7yvJ2wT3ihjulKy1XXStVQXTLoCiIHNlqyI2N9ke1LwVYLWWQcYVROFJSkdcgM4oKQmvsPYGzta8z
	tHX1BT8uJSGPAXK/h8owDJRWjCcl+5BiW1nVJThTTROqZiGuc8fWqTa8dcZ06ZoDdK4yZqFwUqnED
	zEUXCDiquTNjrC0nOEYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY71v-0005do-ON; Mon, 11 May 2020 11:55:31 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY71f-0005bu-CR
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:55:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589198114;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=c2o2M4n7YJ/8XGTrJnyeXlDKP3CnV2f+72tEcdYOn+Q=;
 b=P/RZ0P3s5ZIG5GFy2PtHvL2qXTeTKGsKC6lP9OcX+O/NWSh/+zJkI2JlV/3324mvPThWVU
 hZCzTvy76Kxvby4sS6BpMQ+1UFZqN3YV9NvbfVHr5Nj0kqcsAxefVRXYllhjJhWaqmqGBs
 IsG+ZPSzaw5yEl4RzeH4A4KZa8MQLk8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-480-kpLgC3nCN8OFxtpG8FNZ4g-1; Mon, 11 May 2020 07:55:10 -0400
X-MC-Unique: kpLgC3nCN8OFxtpG8FNZ4g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EB7CE835B40;
 Mon, 11 May 2020 11:55:08 +0000 (UTC)
Received: from [10.36.114.224] (ovpn-114-224.ams2.redhat.com [10.36.114.224])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5D0E017B16;
 Mon, 11 May 2020 11:55:03 +0000 (UTC)
Subject: Re: [PATCH] kexec: Discard loaded image on memory hotplug
To: Baoquan He <bhe@redhat.com>
References: <20200501165701.24587-1-james.morse@arm.com>
 <40b07632-b044-d1cd-96a2-81eec3da93e7@redhat.com>
 <8736892l92.fsf@x220.int.ebiederm.org>
 <a1c162fe-74de-c5ca-dadf-d451e970fdea@redhat.com>
 <20200511112755.GB4922@MiWiFi-R3L-srv>
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
Message-ID: <04c8edd0-5c67-3ba7-5f87-c16a47b2af5c@redhat.com>
Date: Mon, 11 May 2020 13:55:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200511112755.GB4922@MiWiFi-R3L-srv>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_045515_497695_7D659E35 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
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
Cc: kexec@lists.infradead.org, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Dave Young <dyoung@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11.05.20 13:27, Baoquan He wrote:
> On 05/11/20 at 10:19am, David Hildenbrand wrote:
>> On 09.05.20 17:14, Eric W. Biederman wrote:
>>>>> + * If the memory layout changes, any loaded kexec image should be evicted
>>>>> + * as it may contain a copy of the (now stale) memory map. This also means
>>>>> + * we don't need to check the memory is still present when re-assembling the
>>>>> + * new kernel at machine_kexec() time.
>>>>> + */
>>>>
>>>> Onlining/offlining is not a change of the memory map.
>>>
>>> Phrasing it that way is non-sense.  What is important is memory
>>> available in the system.  A memory map is just a reflection upon that,
>>> a memory map is not the definition of truth.
>>>
>>> So if this notifier reflects when memory is coming and going on the
>>> system this is a reasonable approach.  
>>>
>>> Do these notifiers might fire for special kinds of memory that should
>>> only be used for very special purposes?
>>>
>>> This change with the addition of some filters say to limit taking action
>>> to MEM_ONLINE and MEM_OFFLINE looks reasonable to me.  Probably also
>>> filtering out special kinds of memory that is not gernally useful.
>>
>> There are cases, where this notifier will not get called (e.g., hotplug
>> a DIMM and don't online it) or will get called, although nothing changed
>> (offline+re-online to a different zone triggered by user space). AFAIK,
>> nothing in kexec (*besides kdump) cares about online vs. offline memory.
>> This is why this feels wrong.
>>
>> add_memory()/try_remove_memory() is the place where:
>> - Memblocks are created/deleted (if the memblock allocator is still
>>   alive)
>> - Memory resources are created/deleted (e.g., reflected in /proc/iomem)
>> - Firmware memmap entries are created/deleted (/sys/firmware/memmap)
>>
>> My idea would be to add something like
>> kexec_map_add()/kexec_map_remove() where we have
>> firmware_map_add_hotplug()/firmware_map_remove(). From there, we can
>> unload the kexec image like done in this patch.
> 
> Hi David,
> 
> I may miss some details, do you know why we have to unload the kexec image
> when add/remove memory?
> 
> If this is applied, even kexec_file_load is also affected. As we
> discussed, kexec_file_load is not impacted by kinds of memory
> adding/removing at all.

kexec_load():

1. kexec-tools could have placed kexec images on memory that will be
removed.

2. the memory map of the guest is stale (esp., might still contain
hotunplugged memory). /sys/firmware/memmap and /proc/iomem will be
updated, so kexec-tools can fix this up.


kexec_file_load():

1. kexec could have placed kexec images on memory that will be removed,
especially when kexec_locate_mem_hole() is called to locate memory top-down.

IIRC, the memory map might also be stale and I agree that unloading
won't actually change something here (needs different fixes as I
explained regarding the kexec e820 map). Think about unplugging a DIMM
that was described in the e820 map during boot and was put into the
MOVABLE zone using cmdline parameters like "movablecore". After unplug,
it will still be described in the kexec e820 map.

I agree that we might might be able to make smarter decisions in the
kernel regarding kexec_file_load() - for example, try to find new
locations for kexec images. For now, this seems to be simple.

> 
> Besides, if unload image in casae memory added/removed, we will accept
> that the later 'kexec -e' is actually rebooting?

At least in the kernel, kernel_kexec() will bail out in case there is no
kexec_image loaded anymore. And we printed a message, so we can at least
figure out what happened.

Where is this rebooting you mention performed in case there is no image
loaded?

-- 
Thanks,

David / dhildenb


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
