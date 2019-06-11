Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D08933CC09
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 14:47:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n8R5Xyi802xKVy2RNLaTY7oPyFJ5c0zfM3gmarlxcSA=; b=SEKvKfbRF1d3v7
	WqY9auGezOHsgNAeiNjt6j0QTu3UfJ8oBBfgR10GziYs8XDI7D1Nci/EKob03/gjCsZpT7/gxWS78
	t5ZkpVOpwfVaMgENH9WcjZlVycvI4K7V0J+iWY6dsloOr5hGcz1UGsoJq+4AgnKXU50MmrzBrOGfg
	eBdmlt75zLvWBrnmeJ+7Q5FtP8xpJZTUs4tv4XggodvqUg/T9F1/ssv7H8cco1bbwb12IlsAIJuc7
	yyeOu8GJpfFy1q/gyPVt3c9GmQafsTdiHMhK+Ck2l5BqAoZEYjeW2asNSXUcdkmQcCi3vFYnzRHvP
	8obwof0l0GZzmwKVvgFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hagB7-00082J-Kj; Tue, 11 Jun 2019 12:47:05 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hagAr-00081Z-0O
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 12:46:50 +0000
Received: by mail-qt1-x843.google.com with SMTP id j19so14258543qtr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 05:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=ZpJoiyTHXYiF7kVWlp5BjDY7BKtjLiYkm/X37H4JtRA=;
 b=hLRASOXJ6YWopQW2zJe/it1PtEXmPcjruiqSpyOQKa5oD3C8YF+KvSNFv+xPBPv8TH
 CzCRYOnzTi4MviZsxUxLvtnYX/SstM6qMHkP2ZjCGdKb4NOMo4OzomCUwM9AkZRJvLcY
 zBlSTNXp47ZYVck/lb2Vf8hj+ivWJlgzX8hHHfJACZXIAazfHU6t6bVEp/2MWe1uv3gW
 uyDUU1Pw4fo18A5CmdAe1aQn+1GjjYUMlwnvuYNfoWxQ+TfCNSVL8tW0FDAe57IqSIZl
 TCwTH4gLQ/iBsYni03TKMCwq5TPb+YwXTrsEGY4TugtM+wRkRbwhzTzCkT+wKtQlm0Df
 hqZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=ZpJoiyTHXYiF7kVWlp5BjDY7BKtjLiYkm/X37H4JtRA=;
 b=G3kaIOBLsbWLvgmL78zY9Ib5+HzhKbqN1hhh6mAbnyXnotjYhKSyT0XEfgXmydUOZp
 tymwO6FdoWikPJMgzqvF7Tpi1ZgjzqcZjA6f22I60gByATyO83GO7UZ1JAndAF7ztnxZ
 q8eQS+Lgy6bmDqxnfYZgKcZZcs5W7YPE5dihl2MPYIPX9PeTiqjOz5E8RKxPjhlzk42g
 G6Y2/WWGtKoUeZxbv3FvEkD4fORR1eBkQr4Vacmv/JoC0My+xgMoZoe1ddtz5wcz4lN1
 b/mRaqT2kFSwCXYLPER/KmseNYDsL8LbIXSD1Fp6QVMshAytKBgluaBwVlR5RWVT2jhJ
 YfuQ==
X-Gm-Message-State: APjAAAV6b3W6mmRpHUgKkLUv2IHvwA/0oCrXVfr4bWkg+IcGXCFBtlaU
 NNBz8pPRGkTX+75LtE92Vy4mqg==
X-Google-Smtp-Source: APXvYqwO5+sxJPYjLg249ECV9oOGg9Mp8tZmJ0f1umM1BO5C8rtfLDuiPkC+udH3Ifno3lmofhD1OA==
X-Received: by 2002:a0c:95af:: with SMTP id s44mr33429845qvs.162.1560257207741; 
 Tue, 11 Jun 2019 05:46:47 -0700 (PDT)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id s23sm6636182qtk.31.2019.06.11.05.46.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 05:46:46 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH -next] arm64/mm: fix a bogus GFP flag in pgd_alloc()
From: Qian Cai <cai@lca.pw>
In-Reply-To: <20190611124118.GA4761@rapoport-lnx>
Date: Tue, 11 Jun 2019 08:46:45 -0400
Message-Id: <3F6E1B9F-3789-4648-B95C-C4243B57DA02@lca.pw>
References: <1559656836-24940-1-git-send-email-cai@lca.pw>
 <20190604142338.GC24467@lakrids.cambridge.arm.com>
 <20190610114326.GF15979@fuggles.cambridge.arm.com>
 <1560187575.6132.70.camel@lca.pw>
 <20190611100348.GB26409@lakrids.cambridge.arm.com>
 <20190611124118.GA4761@rapoport-lnx>
To: Mike Rapoport <rppt@linux.ibm.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_054649_186000_24BA3113 
X-CRM114-Status: GOOD (  21.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, mhocko@kernel.org,
 linux-mm@kvack.org, vdavydov.dev@gmail.com, hannes@cmpxchg.org,
 cgroups@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On Jun 11, 2019, at 8:41 AM, Mike Rapoport <rppt@linux.ibm.com> wrote:
> 
> On Tue, Jun 11, 2019 at 11:03:49AM +0100, Mark Rutland wrote:
>> On Mon, Jun 10, 2019 at 01:26:15PM -0400, Qian Cai wrote:
>>> On Mon, 2019-06-10 at 12:43 +0100, Will Deacon wrote:
>>>> On Tue, Jun 04, 2019 at 03:23:38PM +0100, Mark Rutland wrote:
>>>>> On Tue, Jun 04, 2019 at 10:00:36AM -0400, Qian Cai wrote:
>>>>>> The commit "arm64: switch to generic version of pte allocation"
>>>>>> introduced endless failures during boot like,
>>>>>> 
>>>>>> kobject_add_internal failed for pgd_cache(285:chronyd.service) (error:
>>>>>> -2 parent: cgroup)
>>>>>> 
>>>>>> It turns out __GFP_ACCOUNT is passed to kernel page table allocations
>>>>>> and then later memcg finds out those don't belong to any cgroup.
>>>>> 
>>>>> Mike, I understood from [1] that this wasn't expected to be a problem,
>>>>> as the accounting should bypass kernel threads.
>>>>> 
>>>>> Was that assumption wrong, or is something different happening here?
>>>>> 
>>>>>> 
>>>>>> backtrace:
>>>>>>   kobject_add_internal
>>>>>>   kobject_init_and_add
>>>>>>   sysfs_slab_add+0x1a8
>>>>>>   __kmem_cache_create
>>>>>>   create_cache
>>>>>>   memcg_create_kmem_cache
>>>>>>   memcg_kmem_cache_create_func
>>>>>>   process_one_work
>>>>>>   worker_thread
>>>>>>   kthread
>>>>>> 
>>>>>> Signed-off-by: Qian Cai <cai@lca.pw>
>>>>>> ---
>>>>>>  arch/arm64/mm/pgd.c | 2 +-
>>>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>> 
>>>>>> diff --git a/arch/arm64/mm/pgd.c b/arch/arm64/mm/pgd.c
>>>>>> index 769516cb6677..53c48f5c8765 100644
>>>>>> --- a/arch/arm64/mm/pgd.c
>>>>>> +++ b/arch/arm64/mm/pgd.c
>>>>>> @@ -38,7 +38,7 @@ pgd_t *pgd_alloc(struct mm_struct *mm)
>>>>>>  	if (PGD_SIZE == PAGE_SIZE)
>>>>>>  		return (pgd_t *)__get_free_page(gfp);
>>>>>>  	else
>>>>>> -		return kmem_cache_alloc(pgd_cache, gfp);
>>>>>> +		return kmem_cache_alloc(pgd_cache, GFP_PGTABLE_KERNEL);
>>>>> 
>>>>> This is used to allocate PGDs for both user and kernel pagetables (e.g.
>>>>> for the efi runtime services), so while this may fix the regression, I'm
>>>>> not sure it's the right fix.
>>>>> 
>>>>> Do we need a separate pgd_alloc_kernel()?
>>>> 
>>>> So can I take the above for -rc5, or is somebody else working on a different
>>>> fix to implement pgd_alloc_kernel()?
>>> 
>>> The offensive commit "arm64: switch to generic version of pte allocation" is not
>>> yet in the mainline, but only in the Andrew's tree and linux-next, and I doubt
>>> Andrew will push this out any time sooner given it is broken.
>> 
>> I'd assumed that Mike would respin these patches to implement and use
>> pgd_alloc_kernel() (or take gfp flags) and the updated patches would
>> replace these in akpm's tree.
>> 
>> Mike, could you confirm what your plan is? I'm happy to review/test
>> updated patches for arm64.
> 
> Sorry for the delay, I'm mostly offline these days.
> 
> I wanted to understand first what is the reason for the failure. I've tried
> to reproduce it with qemu, but I failed to find a bootable configuration
> that will have PGD_SIZE != PAGE_SIZE :(
> 
> Qian Cai, can you share what is your environment and the kernel config?


https://raw.githubusercontent.com/cailca/linux-mm/master/arm64.config

# lscpu
Architecture:        aarch64
Byte Order:          Little Endian
CPU(s):              256
On-line CPU(s) list: 0-255
Thread(s) per core:  4
Core(s) per socket:  32
Socket(s):           2
NUMA node(s):        2
Vendor ID:           Cavium
Model:               1
Model name:          ThunderX2 99xx
Stepping:            0x1
BogoMIPS:            400.00
L1d cache:           32K
L1i cache:           32K
L2 cache:            256K
L3 cache:            32768K
NUMA node0 CPU(s):   0-127
NUMA node1 CPU(s):   128-255
Flags:               fp asimd evtstrm aes pmull sha1 sha2 crc32 atomics cpuid asimdrdm

# dmidecode
Handle 0x0001, DMI type 1, 27 bytes
System Information
        Manufacturer: HPE
        Product Name: Apollo 70             
        Version: X1
        Wake-up Type: Power Switch
        Family: CN99XX



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
