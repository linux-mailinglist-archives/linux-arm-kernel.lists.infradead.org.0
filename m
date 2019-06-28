Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B41D959229
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 05:46:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FDQOiRc0Vumy02IFbyIvZ8AFLqmh/KLpegKO8cn6LYM=; b=dbVNzM98TbMeXw
	ufS03j/yojhklwCXVaAFoTIfCFgp5FBqxHxflLu9xQi+KQrJE9o0PV7rABU5AwRy5v8vxZk4+iPVY
	ovqYdiSp69l+EOUyD/7ynN2KoGZrciLE73AvOr8fZZupw1VwVsGg2ckYC5s7GPTSjcAriTb917heP
	t68kHNP13oOaN5LkFduNSr9gT3APk8tveQ6DklPbPd8IOb14wLMBj52CcSXjplAVOEHGFI9ZGuAhg
	tMcSfCLrRzSyW/bdSnhjF/vkNnillliCdz3WZLvxums8mroLMkXYbGad1TSVTSoWmL2bcseBZPbSg
	qz5ZLPuzalkzJ54UmvjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hghqF-0005sD-FJ; Fri, 28 Jun 2019 03:46:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hghq1-0005rY-6Y
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 03:46:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EEEA72B;
 Thu, 27 Jun 2019 20:46:10 -0700 (PDT)
Received: from [10.162.40.144] (p8cg001049571a15.blr.arm.com [10.162.40.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 965093F706; Thu, 27 Jun 2019 20:46:08 -0700 (PDT)
Subject: Re: [RFC 1/2] arm64/mm: Change THP helpers to comply with generic MM
 semantics
To: Zi Yan <ziy@nvidia.com>
References: <1561639696-16361-1-git-send-email-anshuman.khandual@arm.com>
 <1561639696-16361-2-git-send-email-anshuman.khandual@arm.com>
 <7F685152-7C6C-4E99-99DF-03DDD03D6094@nvidia.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <5c490be8-5ac1-0a3a-32cf-d4e692fc59b5@arm.com>
Date: Fri, 28 Jun 2019 09:16:35 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <7F685152-7C6C-4E99-99DF-03DDD03D6094@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_204613_334714_2642B6AF 
X-CRM114-Status: GOOD (  16.28  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki Poulose <suzuki.poulose@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06/27/2019 09:01 PM, Zi Yan wrote:
> On 27 Jun 2019, at 8:48, Anshuman Khandual wrote:
> 
>> pmd_present() and pmd_trans_huge() are expected to behave in the following
>> manner during various phases of a given PMD. It is derived from a previous
>> detailed discussion on this topic [1] and present THP documentation [2].
>>
>> pmd_present(pmd):
>>
>> - Returns true if pmd refers to system RAM with a valid pmd_page(pmd)
>> - Returns false if pmd does not refer to system RAM - Invalid pmd_page(pmd)
>>
>> pmd_trans_huge(pmd):
>>
>> - Returns true if pmd refers to system RAM and is a trans huge mapping
>>
>> -------------------------------------------------------------------------
>> |	PMD states	|	pmd_present	|	pmd_trans_huge	|
>> -------------------------------------------------------------------------
>> |	Mapped		|	Yes		|	Yes		|
>> -------------------------------------------------------------------------
>> |	Splitting	|	Yes		|	Yes		|
>> -------------------------------------------------------------------------
>> |	Migration/Swap	|	No		|	No		|
>> -------------------------------------------------------------------------
>>
>> The problem:
>>
>> PMD is first invalidated with pmdp_invalidate() before it's splitting. This
>> invalidation clears PMD_SECT_VALID as below.
>>
>> PMD Split -> pmdp_invalidate() -> pmd_mknotpresent -> Clears PMD_SECT_VALID
>>
>> Once PMD_SECT_VALID gets cleared, it results in pmd_present() return false
>> on the PMD entry. It will need another bit apart from PMD_SECT_VALID to re-
>> affirm pmd_present() as true during the THP split process. To comply with
>> above mentioned semantics, pmd_trans_huge() should also check pmd_present()
>> first before testing presence of an actual transparent huge mapping.
>>
>> The solution:
>>
>> Ideally PMD_TYPE_SECT should have been used here instead. But it shares the
>> bit position with PMD_SECT_VALID which is used for THP invalidation. Hence
>> it will not be there for pmd_present() check after pmdp_invalidate().
>>
>> PTE_SPECIAL never gets used for PMD mapping i.e there is no pmd_special().
>> Hence this bit can be set on the PMD entry during invalidation which can
>> help in making pmd_present() return true and in recognizing the fact that
>> it still points to memory.
>>
>> This bit is transient. During the split is process it will be overridden
>> by a page table page representing the normal pages in place of erstwhile
>> huge page. Other pmdp_invalidate() callers always write a fresh PMD value
>> on the entry overriding this transient PTE_SPECIAL making it safe. In the
>> past former pmd_[mk]splitting() functions used PTE_SPECIAL.
>>
>> [1]: https://lkml.org/lkml/2018/10/17/231
> 
> Just want to point out that lkml.org link might not be stable.
> This one would be better: https://lore.kernel.org/linux-mm/20181017020930.GN30832@redhat.com/

Sure will update the link in the commit. Thanks !

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
