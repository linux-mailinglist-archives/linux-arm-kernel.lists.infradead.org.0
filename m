Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2626311787A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 22:27:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q4e5sN0ac4v6CDlCXG6MbbR5pgDyyNMeSg8eqmPY6ao=; b=ot3VD2J0Bxgh3s
	Erha7NI+CC5uhbzfMS9rA9Rn469BQO0Eyqk0OguQI55uOJ/NR6iMCjFlulCCpu1TDJQKOfAl907qZ
	htONksVDBSx377+NVsNJJd5LvYhR4eNAHhusqWNMi8cobJfmQgeZjgTfJff1eRA6/6dLaQm70gcOx
	X4eVywRRUvqpTSge4Gmt3V2x/yyOFGfS+vjIkyBh4sFBqyZhUbhIEi5qBBPMgEFxWkzd8UQ6VJ+G2
	XcTuU3/W8S416HrUNR6OBHqYTDBoeupiEwXpMsZYjCIxPPdzKFXmVn58bJ2fO9Iu/KuFdQixOHRoH
	86Ku34jKMdLvVzdcxU2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieQZ2-0008Jl-SL; Mon, 09 Dec 2019 21:27:32 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieQYv-0008J2-7m
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 21:27:26 +0000
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.92)
 (envelope-from <logang@deltatee.com>)
 id 1ieQYj-0005SY-26; Mon, 09 Dec 2019 14:27:14 -0700
To: Dan Williams <dan.j.williams@intel.com>, Michal Hocko <mhocko@kernel.org>
References: <20191209191346.5197-1-logang@deltatee.com>
 <20191209191346.5197-6-logang@deltatee.com>
 <ce50d9da-c60e-05a1-a86b-3bb3629de502@redhat.com>
 <f34a4c52-cc95-15ed-8a72-c05ab4fd6d33@deltatee.com>
 <20191209204128.GC7658@dhcp22.suse.cz>
 <CAPcyv4iKKw8cuFyDrY2VLN2ecd-qAbDCfYa7SufuhUb59e89Rw@mail.gmail.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <05e82397-4d89-a54d-5334-2ddca6c94f19@deltatee.com>
Date: Mon, 9 Dec 2019 14:27:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAPcyv4iKKw8cuFyDrY2VLN2ecd-qAbDCfYa7SufuhUb59e89Rw@mail.gmail.com>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: peterz@infradead.org, luto@kernel.org,
 dave.hansen@linux.intel.com, bp@alien8.de, mingo@redhat.com,
 tglx@linutronix.de, benh@kernel.crashing.org, will@kernel.org,
 catalin.marinas@arm.com, akpm@linux-foundation.org, hch@lst.de,
 linux-mm@kvack.org, platform-driver-x86@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-s390@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-ia64@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 david@redhat.com, mhocko@kernel.org, dan.j.williams@intel.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/6] mm, memory_hotplug: Provide argument for the pgprot_t
 in arch_add_memory()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_132725_277961_435BE32C 
X-CRM114-Status: GOOD (  17.41  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-s390 <linux-s390@vger.kernel.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-ia64@vger.kernel.org,
 Will Deacon <will@kernel.org>, David Hildenbrand <david@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Linux-sh <linux-sh@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 platform-driver-x86@vger.kernel.org, Linux MM <linux-mm@kvack.org>,
 Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Andy Lutomirski <luto@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Borislav Petkov <bp@alien8.de>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019-12-09 2:00 p.m., Dan Williams wrote:
>>>> Can we fiddle that into "struct mhp_restrictions" instead?
>>>
>>> Yes, if that's what people want, it's pretty trivial to do. I chose not
>>> to do it that way because it doesn't get passed down to add_pages() and
>>> it's not really a "restriction". If I don't hear any objections, I will
>>> do that for v2.
>>
>> I do agree that restriction is not the best fit. But I consider prot
>> argument to complicate the API to all users even though it is not really
>> clear whether we are going to have many users really benefiting from it.
>> Look at the vmalloc API and try to find how many users of __vmalloc do
>> not use PAGE_KERNEL.
> 
> At least for this I can foresee at least one more user in the
> pipeline, encrypted memory support for persistent memory mappings that
> will store the key-id in the ptes.
> 
>>
>> So I can see two options. One of them is to add arch_add_memory_prot
>> that would allow to have give and extra prot argument or simply call
>> an arch independent API to change the protection after arch_add_memory.
>> The later sounds like much less code. The memory shouldn't be in use by
>> anybody at that stage yet AFAIU. Maybe there even is an API like that.
> 
> I'm ok with passing it the same way as altmap or a new
> arch_add_memory_prot() my only hangup with after the fact changes is
> the wasted effort it inflicts in the init path for potentially large
> address ranges.

Yes, I'll change the way it's passed in for v2 as that seems to be
generally agreed upon. I can also add a patch to make the name change.

And, yes, given our testing, the wasted effort is quite significant so
I'm against changing the prots after the fact.

Logan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
