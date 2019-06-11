Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1675A3C3DB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 08:17:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=arHrarGs7E1w+bcwVO7x7GfIsjvvb+740IVHtvHvnlg=; b=BsrV4KaCPbxRKq
	A482SzskHl2LwDo2nWdqIrNVZSIph4t+A2VOC2YOLveMnhMANUka3aDVljBpPCGTiBU6tCBf+MZLM
	OEfHtTWtjfNlalgP7Q7b4+MxoV0e/npmqeSUbxLEwEO8Dm6j3P/srWoICPNvHECkXTFTpgqFoR7Nn
	mMG3/fJnRm2KUSRfjFZSg7ASovH+aBX2ixbk2tk8RS+4c+zbtoiTUInMnnsqPvWWnbNC0vZt7pq/+
	KGsnnPcjKmLlqBcN9autXptnRsRcVn9XqHxguK4SPtRRU+6amKkcLl+1TVFTgm+VHPMj/DO62EFa8
	4xbzh0P+AWs1+oktwuHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haa69-00089q-T5; Tue, 11 Jun 2019 06:17:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haa5z-00089V-Ry
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 06:17:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 04483344;
 Mon, 10 Jun 2019 23:17:22 -0700 (PDT)
Received: from [10.162.43.135] (p8cg001049571a15.blr.arm.com [10.162.43.135])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 847F13F73C; Mon, 10 Jun 2019 23:17:20 -0700 (PDT)
Subject: Re: [PATCH 4/4] mm/vmalloc: Hugepage vmalloc mappings
To: Nicholas Piggin <npiggin@gmail.com>, Mark Rutland <mark.rutland@arm.com>
References: <20190610043838.27916-1-npiggin@gmail.com>
 <20190610043838.27916-4-npiggin@gmail.com>
 <20190610141036.GA16989@lakrids.cambridge.arm.com>
 <1560177786.t6c5cn5hw4.astroid@bobo.none>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <a1747247-f4f6-ea9a-149c-07c7eb9193d8@arm.com>
Date: Tue, 11 Jun 2019 11:47:39 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1560177786.t6c5cn5hw4.astroid@bobo.none>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_231723_944592_97CEDE1D 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-mm@kvack.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06/10/2019 08:14 PM, Nicholas Piggin wrote:
> Mark Rutland's on June 11, 2019 12:10 am:
>> Hi,
>>
>> On Mon, Jun 10, 2019 at 02:38:38PM +1000, Nicholas Piggin wrote:
>>> For platforms that define HAVE_ARCH_HUGE_VMAP, have vmap allow vmalloc to
>>> allocate huge pages and map them
>>>
>>> This brings dTLB misses for linux kernel tree `git diff` from 45,000 to
>>> 8,000 on a Kaby Lake KVM guest with 8MB dentry hash and mitigations=off
>>> (performance is in the noise, under 1% difference, page tables are likely
>>> to be well cached for this workload). Similar numbers are seen on POWER9.
>>
>> Do you happen to know which vmalloc mappings these get used for in the
>> above case? Where do we see vmalloc mappings that large?
> 
> Large module vmalloc could be subject to huge mappings.
> 
>> I'm worried as to how this would interact with the set_memory_*()
>> functions, as on arm64 those can only operate on page-granular mappings.
>> Those may need fixing up to handle huge mappings; certainly if the above
>> is all for modules.
> 
> Good point, that looks like it would break on arm64 at least. I'll
> work on it. We may have to make this opt in beyond HUGE_VMAP.

This is another reason we might need to have an arch opt-ins like the one
I mentioned before.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
