Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD0220412
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 13:06:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XFc3jrHJPDlsj2IRCcBTITJ/zpQPwHGSblc2HaECSO0=; b=JK9sZHwcMq0xHu
	vFORpqYzNcXTIjU7JrDeKny95MzsBnh8rTuTRpYhVVNvsYpHHECmkK9jKOiml+vr3CkNZKSJsZb36
	rIRu9nUMPdFPFcTY/CWP8kxTBvowBwIJzxjpnpQK4+1D4Q6MLnrrap64ZR38J6jqzfVfTXc67IE9p
	M7O8k7ZsI8s53RQ6NAqHMKr1sYz/ldaSl18c2F+i1yXGnAsCoPKXkFfdqu7vwCFtnYL9wmqiuQ9BX
	a+PIvYhEOCbbcxvd21hZ5OpfLwgMbDxnp35zVTYH/I3Gae+rSZC7iJUZhDQg2af3rfaBZpAjy/pW4
	cEItTLLRWnGkUcgCsw6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hREDP-0003pq-Um; Thu, 16 May 2019 11:06:23 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hREDI-0003p6-3z
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 11:06:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D9E1419BF;
 Thu, 16 May 2019 04:06:12 -0700 (PDT)
Received: from [10.163.1.137] (unknown [10.163.1.137])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AF0023F703;
 Thu, 16 May 2019 04:06:03 -0700 (PDT)
Subject: Re: [PATCH V3 2/4] arm64/mm: Hold memory hotplug lock while walking
 for kernel page table dump
To: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@kernel.org>
References: <1557824407-19092-1-git-send-email-anshuman.khandual@arm.com>
 <1557824407-19092-3-git-send-email-anshuman.khandual@arm.com>
 <20190515165847.GH16651@dhcp22.suse.cz>
 <20190516102354.GB40960@lakrids.cambridge.arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <a141ffa1-aa81-39df-11ba-9e18046356ff@arm.com>
Date: Thu, 16 May 2019 16:36:12 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190516102354.GB40960@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_040616_167589_E9CBEC48 
X-CRM114-Status: GOOD (  27.52  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: cai@lca.pw, ira.weiny@intel.com, david@redhat.com, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, logang@deltatee.com,
 james.morse@arm.com, cpandya@codeaurora.org, arunks@codeaurora.org,
 akpm@linux-foundation.org, osalvador@suse.de, mgorman@techsingularity.net,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org,
 robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/16/2019 03:53 PM, Mark Rutland wrote:
> Hi Michal,
> 
> On Wed, May 15, 2019 at 06:58:47PM +0200, Michal Hocko wrote:
>> On Tue 14-05-19 14:30:05, Anshuman Khandual wrote:
>>> The arm64 pagetable dump code can race with concurrent modification of the
>>> kernel page tables. When a leaf entries are modified concurrently, the dump
>>> code may log stale or inconsistent information for a VA range, but this is
>>> otherwise not harmful.
>>>
>>> When intermediate levels of table are freed, the dump code will continue to
>>> use memory which has been freed and potentially reallocated for another
>>> purpose. In such cases, the dump code may dereference bogus addressses,
>>> leading to a number of potential problems.
>>>
>>> Intermediate levels of table may by freed during memory hot-remove, or when
>>> installing a huge mapping in the vmalloc region. To avoid racing with these
>>> cases, take the memory hotplug lock when walking the kernel page table.
>>
>> Why is this a problem only on arm64 
> 
> It looks like it's not -- I think we're just the first to realise this.
> 
> AFAICT x86's debugfs ptdump has the same issue if run conccurently with
> memory hot remove. If 32-bit arm supported hot-remove, its ptdump code
> would have the same issue.
> 
>> and why do we even care for debugfs? Does anybody rely on this thing
>> to be reliable? Do we even need it? Who is using the file?
> 
> The debugfs part is used intermittently by a few people working on the
> arm64 kernel page tables. We use that both to sanity-check that kernel
> page tables are created/updated correctly after changes to the arm64 mmu
> code, and also to debug issues if/when we encounter issues that appear
> to be the result of kernel page table corruption.
> 
> So while it's rare to need it, it's really useful to have when we do
> need it, and I'd rather not remove it. I'd also rather that it didn't
> have latent issues where we can accidentally crash the kernel when using
> it, which is what this patch is addressing.
> 
>> I am asking because I would really love to make mem hotplug locking less
>> scattered outside of the core MM than more. Most users simply shouldn't
>> care. Pfn walkers should rely on pfn_to_online_page.
> 
> I'm not sure if that would help us here; IIUC pfn_to_online_page() alone
> doesn't ensure that the page remains online. Is there a way to achieve
> that other than get_online_mems()?

Still wondering how pfn_to_online_page() is applicable here. It validates
a given PFN and whether its online from sparse section mapping perspective
before giving it's struct page. IIUC it is used during a linear scanning
of a physical address range not for a page table walk. So how it can solve
the problem when a struct page which was used as an intermediate level page
table page gets released back to the buddy from another concurrent thread ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
