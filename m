Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E2A18A79B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 23:07:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2bI88SYq1yMUsJSRlhHiBghoGgPj7B5OZxJgR25E7ls=; b=YI0f2uMAPWa/wh
	eq2k0/ihVXU9YEWEBuMOp7WaGXSW/VuWDL4FNhz15g99Up+dnrMpNjPysHxQGhmcC2w8NgGscAk9S
	lr0rh/M5iALMxx+eVR8BN0BHNO0Nc9F9MvtKwHKDZukTsHhBEJTJBSY9PXnDzw7aiyCp/bMwpS3Ww
	M2bkFk40SPINY5E45HRcU21Niyks2bpX3GStYbsJglHWnCeJBaU4DtLhQpfBsKirDw0a++BUohdlp
	Clh0W2UqEeinl39B84XfT+7ZbatKPFFeZ/IAP092UCfzGQNCPlXvYLmi473geC87c0TcS3uoGBPtz
	9J/4zL/hoDvqfawEoMbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEgqg-0004qQ-9k; Wed, 18 Mar 2020 22:07:38 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEgqS-0004nC-Ja; Wed, 18 Mar 2020 22:07:26 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02ILwmOd081884;
 Wed, 18 Mar 2020 22:06:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=k8JY6quewTG4QphZgbCCxbDqYoFEe8V39retRAxh45c=;
 b=wrvlWHLtdKxG3gmfpT7RVPT/vlS1QJv3JwDgsH3Qg52NFKkSo3gwJDDwarCO16LIZldU
 AqflgViW1EXUjf/COcfCCAD4sZrzecED8B6lSaUDtfL5NulhlS3nes7W3bKXUzfV4q1s
 Bx+lg4yMfZPu3DdXvZ4Py1VZLkWe8cM5AXgMz/HWd7u4ZgG7CKEfLBJW1aCnUGPjzL0R
 nTE1rl66g/Lg9MRnceqm6fg87ocvOS0VC/Yl064Pl1L+fRSwZfXnmpzJW5kBVPcBwYQQ
 tjTKP4PF+OxmaZn2Gs6T6/8VnT9rNYxeLke+4RKyyYHAIecsPXkdiPgrpcl5mn3RcITR fQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2yrq7m54xy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 18 Mar 2020 22:06:53 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02ILwhfd142874;
 Wed, 18 Mar 2020 22:06:53 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2ys8rjkmk3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 18 Mar 2020 22:06:53 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 02IM6pAc003506;
 Wed, 18 Mar 2020 22:06:51 GMT
Received: from monkey.oracle.com (/71.63.128.209)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 18 Mar 2020 15:06:51 -0700
From: Mike Kravetz <mike.kravetz@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 linux-riscv@lists.infradead.org, linux-s390@vger.kernel.org,
 sparclinux@vger.kernel.org, linux-doc@vger.kernel.org
Subject: [PATCH 2/4] hugetlbfs: move hugepagesz= parsing to arch independent
 code
Date: Wed, 18 Mar 2020 15:06:32 -0700
Message-Id: <20200318220634.32100-3-mike.kravetz@oracle.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200318220634.32100-1-mike.kravetz@oracle.com>
References: <20200318220634.32100-1-mike.kravetz@oracle.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9564
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 bulkscore=0 phishscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=999 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003180094
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9564
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 suspectscore=0
 adultscore=0 bulkscore=0 mlxlogscore=999 priorityscore=1501 clxscore=1015
 malwarescore=0 mlxscore=0 phishscore=0 impostorscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003180094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_150724_725559_96BA5D0C 
X-CRM114-Status: GOOD (  21.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Andrew Morton <akpm@linux-foundation.org>, Vasily Gorbik <gor@linux.ibm.com>,
 Jonathan Corbet <corbet@lwn.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Paul Mackerras <paulus@samba.org>, Thomas Gleixner <tglx@linutronix.de>,
 Longpeng <longpeng2@huawei.com>, Will Deacon <will@kernel.org>,
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
---
 arch/arm64/mm/hugetlbpage.c   | 15 ---------------
 arch/powerpc/mm/hugetlbpage.c | 15 ---------------
 arch/riscv/mm/hugetlbpage.c   | 16 ----------------
 arch/s390/mm/hugetlbpage.c    | 18 ------------------
 arch/sparc/mm/init_64.c       | 22 ----------------------
 arch/x86/mm/hugetlbpage.c     | 16 ----------------
 include/linux/hugetlb.h       |  1 -
 mm/hugetlb.c                  | 24 ++++++++++++++++++------
 8 files changed, 18 insertions(+), 109 deletions(-)

diff --git a/arch/arm64/mm/hugetlbpage.c b/arch/arm64/mm/hugetlbpage.c
index da30127086d0..4aa9534a45d7 100644
--- a/arch/arm64/mm/hugetlbpage.c
+++ b/arch/arm64/mm/hugetlbpage.c
@@ -476,18 +476,3 @@ bool __init arch_hugetlb_valid_size(unsigned long long size)
 
 	return false;
 }
-
-static __init int setup_hugepagesz(char *opt)
-{
-	unsigned long long ps = memparse(opt, &opt);
-
-	if arch_hugetlb_valid_size(ps)) {
-		add_huge_page_size(ps);
-		return 1;
-	}
-
-	hugetlb_bad_size();
-	pr_err("hugepagesz: Unsupported page size %llu K\n", ps >> 10);
-	return 0;
-}
-__setup("hugepagesz=", setup_hugepagesz);
diff --git a/arch/powerpc/mm/hugetlbpage.c b/arch/powerpc/mm/hugetlbpage.c
index b78f660252f3..166960ba1236 100644
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
index f1990882f16c..bdf89d7eb714 100644
--- a/arch/riscv/mm/hugetlbpage.c
+++ b/arch/riscv/mm/hugetlbpage.c
@@ -22,22 +22,6 @@ bool __init arch_hugetlb_valid_size(unsigned long long size)
 		return false;
 }
 
-static __init int setup_hugepagesz(char *opt)
-{
-	unsigned long long ps = memparse(opt, &opt);
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
index d92e8c5c3e71..b809762f206e 100644
--- a/arch/s390/mm/hugetlbpage.c
+++ b/arch/s390/mm/hugetlbpage.c
@@ -261,24 +261,6 @@ bool __init arch_hugetlb_valid_size(unsigned long long size)
 		return false;
 }
 
-static __init int setup_hugepagesz(char *opt)
-{
-	unsigned long long size;
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
index 4cc248817b19..5c29203fd460 100644
--- a/arch/sparc/mm/init_64.c
+++ b/arch/sparc/mm/init_64.c
@@ -398,28 +398,6 @@ bool __init arch_hugetlb_valid_size(unsigned long long size)
 
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
-	if (!arch_hugetlb_valid_size(hugepage_size)) {
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
index 51e6208fdeec..dd3ed09f6c23 100644
--- a/arch/x86/mm/hugetlbpage.c
+++ b/arch/x86/mm/hugetlbpage.c
@@ -191,22 +191,6 @@ bool __init arch_hugetlb_valid_size(unsigned long long size)
 		return false;
 }
 
-static __init int setup_hugepagesz(char *opt)
-{
-	unsigned long long ps = memparse(opt, &opt);
-
-	if (arch_hugetlb_valid_size(ps)) {
-		hugetlb_add_hstate(ilog2(ps) - PAGE_SHIFT);
-	} else {
-		hugetlb_bad_size();
-		printk(KERN_ERR "hugepagesz: Unsupported page size %llu M\n",
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
index 33343eb980d0..47244853ceb4 100644
--- a/include/linux/hugetlb.h
+++ b/include/linux/hugetlb.h
@@ -504,7 +504,6 @@ int huge_add_to_page_cache(struct page *page, struct address_space *mapping,
 int __init __alloc_bootmem_huge_page(struct hstate *h);
 int __init alloc_bootmem_huge_page(struct hstate *h);
 
-void __init hugetlb_bad_size(void);
 void __init hugetlb_add_hstate(unsigned order);
 struct hstate *size_to_hstate(unsigned long size);
 
diff --git a/mm/hugetlb.c b/mm/hugetlb.c
index 2f99359b93af..cd4ec07080fb 100644
--- a/mm/hugetlb.c
+++ b/mm/hugetlb.c
@@ -3149,12 +3149,6 @@ static int __init hugetlb_init(void)
 }
 subsys_initcall(hugetlb_init);
 
-/* Should be called on processing a hugepagesz=... option */
-void __init hugetlb_bad_size(void)
-{
-	parsed_valid_hugepagesz = false;
-}
-
 void __init hugetlb_add_hstate(unsigned int order)
 {
 	struct hstate *h;
@@ -3224,6 +3218,24 @@ static int __init hugetlb_nrpages_setup(char *s)
 }
 __setup("hugepages=", hugetlb_nrpages_setup);
 
+static int __init hugepagesz_setup(char *s)
+{
+	unsigned long long size;
+	char *saved_s = s;
+
+	size = memparse(s, &s);
+
+	if (!arch_hugetlb_valid_size(size)) {
+		parsed_valid_hugepagesz = false;
+		pr_err("HugeTLB: unsupported hugepagesz %s\n", saved_s);
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
 	unsigned long long size;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
