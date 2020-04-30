Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C861C086F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 22:43:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+NDIFQavoyJAqTyQ+3bDwn+sa9drCLekiBjOLHrw/eA=; b=U86DMhM9z87uDO
	GfzYAjA67gaORLSaPWGiuE0DKLcEE8PV+PXw04+f56fT0COGqaAJh5lDhMM/tz9wDCqSE8bMg5zxl
	qIbqnreMyEAwh8IWiqAwGcfuglzKcW+kobPy7v5Sjj8TS+tRDKuRiE8RoYxNSLxb6z0tTxc6fx9jz
	k5fFYpfauvzmB3kYY8y5adkD3fS5pstXx/Wz7iWCIRhRObyCLaX9hcCBL0ED9cxLTTObylUf2u2Mm
	r2GKx8354X4yjHf7GFLsfEvMmi7gZs4Gu7Yaw0PafxJqGM+vNKFFSUU4LFkRiPZ25RFkzjFoxAw5D
	tzshO6oOzeWsV4b6j05w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUG24-0005eJ-Jb; Thu, 30 Apr 2020 20:43:44 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUFxW-0000Pg-St; Thu, 30 Apr 2020 20:39:05 +0000
IronPort-SDR: Y4z6r+OvNmb2iYC2JcXU0mCapKn0n1TCjrVeza5ONqag7S/wtn77tiQIkNVubJZuHxC2Xt3GW1
 1NK7A0EaUIGQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 13:38:55 -0700
IronPort-SDR: 0v5WU/J533ee4y+5SA+Dowis1/MjIxGJivQZyaHuUpwOAaojT4wltT4p26tZJXU5lSvDdujsg+
 34qII3tcyt9Q==
X-IronPort-AV: E=Sophos;i="5.73,337,1583222400"; d="scan'208";a="405537474"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 13:38:54 -0700
From: ira.weiny@intel.com
To: linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Christian Koenig <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>
Subject: [PATCH V1 07/10] arch/kmap: Ensure kmap_prot visibility
Date: Thu, 30 Apr 2020 13:38:42 -0700
Message-Id: <20200430203845.582900-8-ira.weiny@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200430203845.582900-1-ira.weiny@intel.com>
References: <20200430203845.582900-1-ira.weiny@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_133903_131475_0D6E7EAF 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 Ira Weiny <ira.weiny@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Helge Deller <deller@gmx.de>, x86@kernel.org, linux-csky@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, linux-snps-arc@lists.infradead.org,
 linux-xtensa@linux-xtensa.org, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ira Weiny <ira.weiny@intel.com>

We want to support kmap_atomic_prot() on all architectures and it makes
sense to define kmap_atomic() to use the default kmap_prot.

So we ensure all arch's have a globally available kmap_prot either as a
define or exported symbol.

Signed-off-by: Ira Weiny <ira.weiny@intel.com>
---
 arch/microblaze/include/asm/highmem.h | 2 +-
 arch/microblaze/mm/init.c             | 3 ---
 arch/powerpc/include/asm/highmem.h    | 2 +-
 arch/powerpc/mm/mem.c                 | 3 ---
 arch/sparc/mm/highmem.c               | 1 +
 5 files changed, 3 insertions(+), 8 deletions(-)

diff --git a/arch/microblaze/include/asm/highmem.h b/arch/microblaze/include/asm/highmem.h
index 5fc56b0107be..66521fdc3a47 100644
--- a/arch/microblaze/include/asm/highmem.h
+++ b/arch/microblaze/include/asm/highmem.h
@@ -25,8 +25,8 @@
 #include <linux/uaccess.h>
 #include <asm/fixmap.h>
 
+#define kmap_prot		PAGE_KERNEL
 extern pte_t *kmap_pte;
-extern pgprot_t kmap_prot;
 extern pte_t *pkmap_page_table;
 
 /*
diff --git a/arch/microblaze/mm/init.c b/arch/microblaze/mm/init.c
index 1ffbfa96b9b8..a467686c13af 100644
--- a/arch/microblaze/mm/init.c
+++ b/arch/microblaze/mm/init.c
@@ -49,8 +49,6 @@ unsigned long lowmem_size;
 #ifdef CONFIG_HIGHMEM
 pte_t *kmap_pte;
 EXPORT_SYMBOL(kmap_pte);
-pgprot_t kmap_prot;
-EXPORT_SYMBOL(kmap_prot);
 
 static inline pte_t *virt_to_kpte(unsigned long vaddr)
 {
@@ -68,7 +66,6 @@ static void __init highmem_init(void)
 	pkmap_page_table = virt_to_kpte(PKMAP_BASE);
 
 	kmap_pte = virt_to_kpte(__fix_to_virt(FIX_KMAP_BEGIN));
-	kmap_prot = PAGE_KERNEL;
 }
 
 static void highmem_setup(void)
diff --git a/arch/powerpc/include/asm/highmem.h b/arch/powerpc/include/asm/highmem.h
index 1845fbd7ce61..d264aebcaa9b 100644
--- a/arch/powerpc/include/asm/highmem.h
+++ b/arch/powerpc/include/asm/highmem.h
@@ -29,8 +29,8 @@
 #include <asm/page.h>
 #include <asm/fixmap.h>
 
+#define kmap_prot		PAGE_KERNEL
 extern pte_t *kmap_pte;
-extern pgprot_t kmap_prot;
 extern pte_t *pkmap_page_table;
 
 /*
diff --git a/arch/powerpc/mm/mem.c b/arch/powerpc/mm/mem.c
index 041ed7cfd341..3f642b058731 100644
--- a/arch/powerpc/mm/mem.c
+++ b/arch/powerpc/mm/mem.c
@@ -64,8 +64,6 @@ bool init_mem_is_free;
 #ifdef CONFIG_HIGHMEM
 pte_t *kmap_pte;
 EXPORT_SYMBOL(kmap_pte);
-pgprot_t kmap_prot;
-EXPORT_SYMBOL(kmap_prot);
 #endif
 
 pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
@@ -245,7 +243,6 @@ void __init paging_init(void)
 	pkmap_page_table = virt_to_kpte(PKMAP_BASE);
 
 	kmap_pte = virt_to_kpte(__fix_to_virt(FIX_KMAP_BEGIN));
-	kmap_prot = PAGE_KERNEL;
 #endif /* CONFIG_HIGHMEM */
 
 	printk(KERN_DEBUG "Top of RAM: 0x%llx, Total RAM: 0x%llx\n",
diff --git a/arch/sparc/mm/highmem.c b/arch/sparc/mm/highmem.c
index 469786bc430f..9f06d75e88e1 100644
--- a/arch/sparc/mm/highmem.c
+++ b/arch/sparc/mm/highmem.c
@@ -33,6 +33,7 @@
 #include <asm/vaddrs.h>
 
 pgprot_t kmap_prot;
+EXPORT_SYMBOL(kmap_prot);
 
 static pte_t *kmap_pte;
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
