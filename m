Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA8966A88
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 11:58:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=61j3I7ARK4H3wbv6ZAvcTsASLsRJU6UB9jqQlQ2J3Z0=; b=CvzIoRrXpC+9o6
	Yaob9e00bmGxuiF3vS2DUZRzr9FbwRUwrhcOsq01jJvue3VliVBApSEy75wCRd9UXVEua+mBG3bsK
	BaQ2gDbvZDJffY5yK5cBVzOOZRuW4ZMxL8klpS1wUOHItO/ixDNXUwqBgWhcERLfgSgrYebyPHwxK
	nhadbUAP03EUioCi7ecZNf5QkhVOab0nM7G+Yu9WqbtUOSgCLB0vH/eFq/lrCIcxid2kT58y+COJ9
	bjZEsgyBHurKOX5T/2XtlKf+ASvTx6jOAw7w3rpJQQIC7kF6I4Pu+QpxVmgf8AjYY3uzvSVZGVqrK
	31XW6Ds0Nv27Fk0M1ecQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlsJj-0005Kk-7D; Fri, 12 Jul 2019 09:58:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlsJS-0005KJ-Bc
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 09:57:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 054A42B;
 Fri, 12 Jul 2019 02:57:55 -0700 (PDT)
Received: from [10.162.41.115] (p8cg001049571a15.blr.arm.com [10.162.41.115])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 C4A683F71F; Fri, 12 Jul 2019 02:57:50 -0700 (PDT)
Subject: Re: [PATCH V2] mm/ioremap: Probe platform for p4d huge map support
To: Michael Ellerman <mpe@ellerman.id.au>,
 Andrew Morton <akpm@linux-foundation.org>
References: <1561699231-20991-1-git-send-email-anshuman.khandual@arm.com>
 <20190702160630.25de5558e9fe2d7d845f3472@linux-foundation.org>
 <fbc147c7-bec2-daed-b828-c4ae170010a9@arm.com>
 <87tvbrennf.fsf@concordia.ellerman.id.au>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <b0525e42-6ba0-593f-5662-dc6271db2f4f@arm.com>
Date: Fri, 12 Jul 2019 15:28:22 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <87tvbrennf.fsf@concordia.ellerman.id.au>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_025758_446008_35E55F0A 
X-CRM114-Status: GOOD (  16.39  )
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, x86@kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Will Deacon <will.deacon@arm.com>,
 Michal Hocko <mhocko@kernel.org>, linux-mm@kvack.org,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linuxppc-dev@lists.ozlabs.org,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07/12/2019 12:37 PM, Michael Ellerman wrote:
> Anshuman Khandual <anshuman.khandual@arm.com> writes:
>> On 07/03/2019 04:36 AM, Andrew Morton wrote:
>>> On Fri, 28 Jun 2019 10:50:31 +0530 Anshuman Khandual <anshuman.khandual@arm.com> wrote:
>>>
>>>> Finishing up what the commit c2febafc67734a ("mm: convert generic code to
>>>> 5-level paging") started out while levelling up P4D huge mapping support
>>>> at par with PUD and PMD. A new arch call back arch_ioremap_p4d_supported()
>>>> is being added which just maintains status quo (P4D huge map not supported)
>>>> on x86, arm64 and powerpc.
>>>
>>> Does this have any runtime effects?  If so, what are they and why?  If
>>> not, what's the actual point?
>>
>> It just finishes up what the previous commit c2febafc67734a ("mm: convert
>> generic code to 5-level paging") left off with respect p4d based huge page
>> enablement for ioremap. When HAVE_ARCH_HUGE_VMAP is enabled its just a simple
>> check from the arch about the support, hence runtime effects are minimal.
> 
> The return value of arch_ioremap_p4d_supported() is stored in the
> variable ioremap_p4d_capable which is then returned by
> ioremap_p4d_enabled().
> 
> That is used by ioremap_try_huge_p4d() called from ioremap_p4d_range()
> from ioremap_page_range().

That is right.

> 
> The runtime effect is that it prevents ioremap_page_range() from trying
> to create huge mappings at the p4d level on arches that don't support
> it.

But now after first checking with an arch callback. Previously p4d huge
mappings were disabled on all platforms as ioremap_p4d_capable remained
clear through out being a static.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
