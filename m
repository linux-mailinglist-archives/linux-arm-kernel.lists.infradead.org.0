Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B090338BFA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 15:54:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UAiBSIZ2v61BKTg8eY6YAzHNkN/nadWBPa/im6Co3mU=; b=szPrcEUsAZOdmx
	gt1Tlp3CbGngwts8d4z5eD2wiHiVo8wPhjwNB+ElWyHX+ujBbzyv1vvIg8OyqBia00HNYl6u2eKVy
	UZFhlLgi6Ps66vbsicihvuKD7PLww/F8YAuLoo8Tf8RUoc4p+bahAjxBG6AHPzeFk8CbyM5La6orm
	ZLF/rF3hd05mLHlxaQbMF8R3PJgUGDPQGE2M9s0o1hNsUQ7xr4BFrv4+/bFmcm/YkuWiAyHzc/jaO
	B7PASxgBGxXZ1U40BlHsh12C4yJTggapy93mp3pVpgdDace/8i9xsc+6yaWutHqVLj/M4rqSFEdJl
	tstqZnkHnUBJX7wcxjmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZFJc-0002lB-Dy; Fri, 07 Jun 2019 13:53:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZFJS-0002kn-1f
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 13:53:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 65246367;
 Fri,  7 Jun 2019 06:53:45 -0700 (PDT)
Received: from [10.162.42.131] (p8cg001049571a15.blr.arm.com [10.162.42.131])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 0D5A33F718; Fri,  7 Jun 2019 06:53:42 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH v2 00/12] 52-bit kernel + user VAs
To: Steve Capper <steve.capper@arm.com>, linux-arm-kernel@lists.infradead.org
References: <20190528161026.13193-1-steve.capper@arm.com>
Message-ID: <c0128487-a05b-6e23-6239-27905f6dd79c@arm.com>
Date: Fri, 7 Jun 2019 19:23:59 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190528161026.13193-1-steve.capper@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_065346_180799_804F8152 
X-CRM114-Status: GOOD (  20.73  )
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, marc.zyngier@arm.com,
 catalin.marinas@arm.com, bhsharma@redhat.com, will.deacon@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Steve,

On 05/28/2019 09:40 PM, Steve Capper wrote:
> This patch series adds support for 52-bit kernel VAs using some of the
> machinery already introduced by the 52-bit userspace VA code in 5.0.
> 
> As 52-bit virtual address support is an optional hardware feature,
> software support for 52-bit kernel VAs needs to be deduced at early boot
> time. If HW support is not available, the kernel falls back to 48-bit.

Just to summarize.

If kernel is configured for 52 bits then it just setups up infrastructure
for 52 bits kernel VA space.

When at the boot

a. Detects HW feature	   -> Use 52 bits VA on 52 bits infra
b. Does not detect feature -> Use 48 bits VA on 52 bits infra (adjusted)

> A significant proportion of this series focuses on "de-constifying"
> VA_BITS related constants.

I assume this is required for the situation (b) because of adjustments
at boot time which will be required after detecting that 52 bit is not
supported in the HW.
  
> 
> In order to allow for a KASAN shadow that changes size at boot time, one

Ditto as above ?

> must fix the KASAN_SHADOW_END for both 48 & 52-bit VAs and "grow" the
> start address. Also, it is highly desirable to maintain the same

Is there any particular reason why KASAN_SHADOW_START cannot be fixed and
KASAN_SHADOW_END "grow" instead ? Is it because we are trying to make start
address (which will be closer to VA_START) for all required sections variable ?

> function addresses in the kernel .text between VA sizes. Both of these

Kernel .text range should remain same as the kernel is already loaded in
memory at boot and executing while also trying to fix the effective VA_BITS
after detecting (or not) the 52 bits HW feature.

> requirements necessitate us to flip the kernel address space halves s.t.
> the direct linear map occupies the lower addresses.

Still trying to understand all the reasons for this VA space flip here.

The current kernel 48 bit VA range is split into two halves

1. Higher half	- [UL(~0) ...... PAGE_OFFSET] for linear mapping
2. Lower half	- [PAGE_OFFSET ... VA_START]  for everything else

The split in the middle is based on VA_BITS. When that becomes variable then
boot time computed lower half sections like kernel text, fixed mapping etc
become problematic as they are already running or being used and cannot be
relocated. This is caused by the fact the 48 bits to 52 bits adjustment can
only happen on the VA_START end as the other end UL(~0) is fixed. Hence move
those non-relocatable/fixed sections to  higher half so they dont get impacted
from the 48-52 bits adjustments. Linear mapping (so would PAGE_OFFSET) on the
other hand will have to grow/shrink (or not) during 48-52 bits adjustment.
Hence it can be aligned with the VA_START end instead. Is that correct or I
am missing something.

> 
> In V2 of this series (apologies for the long delay from V1), the major
> change is that PAGE_OFFSET is retained as a constant. This allows for
> much faster virt_to_page computations. This is achieved by expanding the

virt_to_page(), __va(), __pa() needs to be based on just linear offset
calculations else there will be performance impact. 

> size of the VMEMMAP region to accommodate a disjoint 52-bit/48-bit
> direct linear map. This has been found to work well in my testing, but I

I assume it means that we create linear mapping for the entire 52 bit VA
space but back it up with vmmmap struct page mapping only for the actual
bits (48 or 52) in use.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
