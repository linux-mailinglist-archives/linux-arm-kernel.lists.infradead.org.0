Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0D8E422D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 05:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dLctzYZIhqLrIrqwqu5aOTYoHncpyi33P15yrYp+rNc=; b=Mk7vvg4C94eONe
	5BN1q44KVoRK2AsVklsniHk6mxAHMPWENXey96Kf38pZmdQv44mGDZ+pFME0HWTeZ1kSpgcCkZp4d
	V3I+aeiE4Em05rJQhGVQ8PTjv3afk653g7QcS4WTGDWRfjW6MWmWrOEClz4h7W4QK34Fep1e9cIUt
	wbSMhT+d5bQWR7Fpj5R/9sP0MWxQUewMOh3DOMyHzJWQDIwfQ/8U0onONP7tRU3upqTyCX4F9Y7e/
	2Zy4qBX98NtP8MYzuki4f1Cx0OWmrBxm2mAGeZdOt+XExKrJO2z5BXy5DkSLAVxSnpjgdjWssb+Xp
	T7MyqelKj5inrv9ttzww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNqYB-0003hB-Ku; Fri, 25 Oct 2019 03:46:07 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNqY2-0003fs-Lp; Fri, 25 Oct 2019 03:45:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B5D211FB;
 Thu, 24 Oct 2019 20:45:47 -0700 (PDT)
Received: from [10.162.41.137] (p8cg001049571a15.blr.arm.com [10.162.41.137])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 A4C213F718; Thu, 24 Oct 2019 20:45:36 -0700 (PDT)
Subject: Re: [PATCH V7] mm/debug: Add tests validating architecture page table
 helpers
To: Qian Cai <cai@lca.pw>
References: <1571625739-29943-1-git-send-email-anshuman.khandual@arm.com>
 <FCAFFD72-3781-4474-8393-A4E40264473A@lca.pw>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <ccdd4f7a-c7dc-ca10-d30c-0bc05c7136c7@arm.com>
Date: Fri, 25 Oct 2019 09:16:07 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <FCAFFD72-3781-4474-8393-A4E40264473A@lca.pw>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_204558_758301_10D098F3 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, linux-ia64@vger.kernel.org,
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
 Ingo Molnar <mingo@kernel.org>, Kees Cook <keescook@chromium.org>,
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
 "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/24/2019 10:21 PM, Qian Cai wrote:
> 
> 
>> On Oct 24, 2019, at 10:50 AM, Anshuman Khandual <Anshuman.Khandual@arm.com> wrote:
>>
>> Changes in V7:
>>
>> - Memory allocation and free routines for mapped pages have been droped
>> - Mapped pfns are derived from standard kernel text symbol per Matthew
>> - Moved debug_vm_pgtaable() after page_alloc_init_late() per Michal and Qian 
>> - Updated the commit message per Michal
>> - Updated W=1 GCC warning problem on x86 per Qian Cai
> 
> It would be interesting to know if you actually tested  out to see if the warning went away. As far I can tell, the GCC is quite stubborn there, so I am not going to insist.
> 

Nothing specific. But just tested this with x86 defconfig with relevant configs
which are required for this test. Not sure if it involved W=1. The problem is,
there is no other or better way to have both the conditional checks in place
while also reducing the chances this warning. IMHO both the conditional checks
are required.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
