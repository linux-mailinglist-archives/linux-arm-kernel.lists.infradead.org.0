Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F55B1602B2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 09:20:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lAzNFCBU5Eg6rPH6LB+T/hJM1sGWz4pGlEi8CrtXZmw=; b=E0rA11T/8u5j3E
	b4StpEu3gOAHeeCYm5jN3VVeuPk4mRJcTfoWciPvjKKUQIbjagUP5QFzISSnbGoQeoCerEFl2Da2c
	/5fD/LIiBUPNXTFJddHHZimFVI02AYCX5S6vHVS8wJKGt1jCqJsQzH8GKmYdcqfbLixg0L1Du612Q
	Cc0wZ+AWj8Kma3a81nMvdtnoa6v46+ncMiGmlkdg1PhoLFYWWTym58ri/I8DizQVj5jVJlxJeOtDe
	6pjYZKClecIgHNqT8DznpWrgwdbcUdM1Sqr6hckSoNgFfPxeXxBdaiyP3syE9JmyNgUQLNjpCPEvm
	QSUV+Wt0EJY8enkf7xNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3FA1-0003YU-Mo; Sun, 16 Feb 2020 08:20:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3F9A-0003DK-Am
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 08:19:27 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 629D7227BF;
 Sun, 16 Feb 2020 08:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581841164;
 bh=RG9Zl/BpZrqRN3HuSpCwlDUS57jnnyLncIWtzvxDXVc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=E7NgpYxeaRSk2/SkAj913cCKZNh269SIJFOVrDrXlknPSNUJxpvOV0l7j6vCXR2f/
 OCoJEWhUoAUwhNP8E/NbtN6OucddnhQTEvOLMreR0idLL+UjJJrch5vg4ZTY86nb+b
 7VeNMLFilsTsmHJnHb6l4U7xfZZEZ4A89h1E+1OY=
From: Mike Rapoport <rppt@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 03/13] hexagon: remove __ARCH_USE_5LEVEL_HACK
Date: Sun, 16 Feb 2020 10:18:33 +0200
Message-Id: <20200216081843.28670-4-rppt@kernel.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200216081843.28670-1-rppt@kernel.org>
References: <20200216081843.28670-1-rppt@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_001925_611929_C254D8A5 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-sh@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, linux-hexagon@vger.kernel.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Jonas Bonn <jonas@southpole.se>, linux-arch@vger.kernel.org,
 Brian Cain <bcain@codeaurora.org>, Marc Zyngier <maz@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 uclinux-h8-devel@lists.sourceforge.jp, Fenghua Yu <fenghua.yu@intel.com>,
 Arnd Bergmann <arnd@arndb.de>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 openrisc@lists.librecores.org, Stafford Horne <shorne@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Tony Luck <tony.luck@intel.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, James Morse <james.morse@arm.com>,
 Michael Ellerman <mpe@ellerman.id.au>, nios2-dev@lists.rocketboards.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Rapoport <rppt@linux.ibm.com>

The hexagon architecture has 2 level page tables and as such most of the
page table folding is already implemented in asm-generic/pgtable-nopmd.h.

Fixup the only place in arch/hexagon to unfold the p4d level and remove
__ARCH_USE_5LEVEL_HACK.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/hexagon/include/asm/fixmap.h  | 4 ++--
 arch/hexagon/include/asm/pgtable.h | 1 -
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/hexagon/include/asm/fixmap.h b/arch/hexagon/include/asm/fixmap.h
index 933dac167504..97b1b062e750 100644
--- a/arch/hexagon/include/asm/fixmap.h
+++ b/arch/hexagon/include/asm/fixmap.h
@@ -16,7 +16,7 @@
 #include <asm-generic/fixmap.h>
 
 #define kmap_get_fixmap_pte(vaddr) \
-	pte_offset_kernel(pmd_offset(pud_offset(pgd_offset_k(vaddr), \
-				(vaddr)), (vaddr)), (vaddr))
+	pte_offset_kernel(pmd_offset(pud_offset(p4d_offset(pgd_offset_k(vaddr), \
+				(vaddr)), (vaddr)), (vaddr)), (vaddr))
 
 #endif
diff --git a/arch/hexagon/include/asm/pgtable.h b/arch/hexagon/include/asm/pgtable.h
index 2fec20ad939e..83b544936eed 100644
--- a/arch/hexagon/include/asm/pgtable.h
+++ b/arch/hexagon/include/asm/pgtable.h
@@ -12,7 +12,6 @@
  * Page table definitions for Qualcomm Hexagon processor.
  */
 #include <asm/page.h>
-#define __ARCH_USE_5LEVEL_HACK
 #include <asm-generic/pgtable-nopmd.h>
 
 /* A handy thing to have if one has the RAM. Declared in head.S */
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
