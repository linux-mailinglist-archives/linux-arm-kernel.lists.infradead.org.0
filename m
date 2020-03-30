Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A22197DBB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 16:00:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t0XBRBfBgiEKgdFWYHv6FALlRnOpveTsim7sPCCxyGI=; b=UgyyGehPfUnYjZXMe1YKdi9KX
	A1elWPasrTUriGbwjrxZK923Qx0AzjxZbUW3pChaJOnajScH/PdeN9bJgtBtpbQniZakGJUkO0zWz
	FB2+zORSy0/iR6iG7HwPcCHLvBtLzpCq0nLtXYA/UArw3fbiLn3ENqWhEkvZI69/ylSx+E2j3T2LJ
	XWRDDeonVKIqtf7xD+2nKZ2eicy2UkpcYSoj1seeF5tKapvIUaRH4H0zBG+EyjkBkPV1n45JZiL0I
	5s4/MW5N8Gab5sgqUx6Y5Yr5NvD3fSjAjVu4fpTOsA2HnH4aoEkOPhwJZbFm9utfZ5nrdx6yIE9IS
	YeMDFjaCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIuxQ-0007Wo-VV; Mon, 30 Mar 2020 14:00:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIuxE-0007WO-BE
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 13:59:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C90C91FB;
 Mon, 30 Mar 2020 06:59:49 -0700 (PDT)
Received: from [10.57.60.204] (unknown [10.57.60.204])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BAE7F3F71E;
 Mon, 30 Mar 2020 06:59:48 -0700 (PDT)
Subject: Re: [RFC PATCH] arm64: remove CONFIG_DEBUG_ALIGN_RODATA feature
To: Ard Biesheuvel <ardb@kernel.org>, Will Deacon <will@kernel.org>
References: <20200329141258.31172-1-ardb@kernel.org>
 <20200330135121.GD10633@willie-the-truck>
 <CAMj1kXEZARZ1FYZFt4CZ33b-A64zj1JswR0OAHw-eZdzkxiEOQ@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <3d23aa1f-d92c-5e39-733d-ebd135757b8e@arm.com>
Date: Mon, 30 Mar 2020 14:59:47 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAMj1kXEZARZ1FYZFt4CZ33b-A64zj1JswR0OAHw-eZdzkxiEOQ@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_065952_428785_2F2E76DD 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 kernel-hardening@lists.openwall.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-30 2:53 pm, Ard Biesheuvel wrote:
> On Mon, 30 Mar 2020 at 15:51, Will Deacon <will@kernel.org> wrote:
>>
>> On Sun, Mar 29, 2020 at 04:12:58PM +0200, Ard Biesheuvel wrote:
>>> When CONFIG_DEBUG_ALIGN_RODATA is enabled, kernel segments mapped with
>>> different permissions (r-x for .text, r-- for .rodata, rw- for .data,
>>> etc) are rounded up to 2 MiB so they can be mapped more efficiently.
>>> In particular, it permits the segments to be mapped using level 2
>>> block entries when using 4k pages, which is expected to result in less
>>> TLB pressure.
>>>
>>> However, the mappings for the bulk of the kernel will use level 2
>>> entries anyway, and the misaligned fringes are organized such that they
>>> can take advantage of the contiguous bit, and use far fewer level 3
>>> entries than would be needed otherwise.
>>>
>>> This makes the value of this feature dubious at best, and since it is not
>>> enabled in defconfig or in the distro configs, it does not appear to be
>>> in wide use either. So let's just remove it.
>>>
>>> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
>>> ---
>>>   arch/arm64/Kconfig.debug                  | 13 -------------
>>>   arch/arm64/include/asm/memory.h           | 12 +-----------
>>>   drivers/firmware/efi/libstub/arm64-stub.c |  8 +++-----
>>>   3 files changed, 4 insertions(+), 29 deletions(-)
>>
>> Acked-by: Will Deacon <will@kernel.org>
>>
>> But I would really like to go a step further and rip out the block mapping
>> support altogether so that we can fix non-coherent DMA aliases:
>>
>> https://lore.kernel.org/lkml/20200224194446.690816-1-hch@lst.de
>>
> 
> I'm not sure I follow - is this about mapping parts of the static
> kernel Image for non-coherent DMA?

Yikes, I hope not!

The concern there is about block entries in the linear map; I'd assume 
kernel text/data means not-linear-map, and is thus a different kettle of 
fish anyway.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
