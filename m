Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7E1DE884
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 11:53:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m+tiZXo87lZ2oPmWLmh9Q2RbyL6c5dsnjIQDrunBPO0=; b=aUhIrcHCbyceZw
	u/zDyg9vMcE5nntEAb2pduNg3qKE2KW9W24IlQcTTOgI6Q4aDEPK0IVAWd6/Ba7b1ZDY4OVoI7hQt
	S1/XIXxxwBD86W6HJayRscexdjgWTnPlD8jshmbfARLa1F77dYxaTf6us/z2+CMqDI4TjalFVD/xF
	ysSpuGP/7WQOmY1fRoEwuuhJVPZAG4p4K0ke4myx5Gp8k+uoRR1CG3LAMwJxiooTlXWVd/vjzPNUx
	liZzw1qGlNLgOvcJMxzc4zc3okqNCXWESnbjvr0M7JBZebCU+MVlBCePo3n05+2gu+L93a0otx1rr
	OZXO0JwrltTxkyvnBDAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMUNF-0004p4-AW; Mon, 21 Oct 2019 09:53:13 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMUN5-0004oO-Kt
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 09:53:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6B8D715BE;
 Mon, 21 Oct 2019 02:52:51 -0700 (PDT)
Received: from [10.163.1.2] (unknown [10.163.1.2])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 613D93F718;
 Mon, 21 Oct 2019 02:52:43 -0700 (PDT)
Subject: Re: [PATCH V9 2/2] arm64/mm: Enable memory hot remove
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1570609308-15697-1-git-send-email-anshuman.khandual@arm.com>
 <1570609308-15697-3-git-send-email-anshuman.khandual@arm.com>
 <20191010113433.GI28269@mbp> <f51cdb20-ddc4-4fb7-6c45-791d2e1e690c@arm.com>
 <20191018094825.GD19734@arrakis.emea.arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <f5581644-42b7-097e-6a86-ba7db9d0b544@arm.com>
Date: Mon, 21 Oct 2019 15:23:11 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191018094825.GD19734@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_025303_773770_BC1C30D2 
X-CRM114-Status: GOOD (  30.76  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: mark.rutland@arm.com, david@redhat.com, linux-mm@kvack.org,
 arunks@codeaurora.org, cpandya@codeaurora.org, ira.weiny@intel.com,
 will@kernel.org, steven.price@arm.com, valentin.schneider@arm.com,
 suzuki.poulose@arm.com, Robin.Murphy@arm.com, broonie@kernel.org, cai@lca.pw,
 ard.biesheuvel@arm.com, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, steve.capper@arm.com,
 logang@deltatee.com, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, akpm@linux-foundation.org,
 mgorman@techsingularity.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/18/2019 03:18 PM, Catalin Marinas wrote:
> On Fri, Oct 11, 2019 at 08:26:32AM +0530, Anshuman Khandual wrote:
>> On 10/10/2019 05:04 PM, Catalin Marinas wrote:
>>> Mark Rutland mentioned at some point that, as a preparatory patch to
>>> this series, we'd need to make sure we don't hot-remove memory already
>>> given to the kernel at boot. Any plans here?
>>
>> Hmm, this series just enables platform memory hot remove as required from
>> generic memory hotplug framework. The path here is triggered either from
>> remove_memory() or __remove_memory() which takes physical memory range
>> arguments like (nid, start, size) and do the needful. arch_remove_memory()
>> should never be required to test given memory range for anything including
>> being part of the boot memory.
> 
> Assuming arch_remove_memory() doesn't (cannot) check, is there a risk on

Platform can definitely enumerate boot memory ranges. But checking on it in
arch_remove_memory() which deals with actual procedural details might not be
ideal IMHO. Refusing a requested removal attempt should have been done up in
the call chain. This will require making generic hot plug reject any removal
request which falls within enumerated boot memory. IFAICS currently there is
no generic way to remember which memory came as part of the boot process.
Probably be a new MEMBLOCK flag will do.

> arm64 that, for example, one removes memory available at boot and then
> kexecs a new kernel? Does the kexec tool present the new kernel with the
> original memory map?

I dont know, probably James can help here. But as I had mentioned earlier,
the callers of remove_memory() should be able to control that. ACPI should
definitely be aware about which ranges were part of boot memory and refrain
from removing any subset, if the platform is known to have problems with
any subsequent kexec operation because the way boot memory map get used.

Though I am not much aware about kexec internals, it should inherit the
memory state at given point in time accommodating all previous memory hot
and remove operations. As an example cloud environment scenario, memory
resources might have increased or decreased during a guest lifetime, so
when the guest needs to have new OS image why should not it have all the
memory ? I dont know if it's feasible for the guest to expect previous hot
add or remove operations to be played again after the kexec.

There is another fundamental question here. Is there a notion of a minimum
subset of boot memory which cannot be hot removed no matter what ? If yes,
how that is being conveyed to the kernel currently ?

The point is that all these need to be established between ACPI, EFI and
kernel. AFAICS this problem is for MM subsystem (including the platform
part of it) to solve instead.

> 
> I can see x86 has CONFIG_FIRMWARE_MEMMAP suggesting that it is used by
> kexec. try_remove_memory() calls firmware_map_remove() so maybe they
> solve this problem differently.
> 
> Correspondingly, after an arch_add_memory(), do we want a kexec kernel
> to access it? x86 seems to use the firmware_map_add_hotplug() mechanism.

Hmm, kexec could use it instead on arm64 as well ?

> 
> Adding James as well for additional comments on kexec scenarios.
> 
>> IIUC boot memory added to system with memblock_add() lose all it's identity
>> after the system is up and running. In order to reject any attempt to hot
>> remove boot memory, platform needs to remember all those memory that came
>> early in the boot and then scan through it during arch_remove_memory().
>>
>> Ideally, it is the responsibility of [_]remove_memory() callers like ACPI
>> driver, DAX etc to make sure they never attempt to hot remove a memory
>> range, which never got hot added by them in the first place. Also, unlike
>> /sys/devices/system/memory/probe there is no 'unprobe' interface where the
>> user can just trigger boot memory removal. Hence, unless there is a bug in
>> ACPI, DAX or other callers, there should never be any attempt to hot remove
>> boot memory in the first place.
> 
> That's fine if these callers give such guarantees. I just want to make
> sure someone checked all the possible scenarios for memory hot-remove.

remove_memory() is a destructive call but without any user interface. So that
leaves only callers in the kernel which definitely need to know what exactly
they intent to do. I dont see how this is any different from numerous other
interfaces which just can mess up memory subsystem if not used appropriately.

There is another reason why the boot memory will be prevented from being hot
removed. Generally (unless marked as hotpluggable in SRAT table) boot memory
will never become ZONE_MOVABLE, which could not be isolated and migrated,
making it impossible hot remove.

Just wanted to add one thing about MEMBLOCK_HOTPLUG regions which might have
come during boot after parsing ACPI SRAT table's ACPI_SRAT_MEM_HOT_PLUGGABLE.
Corresponding memblock regions are marked with MEMBLOCK_HOTPLUG till buddy
allocator has been initialized. These flags get cleared entirely on the system
during memblock_free_all() and those areas eventually become ZONE_MOVABLE.

Even though those ZONE_MOVABLE memory block devices can be hot removed after
being isolated and offlined first, a remove_memory() caller is required to
trigger actual hot removal. AFAICS apart from ACPI or other firmware driver,
there wont be any other remove_memory() caller which will attempt to remove
boot memory.

Going forward, in case we would want to support hot-remove from hot pluggable
regions at boot (i.e MEMBLOCK_HOTPLUG from SRAT), we will have to re-introduce
back reserved page freeing sequence in free_hotplug_page_range() which was
dropped back in V3 per Mark. The current implementation does a WARN_ON() in
such cases because it should never happen.

https://lkml.org/lkml/2019/4/17/782

ZONE_DEVICE callers for arch_add_memory() and arch_remove_memory() are straight
forward (memremap_pages and memunmap_pages), where the address range is contained
in 'struct dev_pagemap' reducing the chances of an error which could hot-remove
boot memory.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
