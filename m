Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0052B1B18B6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 23:44:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U6Z1Xb5McPrq6TDu+Fj0uLAFrpGal7W3tjszUj6S+l4=; b=Zny78vZDAD0YgP
	EMOaXrwWVZCVlSwYqiYL6gFIUDcLiZDMubOMm8zpQ9tog6fDmcvIu87o9RdtkeyvNe2HtYgIQmkam
	8pgrmBtj9I5HqZzSskvtF5z+OEzhM/OLRf2NQIBjQGd8WFpEWUv8lsOcx+CTsNQnTbJ5/msBgz8uS
	8SUEJCvi8likxuEpQCrOMsGJ2yH9GrT71HPJDwtFaip0g7srPW2OewGWnwz+WCi9vZDW8QGLoLV8w
	gcTAuENgPbV/7xz4zEfZwArb78lStEqPMWTLXnHoiBAJ7wvo6WPCRJD1LRKSdjRaDZJcIPFgfA4cC
	YuSsdI7Ssarv2pk+k5bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQeCu-0000en-Pw; Mon, 20 Apr 2020 21:44:00 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQeCL-0000L4-CR; Mon, 20 Apr 2020 21:43:26 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03KLgUL9050259;
 Mon, 20 Apr 2020 21:42:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=hzoE0Q+18wJs1W+mVb3z7CiUNSgD6tC6T1Mn0/ek+wo=;
 b=uEPs/byWmtoiHC1nzj/OHwsHfQ+pPoDJrbDp3lBBPD0KRbAA6SwAvZ1ud2YwFnb2Mzu+
 w2CK8iPEc1BvfdfVAl5Fcto/JbU4c652GlgOsBhobCaLtohtsTqIGr3+PVqtKslBkoNW
 n+JOBt2k3+46e5Q1gU3tB8q3bmCebFihkB9ixnCVXX3kvxl+TyYWXFE+XKWZiRXHWZAq
 7Fs4OQLL9/BFQ7CHOVVxXiZBK2ZBMKSV1hJLPbIbNdPX8YOZGHkqGsU6WzpWBzNF7AUU
 f0tSUQ+nvoF8JdFnaqHsGTH5mXUTwYGBPwktzP0qUTamVzUlKbt9rTV1prDiWrL1czwl Ow== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 30ft6n1quc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 20 Apr 2020 21:42:30 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03KLbbb8169248;
 Mon, 20 Apr 2020 21:40:27 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 30gb3r4xy6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 20 Apr 2020 21:40:27 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 03KLe8UK019244;
 Mon, 20 Apr 2020 21:40:08 GMT
Received: from [192.168.2.157] (/71.63.128.209)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 20 Apr 2020 14:40:08 -0700
Subject: Re: [PATCH v3 0/4] Clean up hugetlb boot command line processing
To: Anders Roxell <anders.roxell@linaro.org>, Will Deacon <will@kernel.org>
References: <20200417185049.275845-1-mike.kravetz@oracle.com>
 <5E312000-05D8-4C5D-A7C0-DDDE1842CB0E@lca.pw>
 <4c36c6ce-3774-78fa-abc4-b7346bf24348@oracle.com>
 <CADYN=9+=tCDmddTYGY44onvrzbg7yrbacMDSxd4hhD+=b=Yeiw@mail.gmail.com>
From: Mike Kravetz <mike.kravetz@oracle.com>
Message-ID: <86333853-0648-393f-db96-d581ee114d2b@oracle.com>
Date: Mon, 20 Apr 2020 14:40:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CADYN=9+=tCDmddTYGY44onvrzbg7yrbacMDSxd4hhD+=b=Yeiw@mail.gmail.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9597
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 spamscore=0 adultscore=0
 mlxlogscore=999 phishscore=0 suspectscore=27 bulkscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004200171
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9597
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=27
 bulkscore=0
 priorityscore=1501 impostorscore=0 adultscore=0 phishscore=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 mlxlogscore=999 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004200172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_144325_506920_3B9CC209 
X-CRM114-Status: GOOD (  26.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Linux-MM <linux-mm@kvack.org>, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Mina Almasry <almasrymina@google.com>, linux-s390@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Longpeng <longpeng2@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Vasily Gorbik <gor@linux.ibm.com>, Qian Cai <cai@lca.pw>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Nitesh Narayan Lal <nitesh@redhat.com>, Randy Dunlap <rdunlap@infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "David S.Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/20/20 1:29 PM, Anders Roxell wrote:
> On Mon, 20 Apr 2020 at 20:23, Mike Kravetz <mike.kravetz@oracle.com> wrote:
>> On 4/20/20 8:34 AM, Qian Cai wrote:
>>>
>>> Reverted this series fixed many undefined behaviors on arm64 with the config,
>> While rearranging the code (patch 3 in series), I made the incorrect
>> assumption that CONT_XXX_SIZE == (1UL << CONT_XXX_SHIFT).  However,
>> this is not the case.  Does the following patch fix these issues?
>>
>> From b75cb4a0852e208bee8c4eb347dc076fcaa88859 Mon Sep 17 00:00:00 2001
>> From: Mike Kravetz <mike.kravetz@oracle.com>
>> Date: Mon, 20 Apr 2020 10:41:18 -0700
>> Subject: [PATCH] arm64/hugetlb: fix hugetlb initialization
>>
>> When calling hugetlb_add_hstate() to initialize a new hugetlb size,
>> be sure to use correct huge pages size order.
>>
>> Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
>> ---
>>  arch/arm64/mm/hugetlbpage.c | 8 ++++----
>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/arch/arm64/mm/hugetlbpage.c b/arch/arm64/mm/hugetlbpage.c
>> index 9ca840527296..a02411a1f19a 100644
>> --- a/arch/arm64/mm/hugetlbpage.c
>> +++ b/arch/arm64/mm/hugetlbpage.c
>> @@ -453,11 +453,11 @@ void huge_ptep_clear_flush(struct vm_area_struct *vma,
>>  static int __init hugetlbpage_init(void)
>>  {
>>  #ifdef CONFIG_ARM64_4K_PAGES
>> -       hugetlb_add_hstate(PUD_SHIFT - PAGE_SHIFT);
>> +       hugetlb_add_hstate(ilog2(PUD_SIZE) - PAGE_SHIFT);
>>  #endif
>> -       hugetlb_add_hstate(CONT_PMD_SHIFT - PAGE_SHIFT);
>> -       hugetlb_add_hstate(PMD_SHIFT - PAGE_SHIFT);
>> -       hugetlb_add_hstate(CONT_PTE_SHIFT - PAGE_SHIFT);
>> +       hugetlb_add_hstate(ilog2(CONT_PMD_SIZE) - PAGE_SHIFT);
>> +       hugetlb_add_hstate(ilog2(PMD_SIZE) - PAGE_SHIFT);
>> +       hugetlb_add_hstate(ilog2(CONT_PTE_SIZE) - PAGE_SHIFT);
>>
>>         return 0;
>>  }
> 
> I build this for an arm64 kernel and ran it in qemu and it worked.

Thanks for testing Anders!

Will, here is an updated version of the patch based on your suggestion.
I added the () for emphasis but that may just be noise for some.  Also,
the naming differences and values for CONT_PTE may make some people
look twice.  Not sure if being consistent here helps?

I have only built this.  No testing.

From daf833ab6b806ecc0816d84d45dcbacc052a7eec Mon Sep 17 00:00:00 2001
From: Mike Kravetz <mike.kravetz@oracle.com>
Date: Mon, 20 Apr 2020 13:56:15 -0700
Subject: [PATCH] arm64/hugetlb: fix hugetlb initialization

When calling hugetlb_add_hstate() to initialize a new hugetlb size,
be sure to use correct huge pages size order.

Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
---
 arch/arm64/mm/hugetlbpage.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/mm/hugetlbpage.c b/arch/arm64/mm/hugetlbpage.c
index 9ca840527296..bed6dc7c4276 100644
--- a/arch/arm64/mm/hugetlbpage.c
+++ b/arch/arm64/mm/hugetlbpage.c
@@ -455,9 +455,9 @@ static int __init hugetlbpage_init(void)
 #ifdef CONFIG_ARM64_4K_PAGES
 	hugetlb_add_hstate(PUD_SHIFT - PAGE_SHIFT);
 #endif
-	hugetlb_add_hstate(CONT_PMD_SHIFT - PAGE_SHIFT);
+	hugetlb_add_hstate((CONT_PMD_SHIFT + PMD_SHIFT) - PAGE_SHIFT);
 	hugetlb_add_hstate(PMD_SHIFT - PAGE_SHIFT);
-	hugetlb_add_hstate(CONT_PTE_SHIFT - PAGE_SHIFT);
+	hugetlb_add_hstate((CONT_PTE_SHIFT + PAGE_SHIFT) - PAGE_SHIFT);
 
 	return 0;
 }
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
