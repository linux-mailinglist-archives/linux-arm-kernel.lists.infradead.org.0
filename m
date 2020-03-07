Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46DA417C9F9
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 01:57:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sZsh60zw3luRDKN/qFuQcwdOqk9SxaSBlQZl+VnB/48=; b=ge4eGa5Q4GCRdK
	FOSb7I7gEyzfKhSaK9trVd1Ps70+UNwvQp+OYOtEtv6GrkG1TENfYanMAJruwlMIzDOHhpqWRoMHB
	mCKyCK8roqp7hiKGaBeT3xt5MBUyLvR7Sm+Al5XF8NnZkHHcNCXtes/yWeQ/zWxAeMX+LxlF63/Vc
	ZAWq9BVusoRP8p9ZMw205c/gy6LxO6hdIxjgnZOer8fN3lTxPCycNdpYzIJgCLmU5I1wjqPiJfarc
	S0vIeAjCBrOvBSiivrSS0bXinj10acpT+Nt3kGbJu5sgxG5jYX0XOdCQztNAtbmTvI7xcdLIxfTNI
	NWxHVFDAHufBbkk2iqkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jANm1-0003zo-BW; Sat, 07 Mar 2020 00:57:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jANlr-0003yP-UU; Sat, 07 Mar 2020 00:56:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7192C30E;
 Fri,  6 Mar 2020 16:56:49 -0800 (PST)
Received: from [10.163.1.59] (unknown [10.163.1.59])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D25853F237;
 Fri,  6 Mar 2020 16:56:41 -0800 (PST)
Subject: Re: [PATCH V15] mm/debug: Add tests validating architecture page
 table helpers
To: Qian Cai <cai@lca.pw>
References: <61250cdc-f80b-2e50-5168-2ec67ec6f1e6@arm.com>
 <CEEAD95E-D468-4C58-A65B-7E8AED91168A@lca.pw>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <a45834bc-e6f2-ac21-de9e-1aff67d12797@arm.com>
Date: Sat, 7 Mar 2020 06:26:40 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CEEAD95E-D468-4C58-A65B-7E8AED91168A@lca.pw>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_165652_030655_D236F425 
X-CRM114-Status: GOOD (  15.04  )
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-snps-arc@lists.infradead.org,
 Vasily Gorbik <gor@linux.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 03/07/2020 06:04 AM, Qian Cai wrote:
> 
> 
>> On Mar 6, 2020, at 7:03 PM, Anshuman Khandual <Anshuman.Khandual@arm.com> wrote:
>>
>> Hmm, set_pte_at() function is not preferred here for these tests. The idea
>> is to avoid or atleast minimize TLB/cache flushes triggered from these sort
>> of 'static' tests. set_pte_at() is platform provided and could/might trigger
>> these flushes or some other platform specific synchronization stuff. Just
> 
> Why is that important for this debugging option?

Primarily reason is to avoid TLB/cache flush instructions on the system
during these tests that only involve transforming different page table
level entries through helpers. Unless really necessary, why should it
emit any TLB/cache flush instructions ?

> 
>> wondering is there specific reason with respect to the soft lock up problem
>> making it necessary to use set_pte_at() rather than a simple WRITE_ONCE() ?
> 
> Looks at the s390 version of set_pte_at(), it has this comment,
> vmaddr);
> 
> /*
>  * Certain architectures need to do special things when PTEs
>  * within a page table are directly modified.  Thus, the following
>  * hook is made available.
>  */
> 
> I can only guess that powerpc  could be the same here.

This comment is present in multiple platforms while defining set_pte_at().
Is not 'barrier()' here alone good enough ? Else what exactly set_pte_at()
does as compared to WRITE_ONCE() that avoids the soft lock up, just trying
to understand.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
