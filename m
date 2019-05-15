Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E731E6C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 03:56:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SNv/JZWReAFcLUSPDeEQT71V/AyD4ocggeRl3v7KWLo=; b=l7nv/yCuxTePah
	BLYHLc0JvoM6zL5fSWavXKAR6MgVMwe4rZTprAAwhZjj+yK9L6NdUfcZxi5Bk2kTLANjt48r839ro
	MJD2XEHzvbtTqxjQtNL1/gv1VL8ycW1I8H++ht4/gn6VF29sYtobbqSOZvzvtJhyUMMWuD0lL3ZbE
	srpQak4BleeKFnNU/StQHIbYpOiydBM90xJ/IV0028Qg2HpEUk4x4H/5N5HDsS7zNh5dpQcJk8PI4
	An9Gb6bVXE3qqEjPW8EecEKKamP2XKKC5CGcQeKN/mQSfKT7nqB4DC3eZLVHLIHghCKw6zE7YOwrB
	bdWnmqg9rOMiVrTh29qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQj9t-0007qt-5w; Wed, 15 May 2019 01:56:41 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQj9l-0007px-JI
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 01:56:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 60CE1374;
 Tue, 14 May 2019 18:56:32 -0700 (PDT)
Received: from [10.163.1.137] (unknown [10.163.1.137])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6AED13F71E;
 Tue, 14 May 2019 18:56:23 -0700 (PDT)
Subject: Re: [PATCH V3 2/4] arm64/mm: Hold memory hotplug lock while walking
 for kernel page table dump
To: Mark Rutland <mark.rutland@arm.com>
References: <1557824407-19092-1-git-send-email-anshuman.khandual@arm.com>
 <1557824407-19092-3-git-send-email-anshuman.khandual@arm.com>
 <20190514154000.GA20935@lakrids.cambridge.arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <107ce10f-622c-7914-6269-cff5509b084f@arm.com>
Date: Wed, 15 May 2019 07:26:32 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190514154000.GA20935@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_185633_641883_53EEB735 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: cai@lca.pw, mhocko@suse.com, ira.weiny@intel.com, david@redhat.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 logang@deltatee.com, james.morse@arm.com, cpandya@codeaurora.org,
 arunks@codeaurora.org, akpm@linux-foundation.org, osalvador@suse.de,
 mgorman@techsingularity.net, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/14/2019 09:10 PM, Mark Rutland wrote:
> On Tue, May 14, 2019 at 02:30:05PM +0530, Anshuman Khandual wrote:
>> The arm64 pagetable dump code can race with concurrent modification of the
>> kernel page tables. When a leaf entries are modified concurrently, the dump
>> code may log stale or inconsistent information for a VA range, but this is
>> otherwise not harmful.
>>
>> When intermediate levels of table are freed, the dump code will continue to
>> use memory which has been freed and potentially reallocated for another
>> purpose. In such cases, the dump code may dereference bogus addressses,
>> leading to a number of potential problems.
>>
>> Intermediate levels of table may by freed during memory hot-remove, or when
>> installing a huge mapping in the vmalloc region. To avoid racing with these
>> cases, take the memory hotplug lock when walking the kernel page table.
>>
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> Can we please move this after the next patch (which addresses the huge
> vmap case), and change the last paragraph to:
> 
>   Intermediate levels of table may by freed during memory hot-remove,
>   which will be enabled by a subsequent patch. To avoid racing with
>   this, take the memory hotplug lock when walking the kernel page table.
> 
> With that, this looks good to me.

Sure will do.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
