Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A5E195DF0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 19:53:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2RFSsAg7hdJciwTo7/Co+Tzi6Qzg3On0s1+Oadl8q9Q=; b=LXqPoPWTQLbkWD
	bygoaIEI03L/SXwTp5qZ9zZwzk9ELGH2TiaLmkALWtRaYtwUT7NVir3xFz+b4rWuUvynaC/+eEFXs
	HejvzJ+H27vsfaLCl4JPuDsSi/RvC7L1oy9zSaoAPQSv0xWOxjhKqZCMBe72KaXXnjvud6BPaeQzY
	npIBST5wns9KeHLnG+1NEEbKUZPy+SurWHMfiQ8CAcd/f6gnY5tiNakKCRdFXGWvQHG7QdekwNYMZ
	I2fimE/mnruRVhOd3ecOPBNXc0LQ+gjAzFbSimfLooCUj4RcBiyr7YSxvIdBk+lOKbxCn3vb2gRjB
	BGY/8YznPk/mrrmTspVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHu6W-0005fA-DS; Fri, 27 Mar 2020 18:53:16 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHu6L-0005eK-PK
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 18:53:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585335184;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=txEf0iGAg57n1CQT9WASaoM403Qz9AV6Q5JbNyrOaE8=;
 b=hVpQCGs6VLQqG7/Z36+JiDPvQpLz2i5vOpGHCyFu39lRSfgXaoDlFB1ICGTMLa/Q/XakfL
 6nczl2p+PgTGDpGA58pKgQ6eCGP733eIkk61VsK3A3SAJd1NWr9KC6/z2yeN3vvTObyaPb
 soePZ7AJSZih9kbH/DFSaXprMxatcZI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-358-tF7bgkoVMviVZsRQ8b07nQ-1; Fri, 27 Mar 2020 14:52:59 -0400
X-MC-Unique: tF7bgkoVMviVZsRQ8b07nQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 39AD1800D5C;
 Fri, 27 Mar 2020 18:52:58 +0000 (UTC)
Received: from [10.36.112.108] (ovpn-112-108.ams2.redhat.com [10.36.112.108])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 937C05DA84;
 Fri, 27 Mar 2020 18:52:55 +0000 (UTC)
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
To: James Morse <james.morse@arm.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-2-james.morse@arm.com>
 <321e6bf7-e898-7701-dd60-6c25237ff9cd@redhat.com>
 <a21d90ea-2566-a2bc-ad2f-6464a416c97f@arm.com>
 <9cb4ea0d-34c3-de42-4b3f-ee25a59c4835@redhat.com>
 <b0443908-e36f-9bc4-4a8a-4206cb782d4b@arm.com>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; prefer-encrypt=mutual; keydata=
 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
Organization: Red Hat GmbH
Message-ID: <72672e2c-a57a-8df9-0cff-8035cbce7740@redhat.com>
Date: Fri, 27 Mar 2020 19:52:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <b0443908-e36f-9bc4-4a8a-4206cb782d4b@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_115305_906776_D8B3FA46 
X-CRM114-Status: GOOD (  30.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-mm@kvack.org, Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>> 2. You do the kexec. The kexec kernel will only operate on a reserved
>> memory region (reserved via e.g., kernel cmdline crashkernel=128M).
> 
> I think you are merging the kexec and kdump behaviours.
> (Wrong terminology? The things behind 'kexec -l Image' and 'kexec -p Image')

Oh, I see - I think your example below clarifies things. Something like
that should go in the cover letter if we end up in this patch being
required :)

(I missed that the problematic part is "random" addresses passed by user
space to the kernel, where it wants data to be loaded to on kexec -e)

> 
> For kdump, yes, the new kernel is loaded into the crashkernel reservation, and
> confined to it.
> 
> 
> For regular kexec, the new kernel can be loaded any where in memory. There might
> be a difference with how this works on arm64....
> 
> The regular kexec kernel isn't stored in its final location when its loaded, its
> relocated there when the image is executed. The target/destination memory may
> have been removed in the meantime.
> 
> (an example recipe below should clarify this)
> 
> 
>> Is it that in 2., the reserved memory region (for the crashkernel) could
>> have been offlined in the meantime?
> 
> No, for kdump: the crashkernel reservation is PG_reserved, and its not something
> mm knows how to move, so that region can't be taken offline.
> 
> (On arm64 we additionally prevent the boot-memory from being removed as it is
> all described as present by UEFI. The crashkernel reservation would always be
> from this type of memory)

Right.

> 
> 
> This is about a regular kexec, any crashdump reservation is irrelevant.
> This kexec kernel is temporarily stored out of line, then relocated when executed.
> 
> A recipe so that we're at least on the same terminal! This is on a TX2 running
> arm64's for-next/core using Qemu-TCG to emulate x86. (Sorry for the bizarre
> config, its because Qemu supports hotremove on x86, but not yet on arm64).
> 
> 
> Insert the memory:
> (qemu) object_add memory-backend-ram,id=mem1,size=1G
> (qemu) device_add pc-dimm,id=dimm1,memdev=mem1
> 
> | root@vm:~# free -m
> |               total        used        free      shared  ...
> | Mem:            918          52         814           0  ...
> | Swap:             0           0           0
> 
> 
> Bring it online:
> | root@vm:~# cd /sys/devices/system/memory/
> | root@vm:/sys/devices/system/memory# for F in memory3*; do echo \
> | online_movable > $F/state; done
> 
> | Built 1 zonelists, mobility grouping on.  Total pages: 251049
> | Policy zone: DMA32
> 
> | -bash: echo: write error: Invalid argument
> | root@vm:/sys/devices/system/memory# free -m
> |               total        used        free      shared  ...
> | Mem:           1942          53        1836           0  ...
> | Swap:             0           0           0
> 
> 
> Load kexec:
> | root@vm:/sys/devices/system/memory# kexec -l /root/bzImage --reuse-cmdline
> 

I assume this will trigger

kexec_load -> do_kexec_load -> kimage_load_segment ->
kimage_load_normal_segment -> kimage_alloc_page -> kimage_alloc_pages

Which will just allocate a bunch of pages and mark them reserved.

Now, AFAIKs, all allocations will be unmovable. So none of the kexec
segment allocations will actually end up on your DIMM (as it is onlined
online_movable).

So, the loaded image (with its segments) from user won't be problematic
and not get placed on your DIMM.


Now, the problematic part is (via man kexec_load) "mem and memsz specify
a physical address range that is the target of the copy."

So the place where the image will be "assembled" at when doing the
reboot. Understood :)

> Press the Attention button to request removal:
> 
> (qemu) device_del dimm1
> 
> | Offlined Pages 32768
> | Offlined Pages 32768
> | Offlined Pages 32768
> | Offlined Pages 32768
> | Offlined Pages 32768
> | Offlined Pages 32768
> | Offlined Pages 32768
> | Offlined Pages 32768
> | Built 1 zonelists, mobility grouping on.  Total pages: 233728
> | Policy zone: DMA32
> 
> The memory is gone:
> | root@vm:/sys/devices/system/memory# free -m
> |               total        used        free      shared  ...
> | Mem:            918          89         769           0  ...
> | Swap:             0           0           0
> 
> Trigger kexec:
> | root@vm:/sys/devices/system/memory# kexec -e
> 
> [...]
> 
> | sd 0:0:0:0: [sda] Synchronizing SCSI cache
> | kexec_core: Starting new kernel
> 
> ... and Qemu restarts the platform firmware instead of proceeding with kexec.
> (I assume this is a triple fault)
> 
> You can use mem-min and mem-max to control where kexec's user space will place
> the memory.
> 
> 
> If you apply this patch, the above sequence will fail at the device remove step,
> as the physical addresses match the loaded kexec image:
> 
> | Offlined Pages 32768
> | Offlined Pages 32768
> | Offlined Pages 32768
> | Offlined Pages 32768
> | Offlined Pages 32768
> | Offlined Pages 32768
> | Offlined Pages 32768
> | kexec_core: Memory region in use
> | kexec_core: Memory region in use

Okay, so I assume the kexec userspace tool provided target kernel
addresses for segments that reside on the DIMM.


> | memory memory39: Offline failed.
> | Built 1 zonelists, mobility grouping on.  Total pages: 299212
> | Policy zone: Normal
> 
> | root@vm:/sys/devices/system/memory# free -m
> |               total        used        free      shared  ...
> | Mem:           1942          90        1793           0    ...
> | Swap:             0           0           0
> 
> I can't remove the DIMM, because we failed to offline it:

I wonder if we should instead make the "kexec -e" fail. It tries to
touch random system memory.

Denying to offline MOVABLE memory should be avoided - and what kexec
does here sounds dangerous to me (allowing it to write random system
memory).

Roughly what I am thinking is this:

diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
index ba1d91e868ca..70c39a5307e5 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -1135,6 +1135,10 @@ int kernel_kexec(void)
                error = -EINVAL;
                goto Unlock;
        }
+       if (!kexec_image_validate()) {
+               error = -EINVAL;
+               goto Unlock;
+       }

 #ifdef CONFIG_KEXEC_JUMP
        if (kexec_image->preserve_context) {


kexec_image_validate() would go over all segments and validate that the
involved pages are actual valid memory (pfn_to_online_page()).

All we have to do is protect from memory hotplug until we switch to the
new kernel.

Will probably need some thought. But it will actually also bail out when
user space passes wrong physical memory addresses, instead of
triple-faulting silently.

-- 
Thanks,

David / dhildenb


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
