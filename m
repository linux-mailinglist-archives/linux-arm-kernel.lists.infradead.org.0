Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EA01A7777
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 11:37:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mKrrkF/O4o3TCWUQS9nlNmMnt2xS8e0fM/gn7VPd0Q4=; b=GL8UyLWgelruJZ
	xa07iHGYsXk+UHmRMSNMMuTYlS2qr5Hc4XAxF4e3yvRA10zMmxTcssUzwpxj0Ne9AJXPRowBzTymi
	NMLauVTEt7WzNkobc+0PTQDIdKQEGovyekUdSzLk0Hjv4tHBmI6hElDQey74LBRH6mh80MFMVP4LU
	jXogFB8qAbfHu1cat+iNq0Qi5FfrRGi7q/e2VFvcb65j+bH/OCJg/rC8A1OaQw75jFLi+xZCLYBR4
	K8MfT4rUislQ7WsnUXIn84OqxWYfJz72SRZDPEWLk0yPX/FA7w/y1MZXh2iLDANrM+KpTaJhf48Cj
	7bTFBigtjRBEcg7VM20g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOI0Q-0002Cm-1B; Tue, 14 Apr 2020 09:37:22 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOI0G-0002Av-P6
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 09:37:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586857031;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=F+e8d31+yFHyW+PwzGSt59ZUTL7KnqXHNqi9QCkJoK8=;
 b=TAKNCzTtsf7cszzwR6vH+Qax6b/UUGygbMOnGRtb68orli8n+prRqSpE5J7iNAYWwKcqc5
 CIjBaBUEOw0/4EwqEY1v6UPfZ5B8pwMlbnNu8fVs/6pTwDOD1AC0gxvt2JBp/xVxxTflqJ
 GDqgdY3jNwn7x2EoCM/jiZzBKSWwzEA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-411-10XFZthZP1qQl-MIZU0g0w-1; Tue, 14 Apr 2020 05:37:07 -0400
X-MC-Unique: 10XFZthZP1qQl-MIZU0g0w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E44FB1926DA4;
 Tue, 14 Apr 2020 09:37:05 +0000 (UTC)
Received: from [10.36.113.201] (ovpn-113-201.ams2.redhat.com [10.36.113.201])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DC0235C1B5;
 Tue, 14 Apr 2020 09:37:02 +0000 (UTC)
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
To: Baoquan He <bhe@redhat.com>
References: <20200410121013.03b609fd572504c03a666f4a@linux-foundation.org>
 <20200411034414.GH2129@MiWiFi-R3L-srv>
 <20200411093009.GH25745@shell.armlinux.org.uk>
 <20200412053507.GA4247@MiWiFi-R3L-srv>
 <20200412080836.GM25745@shell.armlinux.org.uk>
 <87wo6klbw0.fsf@x220.int.ebiederm.org>
 <20200413023701.GA20265@MiWiFi-R3L-srv>
 <871rorjzmc.fsf@x220.int.ebiederm.org> <20200414064031.GB4247@MiWiFi-R3L-srv>
 <86e96214-7053-340b-5c1a-ff97fb94d8e0@redhat.com>
 <20200414092201.GD4247@MiWiFi-R3L-srv>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; prefer-encrypt=mutual; keydata=
 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
Organization: Red Hat GmbH
Message-ID: <ad060c8a-8afe-3858-0a4f-27ff54ef4c68@redhat.com>
Date: Tue, 14 Apr 2020 11:37:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200414092201.GD4247@MiWiFi-R3L-srv>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_023712_979339_F6CC596E 
X-CRM114-Status: GOOD (  31.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
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
 Bhupesh Sharma <bhsharma@redhat.com>, linuxppc-dev@lists.ozlabs.org,
 kexec@lists.infradead.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14.04.20 11:22, Baoquan He wrote:
> On 04/14/20 at 10:00am, David Hildenbrand wrote:
>> On 14.04.20 08:40, Baoquan He wrote:
>>> On 04/13/20 at 08:15am, Eric W. Biederman wrote:
>>>> Baoquan He <bhe@redhat.com> writes:
>>>>
>>>>> On 04/12/20 at 02:52pm, Eric W. Biederman wrote:
>>>>>>
>>>>>> The only benefit of kexec_file_load is that it is simple enough from a
>>>>>> kernel perspective that signatures can be checked.
>>>>>
>>>>> We don't have this restriction any more with below commit:
>>>>>
>>>>> commit 99d5cadfde2b ("kexec_file: split KEXEC_VERIFY_SIG into KEXEC_SIG
>>>>> and KEXEC_SIG_FORCE")
>>>>>
>>>>> With KEXEC_SIG_FORCE not set, we can use kexec_load_file to cover both
>>>>> secure boot or legacy system for kexec/kdump. Being simple enough is
>>>>> enough to astract and convince us to use it instead. And kexec_file_load
>>>>> has been in use for several years on systems with secure boot, since
>>>>> added in 2014, on x86_64.
>>>>
>>>> No.  Actaully kexec_file_load is the less capable interface, and less
>>>> flexible interface.  Which is why it is appropriate for signature
>>>> verification.
>>>
>>> Well, everyone has a stance and the corresponding view. You could have
>>> wider view from long time maintenance and in upstrem position, and think
>>> kexec_file_load is horrible. But I can only see from our work as a front
>>> line engineer to maintain/develop kexec/kdump in RHEL, and think
>>> kexec_file_load is easier to maintain.
>>>
>>> Surely except of multiple kernel image format support. No matter it is
>>> kexec_load and kexec_file_load, e.g in x86_64, we only support bzImage.
>>> This is produced from kerel building by default. We have no way to
>>> support it in our distros and add it into kexec_file_load.
>>>
>>> [RFC PATCH] x86/boot: make ELF kernel multiboot-able
>>> https://lkml.org/lkml/2017/2/15/654
>>>
>>>>
>>>>>> kexec_load in every other respect is the more capable and functional
>>>>>> interface.  It makes no sense to get rid of it.
>>>>>>
>>>>>> It does make sense to reload with a loaded kernel on memory hotplug.
>>>>>> That is simple and easy.  If we are going to handle something in the
>>>>>> kernel it should simple an automated unloading of the kernel on memory
>>>>>> hotplug.
>>>>>>
>>>>>>
>>>>>> I think it would be irresponsible to deprecate kexec_load on any
>>>>>> platform.
>>>>>>
>>>>>> I also suspect that kexec_file_load could be taught to copy the dtb
>>>>>> on arm32 if someone wants to deal with signatures.
>>>>>>
>>>>>> We definitely can not even think of deprecating kexec_load until
>>>>>> architecture that supports it also supports kexec_file_load and everyone
>>>>>> is happy with that interface.  That is Linus's no regression rule.
>>>>>
>>>>> I should pick a milder word to express our tendency and tell our plan
>>>>> then 'obsolete'. Even though I added 'gradually', seems it doesn't help
>>>>> much. I didn't mean to say 'deprecate' at all when replied.
>>>>>
>>>>> The situation and trend I understand about kexec_load and kexec_file_load
>>>>> are:
>>>>>
>>>>> 1) Supporting kexec_file_load is suggested to add in ARCHes which don't
>>>>> have yet, just as x86_64, arm64 and s390 have done;
>>>>>  
>>>>> 2) kexec_file_load is suggested to use, and take precedence over
>>>>> kexec_load in the future, if both are supported in one ARCH.
>>>>
>>>> The deep problem is that kexec_file_load is distinctly less expressive
>>>> than kexec_load.
>>>>
>>>>> 3) Kexec_load is kept being used by ARCHes w/o kexc_file_load support,
>>>>> and by ARCHes for back compatibility w/ kexec_file_load support.
>>>>>
>>>>> For 1) and 2), I think the reason is obvious as Eric said,
>>>>> kexec_file_load is simple enough. And currently, whenever we got a bug
>>>>> report, we may need fix them twice, for kexec_load and kexec_file_load.
>>>>> If kexec_file_load is made by default, e.g on x86_64, we will change it
>>>>> in kernel space only, for kexec_file_load. This is what I meant about
>>>>> 'obsolete gradually'. I think for arm64, s390, they will do these too.
>>>>> Unless there's some critical/blocker bug in kexec_load, to corrupt the
>>>>> old kexec_load interface in old product.
>>>>
>>>> Maybe.  The code that kexec_file_load sucked into the kernel is quite
>>>> stable and rarely needs changes except during a port of kexec to
>>>> another architecture.
>>>>
>>>> Last I looked the real maintenance effor of kexec and kexec on panic was
>>>> in the drivers.  So I don't think we can use maintenance to do anything.
>>>
>>> Not sure if I got it. But if check Lianbo's patches, a lot of effort has
>>> been taken to make SEV work well on kexec_file_load. And we have
>>> switched to use kexec_file_load in the newly published  Fedora release
>>> on x86_64 by default. Before this, Lianbo has investigated and done many
>>> experiments to make sure the switching is safe. We finally made this
>>> decision. Next we will do the switch in Enterprise distros. Once these
>>> are proved safe, we will suggest customers to use kexec_file_load for
>>> kexec rebooting too. In the future, we will only care about
>>> kexec_file_load if everying is going well. But as I have explained
>>> repeatedly, only caring about kexec_file_load means we will leave
>>> kexec_load as is, we will not add new feature or improvement patches
>>> for it.
>>>
>>> commit 6a20bd54473e11011bf2b47efb52d0759d412854
>>> Author: Lianbo Jiang <lijiang@redhat.com>
>>> Date:   Thu Jan 16 13:47:35 2020 +0800
>>>
>>>     kdump-lib: switch to the kexec_file_load() syscall on x86_64 by default
>>>
>>>>
>>>>> For 3), people can still use kexec_load and develop/fix for it, if no
>>>>> kexec_file_load supported. But 32-bit arm should be a different one,
>>>>> more like i386, we will leave it as is, and fix anything which could
>>>>> break it. But people really expects to improve or add feature to it? E.g
>>>>> in this patchset, the mem hotplug issue James raised, I assume James is
>>>>> focusing on arm64, x86_64, but not 32-bit arm. As DavidH commented in
>>>>> another reply, people even don't agree to continue supporting memory
>>>>> hotplug on 32-bit system. We ever took effort to fix a memory hotplug
>>>>> bug on i386 with a patch, but people would rather set it as BROKEN.
>>>>
>>>> For memory hotplug just reload.  Userspace already gets good events.
>>>
>>> Kexec_file_load is easy to maintain. This is an example.
>>>
>>> Lock the hotplug area where kexed-ed kernel is targeted in this patchset,
>>> it's obviously not right. We can't disable memory hotplug just because
>>> kexec-ed kernel is loaded ahead of time. 
>>>
>>> Reloading is also not a good fix. Kexec-ed kernel is targeted at a
>>> movable area, reloading can avoid kexec rebooting corruption if that
>>> area is hot removed. But if that area is not removed, locating kernel
>>> into the hotpluggable area will change the area into ummovable zone.
>>> Unless we decide to not support memory hotplug in kexec-ed kernel, I
>>> guess it's very hard. Now in our distros kexec rebooting has been
>>> supported, the big cloud providers are deploying linux in guest, bugs on
>>> kexec reboot failure has been reported. They need the memory hotplug to
>>> increase/decrease memory.
>>>
>>> The root cause is kexec-ed kernel is targeted at hotpluggable memory
>>> region. Just avoiding the movable area can fix it. In kexec_file_load(),
>>> just checking or picking those unmovable region to put kernel/initrd in
>>> function locate_mem_hole_callback() can fix it. The page or pageblock's
>>> zone is movable or not, it's easy to know. This fix doesn't need to
>>> bother other component.
>>
>> I don't fully agree. E.g., just because memory is onlined to ZONE_NORMAL
>> does not imply that it cannot get offlined and removed e.g., this is
>> heavily used on ppc64, with 16MB sections.
> 
> Really? I just know there are two kinds of mem hoplug in ppc, but don't
> know the details. So in this case, is there any flag or a way to know
> those memory block are hotpluggable? I am curious how those kernel data
> is avoided to be put in this area. Or ppc just freely uses it for kernel
> data or user space data, then try to migrate when hot remove?

See
arch/powerpc/platforms/pseries/hotplug-memory.c:dlpar_memory_remove_by_count()

Under DLAPR, it can remove memory in LMB granularity, which is usually
16MB (== single section on ppc64). DLPAR will directly online all
hotplugged memory (LMBs) from the kernel using device_online(), which
will go to ZONE_NORMAL.

When trying to remove memory, it simply scans for offlineable 16MB
memory blocks (==section == LMB), offlines and removes them. No need for
the movable zone and all the involved issues.

Now, the interesting question is, can we have LMBs added during boot
(not via add_memory()), that will later be removed via remove_memory().
IIRC, we had BUGs related to that, so I think yes. If a section contains
no unmovable allocations (after boot), it can get removed.

-- 
Thanks,

David / dhildenb


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
