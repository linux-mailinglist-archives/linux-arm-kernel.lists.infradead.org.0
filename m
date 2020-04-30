Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFE81C081F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 22:39:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S1rGvEOPsh5nm+dCdwbQi1dfdY7YOCg6OPZkFa3WShA=; b=TD9tZ9DkF5I7rG
	M1uVnq6BeHl/VqtjI/A7hnXaDdAzo9pukqWn34KecCJ3s7bprupb5VPD7QVzVofv/NouJXOLPufJA
	u78bl4th6xFz0T5WNFKGOIEBxbbTNy9kskB5eevTK0WraooDY7BZsvDA9BqeRHWydcj7BMHR12dF6
	ZYhxiy28Fdky/krwOPkPrdiElN6xVY2YUykDDYE0c6Twzu77cz78LDOKBc4ByZUy7yDZkhjLkd5pE
	GeJT8JFojkPAcQZBLd63qwTjzcVvtqd6ESiZuFJFyaIjgZu5KVb2/XMUQvRJB4dKNIa2LbIp6y6vd
	IozSkiJRovDYI5kPTw7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUFxc-0000It-Mp; Thu, 30 Apr 2020 20:39:08 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUFxL-0000GX-CR; Thu, 30 Apr 2020 20:38:52 +0000
IronPort-SDR: cNfwni4vyeqipGja1mWvEDGjMaKuUwMNee01bz4zDZ8cZo8UUO3bUHGWBBIUL+E/CE8pOBw+7u
 0xyrviwviKlw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 13:38:49 -0700
IronPort-SDR: I4KrUIKV1JIB236IcZ/nZ88R5GBVmHR6Cx62c+EO6isHRqV8HMXGZ8LGPtTewSc3X7sQE/xJP4
 Vwm62Pd83kiw==
X-IronPort-AV: E=Sophos;i="5.73,337,1583222400"; d="scan'208";a="248380175"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 13:38:49 -0700
From: ira.weiny@intel.com
To: linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Christian Koenig <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>
Subject: [PATCH V1 00/10] Remove duplicated kmap code
Date: Thu, 30 Apr 2020 13:38:35 -0700
Message-Id: <20200430203845.582900-1-ira.weiny@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_133851_543266_C70F9EB5 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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

The kmap infrastructure has been copied almost verbatim to every architecture.
This series consolidates obvious duplicated code by defining core functions
which call into the architectures only when needed.

Some of the k[un]map_atomic() implementations have some similarities but the
similarities were not sufficient to warrant further changes.

In addition we remove a duplicate implementation of kmap() in DRM.

Testing was done by 0day to cover all the architectures I can't readily
build/test.

---
Changes from V0:
	rebase to 5.7-rc4
	Define kmap_flush_tlb() and make kmap() truely arch independent.
	Redefine the k[un]map_atomic_* code to call into the architectures for
		high mem pages
	Ensure all architectures define kmap_prot, use it appropriately, and
		define kmap_atomic_prot()
	Remove drm implementation of kmap_atomic()


Ira Weiny (10):
  arch/kmap: Remove BUG_ON()
  arch/xtensa: Move kmap build bug out of the way
  arch/kmap: Remove redundant arch specific kmaps
  arch/kunmap: Remove duplicate kunmap implementations
  arch/kmap_atomic: Consolidate duplicate code
  arch/kunmap_atomic: Consolidate duplicate code
  arch/kmap: Ensure kmap_prot visibility
  arch/kmap: Don't hard code kmap_prot values
  arch/kmap: Define kmap_atomic_prot() for all arch's
  drm: Remove drm specific kmap_atomic code

 arch/arc/include/asm/highmem.h        | 16 +------
 arch/arc/mm/highmem.c                 | 28 +++----------
 arch/arm/include/asm/highmem.h        |  9 +---
 arch/arm/mm/highmem.c                 | 35 +++-------------
 arch/csky/include/asm/highmem.h       | 11 ++---
 arch/csky/mm/highmem.c                | 43 +++++--------------
 arch/microblaze/include/asm/highmem.h | 29 ++-----------
 arch/microblaze/mm/highmem.c          | 16 ++-----
 arch/microblaze/mm/init.c             |  3 --
 arch/mips/include/asm/highmem.h       | 11 ++---
 arch/mips/mm/cache.c                  |  6 +--
 arch/mips/mm/highmem.c                | 49 ++++------------------
 arch/nds32/include/asm/highmem.h      |  9 +---
 arch/nds32/mm/highmem.c               | 39 +++--------------
 arch/parisc/include/asm/cacheflush.h  |  4 +-
 arch/powerpc/include/asm/highmem.h    | 30 ++------------
 arch/powerpc/mm/highmem.c             | 21 ++--------
 arch/powerpc/mm/mem.c                 |  3 --
 arch/sparc/include/asm/highmem.h      | 23 +---------
 arch/sparc/mm/highmem.c               | 18 +++-----
 arch/x86/include/asm/highmem.h        | 11 +----
 arch/x86/mm/highmem_32.c              | 50 ++--------------------
 arch/xtensa/include/asm/highmem.h     | 28 +------------
 arch/xtensa/mm/highmem.c              | 23 +++++-----
 drivers/gpu/drm/ttm/ttm_bo_util.c     | 56 ++-----------------------
 drivers/gpu/drm/vmwgfx/vmwgfx_blit.c  | 16 +++----
 include/drm/ttm/ttm_bo_api.h          |  4 --
 include/linux/highmem.h               | 60 +++++++++++++++++++++++++--
 28 files changed, 159 insertions(+), 492 deletions(-)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
