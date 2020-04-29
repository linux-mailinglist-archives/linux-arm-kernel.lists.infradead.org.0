Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 682761BE6C1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 20:58:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Qb7zaEwuXlKX2CuQwsmVTcxLCCx0HIMRB2lFoquiH/I=; b=sJqMb6HjhgxUwT
	l1qAk891oIqb6h9hCW68aBSPf+aUCe6ss3KDvdwf/n9IxpoCKTfR+75cfd719vlHWSEf9PQcg75fO
	693ael5HTaAnoeKLmbQqeUBaLCk73lxVBTUI+mFCOeO2+GyPjJW1IKiZqcKyOjMehpDq7IYfuS0pr
	wjsrxV5e83KY3qrkFDrbtWveVSxujPVYjnxu9Xja0xOOvu0Oti7nzYQ+VgGMDLIDoHXnEX0BCgjrn
	4MgEIGhJ6VLB2e44aKGFhjIbXBVc78arMEk/K47MpqMvDFRbkXYRkvoy5x42F9fc+NBtersvzDqI9
	Lglf/KYnAeINWNi8L/hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTruk-0003lr-1d; Wed, 29 Apr 2020 18:58:34 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTrua-0003l7-35
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 18:58:25 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1Mo73N-1ioFcd47Vz-00pZnh; Wed, 29 Apr 2020 20:57:33 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Marc Zyngier <maz@kernel.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH] arm64: kvm: fix gcc-10 shift warning
Date: Wed, 29 Apr 2020 20:56:20 +0200
Message-Id: <20200429185657.4085975-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:8OXL6NQmTkcBiOCkHQGhzeqEoFYUxBw7WVzJaTTnU7kjO2pO0JM
 vohxDpabUNcn7UsoxF5ym+YjgJOchU1884rbX3nuxFYMv4FB/rT8ozIi8VhoHWbj/EF7FPM
 U+oI0IRs8bC/K66ZNFOZU6JTuSag6RdDgHRdqF4yz8H69o2BDgngLCbAmGfAz69x0LP3CWv
 b1VyXnO0UAWk5jmoJob5g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pysSrQd7X8s=:tvN+Zry+xKDmdH/BL5InUX
 k1tAFE1WchomAM9UocK6bXNp4JNYt1/e59RDJNa79qv/7xfQwkCWYLJva6UmP/CQJc3SrX5eN
 1sKBkSQTG70ZBxT4d8/8Lgr1CSw3AugFsu3m/MaeumdXG0l6a8hJbrvmVNjLaGRqALRzw+AV3
 cOg5xDJUksWvc7nAn8UlShJD1V/LG5K8E9JvYYxuJbcIoIJ2/LuPlSiaMv1/q9/nc2dW+NziG
 5wf3KrVWmlsGw+cc1r++paHuiOApe512vZzjCAzXBpvmpmEEtp8UopOJhritiVk4ZOT6nTLEJ
 sAKdlaPrr9DQkQ/9dd1NFygEVWwYl4ebCaGMLA/3IDEoXmx6YXjU14ysaixwv+DRwDz/T8hrc
 wsyy49yGM0ASNpgvAzrwzGpOI5O+5+BO4C8IPAMK+ge/1w5BIG67Vb4qUyFLAPiRmRXbpV1po
 e75B5che6cb7E7CpKuuQwx5E/WNwLvNQGUJVxefMBvMkqw3CceT9/O9WM3dAPEgjpePkqgWaw
 f61iiu1vckjcT6R83rSm7xATAcRqXXfPj00qadM830cBOkalW8NRr1RxtYaNyKmGwaauEzcG3
 kdPKX135SM/Wygk8rSEKnwezKDRlGU5sKeTLQDl7cTt0RyUATWYkFmvCrsPpePojs0MRq/p90
 n021UC/9bO+o9vsHrol1N5IcG9sKArHnVX5TKUGDD+q1BTn3ew+69VSj/Q2nFEJv/VL9XiIXf
 X6eCzkNl2qWW3Empf+D/+2fsuXMH7eOqX7LTg9Iw/zoGnvsyTZqmB0nV+VfUOlmOJajSxKpQ/
 5s7JDIXg+yLnWjUaDR/Q/AxlkUK9if7NstvdDBwY25FedD8Vvk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_115824_425685_86FD241E 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.24 listed in wl.mailspike.net]
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
Cc: Rich Felker <dalias@libc.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Jonas Bonn <jonas@southpole.se>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Brian Cain <bcain@codeaurora.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Russell King <linux@armlinux.org.uk>,
 Ley Foon Tan <ley.foon.tan@intel.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Fenghua Yu <fenghua.yu@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 Stafford Horne <shorne@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Tony Luck <tony.luck@intel.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

gcc-10 warns that the 32-bit zero cannot be shifted more than
32 bits to the right:

arch/arm64/kvm/../../../virt/kvm/arm/mmu.c: In function 'clear_hyp_p4d_entry':
arch/arm64/include/asm/pgtable.h:630:35: error: right shift count >= width of type [-Werror=shift-count-overflow]
  630 | #define pud_index(addr)  (((addr) >> PUD_SHIFT) & (PTRS_PER_PUD - 1))
      |                                   ^~
arch/arm64/include/asm/memory.h:271:45: note: in definition of macro '__phys_to_virt'
  271 | #define __phys_to_virt(x) ((unsigned long)((x) - physvirt_offset))
      |                                             ^
arch/arm64/include/asm/pgtable.h:633:42: note: in expansion of macro '__va'
  633 | #define pud_offset(dir, addr)  ((pud_t *)__va(pud_offset_phys((dir), (addr))))
      |                                          ^~~~
arch/arm64/include/asm/pgtable.h:632:73: note: in expansion of macro 'pud_index'
  632 | #define pud_offset_phys(dir, addr) (p4d_page_paddr(READ_ONCE(*(dir))) + pud_index(addr) * sizeof(pud_t))
      |                                                                         ^~~~~~~~~
arch/arm64/include/asm/pgtable.h:633:47: note: in expansion of macro 'pud_offset_phys'
  633 | #define pud_offset(dir, addr)  ((pud_t *)__va(pud_offset_phys((dir), (addr))))
      |                                               ^~~~~~~~~~~~~~~
arch/arm64/kvm/../../../virt/kvm/arm/mmu.c:510:36: note: in expansion of macro 'pud_offset'
  510 |  pud_t *pud_table __maybe_unused = pud_offset(p4d, 0);
      |                                    ^~~~~~~~~~

This is harmless, and the warning is a little bit silly for
a zero constant, but it's trivial to fix by making it an
unsigned long, so do that.

Fixes: 22998131ab33 ("arm64: add support for folded p4d page tables")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 virt/kvm/arm/mmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index 48d4288c5f1b..534d9798c3cb 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -507,7 +507,7 @@ static void clear_hyp_pgd_entry(pgd_t *pgd)
 
 static void clear_hyp_p4d_entry(p4d_t *p4d)
 {
-	pud_t *pud_table __maybe_unused = pud_offset(p4d, 0);
+	pud_t *pud_table __maybe_unused = pud_offset(p4d, 0UL);
 	VM_BUG_ON(p4d_huge(*p4d));
 	p4d_clear(p4d);
 	pud_free(NULL, pud_table);
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
