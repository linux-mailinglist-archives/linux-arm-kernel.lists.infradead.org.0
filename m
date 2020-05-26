Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFEA91BAB2E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 19:26:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/H0tyk9rOakuwaDh2ddiBvoU+q7wizkyABw61bADrC4=; b=Fed4AIrhEgJm4o
	Yv2qBQVna4QGXCnF9HnVotRU+qnHYVDWqWmJ6qKMfNADo3/VMFBz0i/6HglM69umQlZo7WqMR4ZQj
	R6Na5RFCjeJV2TFpevAhfSnd0yCSij5tWw5hzUyAMAja2OGuIaMmb2DBFdsnWLkGcOMe4rxqubo0C
	5UGUXCjMy3qIb+UVzP5Zj1p92kssv1wuGhFpna10vFCTy9rB1CeldAYJHDOMPW6BIAIqclLxmMzUV
	wkoPnjz0Wp816KPrtM5GR4QCqU1LFD9gPthmYrsL3o/rQBIOyW+POwVoSR62mv8tQ72aA8UQe0cbH
	5bPGra3Vt8GZOIPCa/cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT7Wf-0005tC-C4; Mon, 27 Apr 2020 17:26:37 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT7WQ-0005pK-0g; Mon, 27 Apr 2020 17:26:23 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03RHNNun032176;
 Mon, 27 Apr 2020 17:25:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=2uE+mNBlryTX8hj4mQm6UWx/K31ONdvabCMIKOLtOyU=;
 b=xTCYIbf7r5dai610kYmRfslwcsdHMEa6nYuPYmpMy+7WUkM9840zuWRmT2v1MiaH6Cad
 +fYWXCh8PyDfm6g+dIyG7BXcw3P9PeZXXougO6mlOLOylsBzYtMAlZzBzlRJJatu4I9N
 /AveFv2IyJQslCKqyCxuN+21YY9yrbN47PRg98fdwJ2kPrlLeXvj0DTMFDZB9ZWRvRM7
 Ed+D9rxwrxjP3D1PFlRuVFcuOx+bDZYZm4iIaDJw0NmlAZ9XtPZO6joC0Rr+di/qtUTo
 oTv+6hlYH5+uyVoe6FV6yxjUAbpvIRv9bN/idQ6mOzjti7KgZTFrdQJIrHma1+l6CzbV yA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 30p2p00ddv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 Apr 2020 17:25:18 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03RHMbqg085782;
 Mon, 27 Apr 2020 17:25:18 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 30mxpdrdfm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 Apr 2020 17:25:18 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 03RHP5vx008462;
 Mon, 27 Apr 2020 17:25:05 GMT
Received: from [192.168.2.157] (/71.63.128.209)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 27 Apr 2020 10:25:05 -0700
Subject: Re: [PATCH v3 2/4] hugetlbfs: move hugepagesz= parsing to arch
 independent code
To: Sandipan Das <sandipan.osd@gmail.com>
References: <20200417185049.275845-1-mike.kravetz@oracle.com>
 <20200417185049.275845-3-mike.kravetz@oracle.com>
 <7583dfcc-62d8-2a54-6eef-bcb4e01129b3@gmail.com>
From: Mike Kravetz <mike.kravetz@oracle.com>
Message-ID: <5a380060-38db-b690-1003-678ca0f28f07@oracle.com>
Date: Mon, 27 Apr 2020 10:25:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <7583dfcc-62d8-2a54-6eef-bcb4e01129b3@gmail.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9604
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 malwarescore=0
 mlxscore=0 bulkscore=0 adultscore=0 phishscore=0 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004270142
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9604
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 clxscore=1011
 bulkscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 mlxscore=0 suspectscore=0 mlxlogscore=999 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004270142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_102622_185661_B75F011C 
X-CRM114-Status: GOOD (  28.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-doc@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Peter Xu <peterx@redhat.com>,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, Mina Almasry <almasrymina@google.com>,
 linux-s390@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Longpeng <longpeng2@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Vasily Gorbik <gor@linux.ibm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Nitesh Narayan Lal <nitesh@redhat.com>, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S.Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/26/20 10:04 PM, Sandipan Das wrote:
> Hi Mike,
> 
> On 18/04/20 12:20 am, Mike Kravetz wrote:
>> Now that architectures provide arch_hugetlb_valid_size(), parsing
>> of "hugepagesz=" can be done in architecture independent code.
>> Create a single routine to handle hugepagesz= parsing and remove
>> all arch specific routines.  We can also remove the interface
>> hugetlb_bad_size() as this is no longer used outside arch independent
>> code.
>>
>> This also provides consistent behavior of hugetlbfs command line
>> options.  The hugepagesz= option should only be specified once for
>> a specific size, but some architectures allow multiple instances.
>> This appears to be more of an oversight when code was added by some
>> architectures to set up ALL huge pages sizes.
>>
>> [...]
>>
>> diff --git a/arch/powerpc/mm/hugetlbpage.c b/arch/powerpc/mm/hugetlbpage.c
>> index de54d2a37830..2c3fa0a7787b 100644
>> --- a/arch/powerpc/mm/hugetlbpage.c
>> +++ b/arch/powerpc/mm/hugetlbpage.c
>> @@ -589,21 +589,6 @@ static int __init add_huge_page_size(unsigned long long size)
>>  	return 0;
>>  }
>>  
>> -static int __init hugepage_setup_sz(char *str)
>> -{
>> -	unsigned long long size;
>> -
>> -	size = memparse(str, &str);
>> -
>> -	if (add_huge_page_size(size) != 0) {
>> -		hugetlb_bad_size();
>> -		pr_err("Invalid huge page size specified(%llu)\n", size);
>> -	}
>> -
>> -	return 1;
>> -}
>> -__setup("hugepagesz=", hugepage_setup_sz);
>> -
>> [...]
> 
> This isn't working as expected on powerpc64.
> 
>   [    0.000000] Kernel command line: root=UUID=dc7b49cf-95a2-4996-8e7d-7c64ddc7a6ff hugepagesz=16G hugepages=2 
>   [    0.000000] HugeTLB: huge pages not supported, ignoring hugepagesz = 16G
>   [    0.000000] HugeTLB: huge pages not supported, ignoring hugepages = 2
>   [    0.284177] HugeTLB registered 16.0 MiB page size, pre-allocated 0 pages
>   [    0.284182] HugeTLB registered 16.0 GiB page size, pre-allocated 0 pages
>   [    2.585062]     hugepagesz=16G
>   [    2.585063]     hugepages=2
> 
> The "huge pages not supported" messages are under a !hugepages_supported()
> condition which checks if HPAGE_SHIFT is non-zero. On powerpc64, HPAGE_SHIFT
> comes from the hpage_shift variable. At this point, it is still zero and yet
> to be set. Hence the check fails. The reason being hugetlbpage_init_default(),
> which sets hpage_shift, it now called after hugepage_setup_sz().

Thanks for catching this Sandipan.

In the new arch independent version of hugepages_setup, I added the following
code in patch 4 off this series:

> +static int __init hugepages_setup(char *s)
>  {
>  	unsigned long *mhp;
>  	static unsigned long *last_mhp;
>  
> +	if (!hugepages_supported()) {
> +		pr_warn("HugeTLB: huge pages not supported, ignoring hugepages = %s\n", s);
> +		return 0;
> +	}
> +
>  	if (!parsed_valid_hugepagesz) {

In fact, I added it to the beginning of all the hugetlb command line parsing
routines.  My 'thought' was to warn early if hugetlb pages were not supported.
Previously, the first check for hugepages_supported() was in hugetlb_init()
which ran after hugetlbpage_init_default().

The easy solution is to remove all the hugepages_supported() checks from
command line parsing routines and rely on the later check in hugetlb_init().

Another reason for adding those early checks was to possibly prevent the
preallocation of gigantic pages at command line parsing time.   Gigantic
pages are allocated at command line parsing time as they need to be allocated
with the bootmem allocator.  My concern is that there could be some strange
configuration where !hugepages_supported(), yet we allocate gigantic pages
from bootmem that can not be used or freeed later.

powerpc is the only architecture which has it's own alloc_bootmem_huge_page
routine.  So, it handles this potential issue.

I'll send out a fix shortly.
-- 
Mike Kravetz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
