Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA0C45CAE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:22:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S7CzmWvVnzpOYykBN3P2+wQNjo5VwB0xkU+KUE4jI20=; b=N8q1xphDihReeo
	TJ4hQod7n9M5bJrgY/waVBNv8F47tWoVWVKfHOt1bZy4CoYFbpAyaJlOdMHPQF/3KYQt4xWOVnBy0
	PlfQYqoPKdwb++G3I6XpjIzAi2ahDXe81eX9ApoXrgcJWkEie5otFlj7p1eDURyuAUTxZRJARtxIt
	FUPB2DuU9RxCYMFacRCELF7sIb7ldB3xJKtRPoMufquGwttP8joy3poyPdIn31xZmiNdeNq7USvPV
	ViGZDmGVK3lr4Un0gYo0XLrGmiElM1HnrM0k5+UNRpgLNA9lRP9VZkZYZUzPPjgWaQ+GijcsgI3OY
	9LueZc4NoTr9WYRBmG2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hblDk-0005gV-4a; Fri, 14 Jun 2019 12:22:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbl9J-0000QZ-Sh
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:17:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 221763EF;
 Fri, 14 Jun 2019 05:17:39 -0700 (PDT)
Received: from [10.162.41.168] (p8cg001049571a15.blr.arm.com [10.162.41.168])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 937DD3F246; Fri, 14 Jun 2019 05:17:36 -0700 (PDT)
Subject: Re: [PATCH v3 01/10] arm64: mm: Flip kernel VA space
To: Steve Capper <steve.capper@arm.com>, linux-arm-kernel@lists.infradead.org
References: <20190612172658.28522-1-steve.capper@arm.com>
 <20190612172658.28522-2-steve.capper@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <b8147191-7c02-66c0-12ff-96de972bf2ca@arm.com>
Date: Fri, 14 Jun 2019 17:47:55 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190612172658.28522-2-steve.capper@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_051742_060504_8E53DE4A 
X-CRM114-Status: GOOD (  17.78  )
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, marc.zyngier@arm.com,
 catalin.marinas@arm.com, bhsharma@redhat.com, will.deacon@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Steve,

On 06/12/2019 10:56 PM, Steve Capper wrote:
> Put the direct linear map in the lower addresses of the kernel VA range
> and everything else in the higher ranges.

The reason for this flip has to be more clear in the commit message.

> 
> This allows us to make room for an inline KASAN shadow that operates
> under both 48 and 52 bit kernel VA sizes. For example with a 52-bit VA,
> if KASAN_SHADOW_END < 0xFFF8000000000000 (it is in the lower addresses
> of the kernel VA range), this will be below the start of the minimum
> 48-bit kernel VA address of 0xFFFF000000000000.

Though this is true it does not convey to the effect of why the flip is
required. As you had mentioned previously KASAN_SHADOW_END is fixed because
it needs to support the highest possible VA (~0UL) in both 48 and 52 bits.

Hence KASAN_SHADOW_START will have to be variable in order to accommodate
both 48 bits or 52 bits effective virtual address. Hence not sure what the
above example based on KASAN_SHADOW_START is trying to convey.

KASAN_SHADOW_END cannot be in the (52 bit space - 48 bit space) exclusion VA
range as it would not work for the 48 bits case. But KASAN_SHADOW_START can
very well be in that space for 52 bits case.

The current definition

#define KASAN_SHADOW_START      (VA_START)
#define KASAN_SHADOW_END        (KASAN_SHADOW_START + KASAN_SHADOW_SIZE)

This wont work in the new scheme because VA_START is different for 48 bits
and 52 bits which will make KASAN_SHADOW_END variable as well. Hence we need
to change this arrangement.

What the commit message here does not try to convince is that there are no
other alternate arrangements where KASAN_SHADOW_END remains fixed (and also
accessible in 48 bits scheme), KASAN_SHADOW_FIRST is variable accommodating
both 48 bits and 52 bits case and flipping the kernel VA space is the only
viable option.

Ahh I see this in the cover letter.

" In order to allow for a KASAN shadow that changes size at boot time, one
must fix the KASAN_SHADOW_END for both 48 & 52-bit VAs and "grow" the
start address. Also, it is highly desirable to maintain the same
function addresses in the kernel .text between VA sizes. Both of these
requirements necessitate us to flip the kernel address space halves s.t.
the direct linear map occupies the lower addresses."

Though this is better (please add it to commit message).

There were no alternate arrangements to achieve the above two objectives
without flipping the VA space ? The reasoning here in the commit message is
not convincing enough even with the above cover letter extract.

> 
> We need to adjust:
>  *) KASAN shadow region placement logic,
>  *) KASAN_SHADOW_OFFSET computation logic,
>  *) virt_to_phys, phys_to_virt checks,
>  *) page table dumper.
> 
> These are all small changes, that need to take place atomically, so they
> are bundled into this commit.

It will be great to add a before patch and after patch view of the kernel
virtual address space enlisting different sections to make things apparent
about what and how the layout has changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
