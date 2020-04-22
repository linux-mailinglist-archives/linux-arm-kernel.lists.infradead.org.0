Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D356C1B451D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 14:29:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JXMYsQUMNunuphzDm5pJBfrE5JXsSaf+OmO1CrEOtH0=; b=rx7sLSUE+8c2WD
	tmHHlulihZeI0hL+DqVnp4S6jO8YH26SDGIxD919I+Vt2e3yg75ncNBATdQSqXKkybBc/1nQu5n+K
	Krpgpa4v1ak0gpTAnkJqdkchpmbXVKCgkA3BvsSTd9U9Aj3EuHD46+A5qBAda28DoSD7HJ2YxFDbK
	Jb7epDyDXxGmT9YKvA6wYbZE2UFatxpS9US+z52M5+/lI0Q5l0LgopuRMWjRgNbUNJKrZVSJdW9cA
	ijKQtbZSW/wYAv2uZI4P9vZ/yBFebQkXGpKCuETpVSzHiWAlAQsOfKS51uWp6SAmiH7hknHL6toBU
	OSim7YfmUbctVUVKCymQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jREVG-0004WR-6C; Wed, 22 Apr 2020 12:29:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jREUv-0004Td-TO; Wed, 22 Apr 2020 12:29:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6CBF731B;
 Wed, 22 Apr 2020 05:29:01 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3BFE33F6CF;
 Wed, 22 Apr 2020 05:29:00 -0700 (PDT)
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
To: "Eric W. Biederman" <ebiederm@xmission.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-2-james.morse@arm.com>
 <87d088h4k8.fsf@x220.int.ebiederm.org>
From: James Morse <james.morse@arm.com>
Message-ID: <a694cea6-4449-c77a-98f7-bd7a49cf47fc@arm.com>
Date: Wed, 22 Apr 2020 13:28:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <87d088h4k8.fsf@x220.int.ebiederm.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_052902_012312_CD3D6CE0 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eric,

On 15/04/2020 21:33, Eric W. Biederman wrote:
> James Morse <james.morse@arm.com> writes:
> 
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
> 
> Given that we are talking about the destination pages for kexec
> not where the loaded kernel is currently stored the description is
> confusing.

I think David has some better wording to cover this. I thought I had it with 'scattered
and re-assembled'.


> Beyond that I think it would be better to simply unload the loaded
> kernel at memory hotunplug time.

Unconditionally, or if it aliases the removed region?

I don't particular like it. User-space has asked for two impossible things, we are
changing the answer to the first when we see the second. Its a bit spooky. (maybe no one
will notice)


> Usually somewhere in the loaded image
> is a copy of the memory map at the time the kexec kernel was loaded.
> That will invalidate the memory map as well.

Ah, unconditionally. Sure, x86 needs this.
(arm64 re-discovers the memory map from firmware tables after kexec)

If that's an acceptable change in behaviour, sure, lets do that.


> All of this should be for a very brief window of a few seconds, as
> the loaded kexec image is quite short.

It seems I'm the outlier anticipating anything could happen between those syscalls.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
