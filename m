Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E97B1838
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 08:24:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:In-Reply-To:To
	:Subject:From:Message-Id:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=0xrYYsy/trhqFED4my7vdfXZmI0ciOTN7OGQLoTxLSY=; b=Ua9g9JWiICgVuq
	ntgSMJninZLT4wEWLh/oQgRutiexr74VevSz53uiTJ8Kk5nLvGyWYuB/O47htmKN+M1cg4zEZD3al
	PRgOi4wIy50d+LF45vizQWadYmzk/wwkNoC7P+3QDkn1AE9gtHF8yfoN/qjffSmT4u0tVlNE1S0XY
	Y7QvBaHYgqYWGTpPFVBaR6SxMfjcbhviglUkNaHXPyc9BCNdkeV+ICDmYE3aW8iVtZuHbxPZteHfO
	nXVzWQ2P70VgVrMvfBkq910urZQxZxmLIiIto3czcbNOe09//xyiZ8BIsvhj2aa/b/XsVopEwZ1wJ
	gF8OnTOGFA726zVJzwpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8f09-0002j7-Mz; Fri, 13 Sep 2019 06:24:13 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8ezt-0002iF-S0; Fri, 13 Sep 2019 06:23:59 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 46V5F20LG8z9vKGM;
 Fri, 13 Sep 2019 08:23:50 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=f446T9wp; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id zlMG0g1kYZvK; Fri, 13 Sep 2019 08:23:49 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 46V5F16D30z9vKGY;
 Fri, 13 Sep 2019 08:23:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1568355829; bh=pdwAlCDBbA9CsaJmAmYfOp6ncuC/iDPFuNIc/mtHpeE=;
 h=From:Subject:To:Cc:In-Reply-To:Date:From;
 b=f446T9wpDZfLilO9u7fC1JJ5iPPIYtr2YAcUoymNbdzP8LwmjS6SLA7gucXb/2pYd
 VcLEFXtcILm2zGItfCjmRNrmwQSWptgurhi6JAzw/j7ABoblpvS+FvvWWNuWnkMXHB
 2ymh0I7z1GrSxPozeE2BsYVNS2vfgkTIggcJZPx4=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id BE6A08B7FD;
 Fri, 13 Sep 2019 08:23:50 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id PJOZp0medcMg; Fri, 13 Sep 2019 08:23:50 +0200 (CEST)
Received: from pc16032vm.idsi0.si.c-s.fr (po15451.idsi0.si.c-s.fr
 [172.25.230.101])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 42BBF8B770;
 Fri, 13 Sep 2019 08:23:50 +0200 (CEST)
Received: by pc16032vm.idsi0.si.c-s.fr (Postfix, from userid 0)
 id 17A0F6B760; Fri, 13 Sep 2019 06:23:49 +0000 (UTC)
Message-Id: <1892b37d1fd9a4ed39e76c4b999b6556077201c0.1568355752.git.christophe.leroy@c-s.fr>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH] mm/pgtable/debug: Fix test validating architecture page table
 helpers
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
In-Reply-To: <ab0ca38b-1e4f-b636-f8b4-007a15903984@c-s.fr>
Date: Fri, 13 Sep 2019 06:23:49 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_232358_204109_AF2B06E1 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michal Hocko <mhocko@kernel.org>, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, linux-s390@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Vlastimil Babka <vbabka@suse.cz>, linux-snps-arc@lists.infradead.org,
 Kees Cook <keescook@chromium.org>, Mark Brown <broonie@kernel.org>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-arm-kernel@lists.infradead.org,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix build failure on powerpc.

Fix preemption imbalance.

Signed-off-by: Christophe Leroy <christophe.leroy@c-s.fr>
---
 mm/arch_pgtable_test.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/mm/arch_pgtable_test.c b/mm/arch_pgtable_test.c
index 8b4a92756ad8..f2b3c9ec35fa 100644
--- a/mm/arch_pgtable_test.c
+++ b/mm/arch_pgtable_test.c
@@ -24,6 +24,7 @@
 #include <linux/swap.h>
 #include <linux/swapops.h>
 #include <linux/sched/mm.h>
+#include <linux/highmem.h>
 #include <asm/pgalloc.h>
 #include <asm/pgtable.h>
 
@@ -400,6 +401,8 @@ static int __init arch_pgtable_tests_init(void)
 	p4d_clear_tests(p4dp);
 	pgd_clear_tests(mm, pgdp);
 
+	pte_unmap(ptep);
+
 	pmd_populate_tests(mm, pmdp, saved_ptep);
 	pud_populate_tests(mm, pudp, saved_pmdp);
 	p4d_populate_tests(mm, p4dp, saved_pudp);
-- 
2.13.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
