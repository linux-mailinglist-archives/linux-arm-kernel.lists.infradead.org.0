Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 687F11B5B94
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 14:37:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=01MNtiuxDOmVkUJhs5Y1htY3dub8knxxFBLw4k8FSGQ=; b=gojhwqRg2cQJHxjI+eKKDXEzd
	3N+38ByqsjNhKEdGA8/mZVlD5CxeIdA3TaXr/5+ixrne8SsuRTFxemdXjzQghyMVrLBNZqlQS8MYZ
	dYBqchiE0+jejVQnWCZYmZWv0yNgHPgsJO6KlPXHhi18xmPKowZktlJpmPoZnS/nklRleZhsl9w08
	dYi8MgycAM5HheCqN0GCkdNVqLNlMmyExdBtErEmaPhUYq/Y7JfFIBgB7J0/nHyNhiKL5GbFUEBZJ
	/WDZEvmXWiYHmaDWGtAvt48+N7uAotSbwQB4WEwSXxv8OJQA53R7my3TTrT6q/H9K1P8G7EpHPnub
	6I/53OUzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRb6l-0002mD-Sc; Thu, 23 Apr 2020 12:37:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRb6d-0002l4-R5
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 12:37:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 42E2431B;
 Thu, 23 Apr 2020 05:37:26 -0700 (PDT)
Received: from [192.168.1.84] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 458F23F6CF;
 Thu, 23 Apr 2020 05:37:24 -0700 (PDT)
Subject: Re: [PATCH 2/4] mm: Add arch hooks for saving/restoring tags
To: Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@intel.com>
References: <20200422142530.32619-1-steven.price@arm.com>
 <20200422142530.32619-3-steven.price@arm.com>
 <edd132f8-c39b-9586-1714-19a335ccea5c@intel.com> <20200423090919.GA4963@gaia>
From: Steven Price <steven.price@arm.com>
Message-ID: <380bdf0b-aa7c-399c-d16d-b2aecd3f363c@arm.com>
Date: Thu, 23 Apr 2020 13:37:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200423090919.GA4963@gaia>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_053727_916444_9D707418 
X-CRM114-Status: GOOD (  14.75  )
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Hugh Dickins <hughd@google.com>, linux-mm@kvack.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/04/2020 10:09, Catalin Marinas wrote:
> On Wed, Apr 22, 2020 at 11:08:10AM -0700, Dave Hansen wrote:
>> On 4/22/20 7:25 AM, Steven Price wrote:
>>> Three new hooks are added to the swap code:
>>>   * arch_prepare_to_swap() and
>>>   * arch_swap_invalidate_page() / arch_swap_invalidate_area().
>>> One new hook is added to shmem:
>>>   * arch_swap_restore_tags()
>>
>> How do the tags get restored outside of the shmem path?  I was expecting
>> to see more arch_swap_restore_tags() sites.
> 
> The restoring is done via set_pte_at() -> mte_sync_tags() ->
> mte_restore_tags() in the arch code (see patch 3).
> arch_swap_restore_tags() just calls mte_restore_tags() directly.
> 
> shmem is slightly problematic as it moves the page from the swap cache
> to the shmem one and I think arch_swap_invalidate_page() would have
> already been called by the time we get to set_pte_at() (Steven can
> correct me if I got this wrong).

That's correct - shmem can pull in pages (into it's own cache) and 
invalidate the swap entries without any process having a PTE restored. 
So we need to hook shmem to restore the tags even though there's no PTE 
restored yet.

The set_pte_at() 'trick' enables delaying the restoring of the tags (in 
the usual case) until the I/O for the page has completed, which might be 
necessary in some cases if the I/O can clobber the tags in memory. I 
couldn't find a better way of hooking this.

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
