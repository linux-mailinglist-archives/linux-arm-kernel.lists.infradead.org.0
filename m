Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4502EED825
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 04:57:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dgSBHXug1qnC4bOtzmSiOlL8jTRuiczwG6NQ8V/k37c=; b=Dh5iTjTOvyFDAb
	t8WHxcz/FkuGzSOkmJP8gyb9LL5OHg+zH4wd4ymVk/ngXR/LusoIMHl9fBQT+i6HtyPN7XWG3Hn8F
	A/WXHB2U5Fo6Sf/7wYns0fB8cScL+zsL6Mo3P6N2iEhNOQlQQDLgqGdCCfE9sN+AjcoLtG25AqJTo
	KE2IOD94X3ZfxVwYpbpCQ0MeZhKaBXcQoBmxBD438za73gSUzJN5tm53/I+LZkgzPz3UMjOhJgjMd
	7j4QWWnpNSbncXi21p7zVYYKRvNRdi1tu/rbvu/9qpcdK5QPFKWzacYkFN5yvPz8hOSMUhesdYH0l
	gx5AFA4zalq8cRVCfTXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRTUs-00070u-6w; Mon, 04 Nov 2019 03:57:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRTUm-00070O-0y
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 03:57:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B3CF531F;
 Sun,  3 Nov 2019 19:57:33 -0800 (PST)
Received: from [10.163.1.23] (unknown [10.163.1.23])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5C2B33F6C4;
 Sun,  3 Nov 2019 19:57:24 -0800 (PST)
Subject: Re: [PATCH V9 2/2] arm64/mm: Enable memory hot remove
To: James Morse <james.morse@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>
References: <1570609308-15697-1-git-send-email-anshuman.khandual@arm.com>
 <1570609308-15697-3-git-send-email-anshuman.khandual@arm.com>
 <20191010113433.GI28269@mbp> <f51cdb20-ddc4-4fb7-6c45-791d2e1e690c@arm.com>
 <20191018094825.GD19734@arrakis.emea.arm.com>
 <f5581644-42b7-097e-6a86-ba7db9d0b544@arm.com>
 <5db2aab1-1dde-4545-a03d-e7ae2d86aec7@arm.com>
 <87ef9d38-a9ab-24b3-cc2e-93fedb4c0383@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <c121abbe-ba63-48f3-d732-3af41b8503e5@arm.com>
Date: Mon, 4 Nov 2019 09:27:58 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <87ef9d38-a9ab-24b3-cc2e-93fedb4c0383@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_195736_110974_B60A70AC 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 logang@deltatee.com, linux-kernel@vger.kernel.org, akpm@linux-foundation.org,
 mgorman@techsingularity.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/28/2019 01:55 PM, Anshuman Khandual wrote:
> There is a mechanism in ACPI for this i.e ACPI_SRAT_MEM_HOT_PLUGGABLE.
> 
> Lets re-evaluate the situation here from scratch. Memory can be classified as
> boot and runtime because it impacts the way in which kernel allocations, zone
> initializations are treated. Boot memory deals with kernel allocation before
> zone init happens where as runtime memory might choose which zone to get into
> right away.
> 
> (1) Boot memory
> 
> 	- Non-movable
> 
> 		- Normal memblocks
> 		- All kernel allocations come here
> 		- Become ZONE_NORMAL/DMA/DMA32 at runtime
> 
> 			- Never removable because isolation and hence migration impossible
> 			- Removal protection because of the zone classification
> 
> 	- Movable	(ACPI_SRAT_MEM_HOT_PLUGGABLE)
> 
> 		- Memblock will be marked with MEMBLOCK_HOTPLUG
> 		- Memblock allocations tried to be avoided (reversing the memblock order etc)
> 		- Become ZONE_MOVABLE at runtime
> 
> 			- Removable  [1]

There is another way in which boot memory can be created as ZONE_MOVABLE
irrespective of whether the firmware (ACPI/OF) had asked for it or not.
This is achieved with "kernelcore" or "movablecore" kernel command line
options where the administrator exclusively asks for sections of memory
to be converted as ZONE_MOVABLE. This creates some of the memory block
devices in /sys/devices/system/memory as removable (ZONE_MOVABLE). IIUC
this is mutually exclusive with respect to removable boot memory creation
with "movable_node" kernel command line option with firmware tagged hot
pluggable memory sections (ACPI_SRAT_MEM_HOT_PLUGGABLE).

Details here: mm/page_alloc.c find_zone_movable_pfns_for_nodes()

Now, this boils down to the fact whether firmware will ever request for
removal of boot memory sections which was never tagged as hotpluggable
by the firmware during boot. Wondering if tagging portions of boot memory
as ZONE_MOVABLE might have any other use case if they are never to be hot
removed. Will continue looking into ACPI/OF memory hotplug scenarios.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
