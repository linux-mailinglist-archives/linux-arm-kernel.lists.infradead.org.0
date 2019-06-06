Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC14F36E29
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 10:08:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DwKyk0wcpHCUDFN3jGir8wjMVtll5mWHzqjY8Amk9k4=; b=PYYBmWCP/ItQUG
	Zx0aqkh0Az1fh7c39IOioqln77ySvBLHt35+Q1oI7x59N9u0ZLC4rvHgjBwvh3vbOzp7nci3oFYWg
	wVpbP0GPs/yleVxMuIduaUkuZaYyJqOOZ22cahR/YaqrM98+PFNbwJH36g/14y6OtFm+higeJSKB1
	SssA8ZUTLDH5xQUo7Uzp5Eui4yQU7SQNg0mrKXjB6mRhj8BvNiBRpvvYT1GDJcvoh4QTo0jtAwAAF
	FciAE0AcGf8WzAM9vgOnrTcSyLYqsc9KWdJKsJLMLjNluq72PTV2yE8PY9JEHKQjp8zA4jmY1mNcY
	09sTiDAjY6kG8lce8Z2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYnS5-00042c-Vi; Thu, 06 Jun 2019 08:08:49 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYnRz-00042H-06
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 08:08:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7C077341;
 Thu,  6 Jun 2019 01:08:42 -0700 (PDT)
Received: from [10.162.43.122] (p8cg001049571a15.blr.arm.com [10.162.43.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 5D8B13F246; Thu,  6 Jun 2019 01:08:40 -0700 (PDT)
Subject: Re: [PATCH V3 2/2] arm64/mm: Change offset base address in
 [pud|pmd]_free_[pmd|pte]_page()
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1557377177-20695-1-git-send-email-anshuman.khandual@arm.com>
 <1557377177-20695-3-git-send-email-anshuman.khandual@arm.com>
 <20190603153638.GA63283@arrakis.emea.arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <53f14fca-262c-f035-fdd1-e957fec4863f@arm.com>
Date: Thu, 6 Jun 2019 13:38:56 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190603153638.GA63283@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_010843_050281_AB0B53ED 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-mm@kvack.org, James Morse <james.morse@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06/03/2019 09:06 PM, Catalin Marinas wrote:
> Hi Anshuman,
> 
> 
> On Thu, May 09, 2019 at 10:16:17AM +0530, Anshuman Khandual wrote:
>> Pgtable page address can be fetched with [pmd|pte]_offset_[kernel] if input
>> address is PMD_SIZE or PTE_SIZE aligned. Input address is now guaranteed to
>> be aligned, hence fetched pgtable page address is always correct. But using
>> 0UL as offset base address has been a standard practice across platforms.
>> It also makes more sense as it isolates pgtable page address computation
>> from input virtual address alignment. This does not change functionality.
>>
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will.deacon@arm.com>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: James Morse <james.morse@arm.com>
>> Cc: Robin Murphy <robin.murphy@arm.com>
> 
> What's the plan with this small series? I didn't find a v5 (unless I
> deleted it by mistake). I can queue this patch through the arm64 tree or
> they can both go in via the mm tree.

As mentioned earlier [1] I believe the second patch is not needed anymore. Hence
only V4 of the first patch (https://patchwork.kernel.org/patch/10944191/) which
has a Reviewed-by tag should be considered.

[1] https://patchwork.kernel.org/patch/10936625/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
