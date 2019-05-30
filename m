Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A23EE2F29F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 06:23:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0chSW71leciYZ6PYczIo35aQdB7HKhKReBzMjbNytUg=; b=uubMsm/K1dDesI
	37xgv3Dndwxp2EEgXSGlfETjkO1pt+4yf1WoT6cJthRwf4shrUo+RDjvvtcgPBDbwIqwuMw4EOIlk
	uePri7lEX+AzytiMwCW8KLNuXf2t3sQzexNl9n0i4apfULjGwBTjGreYA/Ip4ttIMESwwcjL+zbeX
	+2avVxLXXwaCZrhDpFqy9riSY30NdLq/kcBAFNLyM5iQdIdORzkk8y1afu2RTLO6xhVoOmqH2DNDJ
	0iArRhmvas5f/l4gFYT1IKUrYgCln3kmWIxM7KwwH+iR+Nb/Eu7lGplT/wNFH1+xaKXYMNgfjbqlp
	LxDBKs//yCYC8eNza4xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWCbU-0004Mf-UL; Thu, 30 May 2019 04:23:48 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWCbO-0004Lb-Jt
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 04:23:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 105F1374;
 Wed, 29 May 2019 21:23:37 -0700 (PDT)
Received: from [10.162.40.143] (p8cg001049571a15.blr.arm.com [10.162.40.143])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 ED62B3F5AF; Wed, 29 May 2019 21:23:30 -0700 (PDT)
Subject: Re: [PATCH V5 0/3] arm64/mm: Enable memory hot remove
To: Andrew Morton <akpm@linux-foundation.org>
References: <1559121387-674-1-git-send-email-anshuman.khandual@arm.com>
 <20190529150611.fc27dee202b4fd1646210361@linux-foundation.org>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <c6e3af6e-27f4-ec3e-5ced-af4f62a9cdff@arm.com>
Date: Thu, 30 May 2019 09:53:43 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190529150611.fc27dee202b4fd1646210361@linux-foundation.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_212342_659320_D37C847B 
X-CRM114-Status: GOOD (  15.03  )
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
Cc: mark.rutland@arm.com, mhocko@suse.com, mgorman@techsingularity.net,
 david@redhat.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, logang@deltatee.com,
 arunks@codeaurora.org, cai@lca.pw, ard.biesheuvel@arm.com,
 cpandya@codeaurora.org, james.morse@arm.com, dan.j.williams@intel.com,
 ira.weiny@intel.com, linux-arm-kernel@lists.infradead.org, osalvador@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/30/2019 03:36 AM, Andrew Morton wrote:
> On Wed, 29 May 2019 14:46:24 +0530 Anshuman Khandual <anshuman.khandual@arm.com> wrote:
> 
>> This series enables memory hot remove on arm64 after fixing a memblock
>> removal ordering problem in generic __remove_memory() and one possible
>> arm64 platform specific kernel page table race condition. This series
>> is based on latest v5.2-rc2 tag.
> 
> Unfortunately this series clashes syntactically and semantically with
> David Hildenbrand's series "mm/memory_hotplug: Factor out memory block
> devicehandling".  Could you and David please figure out what we should
> do here?
> 

Hello Andrew,

I was able to apply the above mentioned V3 series [1] from David with some changes
listed below which tests positively on arm64. These changes assume that the arm64
hot-remove series (current V5) gets applied first.

Changes to David's series

A) Please drop (https://patchwork.kernel.org/patch/10962565/) [v3,04/11]

	- arch_remove_memory() is already being added through hot-remove series

B) Rebase (https://patchwork.kernel.org/patch/10962575/) [v3, 06/11]

	- arm64 hot-remove series adds CONFIG_MEMORY_HOTREMOVE wrapper around
	  arch_remove_memory() which can be dropped in the rebased patch

C) Rebase (https://patchwork.kernel.org/patch/10962589/) [v3, 09/11]

	- hot-remove series moves arch_remove_memory() before memblock_[free|remove]()
	- So remove_memory_block_devices() should be moved before arch_remove_memory()
	  in it's new position

David,

Please do let me know if the plan sounds good or you have some other suggestions.

- Anshuman

[1] https://patchwork.kernel.org/project/linux-mm/list/?series=123133 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
