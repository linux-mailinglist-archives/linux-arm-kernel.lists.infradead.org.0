Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 038896C0A6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 19:52:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Je9/FUgykq1KEICK6Te6no1qsFTuwUCCkngi4p+wCLg=; b=IrHbADnH54sJVu
	R1V58LO2XKjRmIjNyqdUoAKTg2qKZT8oKa8FEPaAOWBGwPj5K+3ywLGlM0rcUl802O3xYbvukoG0y
	VLDuUZofor7b2z7vD1CqJ8/vyI0CgPYsTHtnbD0jlJ+uYBhk0PIW3BClpBgD3Lk64+78MOqPAgvQE
	CVFgZeRjBjE4w2kfUDwXwWYJZ7JWv9tCvVHT1LqJfedZPaG0aqb0F+QnZ8nBZ9BTVlyf4uGMYHusB
	nt5KsF2AEywWZmr8JktscnY8iCbTfDgoVPwseFS6BHny1rasyVuiH8KvEqoeHAMZ309HVBMkz2a52
	o0uhWBZUFrS/7WvXGULQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hno69-00023N-At; Wed, 17 Jul 2019 17:52:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hno5m-00021c-4D; Wed, 17 Jul 2019 17:51:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 780D528;
 Wed, 17 Jul 2019 10:51:49 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D3D173F71F;
 Wed, 17 Jul 2019 10:51:44 -0700 (PDT)
Subject: Re: [RFC v1 0/4] arm64: MMU enabled kexec kernel relocation
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20190716165641.6990-1-pasha.tatashin@soleen.com>
From: James Morse <james.morse@arm.com>
Message-ID: <4c8a3a11-adc2-efa4-f765-6be338546ae4@arm.com>
Date: Wed, 17 Jul 2019 18:51:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190716165641.6990-1-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_105150_256404_582D7AE1 
X-CRM114-Status: GOOD (  19.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: sashal@kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 linux-doc@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, jmorris@namei.org, ebiederm@xmission.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On 16/07/2019 17:56, Pavel Tatashin wrote:
> Added identity mapped page table, and keep MMU enabled while
> kernel is being relocated from sparse pages to the final
> destination during kexec.

The 'tl;dr' version of this: I strongly urge you to start with the hibernate code that
already covers all these known corner cases. x86 was not a good starting point.


After a quick skim:

This will map 'nomap' regions of memory with cacheable attributes. This is a non-starter.
These regions were described by firmware as having content that was/is written with
different attributes. The attributes must match whenever it is mapped, otherwise we have a
loss of coherency. Mapping this stuff as cacheable means the CPU can prefetch it into the
cache whenever it likes.
It may be important that we do not ever map some of these regions, even though its
described as memory. On AMD-Seattle the bottom page of memory is reserved by firmware for
its own use; it is made secure-only, and any access causes an
external-abort/machine-check. UEFI describes this as 'Reserved', and we preserve this in
the kernel as 'nomap'. The equivalent DT support uses memreserve, possibly with the
'nomap' attribute.

Mapping a 'new'/unknown region with cacheable attributes can never be safe, even if we
trusted kexec-tool to only write the kernel to memory. The host may be using a bigger page
size causing more memory to become cacheable than was intended.
Linux's EFI support rounds the UEFI memory map to the largest support page size, (and
winges about firmware bugs).
If we're allowing kexec to load images in a region not described as IORESOURCE_SYSTEM_RAM,
that is a bug we should fix.

The only way to do this properly is to copy the linear mapping. The arch code has lots of
complex code to generate it correctly at boot, we do not want to duplicate it.
(this is why hibernate copies the linear mapping)


These patches do not remove the running page tables from TTBR1. As you overwrite the live
page tables you will corrupt the state of the CPU. The page-table walker may access things
that aren't memory, cache memory that shouldn't be cached (see above), and allocate
conflicting entries in the TLB.

You cannot use the mm page table helpers to build an idmap on arm64. The mm page table
helpers have a compile-time VA_BITS, and we support systems where there is no memory below
1<<VA_BITS. (crazy huh!). Picking on AMD-Seattle again: if you boot a 4K 39bit VA kernel,
the idmap will have more page table levels than the page table helpers can build. This is
why there are special helpers to load the idmap, and twiddle TCR_EL1.T0SZ.
You already need to copy the linear-map, so using an idmap is extra work. You want to work
with linear-map addresses, you probably need to add the field to the appropriate structure.

The kexec relocation code still runs at EL2. You can't use a copy of the linear map here
as there is only one TTBR on v8.0, and you'd need to setup EL2 as its been torn back to
the hyp-stub. This is the reason hibernate posts EL2 in a holding pen while it rewrites
all of memory, then calls back to fixup EL2. Keeping the rewrite phase at EL1 means it
doesn't need independently tweaking/testing. You need to do something similar, either
calling EL2 to start the new image, or disabling the MMU at EL1 to start the new image there.

You will need to alter the relocation code to do nothing for kdump, as no relocation is
required and building page-tables is extra work where the kernel may croak, preventing us
from reaching kdump.

Finally, having this independent idmap machinery isn't desirable from a maintenance
perspective. Please start with the hibernate code that already solves a very similar
problem, as it already has most of these problems covered.


> This patch series works in terms, that I can kexec-reboot both in QEMU

I wouldn't expect Qemu's emulation of the MMU and caches to be performance accurate.


> and on a physical machine. However, I do not see performance improvement
> during relocation. The performance is just as slow as before with disabled
> caches.

> Am I missing something? Perhaps, there is some flag that I should also
> enable in page table? Please provide me with any suggestions.

Some information about the physical machine you tested this on would help.
I'm guessing its v8.0, and booted at EL2....


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
