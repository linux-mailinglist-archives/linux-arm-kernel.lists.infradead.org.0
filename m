Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9841BC431
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 10:41:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xebwrI6PmnawnrXwtGmvN5thPilWU6O50I/oNnLp7TY=; b=VQnNMI176FC8v6
	tKackymkOmUlCMh5bUoK11BF1+95iecMk2Dv3DT6fDAQK01M7W0Or28zCPaFJwhzHPdNga5qEhLcP
	Oqwou55cUWbPNvO39hSjopTMh4a0KrRZPDqVrqNN3tX9xj1L0+rH/SMLRZ91yT3ID4WtgmgfyxFD9
	g24iIelrCg/VRDqH2egu+gMM5xiRb+Fw9JIvu8ymhglmdIcHo+QUP0Eh0RaN//CVkKN//yEkADGvS
	6n4L+ix4qFdsdst2K55fhWPv94Hu6T1rTHi+j3dtBkmBgNiBD3dD4ejCMHUnFkwn0a+Nnp9J9BKli
	yoGHkUBqLp5kBzSFnpoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCgO3-0003ik-Rk; Tue, 24 Sep 2019 08:41:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCgNe-0003i0-4j
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 08:41:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BB404142F;
 Tue, 24 Sep 2019 01:41:01 -0700 (PDT)
Received: from [10.162.40.141] (p8cg001049571a15.blr.arm.com [10.162.40.141])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 789293F59C; Tue, 24 Sep 2019 01:40:55 -0700 (PDT)
Subject: Re: [PATCH V8 2/2] arm64/mm: Enable memory hot remove
To: Matthew Wilcox <willy@infradead.org>
References: <1569217425-23777-1-git-send-email-anshuman.khandual@arm.com>
 <1569217425-23777-3-git-send-email-anshuman.khandual@arm.com>
 <20190923111745.GG15392@bombadil.infradead.org>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <962f7849-f42d-9154-92ae-3125d2f19504@arm.com>
Date: Tue, 24 Sep 2019 14:11:12 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190923111745.GG15392@bombadil.infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_014106_230976_3FF92DF1 
X-CRM114-Status: GOOD (  13.56  )
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
Cc: mark.rutland@arm.com, mhocko@suse.com, david@redhat.com,
 catalin.marinas@arm.com, linux-mm@kvack.org, arunks@codeaurora.org,
 cpandya@codeaurora.org, will@kernel.org, ira.weiny@intel.com,
 steven.price@arm.com, valentin.schneider@arm.com, suzuki.poulose@arm.com,
 Robin.Murphy@arm.com, broonie@kernel.org, cai@lca.pw, ard.biesheuvel@arm.com,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org,
 osalvador@suse.de, steve.capper@arm.com, logang@deltatee.com,
 linux-kernel@vger.kernel.org, akpm@linux-foundation.org,
 mgorman@techsingularity.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/23/2019 04:47 PM, Matthew Wilcox wrote:
> On Mon, Sep 23, 2019 at 11:13:45AM +0530, Anshuman Khandual wrote:
>> +#ifdef CONFIG_MEMORY_HOTPLUG
>> +static void free_hotplug_page_range(struct page *page, size_t size)
>> +{
>> +	WARN_ON(!page || PageReserved(page));
> 
> WARN_ON(!page) isn't terribly useful.  You're going to crash on the very
> next line when you call page_address() anyway.  If this line were
> 
> 	if (WARN_ON(!page || PageReserved(page)))
> 		return;
> 
> it would make sense, or if it were just
> 
> 	WARN_ON(PageReserved(page))
> 
> it would also make sense.

I guess WARN_ON(PageReserved(page)) should be good enough to make sure
that page being freed here was originally allocated at runtime for a
previous memory hot add operation and did not some how come from the
memblock reserved area. That was the original objective for this check.
Will change it.

> 
>> +	free_pages((unsigned long)page_address(page), get_order(size));
>> +}
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
