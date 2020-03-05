Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 840AC17A08F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 08:35:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NdQAmDY01yH9EZ0J+ZOJH99rMRr+C7tUoFaFcXOXOTk=; b=ZEuhYjlfXCv4Wx
	1+a5qPHGGrBzvnQtvqm2rtlBNiPK27Bik6Oowx8TD0qTU5Lrp1XqbG6ZM0PLmTLwg3CntRlgbixIg
	Tf+df2UcmPvaWZdQuhNMabaQQDE6aPcwt/5TV5s3fO9WuQq99JYRyWMQYNbt/guIuQWS81XQAdC0w
	68l5CvsYszwOWbDycTQD/LplcZryBz6eYvrwToyJsAeAz3iQsmCzeC2O1PU2F9mHmravuhMxhjaut
	C53XZOJmZuNamLVbTTxMHyke26/KhAWxO3t7bjoDKyzBylre4YyKLEhC5CzJA/xthXLgfsDDQhTV4
	kb7nGPNb+Rvh+N/DCSnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9l1p-0004u5-Vq; Thu, 05 Mar 2020 07:34:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9l1g-0004tU-ML; Thu, 05 Mar 2020 07:34:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D7F0E1FB;
 Wed,  4 Mar 2020 23:34:33 -0800 (PST)
Received: from [10.163.1.88] (unknown [10.163.1.88])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B93CE3F534;
 Wed,  4 Mar 2020 23:38:16 -0800 (PST)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH] mm/special: Create generic fallbacks for pte_special()
 and pte_mkspecial()
To: linux-mm@kvack.org, Ralf Baechle <ralf@linux-mips.org>,
 Paul Burton <paulburton@kernel.org>
References: <1583114190-7678-1-git-send-email-anshuman.khandual@arm.com>
Message-ID: <58aecdcf-ea16-c958-0deb-97541792e081@arm.com>
Date: Thu, 5 Mar 2020 13:04:19 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1583114190-7678-1-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_233436_818427_D7C95AAB 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-ia64@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 linux-kernel@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 linux-csky@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-hexagon@vger.kernel.org, Vincent Chen <deanbo422@gmail.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Jonas Bonn <jonas@southpole.se>, Brian Cain <bcain@codeaurora.org>,
 Richard Weinberger <richard@nod.at>, Helge Deller <deller@gmx.de>,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, linux-arch@vger.kernel.org,
 Matt Turner <mattst88@gmail.com>, Sam Creasey <sammy@sammy.net>,
 Fenghua Yu <fenghua.yu@intel.com>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>, Greentime Hu <green.hu@gmail.com>,
 Stafford Horne <shorne@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Richard Henderson <rth@twiddle.net>,
 Chris Zankel <chris@zankel.net>, Michal Simek <monstr@monstr.eu>,
 Tony Luck <tony.luck@intel.com>, linux-parisc@vger.kernel.org,
 Nick Hu <nickhu@andestech.com>, linux-mips@vger.kernel.org,
 linux-alpha@vger.kernel.org, nios2-dev@lists.rocketboards.org,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 03/02/2020 07:26 AM, Anshuman Khandual wrote:
> diff --git a/arch/mips/include/asm/pgtable.h b/arch/mips/include/asm/pgtable.h
> index aef5378f909c..8e4e4be1ca00 100644
> --- a/arch/mips/include/asm/pgtable.h
> +++ b/arch/mips/include/asm/pgtable.h
> @@ -269,6 +269,36 @@ static inline void set_pte_at(struct mm_struct *mm, unsigned long addr,
>   */
>  extern pgd_t swapper_pg_dir[];
>  
> +/*
> + * Platform specific pte_special() and pte_mkspecial() definitions
> + * are required only when ARCH_HAS_PTE_SPECIAL is enabled.
> + */
> +#if !defined(CONFIG_32BIT) && !defined(CONFIG_CPU_HAS_RIXI)
> +#if defined(CONFIG_PHYS_ADDR_T_64BIT) && defined(CONFIG_CPU_MIPS32)
> +static inline int pte_special(pte_t pte)
> +{
> +	return pte.pte_low & _PAGE_SPECIAL;
> +}
> +
> +static inline pte_t pte_mkspecial(pte_t pte)
> +{
> +	pte.pte_low |= _PAGE_SPECIAL;
> +	return pte;
> +}
> +#else
> +static inline int pte_special(pte_t pte)
> +{
> +	return pte_val(pte) & _PAGE_SPECIAL;
> +}
> +
> +static inline pte_t pte_mkspecial(pte_t pte)
> +{
> +	pte_val(pte) |= _PAGE_SPECIAL;
> +	return pte;
> +}
> +#endif
> +#endif
> +

Hello Ralf/Paul,

This change now restricts mips definitions for pte_special() and pte_mkspecial()
and makes them visible only for configs where ARCH_HAS_PTE_SPECIAL is enabled.
Does this look okay ? In almost all other platforms we drop the stub definitions
for pte_special() and pte_mkspecial().

- Anshuman

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
