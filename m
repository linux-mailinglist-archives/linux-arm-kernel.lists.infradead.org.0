Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87263EA202
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 17:46:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bdm5U3PJCTZ0+a8hMIkme36Fdxe1DocHsaCVwTTebzU=; b=gnFOUM+z+sUA8/
	Ck1HGWt5ue4bBZX+/3BX8x69A/IxHuKr14vBql5YOr7bjWXw55RlwQHKMiwW/W121+wmqpwtyjohE
	stVgNzRikI2cvEC9jcOSEQRKHuzj0FVtvqWUOhemp0WAADJHHoDklMCdyrM5jm25PZS/fbaQqVz+K
	0U1MZDtwAtsh4AE5a6LCyV8a5yMs3eH/tTC1+S/3ixR9p6nVsZQPEERgJ7oAOJEfAwX4axY3DCJOs
	qBcZpCW2CmBagHsA5Q/as1gYaYhfwII3RaFUgE6VYd0OS1N+3guzApoRzdMb+oSDJbOS6HuWC/6al
	6TuPIB18lcC9pbvyKjDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPr6X-0002GL-NT; Wed, 30 Oct 2019 16:45:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPr6L-0002FX-VZ
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 16:45:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7FBDB31F;
 Wed, 30 Oct 2019 09:45:40 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 119493F6C4; Wed, 30 Oct 2019 09:45:37 -0700 (PDT)
Date: Wed, 30 Oct 2019 16:45:35 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v14 21/22] arm64: mm: Convert mm/dump.c to use
 walk_page_range()
Message-ID: <20191030164535.GC13309@arrakis.emea.arm.com>
References: <20191028135910.33253-1-steven.price@arm.com>
 <20191028135910.33253-22-steven.price@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028135910.33253-22-steven.price@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_094542_061775_5CDC0176 
X-CRM114-Status: GOOD (  18.33  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, x86@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 01:59:09PM +0000, Steven Price wrote:
> diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
> index 93f9f77582ae..9d9b740a86d2 100644
> --- a/arch/arm64/mm/dump.c
> +++ b/arch/arm64/mm/dump.c
> @@ -15,6 +15,7 @@
>  #include <linux/io.h>
>  #include <linux/init.h>
>  #include <linux/mm.h>
> +#include <linux/ptdump.h>
>  #include <linux/sched.h>
>  #include <linux/seq_file.h>
>  
> @@ -75,10 +76,11 @@ static struct addr_marker address_markers[] = {
>   * dumps out a description of the range.
>   */
>  struct pg_state {
> +	struct ptdump_state ptdump;
>  	struct seq_file *seq;
>  	const struct addr_marker *marker;
>  	unsigned long start_address;
> -	unsigned level;
> +	int level;
>  	u64 current_prot;
>  	bool check_wx;
>  	unsigned long wx_pages;
> @@ -178,6 +180,10 @@ static struct pg_level pg_level[] = {
>  		.name	= "PGD",
>  		.bits	= pte_bits,
>  		.num	= ARRAY_SIZE(pte_bits),
> +	}, { /* p4d */
> +		.name	= "P4D",
> +		.bits	= pte_bits,
> +		.num	= ARRAY_SIZE(pte_bits),
>  	}, { /* pud */
>  		.name	= (CONFIG_PGTABLE_LEVELS > 3) ? "PUD" : "PGD",
>  		.bits	= pte_bits,

We could use "PGD" for the p4d entry since we don't have five levels.
This patches the "PGD" name used for pud/pmd when these levels are
folded.

> @@ -240,11 +246,15 @@ static void note_prot_wx(struct pg_state *st, unsigned long addr)
>  	st->wx_pages += (addr - st->start_address) / PAGE_SIZE;
>  }
>  
> -static void note_page(struct pg_state *st, unsigned long addr, unsigned level,
> -				u64 val)
> +static void note_page(struct ptdump_state *pt_st, unsigned long addr, int level,
> +		      unsigned long val)
>  {
> +	struct pg_state *st = container_of(pt_st, struct pg_state, ptdump);
>  	static const char units[] = "KMGTPE";
> -	u64 prot = val & pg_level[level].mask;
> +	u64 prot = 0;
> +
> +	if (level >= 0)
> +		prot = val & pg_level[level].mask;

I think this test is not needed as we never have level < 0. The only
call with a level 0 is from ptdump_hole() where the level passed is
depth+1 while depth is -1 or higher.

Anyway, we can keep this test _if_ we shift the levels down. I find it
quite confusing that ptdump_hole() takes a 'depth' argument where 0 is
PGD and 4 is PTE while for note_page() 1 is PGD and 5 PTE.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
