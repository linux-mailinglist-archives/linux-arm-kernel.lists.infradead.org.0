Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4591B1462
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 20:22:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JjNHz/OxIbRN53MK9C3bwtYv2k+I98Fba+EGSRPqQaw=; b=oWVq7yz806cAN2
	gGdTNXY08OptUuiscnH5t9KUWJ8KSs1gw09LXSwcSFDm1is/r3QJlqtyXZhOMg+cuFK2KEeBHi7MB
	AofpoUJkxcIPThx0DniV1LDNhQrqmO/joIMUKTdxjuxfguGbbyDmfp0qsITl8C5WSAzd/n3cWkL4n
	iFSYSFWHyV0c8OMWhVyOcEALBwQDKKhZRnmqacZRJ0Dl3z1dvFD+a6pnE2KEJc34QxwkfV0BnXTRp
	fyNmHwVcYmtJDMThHp0xoFvPigjRiEXzcEphzbi3C0f8tjl/J6ZW2OC2JUN+ReyJgYqA7qqRsSUtK
	ffeBKFLnFjrQ7ghf7kow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQb4C-0005oH-Pz; Mon, 20 Apr 2020 18:22:48 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQb40-0005mO-S1; Mon, 20 Apr 2020 18:22:38 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03KIIac3092955;
 Mon, 20 Apr 2020 18:20:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=6b/iIEwamf7pHkazXYyFGaUjD4rBlltoOoTUlAlxESY=;
 b=gsrW0Xy8imYbMgUhIwDTctqPrjznB6WPriWKwtM8tA/ViqR5LJ7nXrRo6zKPnOn6au/F
 XsvRr1X2TitSM9LY8T/2kzWejhj67bMNDWhUiZqrX5UOcyFbZ9SktX9AVm4tGKaKxtsS
 GOZ/M1AoL7AgJRrO+hD23+N3dyEAipkUUaYWDlGyObSHDJDQUCK5UDdvD/hJdYPtDtGA
 rF7cJnLKk4a2TQSzHij+K3EQC6K5pkbsF+ARKXcRYPencr3rEYSZpGa5oaV2k4g86ofi
 IqYHqXDYKKmd4aEimc1Bn/UrVfz9eCqjPauGpqXrd5PZtLQUpmq6TOgp57USW/Y8Ttgc Lg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 30fsgkrxjn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 20 Apr 2020 18:20:41 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03KICA4L007534;
 Mon, 20 Apr 2020 18:20:40 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 30gb1dtw7b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 20 Apr 2020 18:20:40 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 03KIKRfO021197;
 Mon, 20 Apr 2020 18:20:27 GMT
Received: from [192.168.2.157] (/71.63.128.209)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 20 Apr 2020 11:20:26 -0700
Subject: Re: [PATCH v3 0/4] Clean up hugetlb boot command line processing
To: Qian Cai <cai@lca.pw>
References: <20200417185049.275845-1-mike.kravetz@oracle.com>
 <5E312000-05D8-4C5D-A7C0-DDDE1842CB0E@lca.pw>
From: Mike Kravetz <mike.kravetz@oracle.com>
Message-ID: <4c36c6ce-3774-78fa-abc4-b7346bf24348@oracle.com>
Date: Mon, 20 Apr 2020 11:20:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <5E312000-05D8-4C5D-A7C0-DDDE1842CB0E@lca.pw>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9597
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 suspectscore=2 spamscore=0
 mlxlogscore=999 mlxscore=0 malwarescore=0 bulkscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004200147
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9597
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 priorityscore=1501
 lowpriorityscore=0 mlxlogscore=999 malwarescore=0 clxscore=1015
 spamscore=0 bulkscore=0 phishscore=0 suspectscore=2 impostorscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004200147
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_112236_999703_A872FCEC 
X-CRM114-Status: GOOD (  25.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
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
 Will Deacon <will@kernel.org>, Mina Almasry <almasrymina@google.com>,
 linux-s390@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Longpeng <longpeng2@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Vasily Gorbik <gor@linux.ibm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
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

On 4/20/20 8:34 AM, Qian Cai wrote:
> 
> 
>> On Apr 17, 2020, at 2:50 PM, Mike Kravetz <mike.kravetz@oracle.com> wrote:
>>
>> Longpeng(Mike) reported a weird message from hugetlb command line processing
>> and proposed a solution [1].  While the proposed patch does address the
>> specific issue, there are other related issues in command line processing.
>> As hugetlbfs evolved, updates to command line processing have been made to
>> meet immediate needs and not necessarily in a coordinated manner.  The result
>> is that some processing is done in arch specific code, some is done in arch
>> independent code and coordination is problematic.  Semantics can vary between
>> architectures.
>>
>> The patch series does the following:
>> - Define arch specific arch_hugetlb_valid_size routine used to validate
>>  passed huge page sizes.
>> - Move hugepagesz= command line parsing out of arch specific code and into
>>  an arch independent routine.
>> - Clean up command line processing to follow desired semantics and
>>  document those semantics.
>>
>> [1] https://lore.kernel.org/linux-mm/20200305033014.1152-1-longpeng2@huawei.com
>>
>> Mike Kravetz (4):
>>  hugetlbfs: add arch_hugetlb_valid_size
>>  hugetlbfs: move hugepagesz= parsing to arch independent code
>>  hugetlbfs: remove hugetlb_add_hstate() warning for existing hstate
>>  hugetlbfs: clean up command line processing
> 
> Reverted this series fixed many undefined behaviors on arm64 with the config,
> 
> https://raw.githubusercontent.com/cailca/linux-mm/master/arm64.config
> 
> [   54.172683][    T1] UBSAN: shift-out-of-bounds in ./include/linux/hugetlb.h:555:34
> [   54.180411][    T1] shift exponent 4294967285 is too large for 64-bit type 'unsigned long'
> [   54.188885][    T1] CPU: 130 PID: 1 Comm: swapper/0 Not tainted 5.7.0-rc2-next-20200420 #1
> [   54.197284][    T1] Hardware name: HPE Apollo 70             /C01_APACHE_MB         , BIOS L50_5.13_1.11 06/18/2019
> [   54.207888][    T1] Call trace:
> [   54.211100][    T1]  dump_backtrace+0x0/0x224
> [   54.215565][    T1]  show_stack+0x20/0x2c
> [   54.219651][    T1]  dump_stack+0xfc/0x184
> [   54.223829][    T1]  __ubsan_handle_shift_out_of_bounds+0x304/0x344
> [   54.230204][    T1]  hugetlb_add_hstate+0x3ec/0x414
> huge_page_size at include/linux/hugetlb.h:555
> (inlined by) hugetlb_add_hstate at mm/hugetlb.c:3301
> [   54.235191][    T1]  hugetlbpage_init+0x14/0x30
> [   54.239824][    T1]  do_one_initcall+0x6c/0x144
> [   54.244446][    T1]  do_initcall_level+0x158/0x1c4
> [   54.249336][    T1]  do_initcalls+0x68/0xb0
> [   54.253597][    T1]  do_basic_setup+0x28/0x30
> [   54.258049][    T1]  kernel_init_freeable+0x19c/0x228
> [   54.263188][    T1]  kernel_init+0x14/0x208
> [   54.267473][    T1]  ret_from_fork+0x10/0x18

While rearranging the code (patch 3 in series), I made the incorrect
assumption that CONT_XXX_SIZE == (1UL << CONT_XXX_SHIFT).  However,
this is not the case.  Does the following patch fix these issues?

From b75cb4a0852e208bee8c4eb347dc076fcaa88859 Mon Sep 17 00:00:00 2001
From: Mike Kravetz <mike.kravetz@oracle.com>
Date: Mon, 20 Apr 2020 10:41:18 -0700
Subject: [PATCH] arm64/hugetlb: fix hugetlb initialization

When calling hugetlb_add_hstate() to initialize a new hugetlb size,
be sure to use correct huge pages size order.

Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
---
 arch/arm64/mm/hugetlbpage.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/mm/hugetlbpage.c b/arch/arm64/mm/hugetlbpage.c
index 9ca840527296..a02411a1f19a 100644
--- a/arch/arm64/mm/hugetlbpage.c
+++ b/arch/arm64/mm/hugetlbpage.c
@@ -453,11 +453,11 @@ void huge_ptep_clear_flush(struct vm_area_struct *vma,
 static int __init hugetlbpage_init(void)
 {
 #ifdef CONFIG_ARM64_4K_PAGES
-	hugetlb_add_hstate(PUD_SHIFT - PAGE_SHIFT);
+	hugetlb_add_hstate(ilog2(PUD_SIZE) - PAGE_SHIFT);
 #endif
-	hugetlb_add_hstate(CONT_PMD_SHIFT - PAGE_SHIFT);
-	hugetlb_add_hstate(PMD_SHIFT - PAGE_SHIFT);
-	hugetlb_add_hstate(CONT_PTE_SHIFT - PAGE_SHIFT);
+	hugetlb_add_hstate(ilog2(CONT_PMD_SIZE) - PAGE_SHIFT);
+	hugetlb_add_hstate(ilog2(PMD_SIZE) - PAGE_SHIFT);
+	hugetlb_add_hstate(ilog2(CONT_PTE_SIZE) - PAGE_SHIFT);
 
 	return 0;
 }
-- 
2.25.2



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
