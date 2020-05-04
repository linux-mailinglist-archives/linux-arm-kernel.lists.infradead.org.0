Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEEA21C39F2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 14:53:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8jdSyW4bAbVVi0+Zc2Wqzf50omL/LaLysdQr9FfSaRg=; b=igbY2BQD6wBypDoeEoBi1NEJJ
	2qhm66JupQNuaLUc0KoZ6grduCezLE20h/PFGFfpZ9ZGkN0Wj/nYEvqlQHYEwx6410qkEsWpYhQnc
	w1dMS9ar2JIekPADol1jZGEsMas8YMRiTA+4dwc40WomIpLuSFaH8wrUO2XGCq3E/nlVyECAEi/Iu
	N8OfWvdPcKuPu/51HmKp7q+ejOAtVPHBxUF0fCmCI+gFiamR2LNcXiWTdkuWC/yn9bcQ7xMBM25d9
	Ol2XjmmgfnMs0Fu60Q4JpBjD9AICokViAkauKAF7qylo/i3mdXXgjn+rGQXxfbYL2OJX3tIyJSoi6
	4H/JmV0Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVabL-0002BW-JA; Mon, 04 May 2020 12:53:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVabE-00029r-4X
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:53:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B6B5E1FB;
 Mon,  4 May 2020 05:53:29 -0700 (PDT)
Received: from [192.168.1.84] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 85DBD3F71F;
 Mon,  4 May 2020 05:53:28 -0700 (PDT)
Subject: Re: [PATCH 3/4] arm64: mte: Enable swap of tagged pages
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20200422142530.32619-1-steven.price@arm.com>
 <20200422142530.32619-4-steven.price@arm.com> <20200503152858.GA11959@gaia>
From: Steven Price <steven.price@arm.com>
Message-ID: <2ef10bcf-e019-beaf-10fb-b342f96e188c@arm.com>
Date: Mon, 4 May 2020 13:53:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200503152858.GA11959@gaia>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_055332_226019_804E343F 
X-CRM114-Status: GOOD (  13.63  )
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Hugh Dickins <hughd@google.com>, linux-mm@kvack.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/05/2020 16:29, Catalin Marinas wrote:
> On Wed, Apr 22, 2020 at 03:25:29PM +0100, Steven Price wrote:
>> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
>> index 39a372bf8afc..a4ad1b75a1a7 100644
>> --- a/arch/arm64/include/asm/pgtable.h
>> +++ b/arch/arm64/include/asm/pgtable.h
>> @@ -80,6 +80,8 @@ extern unsigned long empty_zero_page[PAGE_SIZE / sizeof(unsigned long)];
>>   #define pte_user_exec(pte)	(!(pte_val(pte) & PTE_UXN))
>>   #define pte_cont(pte)		(!!(pte_val(pte) & PTE_CONT))
>>   #define pte_devmap(pte)		(!!(pte_val(pte) & PTE_DEVMAP))
>> +#define pte_tagged(pte)		(!!((pte_val(pte) & PTE_ATTRINDX_MASK) == \
>> +				    PTE_ATTRINDX(MT_NORMAL_TAGGED)))
>>   
>>   #define pte_cont_addr_end(addr, end)						\
>>   ({	unsigned long __boundary = ((addr) + CONT_PTE_SIZE) & CONT_PTE_MASK;	\
>> @@ -268,12 +270,17 @@ static inline void __check_racy_pte_update(struct mm_struct *mm, pte_t *ptep,
>>   		     __func__, pte_val(old_pte), pte_val(pte));
>>   }
>>   
>> +void mte_sync_tags(pte_t *ptep, pte_t pte);
>> +
>>   static inline void set_pte_at(struct mm_struct *mm, unsigned long addr,
>>   			      pte_t *ptep, pte_t pte)
>>   {
>>   	if (pte_present(pte) && pte_user_exec(pte) && !pte_special(pte))
>>   		__sync_icache_dcache(pte);
>>   
>> +	if (system_supports_mte() && pte_tagged(pte))
>> +		mte_sync_tags(ptep, pte);
> 
> I think this needs a pte_present() check as well, otherwise pte_tagged()
> could match some random swap entry.

Good spot - mte_sync_tags() bails out fairly early in this case (which 
explains why I didn't see any problems). But it's *after* PG_mte_tagged 
is set which will lead to incorrectly flagging pages.

Thanks,

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
