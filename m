Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D924417FF72
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 14:47:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tr1CivvPGb5jziT3ZLVQUGTf/gVy94SlCp1MxSTk+yw=; b=EIYmhyQPtd0qql
	eLZWItqleV5DpmAZAj0GzaKDbfRvA2xOyfX7wybvEY80wLWQ/RU9egb1RQYpF7g0MDl6zFzvRwwSo
	qBCbrCrnunM11HDxF2E0VwDhmsG8nNvYSTqdsAl3NSxw3Hu2xKalPB05pp+CGwTiGrBlqWTBVUJYD
	A1GWPt0wIsqcwIgzQ1G3HDZmPIB7/NNdUl2px+ZP/FlY9NFIWGawmylX9TBngEGMBuXARtJCo4aDh
	hbctBp+9Kq9XnRPwaIf8fqe/+iWrBRq9m6qm/ULiy7q7p4bJse8EAM5EF6Hkh16mEojAyi4M9gPBP
	7vX6Cf5q7W4qxW2M9RyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBfEW-0005QQ-Jj; Tue, 10 Mar 2020 13:47:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBfDo-0004tz-6I; Tue, 10 Mar 2020 13:47:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C8E4A30E;
 Tue, 10 Mar 2020 06:46:58 -0700 (PDT)
Received: from [10.163.1.203] (unknown [10.163.1.203])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 26DEA3F6CF;
 Tue, 10 Mar 2020 06:46:44 -0700 (PDT)
Subject: Re: [PATCH V2] mm/special: Create generic fallbacks for pte_special()
 and pte_mkspecial()
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
References: <1583802551-15406-1-git-send-email-anshuman.khandual@arm.com>
 <20200310132747.GA12601@alpha.franken.de>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <a8341dde-aa59-b425-ac23-b6005e0a67ec@arm.com>
Date: Tue, 10 Mar 2020 19:16:42 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200310132747.GA12601@alpha.franken.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_064700_320296_F551E2BD 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-ia64@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 linux-kernel@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 linux-mm@kvack.org, Guo Ren <guoren@kernel.org>, linux-csky@vger.kernel.org,
 sparclinux@vger.kernel.org, linux-hexagon@vger.kernel.org,
 Vincent Chen <deanbo422@gmail.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Jonas Bonn <jonas@southpole.se>, Paul Burton <paulburton@kernel.org>,
 Richard Weinberger <richard@nod.at>, Helge Deller <deller@gmx.de>,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, linux-parisc@vger.kernel.org,
 linux-arch@vger.kernel.org, Matt Turner <mattst88@gmail.com>,
 Sam Creasey <sammy@sammy.net>, Fenghua Yu <fenghua.yu@intel.com>,
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>, Greentime Hu <green.hu@gmail.com>,
 Stafford Horne <shorne@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Richard Henderson <rth@twiddle.net>,
 Chris Zankel <chris@zankel.net>, Michal Simek <monstr@monstr.eu>,
 Tony Luck <tony.luck@intel.com>, Brian Cain <bcain@codeaurora.org>,
 Nick Hu <nickhu@andestech.com>, Max Filippov <jcmvbkbc@gmail.com>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-alpha@vger.kernel.org, nios2-dev@lists.rocketboards.org,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 03/10/2020 06:57 PM, Thomas Bogendoerfer wrote:
> On Tue, Mar 10, 2020 at 06:39:11AM +0530, Anshuman Khandual wrote:
>> diff --git a/arch/mips/include/asm/pgtable.h b/arch/mips/include/asm/pgtable.h
>> index aef5378f909c..8e4e4be1ca00 100644
>> --- a/arch/mips/include/asm/pgtable.h
>> +++ b/arch/mips/include/asm/pgtable.h
>> @@ -269,6 +269,36 @@ static inline void set_pte_at(struct mm_struct *mm, unsigned long addr,
>>   */
>>  extern pgd_t swapper_pg_dir[];
>>  
>> +/*
>> + * Platform specific pte_special() and pte_mkspecial() definitions
>> + * are required only when ARCH_HAS_PTE_SPECIAL is enabled.
>> + */
>> +#if !defined(CONFIG_32BIT) && !defined(CONFIG_CPU_HAS_RIXI)
> 
> this looks wrong.
> 
> current Kconfig statement is
> 
> select ARCH_HAS_PTE_SPECIAL if !(32BIT && CPU_HAS_RIXI)
> 
> so we can't use PTE_SPECIAL on 32bit _and_ CPUs with RIXI support.

I already had asked for clarification on this.

> 
> Why can't we use
> 
> #if defined(CONFIG_ARCH_HAS_PTE_SPECIAL)
> 
> here as the comment already suggests ?

Yes, that will be easier and will automatically adjust in case
ARCH_HAS_PTE_SPECIAL scope changes later. Will respin the patch.

> 
> Thomas.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
