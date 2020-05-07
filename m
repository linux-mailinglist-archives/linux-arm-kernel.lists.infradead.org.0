Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A46E1C9373
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:03:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=emaur+E2uOSkB2mr5kv/PXB7TQq/8yRpOqhS/OxKAkc=; b=pO0jQvlLPzCkBy
	zcsp99elHDtSSmKxg+4VkXUGz/0Ga5hqwLWUg4MDvVhNYm+QGyEO7nojE7v07Cr50kAH3CZVxaO9/
	qbqKBxjxcQtGwGsZdyrmE+BzxFJxMjpSM/jIuXUuMoNjf4z8y0sOD0TSBpiuRPFnhcpYvd6zhaz0n
	W4sTbZUxSsMwKUciCDtdP7yEOpnafVEtuoGwDKbDGUHGqUxB3K2SA99xq4TelSW9ODJYwUUo/8lQ4
	XiwwEhWseQ7j95LE6BtpR2VSPO6ykR3ZdNLsR6a75epjyqG/q6+IALmDRTMHNp5Qz+IswuQSAmOK/
	lWtXToJxS/5g8Qmk/WKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWi3M-000739-RR; Thu, 07 May 2020 15:03:12 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWi0f-0003oj-83; Thu, 07 May 2020 15:00:29 +0000
IronPort-SDR: 00pScDZigohsLFkrMNy3XmSPHTEg4tCzmCEnCfrHrHVYafqC5PeR4p4BMM0tw9fl8iuGSKcJuj
 8RQ5viKv/3Dw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 08:00:23 -0700
IronPort-SDR: 4+lFW9Yj7kJIdT+ai15CylOphoSR+eOiOGiYQddow4O8kNGA7yeiAoFRFuZTXUusfeunsTY2e1
 /RFOKnjE4+Mw==
X-IronPort-AV: E=Sophos;i="5.73,364,1583222400"; d="scan'208";a="435314561"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 08:00:21 -0700
From: ira.weiny@intel.com
To: linux-kernel@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH V3 14/15] sparc: Remove unnecessary includes
Date: Thu,  7 May 2020 08:00:02 -0700
Message-Id: <20200507150004.1423069-15-ira.weiny@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200507150004.1423069-1-ira.weiny@intel.com>
References: <20200507150004.1423069-1-ira.weiny@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_080025_354579_428DD368 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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

linux/highmem.h has not been needed for the pte_offset_map =>
kmap_atomic use in sparc for some time (~2002)

Remove this include.

Suggested-by: Al Viro <viro@zeniv.linux.org.uk>
Signed-off-by: Ira Weiny <ira.weiny@intel.com>

---
Changes from V2:
	New Patch for this series
---
 arch/sparc/mm/io-unit.c | 1 -
 arch/sparc/mm/iommu.c   | 1 -
 2 files changed, 2 deletions(-)

diff --git a/arch/sparc/mm/io-unit.c b/arch/sparc/mm/io-unit.c
index 289276b99b01..08238d989cfd 100644
--- a/arch/sparc/mm/io-unit.c
+++ b/arch/sparc/mm/io-unit.c
@@ -10,7 +10,6 @@
 #include <linux/slab.h>
 #include <linux/spinlock.h>
 #include <linux/mm.h>
-#include <linux/highmem.h>	/* pte_offset_map => kmap_atomic */
 #include <linux/bitops.h>
 #include <linux/dma-mapping.h>
 #include <linux/of.h>
diff --git a/arch/sparc/mm/iommu.c b/arch/sparc/mm/iommu.c
index b00dde13681b..f1e08e30b64e 100644
--- a/arch/sparc/mm/iommu.c
+++ b/arch/sparc/mm/iommu.c
@@ -12,7 +12,6 @@
 #include <linux/init.h>
 #include <linux/mm.h>
 #include <linux/slab.h>
-#include <linux/highmem.h>	/* pte_offset_map => kmap_atomic */
 #include <linux/dma-mapping.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
