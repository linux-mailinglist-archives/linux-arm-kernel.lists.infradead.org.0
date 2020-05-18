Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FFCE1D878B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:49:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IVcEcQQITKjFiRnhDjl6gFwf7V9ckXjGP6Oc1wCR5qU=; b=YqkHMFAamEPevc
	bq/vcC2ifqB9yPE0ZVec3RB31+RDlX1KCjq6s8tILQne5NhLAYzwYO1gB1HvzoWPMuKYp0oHUs37n
	hbrSDFi7zUwaw3AodMMU/qwXq0dCZ9F9gsBMN5Zi/THNEi650cwSnNI0jH3vCgvmAHK1AH4SHlIkh
	tH9Ylb7UVeEP212jEEGPv49+wk9tdTt7b8FasYIj0QR03zojbhHKLb1K88404Z66FGRBnMTbhI201
	cPBxiNqd8/OO8lEUcWymFfuFTfP8tT0+5t/zykCANbntw/7/LhSqQOj0U1zMWDhdOIzhQwumGWTZb
	dmOil9geo6i6k9M2U73g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jakoq-00061v-Kj; Mon, 18 May 2020 18:48:56 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jakog-000612-85; Mon, 18 May 2020 18:48:47 +0000
IronPort-SDR: W+n+j62ZVz7wDhHU32E/B4YDHQEKkeyAKsfTbuy47CRsK1B3XLU+ro9lFDu3PmwbC1/Oc8UtSG
 xpfsG4xQaooA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 11:48:45 -0700
IronPort-SDR: A0dNOJcp3XVBRer+3SvVGXusda3bUk5OmiTTHwwN4BXAPX4zWgYa/kiDwvCtGSiDC+7pgbW2fC
 b75hGkYrg3kw==
X-IronPort-AV: E=Sophos;i="5.73,407,1583222400"; d="scan'208";a="253140387"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 11:48:45 -0700
From: ira.weiny@intel.com
To: linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Guenter Roeck <linux@roeck-us.net>
Subject: [PATCH] arch/{mips, sparc, microblaze,
 powerpc}: Don't enable pagefault/preempt twice
Date: Mon, 18 May 2020 11:48:43 -0700
Message-Id: <20200518184843.3029640-1-ira.weiny@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200507150004.1423069-8-ira.weiny@intel.com>
References: <20200507150004.1423069-8-ira.weiny@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_114846_301139_B0C97CA0 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
 Christoph Hellwig <hch@lst.de>, Ingo Molnar <mingo@redhat.com>,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Borislav Petkov <bp@alien8.de>, Al Viro <viro@zeniv.linux.org.uk>,
 Andy Lutomirski <luto@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, Christian Koenig <christian.koenig@amd.com>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ira Weiny <ira.weiny@intel.com>

The kunmap_atomic clean up failed to remove one set of pagefault/preempt
enables when vaddr is not in the fixmap.

Fixes: bee2128a09e6 ("arch/kunmap_atomic: consolidate duplicate code")
Signed-off-by: Ira Weiny <ira.weiny@intel.com>
---
 arch/microblaze/mm/highmem.c | 5 +----
 arch/mips/mm/highmem.c       | 5 +----
 arch/powerpc/mm/highmem.c    | 5 +----
 arch/sparc/mm/highmem.c      | 5 +----
 4 files changed, 4 insertions(+), 16 deletions(-)

diff --git a/arch/microblaze/mm/highmem.c b/arch/microblaze/mm/highmem.c
index ee8a422b2b76..92e0890416c9 100644
--- a/arch/microblaze/mm/highmem.c
+++ b/arch/microblaze/mm/highmem.c
@@ -57,11 +57,8 @@ void kunmap_atomic_high(void *kvaddr)
 	int type;
 	unsigned int idx;
 
-	if (vaddr < __fix_to_virt(FIX_KMAP_END)) {
-		pagefault_enable();
-		preempt_enable();
+	if (vaddr < __fix_to_virt(FIX_KMAP_END))
 		return;
-	}
 
 	type = kmap_atomic_idx();
 
diff --git a/arch/mips/mm/highmem.c b/arch/mips/mm/highmem.c
index 37e244cdb14e..8e8726992720 100644
--- a/arch/mips/mm/highmem.c
+++ b/arch/mips/mm/highmem.c
@@ -41,11 +41,8 @@ void kunmap_atomic_high(void *kvaddr)
 	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
 	int type __maybe_unused;
 
-	if (vaddr < FIXADDR_START) { // FIXME
-		pagefault_enable();
-		preempt_enable();
+	if (vaddr < FIXADDR_START)
 		return;
-	}
 
 	type = kmap_atomic_idx();
 #ifdef CONFIG_DEBUG_HIGHMEM
diff --git a/arch/powerpc/mm/highmem.c b/arch/powerpc/mm/highmem.c
index 35071c2913f1..624b4438aff9 100644
--- a/arch/powerpc/mm/highmem.c
+++ b/arch/powerpc/mm/highmem.c
@@ -44,11 +44,8 @@ void kunmap_atomic_high(void *kvaddr)
 {
 	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
 
-	if (vaddr < __fix_to_virt(FIX_KMAP_END)) {
-		pagefault_enable();
-		preempt_enable();
+	if (vaddr < __fix_to_virt(FIX_KMAP_END))
 		return;
-	}
 
 	if (IS_ENABLED(CONFIG_DEBUG_HIGHMEM)) {
 		int type = kmap_atomic_idx();
diff --git a/arch/sparc/mm/highmem.c b/arch/sparc/mm/highmem.c
index d237d902f9c3..6ff6e2a9f9b3 100644
--- a/arch/sparc/mm/highmem.c
+++ b/arch/sparc/mm/highmem.c
@@ -86,11 +86,8 @@ void kunmap_atomic_high(void *kvaddr)
 	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
 	int type;
 
-	if (vaddr < FIXADDR_START) { // FIXME
-		pagefault_enable();
-		preempt_enable();
+	if (vaddr < FIXADDR_START)
 		return;
-	}
 
 	type = kmap_atomic_idx();
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
