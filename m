Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB9F1BCDF6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 23:00:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rhUKYbkvRgBHpz31tOAL+ILhUBS6ogRDJ2H4DyHn00A=; b=enDZp3J7YT6zcn
	16AlxaWEYKDZwec32bs1qrK5er6RLzQX1zZDj5YOZs47YZ+0PTAShKDSsO/s5D2baGAjVZ+zx+hkT
	x3WL8Q5wHBu1QUjeTCrqGpsscARxI5A3zKQ7VtXUuLofhUV/3ZLeh209rP/KSjLvm5T+rM2p0Ti3P
	mvlVIl703dG3djxCqsCEvUti3utAciVcu1AVBxQvXEHDI0Dsel24VolFL4FdsrmVDhW5z8SR9eIpy
	IWHM95wLWdTCcq8rH11CGZgFBzdteMKjfFnoqfPNz5qbzfMPh5IbylS6e/Y6lnsDZlBYv1AD/Wy8+
	3FZr7m6za2wh+xs9Xy2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTXKc-0002dv-UE; Tue, 28 Apr 2020 20:59:55 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTXJv-00005m-9O; Tue, 28 Apr 2020 20:59:13 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03SKrEfT127581;
 Tue, 28 Apr 2020 20:56:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=yafpg0ZcOknBY/UGErpDFCg6X+mq+m/vIF/cVy7REbg=;
 b=XrsK8xeolwpyFzMVP4FN7eFg6N8v21y3lvojPKKtjc9TelN+4v4u0St8L2wCPmMjAlsr
 3eoJJRP6TEGjNciIrzjM/W8OUs29A+/hNp+5bT1uayN9rUw4C5EFkCnvMaihEusch6OQ
 0aA8ajw6C08TKnOrVfo3qtyh0fDeoOvwCvvC6FBeDuCDFCXVcnnO7Cct1qx3AGzyTw+0
 9qMJPo5U7VOPBWqH11AW5kL1jAPNIn4NgYHSqObGclrhOXLW3tNkRyzjwHpydwY1APjC
 Ghe/P2meZhwVKqHDrkS4iScKnvP53SSMXM2ZeqrOV6bOBjUmkS/95BzEt+WFfl608pBF wA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 30p01nrvqj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 Apr 2020 20:56:31 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03SKpujh172035;
 Tue, 28 Apr 2020 20:56:30 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 30mxx0rr6p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 Apr 2020 20:56:30 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 03SKuQY2015084;
 Tue, 28 Apr 2020 20:56:26 GMT
Received: from monkey.oracle.com (/71.63.128.209)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 28 Apr 2020 13:56:26 -0700
From: Mike Kravetz <mike.kravetz@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 linux-riscv@lists.infradead.org, linux-s390@vger.kernel.org,
 sparclinux@vger.kernel.org, linux-doc@vger.kernel.org
Subject: [PATCH v4 2/4] hugetlbfs: move hugepagesz= parsing to arch
 independent code
Date: Tue, 28 Apr 2020 13:56:12 -0700
Message-Id: <20200428205614.246260-3-mike.kravetz@oracle.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200428205614.246260-1-mike.kravetz@oracle.com>
References: <20200428205614.246260-1-mike.kravetz@oracle.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9605
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 spamscore=0 bulkscore=0
 suspectscore=0 mlxlogscore=999 phishscore=0 malwarescore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004280163
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9605
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 spamscore=0 clxscore=1011
 phishscore=0 mlxlogscore=999 adultscore=0 priorityscore=1501 mlxscore=0
 suspectscore=0 malwarescore=0 lowpriorityscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004280163
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_135911_477307_C25BD53B 
X-CRM114-Status: GOOD (  20.56  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 0.9 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [156.151.31.86 listed in bl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Peter Xu <peterx@redhat.com>,
 Paul Mackerras <paulus@samba.org>, Will Deacon <will@kernel.org>,
 Mina Almasry <almasrymina@google.com>, Jonathan Corbet <corbet@lwn.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Longpeng <longpeng2@huawei.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Vasily Gorbik <gor@linux.ibm.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Nitesh Narayan Lal <nitesh@redhat.com>, Randy Dunlap <rdunlap@infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>,
 "David S . Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that architectures provide arch_hugetlb_valid_size(), parsing
of "hugepagesz=" can be done in architecture independent code.
Create a single routine to handle hugepagesz= parsing and remove
all arch specific routines.  We can also remove the interface
hugetlb_bad_size() as this is no longer used outside arch independent
code.

This also provides consistent behavior of hugetlbfs command line
options.  The hugepagesz= option should only be specified once for
a specific size, but some architectures allow multiple instances.
This appears to be more of an oversight when code was added by some
architectures to set up ALL huge pages sizes.

Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
Acked-by: Mina Almasry <almasrymina@google.com>
Reviewed-by: Peter Xu <peterx@redhat.com>
Acked-by: Gerald Schaefer <gerald.schaefer@de.ibm.com>  [s390]
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/mm/hugetlbpage.c   | 15 ---------------
 arch/powerpc/mm/hugetlbpage.c | 15 ---------------
 arch/riscv/mm/hugetlbpage.c   | 16 ----------------
 arch/s390/mm/hugetlbpage.c    | 18 ------------------
 arch/sparc/mm/init_64.c       | 22 ----------------------
 arch/x86/mm/hugetlbpage.c     | 16 ----------------
 include/linux/hugetlb.h       |  1 -
 mm/hugetlb.c                  | 23 +++++++++++++++++------
 8 files changed, 17 insertions(+), 109 deletions(-)

diff --git a/arch/arm64/mm/hugetlbpage.c b/arch/arm64/mm/hugetlbpage.c
index 069b96ee2aec..f706b821aba6 100644
--- a/arch/arm64/mm/hugetlbpage.c
+++ b/arch/arm64/mm/hugetlbpage.c
@@ -476,18 +476,3 @@ bool __init arch_hugetlb_valid_size(unsigned long size)
 
 	return false;
 }
-
-static __init int setup_hugepagesz(char *opt)
-{
-	unsigned long ps = memparse(opt, &opt);
-
-	if (arch_hugetlb_valid_size(ps)) {
-		add_huge_page_size(ps);
-		return 1;
-	}
-
-	hugetlb_bad_size();
-	pr_err("hugepagesz: Unsupported page size %lu K\n", ps >> 10);
-	return 0;
-}
-__setup("hugepagesz=", setup_hugepagesz);
diff --git a/arch/powerpc/mm/hugetlbpage.c b/arch/powerpc/mm/hugetlbpage.c
index de54d2a37830..2c3fa0a7787b 100644
--- a/arch/powerpc/mm/hugetlbpage.c
+++ b/arch/powerpc/mm/hugetlbpage.c
@@ -589,21 +589,6 @@ static int __init add_huge_page_size(unsigned long long size)
 	return 0;
 }
 
-static int __init hugepage_setup_sz(char *str)
-{
-	unsigned long long size;
-
-	size = memparse(str, &str);
-
-	if (add_huge_page_size(size) != 0) {
-		hugetlb_bad_size();
-		pr_err("Invalid huge page size specified(%llu)\n", size);
-	}
-
-	return 1;
-}
-__setup("hugepagesz=", hugepage_setup_sz);
-
 static int __init hugetlbpage_init(void)
 {
 	bool configured = false;
diff --git a/arch/riscv/mm/hugetlbpage.c b/arch/riscv/mm/hugetlbpage.c
index da1f516bc451..4e5d7e9f0eef 100644
--- a/arch/riscv/mm/hugetlbpage.c
+++ b/arch/riscv/mm/hugetlbpage.c
@@ -22,22 +22,6 @@ bool __init arch_hugetlb_valid_size(unsigned long size)
 		return false;
 }
 
-static __init int setup_hugepagesz(char *opt)
-{
-	unsigned long ps = memparse(opt, &opt);
-
-	if (arch_hugetlb_valid_size(ps)) {
-		hugetlb_add_hstate(ilog2(ps) - PAGE_SHIFT);
-		return 1;
-	}
-
-	hugetlb_bad_size();
-	pr_err("hugepagesz: Unsupported page size %lu M\n", ps >> 20);
-	return 0;
-
-}
-__setup("hugepagesz=", setup_hugepagesz);
-
 #ifdef CONFIG_CONTIG_ALLOC
 static __init int gigantic_pages_init(void)
 {
diff --git a/arch/s390/mm/hugetlbpage.c b/arch/s390/mm/hugetlbpage.c
index ac25b207624c..242dfc0d462d 100644
--- a/arch/s390/mm/hugetlbpage.c
+++ b/arch/s390/mm/hugetlbpage.c
@@ -261,24 +261,6 @@ bool __init arch_hugetlb_valid_size(unsigned long size)
 		return false;
 }
 
-static __init int setup_hugepagesz(char *opt)
-{
-	unsigned long size;
-	char *string = opt;
-
-	size = memparse(opt, &opt);
-	if (arch_hugetlb_valid_size(size)) {
-		hugetlb_add_hstate(ilog2(size) - PAGE_SHIFT);
-	} else {
-		hugetlb_bad_size();
-		pr_err("hugepagesz= specifies an unsupported page size %s\n",
-			string);
-		return 0;
-	}
-	return 1;
-}
-__setup("hugepagesz=", setup_hugepagesz);
-
 static unsigned long hugetlb_get_unmapped_area_bottomup(struct file *file,
 		unsigned long addr, unsigned long len,
 		unsigned long pgoff, unsigned long flags)
diff --git a/arch/sparc/mm/init_64.c b/arch/sparc/mm/init_64.c
index 2bfe8e22b706..4618f96fd30f 100644
--- a/arch/sparc/mm/init_64.c
+++ b/arch/sparc/mm/init_64.c
@@ -397,28 +397,6 @@ bool __init arch_hugetlb_valid_size(unsigned long size)
 
 	return true;
 }
-
-static int __init setup_hugepagesz(char *string)
-{
-	unsigned long long hugepage_size;
-	int rc = 0;
-
-	hugepage_size = memparse(string, &string);
-
-	if (!arch_hugetlb_valid_size((unsigned long)hugepage_size)) {
-		hugetlb_bad_size();
-		pr_err("hugepagesz=%llu not supported by MMU.\n",
-			hugepage_size);
-		goto out;
-	}
-
-	add_huge_page_size(hugepage_size);
-	rc = 1;
-
-out:
-	return rc;
-}
-__setup("hugepagesz=", setup_hugepagesz);
 #endif	/* CONFIG_HUGETLB_PAGE */
 
 void update_mmu_cache(struct vm_area_struct *vma, unsigned long address, pte_t *ptep)
diff --git a/arch/x86/mm/hugetlbpage.c b/arch/x86/mm/hugetlbpage.c
index 1c4372bfe782..937d640a89e3 100644
--- a/arch/x86/mm/hugetlbpage.c
+++ b/arch/x86/mm/hugetlbpage.c
@@ -191,22 +191,6 @@ bool __init arch_hugetlb_valid_size(unsigned long size)
 		return false;
 }
 
-static __init int setup_hugepagesz(char *opt)
-{
-	unsigned long ps = memparse(opt, &opt);
-
-	if (arch_hugetlb_valid_size(ps)) {
-		hugetlb_add_hstate(ilog2(ps) - PAGE_SHIFT);
-	} else {
-		hugetlb_bad_size();
-		printk(KERN_ERR "hugepagesz: Unsupported page size %lu M\n",
-			ps >> 20);
-		return 0;
-	}
-	return 1;
-}
-__setup("hugepagesz=", setup_hugepagesz);
-
 #ifdef CONFIG_CONTIG_ALLOC
 static __init int gigantic_pages_init(void)
 {
diff --git a/include/linux/hugetlb.h b/include/linux/hugetlb.h
index 2eb15f5ab01e..0c13706054ef 100644
--- a/include/linux/hugetlb.h
+++ b/include/linux/hugetlb.h
@@ -519,7 +519,6 @@ int huge_add_to_page_cache(struct page *page, struct address_space *mapping,
 int __init __alloc_bootmem_huge_page(struct hstate *h);
 int __init alloc_bootmem_huge_page(struct hstate *h);
 
-void __init hugetlb_bad_size(void);
 void __init hugetlb_add_hstate(unsigned order);
 bool __init arch_hugetlb_valid_size(unsigned long size);
 struct hstate *size_to_hstate(unsigned long size);
diff --git a/mm/hugetlb.c b/mm/hugetlb.c
index 63ca4241ea87..6a8454bc2917 100644
--- a/mm/hugetlb.c
+++ b/mm/hugetlb.c
@@ -3262,12 +3262,6 @@ bool __init __attribute((weak)) arch_hugetlb_valid_size(unsigned long size)
 	return size == HPAGE_SIZE;
 }
 
-/* Should be called on processing a hugepagesz=... option */
-void __init hugetlb_bad_size(void)
-{
-	parsed_valid_hugepagesz = false;
-}
-
 void __init hugetlb_add_hstate(unsigned int order)
 {
 	struct hstate *h;
@@ -3337,6 +3331,23 @@ static int __init hugetlb_nrpages_setup(char *s)
 }
 __setup("hugepages=", hugetlb_nrpages_setup);
 
+static int __init hugepagesz_setup(char *s)
+{
+	unsigned long size;
+
+	size = (unsigned long)memparse(s, NULL);
+
+	if (!arch_hugetlb_valid_size(size)) {
+		parsed_valid_hugepagesz = false;
+		pr_err("HugeTLB: unsupported hugepagesz %s\n", s);
+		return 0;
+	}
+
+	hugetlb_add_hstate(ilog2(size) - PAGE_SHIFT);
+	return 1;
+}
+__setup("hugepagesz=", hugepagesz_setup);
+
 static int __init default_hugepagesz_setup(char *s)
 {
 	unsigned long size;
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
