Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79EE7195BB2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 17:56:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cFcsuZOJc9Bj1ypgHf5C4ajxPgItINrtgrrzdonhiZU=; b=PDxDGkxWCyOTqT
	LVdV422+8e/iBIJlEOU+8oE3ymjRcUHoMYnJsWQPZk8BKJktzvCkAYWsiBLNrVd2cRi6a9+mYnu76
	7vl7QSd5nxP4b/MPxEPWu1fkNdUtpv0FwPnO+Qw175MOHH9jTSMyRl1keRrZkVqnf0wGCFtEibf/p
	TC4UlzUbxqy0YBT4gqugQ1DL/WWIg7PYNQ9/IZxxYg3Uqb9oUVW0VKHkN9gVEv2qa3iZl9u1w3sFU
	ETKn3Ls5iKYvwgK7TiE/FaJS6e9ycF1BRMy/h7TpFiRpvG8XoJGdBa+yIdHeDfengWRoyfhri0DYO
	bN5ehWfRpocpU/Uuvuqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHsHR-00067D-9j; Fri, 27 Mar 2020 16:56:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHsHE-00065w-6p; Fri, 27 Mar 2020 16:56:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 16AFF1FB;
 Fri, 27 Mar 2020 09:56:11 -0700 (PDT)
Received: from [172.16.1.108] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9FF4A3F71E;
 Fri, 27 Mar 2020 09:56:09 -0700 (PDT)
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
To: David Hildenbrand <david@redhat.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-2-james.morse@arm.com>
 <321e6bf7-e898-7701-dd60-6c25237ff9cd@redhat.com>
From: James Morse <james.morse@arm.com>
Openpgp: preference=signencrypt
Message-ID: <a21d90ea-2566-a2bc-ad2f-6464a416c97f@arm.com>
Date: Fri, 27 Mar 2020 16:56:04 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <321e6bf7-e898-7701-dd60-6c25237ff9cd@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_095612_296866_A5AF745D 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi David,

On 3/27/20 9:30 AM, David Hildenbrand wrote:
> On 26.03.20 19:07, James Morse wrote:
>> An image loaded for kexec is not stored in place, instead its segments
>> are scattered through memory, and are re-assembled when needed. In the
>> meantime, the target memory may have been removed.
>>
>> Because mm is not aware that this memory is still in use, it allows it
>> to be removed.
>>
>> Add a memory notifier to prevent the removal of memory regions that
>> overlap with a loaded kexec image segment. e.g., when triggered from the
>> Qemu console:
>> | kexec_core: memory region in use
>> | memory memory32: Offline failed.
>>
>> Signed-off-by: James Morse <james.morse@arm.com>
>> ---
>>  kernel/kexec_core.c | 56 +++++++++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 56 insertions(+)
>>
>> diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
>> index c19c0dad1ebe..ba1d91e868ca 100644
>> --- a/kernel/kexec_core.c
>> +++ b/kernel/kexec_core.c

> E.g., in kernel/kexec_core.c:kimage_alloc_pages()
> 
> "SetPageReserved(pages + i);"
> 
> Pages that are reserved cannot get offlined. How are you able to trigger
> that before this patch? (where is the allocation path for kexec, which
> will not set the pages reserved?)

This sets page reserved on the memory it gets back from
alloc_pages() in kimage_alloc_pages(). This is when you load the image[0].

The problem I see is for the target or destination memory once you execute the
image. Once machine_kexec() runs, it tries to write to this, assuming it is
still present...


How can I make the commit message clearer?

're-assembled' and 'target memory' aren't quite cutting it, is there are a
correct term to use?
(destination?)



Thanks,

James


[0] Just to convince myself:
| kimage_alloc_pages+0x30/0x15c
| kimage_alloc_page+0x210/0x7d8
| kimage_load_segment+0x14c/0x8c8
| __arm64_sys_kexec_load+0x4f0/0x720
| do_el0_svc+0x13c/0x3c0
| el0_sync_handler+0x9c/0x3c0
| el0_sync+0x158/0x180

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
