Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 430E08F2EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:12:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+7ay4W0mi+ANM1RV/4EBYk7Ik2jiEtlrhjtd4ruVxk=; b=ubQlGSjjAvGb/V
	ChQd36uN6IKmHvZdt11xTm94fAGvk3Y1gn7DKaLZFwtaQOhFA7tjYoxpzoC9zLI7plJc3yaT2GYnw
	vd8h+t1vE4xa3G/jBV6trLxQsjaP7c68Mk8UABP0kcrmuJivvo/Jpp0NSmrCiTZQoYb+hiLUke7vj
	rGN5IPVNcNAWonYHJwQXrb4USXdL/xmC3/ETOIzc+1Vwg51UERG78nX437W2xAIpf4hCj3GEEKYq+
	gwwU6p1eivRcJ1QwqBHxKjZZkWyv8Uh8F0aq4Kh0bVxxNYNr9iVOty1v0UWeG8BTD3mYvkVdynqjp
	AZGivY6rQ4b2Q8+8WNLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKEU-0002Nh-7K; Thu, 15 Aug 2019 18:12:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKDX-0001z9-9V; Thu, 15 Aug 2019 18:11:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DCD94360;
 Thu, 15 Aug 2019 11:11:18 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DD89B3F694;
 Thu, 15 Aug 2019 11:11:16 -0700 (PDT)
Subject: Re: [PATCH v1 2/8] arm64, mm: transitional tables
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20190801152439.11363-1-pasha.tatashin@soleen.com>
 <20190801152439.11363-3-pasha.tatashin@soleen.com>
From: James Morse <james.morse@arm.com>
Message-ID: <e00455af-a9f6-82e1-4c0d-78fae01ae00a@arm.com>
Date: Thu, 15 Aug 2019 19:11:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190801152439.11363-3-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_111119_461434_2ECF231E 
X-CRM114-Status: GOOD (  16.60  )
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
Cc: sashal@kernel.org, vladimir.murzin@arm.com, corbet@lwn.net,
 marc.zyngier@arm.com, catalin.marinas@arm.com, bhsharma@redhat.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, jmorris@namei.org,
 linux-mm@kvack.org, ebiederm@xmission.com, matthias.bgg@gmail.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On 01/08/2019 16:24, Pavel Tatashin wrote:
> There are cases where normal kernel pages tables, i.e. idmap_pg_dir
> and swapper_pg_dir are not sufficient because they may be overwritten.
> 
> This happens when we transition from one world to another: for example
> during kexec kernel relocation transition, and also during hibernate
> kernel restore transition.
> 
> In these cases, if MMU is needed, the page table memory must be allocated
> from a safe place. Transitional tables is intended to allow just that.

> diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
> index db92950bb1a0..dcb4f13c7888 100644
> --- a/arch/arm64/include/asm/pgtable-hwdef.h
> +++ b/arch/arm64/include/asm/pgtable-hwdef.h
> @@ -110,6 +110,7 @@
>  #define PUD_TABLE_BIT		(_AT(pudval_t, 1) << 1)
>  #define PUD_TYPE_MASK		(_AT(pudval_t, 3) << 0)
>  #define PUD_TYPE_SECT		(_AT(pudval_t, 1) << 0)
> +#define PUD_SECT_RDONLY		(_AT(pudval_t, 1) << 7)		/* AP[2] */

This shouldn't be needed. As far as I'm aware, we only get read-only pages in the linear
map from debug-pagealloc, and the module aliases. Both of which require the linear map to
be made of page-size mappings.

Where are you seeing these?


> diff --git a/arch/arm64/include/asm/trans_table.h b/arch/arm64/include/asm/trans_table.h
> new file mode 100644
> index 000000000000..c7aef70587a1
> --- /dev/null
> +++ b/arch/arm64/include/asm/trans_table.h
> @@ -0,0 +1,68 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +/*
> + * Copyright (c) 2019, Microsoft Corporation.
> + * Pavel Tatashin <patatash@linux.microsoft.com>
> + */
> +
> +#ifndef _ASM_TRANS_TABLE_H
> +#define _ASM_TRANS_TABLE_H
> +
> +#include <linux/bits.h>
> +#include <asm/pgtable-types.h>
> +
> +/*
> + * trans_alloc_page
> + *	- Allocator that should return exactly one uninitilaized page, if this
> + *	 allocator fails, trans_table returns -ENOMEM error.
> + *
> + * trans_alloc_arg
> + *	- Passed to trans_alloc_page as an argument
> + *
> + * trans_flags
> + *	- bitmap with flags that control how page table is filled.
> + *	  TRANS_MKWRITE: during page table copy make PTE, PME, and PUD page
> + *			 writeable by removing RDONLY flag from PTE.
> + *	  TRANS_MKVALID: during page table copy, if PTE present, but not valid,
> + *			 make it valid.
> + *	  TRANS_CHECKPFN: During page table copy, for every PTE entry check that
> + *			  PFN that this PTE points to is valid. Otherwise return
> + *			  -ENXIO

Adding top-level global knobs to manipulate the copied linear map is going to lead to
bugs. The existing code will only change the PTE in specific circumstances, that it tests
for, that only happen at the PTE level.


> + *	  TRANS_FORCEMAP: During page map, if translation exists, force
> + *			  overwrite it. Otherwise -ENXIO may be returned by
> + *			  trans_table_map_* functions if conflict is detected.

This one, sounds like a very bad idea.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
