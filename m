Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2841D18A9B5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 01:21:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCxn00z73lvKNSLSTdSRJCjIucbYYstXUTIy/aROhRw=; b=HGoOQ5pYiCMjrz
	en39F5j6D6BOeZxkwjQmlIA2z03cpgceLMANaRFRUBMfxeCs09o5Ntbwy/G1Su9YoLQe1fiB3Vq2O
	n7p2m+7/5JYKZwS4v48LaBSHjSMhSOAX8dQrljQE2STl3VqpInJum+m/yMZw2k3Re70zn0O7WwwwU
	fA5y9Nq2ZsDQbIcgdc+LI0da1vQ/b8y/SGi2dHIHedQ0zbOJNaEC4kbTY+VqEMA9xlW650VVo/WFh
	3nXS7pyUDE1VJymZdDAWJHgJxORxGqFbkiFC01kSB+miXh4K4z/G3BEMtD3ZHfeCNre2XU0kG0yRQ
	PFyXt+jDoyfiyMwxs/WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEivx-00035x-AE; Thu, 19 Mar 2020 00:21:13 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEivp-00034r-Re; Thu, 19 Mar 2020 00:21:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=Y0czQRAz/kOPllfphXUjXudXCZCxZCs56nRoN+fK9Zs=; b=U2dqLL+663SgPnghCMGR8BF8Y0
 CZcLj/WCyPzBCV3IAXDape2LJMGZ9E9h8mLvL93UF6xS6flxgRdFGaZ8/3EZeFY5MLpjBkVXQdM3F
 26ktVz0JuP/YjCOcMiUwXM8U/3WqY/1g/8JlnNOgitbzgKslHSBWEAMVo14KQymj5kToLM+xxIAPd
 lPVeE9cKJREw8RGyVwEvCDVMzH3khG9KgYpDhZwQ52cH4cn0i8R7SP4WibjhCrLOYKc7abcSk0Cc6
 k46Y3sU2mrcoF3pjsyU8z4kAqRfkXv0RuDgUdWhj0llbGVWPwKQDK3am5dUfZzcsQeeM023WkwPRb
 /dkivxmA==;
Received: from c-73-157-219-8.hsd1.or.comcast.net ([73.157.219.8]
 helo=[10.0.0.252])
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEivf-0000pW-Gf; Thu, 19 Mar 2020 00:20:55 +0000
Subject: Re: [PATCH 4/4] hugetlbfs: clean up command line processing
To: Mike Kravetz <mike.kravetz@oracle.com>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-riscv@lists.infradead.org,
 linux-s390@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20200318220634.32100-1-mike.kravetz@oracle.com>
 <20200318220634.32100-5-mike.kravetz@oracle.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <1820045d-0bf2-9a86-226d-e9c4d5928749@infradead.org>
Date: Wed, 18 Mar 2020 17:20:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200318220634.32100-5-mike.kravetz@oracle.com>
Content-Language: en-US
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Vasily Gorbik <gor@linux.ibm.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "David S . Miller" <davem@davemloft.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Paul Mackerras <paulus@samba.org>,
 Andrew Morton <akpm@linux-foundation.org>, Longpeng <longpeng2@huawei.com>,
 Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mike,

On 3/18/20 3:06 PM, Mike Kravetz wrote:
> With all hugetlb page processing done in a single file clean up code.
> - Make code match desired semantics
>   - Update documentation with semantics
> - Make all warnings and errors messages start with 'HugeTLB:'.
> - Consistently name command line parsing routines.
> - Add comments to code
>   - Describe some of the subtle interactions
>   - Describe semantics of command line arguments
> 
> Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
> ---
>  Documentation/admin-guide/mm/hugetlbpage.rst | 26 +++++++
>  mm/hugetlb.c                                 | 78 +++++++++++++++-----
>  2 files changed, 87 insertions(+), 17 deletions(-)


> diff --git a/mm/hugetlb.c b/mm/hugetlb.c
> index cc85b4f156ca..2b9bf01db2b6 100644
> --- a/mm/hugetlb.c
> +++ b/mm/hugetlb.c

> @@ -3214,8 +3238,15 @@ static int __init hugetlb_nrpages_setup(char *s)
>  
>  	return 1;
>  }
> -__setup("hugepages=", hugetlb_nrpages_setup);
> +__setup("hugepages=", hugepages_setup);
>  
> +/*
> + * hugepagesz command line processing
> + * A specific huge page size can only be specified once with hugepagesz.
> + * hugepagesz is followed by hugepages on the commnad line.  The global

typo:                                            command

> + * variable 'parsed_valid_hugepagesz' is used to determine if prior
> + * hugepagesz argument was valid.
> + */
>  static int __init hugepagesz_setup(char *s)
>  {
>  	unsigned long long size;


Does any of this need to be updated?  (from Documentation/admin-guide/kernel-parameters.txt)

	hugepagesz=	[HW,IA-64,PPC,X86-64] The size of the HugeTLB pages.
			On x86-64 and powerpc, this option can be specified
			multiple times interleaved with hugepages= to reserve
			huge pages of different sizes. Valid pages sizes on
			x86-64 are 2M (when the CPU supports "pse") and 1G
			(when the CPU supports the "pdpe1gb" cpuinfo flag).


-- 
~Randy


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
