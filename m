Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5112F17135A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 09:52:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kxxkNxZx8DHPb+mVCLGGZLi6gfsoHSoyNz/u6ygtn7w=; b=Bk7+ky23tG+oAw
	CzRjClx/gnQy5CuKcC3IO3kcg3bHkFHlXLjSuro6a/umcFuSDf6BlzOix1xGq792xGhQpg0APiKag
	LFr8M5FycXQvmBeq2fBiFPsfoCYvxFkzFpVCI+sk7lJc0TDKz1UbtgdQm3bbM7unip0bOyJE9gofO
	OCDIVM3D0vaoUDjxMPPTf4bE8RqrRMDgvtZdqVS3vp4q+GTbx47WoOi1xl1fZHGm3Zu+um1sWB4aU
	BqdO1BA5zbbe2iCPQGP0GI0XN99S/WiS5RcKpniYATDtbihLsFKF+4+UrSRetB9ayKaOSoUO4spK0
	24qF4Qjx9yffr/KaMm7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Etj-0000Bb-OC; Thu, 27 Feb 2020 08:51:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Es3-0007Hf-Ds
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 08:50:17 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 891982468D;
 Thu, 27 Feb 2020 08:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582793414;
 bh=fX2jVUBPzvxIFycYqkqAbM2SK2Ye1AXe+sp7QV+wvtQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=d4IiDjgFH6t1vgwpRDOo5FroCcA4eMYRDg3X2POJN550EnoMdHqdbF2Ty83giIzXl
 x+RVLtGIm7/J3pX7WX2CTvqHpv70/qlUL3PSjghxWcIYEP4gOmM928b+6UCymk812a
 Za+6SMUld0dvUk/ErSdfxHppk4YiJ3ZxjjhBceKk=
From: Mike Rapoport <rppt@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 12/14] unicore32: remove __ARCH_USE_5LEVEL_HACK
Date: Thu, 27 Feb 2020 10:46:06 +0200
Message-Id: <20200227084608.18223-13-rppt@kernel.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200227084608.18223-1-rppt@kernel.org>
References: <20200227084608.18223-1-rppt@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_005015_515417_76D43612 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The unicore32 architecture has 2 level page tables and
asm-generic/pgtable-nopmd.h and explicit casts from pud_t to pgd_t for page
table folding.

Add p4d walk in the only place that actually unfolds the pud level and
remove __ARCH_USE_5LEVEL_HACK.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/unicore32/include/asm/pgtable.h | 1 -
 arch/unicore32/kernel/hibernate.c    | 4 +++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/unicore32/include/asm/pgtable.h b/arch/unicore32/include/asm/pgtable.h
index c8f7ba12f309..82030c32fc05 100644
--- a/arch/unicore32/include/asm/pgtable.h
+++ b/arch/unicore32/include/asm/pgtable.h
@@ -9,7 +9,6 @@
 #ifndef __UNICORE_PGTABLE_H__
 #define __UNICORE_PGTABLE_H__
 
-#define __ARCH_USE_5LEVEL_HACK
 #include <asm-generic/pgtable-nopmd.h>
 #include <asm/cpu-single.h>
 
diff --git a/arch/unicore32/kernel/hibernate.c b/arch/unicore32/kernel/hibernate.c
index f3812245cc00..ccad051a79b6 100644
--- a/arch/unicore32/kernel/hibernate.c
+++ b/arch/unicore32/kernel/hibernate.c
@@ -33,9 +33,11 @@ struct swsusp_arch_regs swsusp_arch_regs_cpu0;
 static pmd_t *resume_one_md_table_init(pgd_t *pgd)
 {
 	pud_t *pud;
+	p4d_t *p4d;
 	pmd_t *pmd_table;
 
-	pud = pud_offset(pgd, 0);
+	p4d = p4d_offset(pgd, 0);
+	pud = pud_offset(p4d, 0);
 	pmd_table = pmd_offset(pud, 0);
 
 	return pmd_table;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
