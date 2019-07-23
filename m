Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC47A716A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 12:57:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MmLMPZXwjw2Mxpz6SxSLM1fP42rFV90Cm7AYeuD6Vlc=; b=na0vujoE2+4KZS
	f/X5xNQ2QtrpNP01KFAFUqOuXtPEYV2wTqo6sRv3cKYt+j9ceGqQMiqWWHpx4hCd8PCXHglWyVPFh
	+N2NJAUeB92TwitFiHYNQ0OSvy5EL4/lyEWYv0hLTxNJsMrTRJEyG31VC/XqL6RxQIrM8Q5zpJf4C
	eJVPGPW9ZuU7c8J5CteH2T491PUHkCBZXXzavl8Tk/nLoyigGMJeR6Swrr7NTBiTkdjNPf+vUyjRL
	O4ZmKaXNK3jkgJxhJXj6pHVcdTUtb3wfQwnE8edWHoS3/P2VnvHx41/ournAg+Fow+Q2hR2QGIy6C
	lPJXB0iXaxYkdxa1ce+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpsTd-0005Qo-N1; Tue, 23 Jul 2019 10:57:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpsTP-0005QQ-LL
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 10:56:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 64A5D337;
 Tue, 23 Jul 2019 03:56:46 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E61D53F71A;
 Tue, 23 Jul 2019 03:56:43 -0700 (PDT)
Date: Tue, 23 Jul 2019 11:56:36 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V6 RESEND 0/3] arm64/mm: Enable memory hot remove
Message-ID: <20190723105636.GA5004@lakrids.cambridge.arm.com>
References: <1563171470-3117-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563171470-3117-1-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_035647_790376_B4F28F46 
X-CRM114-Status: GOOD (  21.50  )
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
Cc: mhocko@suse.com, mgorman@techsingularity.net, david@redhat.com,
 catalin.marinas@arm.com, steve.capper@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, logang@deltatee.com,
 arunks@codeaurora.org, cai@lca.pw, ard.biesheuvel@arm.com,
 cpandya@codeaurora.org, james.morse@arm.com, akpm@linux-foundation.org,
 ira.weiny@intel.com, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anshuman,

On Mon, Jul 15, 2019 at 11:47:47AM +0530, Anshuman Khandual wrote:
> This series enables memory hot remove on arm64 after fixing a memblock
> removal ordering problem in generic try_remove_memory() and a possible
> arm64 platform specific kernel page table race condition. This series
> is based on linux-next (next-20190712).
> 
> Concurrent vmalloc() and hot-remove conflict:
> 
> As pointed out earlier on the v5 thread [2] there can be potential conflict
> between concurrent vmalloc() and memory hot-remove operation. This can be
> solved or at least avoided with some possible methods. The problem here is
> caused by inadequate locking in vmalloc() which protects installation of a
> page table page but not the walk or the leaf entry modification.
> 
> Option 1: Making locking in vmalloc() adequate
> 
> Current locking scheme protects installation of page table pages but not the
> page table walk or leaf entry creation which can conflict with hot-remove.
> This scheme is sufficient for now as vmalloc() works on mutually exclusive
> ranges which can proceed concurrently only if their shared page table pages
> can be created while inside the lock. It achieves performance improvement
> which will be compromised if entire vmalloc() operation (even if with some
> optimization) has to be completed under a lock.
> 
> Option 2: Making sure hot-remove does not happen during vmalloc()
> 
> Take mem_hotplug_lock in read mode through [get|put]_online_mems() constructs
> for the entire duration of vmalloc(). It protects from concurrent memory hot
> remove operation and does not add any significant overhead to other concurrent
> vmalloc() threads. It solves the problem in right way unless we do not want to
> extend the usage of mem_hotplug_lock in generic MM.
> 
> Option 3: Memory hot-remove does not free (conflicting) page table pages
> 
> Don't not free page table pages (if any) for vmemmap mappings after unmapping
> it's virtual range. The only downside here is that some page table pages might
> remain empty and unused until next memory hot-add operation of the same memory
> range.
> 
> Option 4: Dont let vmalloc and vmemmap share intermediate page table pages
> 
> The conflict does not arise if vmalloc and vmemap range do not share kernel
> page table pages to start with. If such placement can be ensured in platform
> kernel virtual address layout, this problem can be successfully avoided.
> 
> There are two generic solutions (Option 1 and 2) and two platform specific
> solutions (Options 2 and 3). This series has decided to go with (Option 3)
> which requires minimum changes while self-contained inside the functionality.

... while also leaking memory, right?

In my view, option 2 or 4 would have been preferable. Were there
specific technical reasons to not go down either of those routes? I'm
not sure that minimizing changes is the right rout given that this same
problem presumably applies to other architectures, which will need to be
fixed.

Do we know why we aren't seeing issues on other architectures? e.g. is
the issue possible but rare (and hence not reported), or masked by
something else (e.g. the layout of the kernel VA space)?

I'd like to solve the underyling issue before we start adding new
functionality.

> Testing:
> 
> Memory hot remove has been tested on arm64 for 4K, 16K, 64K page config
> options with all possible CONFIG_ARM64_VA_BITS and CONFIG_PGTABLE_LEVELS
> combinations. Its only build tested on non-arm64 platforms.

Could you please share how you've tested this?

Having instructions so that I could reproduce this locally would be very
helpful.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
