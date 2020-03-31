Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E43199A0B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:43:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YujufIAdigfKVeuZMrhEkVoHSuV9OPLAnSYiahwtgbw=; b=FTOUrhI9FN4pg1
	Tdfqlnc5ucHzXh1lhLMvhDMoRjX7sjRhkdbJKbNh0MlC4kmHM6jhvP9TN6ta/9/UtFnU80oWHoFwl
	i0GNTnM7cZwufdxnTy/5/6YbjWhoC8IkhqvS7vbSqjUAuUmR46/BZuRVHkWsPKnIkURTfQScy50jq
	BOh0off5lGdJIWUuls1BF6nFuwMtilSzTIZTrgvC05byYHG9Eixbqn+Tmetu5aRpyNUMM6vMUQNVh
	3FYtTjxtIMH4GKfjO6ayqNaGk/jtfmXify0r9O2uUG3n4R4gotgY1t5dnsB1K1fysG48H8i0Cjzkd
	IPDoq6btHhAMLcEAaywQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJ35-0008U2-HT; Tue, 31 Mar 2020 15:43:31 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJ1X-0007ia-2s
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 15:41:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=//6eCYgsYeYOWiJApDsSOZhoZTw9Nur4ZMVSxHb7KVU=; b=TxWehygB9ru0SxKOVi3Uk9jYWq
 xdZpXxM9mZ0W0rAaolqLHnzzRS7h+P8EiD4V5aJrf1qLASOXRj3lMN008wFMXkp1x+Z1onfuWXoUu
 Zc8W9sqCrrAMTCf0cNpr0/cqMBSKDvi8OZi53NzuwaAJ73HjDrFyslgTdYMT6NpoS+AIK8bQSBgsc
 9y8gGB0keRru5jyWxnyAYYJKtjp+eQeX3wQv8FMu/Z/jYBhnd8EklyZC8+8BX3bptDZs7HYaCBYo2
 AszEu5iGAMBqRX4DkvEkCnK6QZW/dVTpTiAyX3xOEkNkOnViGJBT+v+VGgsnpDBInjUidCZ4InZY+
 ACnqjfMw==;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJG35-0008Il-9d
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 12:31:23 +0000
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02VC48HX035122
 for <linux-arm-kernel@lists.infradead.org>; Tue, 31 Mar 2020 08:31:12 -0400
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
 by mx0b-001b2d01.pphosted.com with ESMTP id 303v2sqegy-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Tue, 31 Mar 2020 08:31:12 -0400
Received: from localhost
 by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <gerald.schaefer@de.ibm.com>; 
 Tue, 31 Mar 2020 13:30:55 +0100
Received: from b06avi18878370.portsmouth.uk.ibm.com (9.149.26.194)
 by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 31 Mar 2020 13:30:49 +0100
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id 02VCV29E45285796
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 31 Mar 2020 12:31:02 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id EFFED4C050;
 Tue, 31 Mar 2020 12:31:01 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 11E484C04A;
 Tue, 31 Mar 2020 12:31:01 +0000 (GMT)
Received: from thinkpad (unknown [9.145.170.245])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Tue, 31 Mar 2020 12:31:01 +0000 (GMT)
Date: Tue, 31 Mar 2020 14:30:59 +0200
From: Gerald Schaefer <gerald.schaefer@de.ibm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V2 0/3] mm/debug: Add more arch page table helper tests
In-Reply-To: <1585027375-9997-1-git-send-email-anshuman.khandual@arm.com>
References: <1585027375-9997-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 20033112-0020-0000-0000-000003BEEC78
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20033112-0021-0000-0000-000022178CDF
Message-Id: <20200331143059.29fca8fa@thinkpad>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-03-31_04:2020-03-31,
 2020-03-31 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0
 malwarescore=0 mlxscore=0 lowpriorityscore=0 phishscore=0 mlxlogscore=999
 adultscore=0 suspectscore=0 spamscore=0 clxscore=1011 priorityscore=1501
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003310110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_133119_832091_B31B3CE4 
X-CRM114-Status: GOOD (  42.58  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-2.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
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
Cc: linux-doc@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, "H. Peter
 Anvin" <hpa@zytor.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-snps-arc@lists.infradead.org,
 Vasily Gorbik <gor@linux.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 christophe.leroy@c-s.fr, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 24 Mar 2020 10:52:52 +0530
Anshuman Khandual <anshuman.khandual@arm.com> wrote:

> This series adds more arch page table helper tests. The new tests here are
> either related to core memory functions and advanced arch pgtable helpers.
> This also creates a documentation file enlisting all expected semantics as
> suggested by Mike Rapoport (https://lkml.org/lkml/2020/1/30/40).
> 
> This series has been tested on arm64 and x86 platforms. There is just one
> expected failure on arm64 that will be fixed when we enable THP migration.
> 
> [   21.741634] WARNING: CPU: 0 PID: 1 at mm/debug_vm_pgtable.c:782
> 
> which corresponds to
> 
> WARN_ON(!pmd_present(pmd_mknotpresent(pmd_mkhuge(pmd))))
> 
> There are many TRANSPARENT_HUGEPAGE and ARCH_HAS_TRANSPARENT_HUGEPAGE_PUD
> ifdefs scattered across the test. But consolidating all the fallback stubs
> is not very straight forward because ARCH_HAS_TRANSPARENT_HUGEPAGE_PUD is
> not explicitly dependent on ARCH_HAS_TRANSPARENT_HUGEPAGE.
> 
> This series has been build tested on many platforms including the ones that
> subscribe the test through ARCH_HAS_DEBUG_VM_PGTABLE.
> 

Hi Anshuman,

thanks for the update. There are a couple of issues on s390, some might
also affect other archs.

1) The pxd_huge_tests are using pxd_set/clear_huge, which defaults to
returning 0 if !CONFIG_HAVE_ARCH_HUGE_VMAP. As result, the checks for
!pxd_test/clear_huge in the pxd_huge_tests will always trigger the
warning. This should affect all archs w/o CONFIG_HAVE_ARCH_HUGE_VMAP.
Could be fixed like this:

@@ -923,8 +923,10 @@ void __init debug_vm_pgtable(void)
        pmd_leaf_tests(pmd_aligned, prot);
        pud_leaf_tests(pud_aligned, prot);
 
-       pmd_huge_tests(pmdp, pmd_aligned, prot);
-       pud_huge_tests(pudp, pud_aligned, prot);
+       if (IS_ENABLED(CONFIG_HAVE_ARCH_HUGE_VMAP)) {
+               pmd_huge_tests(pmdp, pmd_aligned, prot);
+               pud_huge_tests(pudp, pud_aligned, prot);
+       }
 
        pte_savedwrite_tests(pte_aligned, prot);
        pmd_savedwrite_tests(pmd_aligned, prot);

BTW, please add some comments to the various #ifdef/#else stuff, especially
when the different parts are far away and/or nested.

2) The hugetlb_advanced_test will fail because it directly de-references
huge *ptep pointers instead of using huge_ptep_get() for this. We have
very different pagetable entry layout for pte and (large) pmd on s390,
and unfortunately the whole hugetlbfs code is using pte_t instead of pmd_t
like THP. For this reason, huge_ptep_get() was introduced, which will
return a "converted" pte, because directly reading from a *ptep (pointing
to a large pmd) will not return a proper pte. Only ARM has also an
implementation of huge_ptep_get(), so they could be affected, depending
on what exactly they need it for.

Could be fixed like this (the first de-reference is a bit special,
because at that point *ptep does not really point to a large (pmd) entry
yet, it is initially an invalid pte entry, which breaks our huge_ptep_get()
conversion logic. I also added PMD_MASK alignment for RANDOM_ORVALUE,
because we do have some special bits there in our large pmds. It seems
to also work w/o that alignment, but it feels a bit wrong):

@@ -731,26 +731,26 @@ static void __init hugetlb_advanced_test
                                          unsigned long vaddr, pgprot_t prot)
 {
        struct page *page = pfn_to_page(pfn);
-       pte_t pte = READ_ONCE(*ptep);
+       pte_t pte;

-       pte = __pte(pte_val(pte) | RANDOM_ORVALUE);
+       pte = pte_mkhuge(mk_pte_phys(RANDOM_ORVALUE & PMD_MASK, prot));
        set_huge_pte_at(mm, vaddr, ptep, pte);
        barrier();
        WARN_ON(!pte_same(pte, huge_ptep_get(ptep)));
        huge_pte_clear(mm, vaddr, ptep, PMD_SIZE);
-       pte = READ_ONCE(*ptep);
+       pte = huge_ptep_get(ptep);
        WARN_ON(!huge_pte_none(pte));
 
        pte = mk_huge_pte(page, prot);
        set_huge_pte_at(mm, vaddr, ptep, pte);
        huge_ptep_set_wrprotect(mm, vaddr, ptep);
-       pte = READ_ONCE(*ptep);
+       pte = huge_ptep_get(ptep);
        WARN_ON(huge_pte_write(pte));
 
        pte = mk_huge_pte(page, prot);
        set_huge_pte_at(mm, vaddr, ptep, pte);
        huge_ptep_get_and_clear(mm, vaddr, ptep);
-       pte = READ_ONCE(*ptep);
+       pte = huge_ptep_get(ptep);
        WARN_ON(!huge_pte_none(pte));
 
        pte = mk_huge_pte(page, prot);
@@ -759,7 +759,7 @@ static void __init hugetlb_advanced_test
        pte = huge_pte_mkwrite(pte);
        pte = huge_pte_mkdirty(pte);
        huge_ptep_set_access_flags(vma, vaddr, ptep, pte, 1);
-       pte = READ_ONCE(*ptep);
+       pte = huge_ptep_get(ptep);
        WARN_ON(!(huge_pte_write(pte) && huge_pte_dirty(pte)));
 }
 #else

3) The pmd_protnone_tests() has an issue, because it passes a pmd to
pmd_protnone() which has not been marked as large. We check for large
pmd in the s390 implementation of pmd_protnone(), and will fail if a
pmd is not large. We had similar issues before, in other helpers, where
I changed the logic on s390 to not require the pmd large check, but I'm
not so sure in this case. Is there a valid use case for doing
pmd_protnone() on "normal" pmds? Or could this be changed like this:

@@ -537,7 +537,7 @@ static void __init pte_protnone_tests(un
 #ifdef CONFIG_TRANSPARENT_HUGEPAGE
 static void __init pmd_protnone_tests(unsigned long pfn, pgprot_t prot)
 {
-       pmd_t pmd = pfn_pmd(pfn, prot);
+       pmd_t pmd = mk_huge_pmd(pfn_to_page(pfn), prot);

        if (!IS_ENABLED(CONFIG_NUMA_BALANCING))
                return;

Regards,
Gerald


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
