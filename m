Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D977D390
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 05:08:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nHBuClFaQEJfVcPfjQS9sUhZFLElgjsMTsgK9XbwJAo=; b=AJ9SDvQAC0hK5x
	y+zCy8zFarCOE5KFIqherPQPLFoufHycOW4xnOng3BAV9ReLAyUi8mdXkEaMZTUdW2DVx5f1x0CZo
	M4jyiCFHP5il1BSCpP4blfnGV18E7IxFnOsCknWkDeW7W9xZQca393gSXACs/Q/TKtfn/3DumCUAY
	2eTKm8IHh33e2WXm5U2vmUwKbwM0hw9ipw1idWnRkny4yyHv0J9djQSnQfv7WPRSdpQ7P/OvWqN1f
	Tcz9pSzyYVDVPeIbFEbWHjJwM0jXuV1vag5lRfdviSmegJ1DHttGhk/z/ZLJa3PRA/qZHAk9Es9yL
	8Fe8RHTzg1Qa4dhnRZtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht1SF-0002fX-VG; Thu, 01 Aug 2019 03:08:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ht1S8-0002er-4O
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 03:08:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E54F5344;
 Wed, 31 Jul 2019 20:08:26 -0700 (PDT)
Received: from [10.163.1.81] (unknown [10.163.1.81])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E31B33F575;
 Wed, 31 Jul 2019 20:08:20 -0700 (PDT)
Subject: Re: [RFC 1/2] mm/sparsemem: Add vmem_altmap support in
 vmemmap_populate_basepages()
To: Will Deacon <will@kernel.org>
References: <1561697083-7329-1-git-send-email-anshuman.khandual@arm.com>
 <1561697083-7329-2-git-send-email-anshuman.khandual@arm.com>
 <20190731161047.ypye54x5c5jje5sq@willie-the-truck>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <a753a841-c344-c708-fccd-39d838637bcb@arm.com>
Date: Thu, 1 Aug 2019 08:39:01 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190731161047.ypye54x5c5jje5sq@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_200828_219911_46D15046 
X-CRM114-Status: GOOD (  18.08  )
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
Cc: Fenghua Yu <fenghua.yu@intel.com>, Tony Luck <tony.luck@intel.com>,
 linux-ia64@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Will Deacon <will.deacon@arm.com>,
 x86@kernel.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Andy Lutomirski <luto@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07/31/2019 09:40 PM, Will Deacon wrote:
> On Fri, Jun 28, 2019 at 10:14:42AM +0530, Anshuman Khandual wrote:
>> Generic vmemmap_populate_basepages() is used across platforms for vmemmap
>> as standard or as fallback when huge pages mapping fails. On arm64 it is
>> used for configs with ARM64_SWAPPER_USES_SECTION_MAPS applicable both for
>> ARM64_16K_PAGES and ARM64_64K_PAGES which cannot use huge pages because of
>> alignment requirements.
>>
>> This prevents those configs from allocating from device memory for vmemap
>> mapping as vmemmap_populate_basepages() does not support vmem_altmap. This
>> enables that required support. Each architecture should evaluate and decide
>> on enabling device based base page allocation when appropriate. Hence this
>> keeps it disabled for all architectures to preserve the existing semantics.
> 
> This commit message doesn't really make sense to me. There's a huge amount
> of arm64-specific detail, followed by vague references to "this" and
> "those" and "that" and I lost track of what you're trying to solve.

Hmm, will clean up.

> 
> However, I puzzled through the code and I think it does make sense, so:
> 
> Acked-by: Will Deacon <will@kernel.org>
> 
> assuming you rewrite the commit message.

Thanks, will do.

> 
> However, this has a dependency on your hot remove series which has open
> comments from Mark Rutland afaict.

Yeah it has dependency on the hot-remove series. The only outstanding issue
there being whether to call free_empty_tables() in vmemmap tear down path
or not. Mark had asked for more details regarding the implications in cases
where free_empty_tables() is called or is not called. I did evaluate those
details recently and we should be able to take a decision sooner.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
