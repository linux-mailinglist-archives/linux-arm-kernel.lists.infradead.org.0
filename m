Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1D6F891D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 07:55:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8qLvv+CRxbjwuPscIjjGpr55/OXWOEY8I0DEotopeOo=; b=e66S2YfpgiDUQg
	3UGDPfVnKi5I7+gAAEUn3I/4jWQ40MBQe2CKdnUIL5BdOxkdUrDUgy0aMIUFmLBCmrY517xTXfFy6
	F37N7JBr1ZRyHwk+uOkQl5aki5OOcJZiL9MT3BqvedJrJiv49AVE7VFozPBads1MwK0zk4Y0uDs9d
	hDTLDm3MiH4teqfZns2F8Md23rhVhqF2CKIdx1ZbSXh4O+iXI5pcNlFcLXymLjXGrugVy6gfcaDcl
	RwttUAlF8xx3lYwkiqRv6EJ3AGqq010JakU32hgddPJrLZOcUeYovm1JeZNBdzgBeEGXC8bR+JIAR
	gyuTFnEEAEX2nB38bCFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUQ4k-00050m-4l; Tue, 12 Nov 2019 06:54:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUQ2U-00035f-Of; Tue, 12 Nov 2019 06:52:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 741C81FB;
 Mon, 11 Nov 2019 22:52:33 -0800 (PST)
Received: from [10.163.1.187] (unknown [10.163.1.187])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6BA6A3F52E;
 Mon, 11 Nov 2019 22:55:07 -0800 (PST)
Subject: Re: [PATCH V9] mm/debug: Add tests validating architecture page table
 helpers
To: Ingo Molnar <mingo@kernel.org>
References: <1573532326-24084-1-git-send-email-anshuman.khandual@arm.com>
 <20191112062951.GA100264@gmail.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <fe6b8140-1017-d081-570c-62213fe39624@arm.com>
Date: Tue, 12 Nov 2019 12:22:45 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191112062951.GA100264@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_225234_871595_E1940A7F 
X-CRM114-Status: GOOD (  16.85  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/12/2019 11:59 AM, Ingo Molnar wrote:
> 
> * Anshuman Khandual <anshuman.khandual@arm.com> wrote:
> 
>> +config DEBUG_VM_PGTABLE
>> +	bool "Debug arch page table for semantics compliance"
>> +	depends on MMU
>> +	depends on DEBUG_VM
>> +	depends on ARCH_HAS_DEBUG_VM_PGTABLE
>> +	help
>> +	  This option provides a debug method which can be used to test
>> +	  architecture page table helper functions on various platforms in
>> +	  verifying if they comply with expected generic MM semantics. This
>> +	  will help architecture code in making sure that any changes or
>> +	  new additions of these helpers still conform to expected
>> +	  semantics of the generic MM.
>> +
>> +	  If unsure, say N.
> 
> Since CONFIG_DEBUG_VM is generally disabled in distro kernel packages, 
> why not make this 'default y' to maximize testing coverage? The code size 
> increase should be minimal, and DEBUG_VM increases size anyway.

Sure, will do.

> 
> Other than that this looks good to me:
> 
>   Reviewed-by: Ingo Molnar <mingo@kernel.org>

Thank you.

> 
> Thanks,
> 
> 	Ingo
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
