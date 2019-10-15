Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5ABD75B1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 14:01:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Iszr3PTQTExj5aWKlppIyXTixD2oTxEoDnL0tFUEjD8=; b=sYKExsuOey5dUr1ZylTW1zDAX
	YJUlBeLpSdhQvByxwxDpzLYr1TcxOv7rg80F7Toapj3A79cPQ8VpcDAF7qG5UYoNyMEwgFSjyrd64
	WdGARKONoLRcoPL37lLjrHmtnSc+B1NynD3c41HYQz/nD/+k0ESYSwWwng8N6/iiohTf0RDNWjswo
	/edkY4Cf9/ty6O7Cq9qwJEX2cw0s/j6DWsrUCTvHxWmQOguUC3hIZ/St0ps2au/dht5HLrYEGp8J0
	FPb63uDt+aqLvPZQO1s4449MqbMTj320ID5sFPJhAZPsLnQfCayjWbw9fcjno6l5mol2zBlP/QRy4
	yhU0lMwaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKLWM-0008IJ-UC; Tue, 15 Oct 2019 12:01:46 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKLWE-0008Hq-7h; Tue, 15 Oct 2019 12:01:39 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D3B8F1056F8C;
 Tue, 15 Oct 2019 12:01:36 +0000 (UTC)
Received: from [10.36.116.26] (ovpn-116-26.ams2.redhat.com [10.36.116.26])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6B2745C548;
 Tue, 15 Oct 2019 12:01:28 +0000 (UTC)
Subject: Re: [PATCH V6 1/2] mm/page_alloc: Make alloc_gigantic_page()
 available for general use
From: David Hildenbrand <david@redhat.com>
To: Michal Hocko <mhocko@kernel.org>
References: <1571131302-32290-1-git-send-email-anshuman.khandual@arm.com>
 <1571131302-32290-2-git-send-email-anshuman.khandual@arm.com>
 <9da1f196-51bd-06ac-c5dc-b55776fce2be@redhat.com>
 <20191015114723.GD317@dhcp22.suse.cz>
 <513bc2f7-8110-58f7-36c1-a04b59f11f7e@redhat.com>
Organization: Red Hat GmbH
Message-ID: <3eaa50db-0b66-9d9d-3293-77216f3df91e@redhat.com>
Date: Tue, 15 Oct 2019 14:01:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <513bc2f7-8110-58f7-36c1-a04b59f11f7e@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.64]); Tue, 15 Oct 2019 12:01:37 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_050138_317969_75697554 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Andrea Arcangeli <aarcange@redhat.com>, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 David Rientjes <rientjes@google.com>, linux-snps-arc@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Kees Cook <keescook@chromium.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linuxppc-dev@lists.ozlabs.org,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 Oscar Salvador <osalvador@suse.de>, Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Hansen <dave.hansen@intel.com>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>, Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mel Gorman <mgorman@techsingularity.net>,
 "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15.10.19 13:50, David Hildenbrand wrote:
> On 15.10.19 13:47, Michal Hocko wrote:
>> On Tue 15-10-19 13:42:03, David Hildenbrand wrote:
>> [...]
>>>> -static bool pfn_range_valid_gigantic(struct zone *z,
>>>> -			unsigned long start_pfn, unsigned long nr_pages)
>>>> -{
>>>> -	unsigned long i, end_pfn = start_pfn + nr_pages;
>>>> -	struct page *page;
>>>> -
>>>> -	for (i = start_pfn; i < end_pfn; i++) {
>>>> -		if (!pfn_valid(i))
>>>> -			return false;
>>>> -
>>>> -		page = pfn_to_page(i);
>>>
>>> Am I missing something or should here really be a pfn_to_online_page() here
>>> instead of a pfn_valid() ?
>>
>> http://lkml.kernel.org/r/20180423000943.GO17484@dhcp22.suse.cz
>>
> 
> So we managed to add PageReserved(page) but not pfn_to_online_page().
> But it is the right thing to do? (or am I missing something?)
> 

Will send a patch.

-- 

Thanks,

David / dhildenb

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
