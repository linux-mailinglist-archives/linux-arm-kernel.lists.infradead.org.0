Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD355133198
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 22:02:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8AQ/gf76PE+rJrvBiDbtGbfZepWyMzlVdd6+ZdmxGMc=; b=AD7awMJOOrp1ul
	EdEsqUmQ9Y7ruofKMZf+aMvmKTUeKdphuOLoitj0YxOr7rQFqOYQ1705iF1v6/6q0ft9nERtLl7VU
	9qpyKjGgEYU+VQ0KlErKO9oI4EwToe9z+WTyltyKoaLgUyh8Srq6w6CDrEUoNPshtVqlGLuaP6YV3
	CAzZiL6R7btUDrOdg3X7jLVSDWFBoAnSS0SoV2HuhcpPmWqiOilj30O/fNtsd9CebxARzSpgf5wKz
	+/zZ5Jq9lZw2eB7vAf+aWF4l0Ab+ky7R3QOnRSCDZLfl+tJUKB16rkj1uNsaK9PVKJ0BhezCRNCn7
	sLPfxvtkEMERXfFIOsyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iovzO-0003RV-Qc; Tue, 07 Jan 2020 21:02:10 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iovxV-0001Tl-Hh
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 21:00:16 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <gunthorp@deltatee.com>)
 id 1iovxO-0007vt-Jx; Tue, 07 Jan 2020 14:00:12 -0700
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1iovxI-0001zD-Oz; Tue, 07 Jan 2020 14:00:00 -0700
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-ia64@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-s390@vger.kernel.org, linux-sh@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, linux-mm@kvack.org,
 Dan Williams <dan.j.williams@intel.com>, Michal Hocko <mhocko@kernel.org>,
 David Hildenbrand <david@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>
Date: Tue,  7 Jan 2020 13:59:55 -0700
Message-Id: <20200107205959.7575-5-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200107205959.7575-1-logang@deltatee.com>
References: <20200107205959.7575-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-ia64@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-sh@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 linux-mm@kvack.org, dan.j.williams@intel.com, akpm@linux-foundation.org,
 hch@lst.de, catalin.marinas@arm.com, benh@kernel.crashing.org,
 tglx@linutronix.de, david@redhat.com, mingo@redhat.com, bp@alien8.de,
 dave.hansen@linux.intel.com, peterz@infradead.org, ebadger@gigaio.com,
 logang@deltatee.com, hpa@zytor.com, mhocko@kernel.org, will@kernel.org,
 luto@kernel.org, x86@kernel.org
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 MYRULES_NO_TEXT autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/8] x86/mm: Introduce _set_memory_prot()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_130013_612870_A70EFB77 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Eric Badger <ebadger@gigaio.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, x86@kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For use in the 32bit arch_add_memory() to set the pgprot type of the
memory to add.

Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: x86@kernel.org
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: Andy Lutomirski <luto@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 arch/x86/include/asm/set_memory.h | 1 +
 arch/x86/mm/pageattr.c            | 7 +++++++
 2 files changed, 8 insertions(+)

diff --git a/arch/x86/include/asm/set_memory.h b/arch/x86/include/asm/set_memory.h
index 2ee8e469dcf5..d728c2f3ad96 100644
--- a/arch/x86/include/asm/set_memory.h
+++ b/arch/x86/include/asm/set_memory.h
@@ -34,6 +34,7 @@
  * The caller is required to take care of these.
  */
 
+int _set_memory_prot(unsigned long addr, int numpages, pgprot_t prot);
 int _set_memory_uc(unsigned long addr, int numpages);
 int _set_memory_wc(unsigned long addr, int numpages);
 int _set_memory_wt(unsigned long addr, int numpages);
diff --git a/arch/x86/mm/pageattr.c b/arch/x86/mm/pageattr.c
index 1b99ad05b117..2f1934d7b8d9 100644
--- a/arch/x86/mm/pageattr.c
+++ b/arch/x86/mm/pageattr.c
@@ -1781,6 +1781,13 @@ static inline int cpa_clear_pages_array(struct page **pages, int numpages,
 		CPA_PAGES_ARRAY, pages);
 }
 
+int _set_memory_prot(unsigned long addr, int numpages, pgprot_t prot)
+{
+	return change_page_attr_set_clr(&addr, numpages, prot,
+					__pgprot(~pgprot_val(prot)), 0, 0,
+					NULL);
+}
+
 int _set_memory_uc(unsigned long addr, int numpages)
 {
 	/*
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
