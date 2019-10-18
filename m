Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FF0DC1AB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 11:48:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oi8WEzswOMpc55N8Bjio+p9IdYTOTRLHcdQFSnTjmWU=; b=G2mGo+XOu12W7n
	RRDQl7o8vHWSQ/z2vKnzxj991SadvXanZEMaIRa43laKn0yJD7/wp1v/Zz3EKaP0c4fmG8d1lwWlk
	rvTayF/2O5usn5Tzft8BC8QSkz2txdIxIcq9/sbNSO3zlnQn7DJFvxCGjt6+yAXpQ+wsr7S7qGPfY
	9cRWJGDUA2+XwRpzL68d6BYwBm9FUL1xJBq9chyz+RNI9d3Dd1a3jD/eluO0Rp9I1qMTPeYHqKHlM
	UvLyWi4WOrqBAMRVH1eFb9tBxPjp91QAFlD1XlXH1eAYRdV+5tcjkXuDA7ctZcZLG2Q5298KweuNz
	iOCAvjYFhgJ45LPcGTnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLOsN-0006es-DK; Fri, 18 Oct 2019 09:48:51 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLOsD-0006e1-L1
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 09:48:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 93D4A3E8;
 Fri, 18 Oct 2019 02:48:30 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 AD0C23F6C4; Fri, 18 Oct 2019 02:48:27 -0700 (PDT)
Date: Fri, 18 Oct 2019 10:48:25 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V9 2/2] arm64/mm: Enable memory hot remove
Message-ID: <20191018094825.GD19734@arrakis.emea.arm.com>
References: <1570609308-15697-1-git-send-email-anshuman.khandual@arm.com>
 <1570609308-15697-3-git-send-email-anshuman.khandual@arm.com>
 <20191010113433.GI28269@mbp>
 <f51cdb20-ddc4-4fb7-6c45-791d2e1e690c@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f51cdb20-ddc4-4fb7-6c45-791d2e1e690c@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_024841_731436_F0B6288A 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Fri, Oct 11, 2019 at 08:26:32AM +0530, Anshuman Khandual wrote:
> On 10/10/2019 05:04 PM, Catalin Marinas wrote:
> > Mark Rutland mentioned at some point that, as a preparatory patch to
> > this series, we'd need to make sure we don't hot-remove memory already
> > given to the kernel at boot. Any plans here?
> 
> Hmm, this series just enables platform memory hot remove as required from
> generic memory hotplug framework. The path here is triggered either from
> remove_memory() or __remove_memory() which takes physical memory range
> arguments like (nid, start, size) and do the needful. arch_remove_memory()
> should never be required to test given memory range for anything including
> being part of the boot memory.

Assuming arch_remove_memory() doesn't (cannot) check, is there a risk on
arm64 that, for example, one removes memory available at boot and then
kexecs a new kernel? Does the kexec tool present the new kernel with the
original memory map?

I can see x86 has CONFIG_FIRMWARE_MEMMAP suggesting that it is used by
kexec. try_remove_memory() calls firmware_map_remove() so maybe they
solve this problem differently.

Correspondingly, after an arch_add_memory(), do we want a kexec kernel
to access it? x86 seems to use the firmware_map_add_hotplug() mechanism.

Adding James as well for additional comments on kexec scenarios.

> IIUC boot memory added to system with memblock_add() lose all it's identity
> after the system is up and running. In order to reject any attempt to hot
> remove boot memory, platform needs to remember all those memory that came
> early in the boot and then scan through it during arch_remove_memory().
> 
> Ideally, it is the responsibility of [_]remove_memory() callers like ACPI
> driver, DAX etc to make sure they never attempt to hot remove a memory
> range, which never got hot added by them in the first place. Also, unlike
> /sys/devices/system/memory/probe there is no 'unprobe' interface where the
> user can just trigger boot memory removal. Hence, unless there is a bug in
> ACPI, DAX or other callers, there should never be any attempt to hot remove
> boot memory in the first place.

That's fine if these callers give such guarantees. I just want to make
sure someone checked all the possible scenarios for memory hot-remove.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
