Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D20C1C2EFC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 10:38:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TaLTc2cykQGPqs0J6tFCT/JpgZ2dHm7ZQluEOH6WW5E=; b=kQ4
	vaj/SfWteQSbXFsqHmbAsJbH8cSc29b1IDyv6oHgJ9Gpp8Y13Linu5ILPkjx0pN3l4pq0eB67PvEI
	Jo3qMFs1wcewP8DXMzS1wntEjypWZaiExWJvlyQOFJvFeX9A/9yoXPzkI8eQBMH0EZTvPBo5KP/jL
	o8nN7wMy6daS5NRuFlE0uVcvx+lgOyxrqKMAMopv6Nt5X8f+rn0LsXWlCojLqX0515niufOQc2Yc0
	9fLeEueh2mlD9mfYAgDp5u7EbQBJIdtS4xRA3nnVo75xBAeAfJCMQGDb1y42Bh+zYlwt7ZI71eIfH
	X8ahhhUrjDoU8vBirPiMnJgdRDRjxGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFDfa-0002wW-1u; Tue, 01 Oct 2019 08:38:06 +0000
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFDfS-0002w2-Bh
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 08:38:00 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-07.nifty.com with ESMTP id x918bGRK010166;
 Tue, 1 Oct 2019 17:37:16 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com x918bGRK010166
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1569919038;
 bh=5vgn6LNEnRoez/oiB48qIZvraN4rGfguB7nlITyUZnQ=;
 h=From:To:Cc:Subject:Date:From;
 b=p91ffoOa2E/AqaszRIYAKxH64lj7JJFDmZ79GZ/o3VRI/mwetxYYTQsnMaUw14GmA
 ZVm6pzze0VUYtB3hV7bLkjiHP+ofi+YmdztVAuitDJ3kA93dhWnhTO8TVLFTz6Dl7g
 XvOobdLSRmBFYm3F1wliVdaWSZMBm6GoDv/aBdFWMv2Rmxw2+0ZeUdVRufx3OS7r0P
 Hs72Fd2OSDGs662tuHHS+kUJnTYqsSs2+cjjh4jfgQUE+jKBtvSnylC86v6Zs0O5G6
 WF0bdsK1XFHCIBi6PJrD9ZiZqjOv17oQVq7jZI87bIrFBpbYdHV9ykA61Q81Qo8YXo
 +B0Gs6PCTXyTQ==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-arm-kernel@lists.infradead.org,
 Russell King <rmk+kernel@armlinux.org.uk>
Subject: [PATCH v2] ARM: add __always_inline to functions called from
 __get_user_check()
Date: Tue,  1 Oct 2019 17:37:01 +0900
Message-Id: <20191001083701.27207-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_013758_622402_10E69C6A 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.74 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Enrico Weigelt <info@metux.net>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Russell King <linux@armlinux.org.uk>, Stefan Agner <stefan@agner.ch>,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Olof Johansson <olof@lixom.net>, Thomas Gleixner <tglx@linutronix.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KernelCI reports that bcm2835_defconfig is no longer booting since
commit ac7c3e4ff401 ("compiler: enable CONFIG_OPTIMIZE_INLINING
forcibly") (https://lkml.org/lkml/2019/9/26/825).

I also received a regression report from Nicolas Saenz Julienne
(https://lkml.org/lkml/2019/9/27/263).

This problem has cropped up on bcm2835_defconfig because it enables
CONFIG_CC_OPTIMIZE_FOR_SIZE. The compiler tends to prefer not inlining
functions with -Os. I was able to reproduce it with other boards and
defconfig files by manually enabling CONFIG_CC_OPTIMIZE_FOR_SIZE.

The __get_user_check() specifically uses r0, r1, r2 registers.
So, uaccess_save_and_enable() and uaccess_restore() must be inlined.
Otherwise, those register assignments would be entirely dropped,
according to my analysis of the disassembly.

Prior to commit 9012d011660e ("compiler: allow all arches to enable
CONFIG_OPTIMIZE_INLINING"), the 'inline' marker was always enough for
inlining functions, except on x86.

Since that commit, all architectures can enable CONFIG_OPTIMIZE_INLINING.
So, __always_inline is now the only guaranteed way of forcible inlining.

I also added __always_inline to 4 functions in the call-graph from the
__get_user_check() macro.

Fixes: 9012d011660e ("compiler: allow all arches to enable CONFIG_OPTIMIZE_INLINING")
Reported-by: "kernelci.org bot" <bot@kernelci.org>
Reported-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

Changes in v2:
  - Use __always_inline instead of changing the function call places
     (per Russell King)
  - The previous submission is: https://lore.kernel.org/patchwork/patch/1132459/

 arch/arm/include/asm/domain.h  | 8 ++++----
 arch/arm/include/asm/uaccess.h | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/include/asm/domain.h b/arch/arm/include/asm/domain.h
index 567dbede4785..f1d0a7807cd0 100644
--- a/arch/arm/include/asm/domain.h
+++ b/arch/arm/include/asm/domain.h
@@ -82,7 +82,7 @@
 #ifndef __ASSEMBLY__
 
 #ifdef CONFIG_CPU_CP15_MMU
-static inline unsigned int get_domain(void)
+static __always_inline unsigned int get_domain(void)
 {
 	unsigned int domain;
 
@@ -94,7 +94,7 @@ static inline unsigned int get_domain(void)
 	return domain;
 }
 
-static inline void set_domain(unsigned val)
+static __always_inline void set_domain(unsigned int val)
 {
 	asm volatile(
 	"mcr	p15, 0, %0, c3, c0	@ set domain"
@@ -102,12 +102,12 @@ static inline void set_domain(unsigned val)
 	isb();
 }
 #else
-static inline unsigned int get_domain(void)
+static __always_inline unsigned int get_domain(void)
 {
 	return 0;
 }
 
-static inline void set_domain(unsigned val)
+static __always_inline void set_domain(unsigned int val)
 {
 }
 #endif
diff --git a/arch/arm/include/asm/uaccess.h b/arch/arm/include/asm/uaccess.h
index 303248e5b990..98c6b91be4a8 100644
--- a/arch/arm/include/asm/uaccess.h
+++ b/arch/arm/include/asm/uaccess.h
@@ -22,7 +22,7 @@
  * perform such accesses (eg, via list poison values) which could then
  * be exploited for priviledge escalation.
  */
-static inline unsigned int uaccess_save_and_enable(void)
+static __always_inline unsigned int uaccess_save_and_enable(void)
 {
 #ifdef CONFIG_CPU_SW_DOMAIN_PAN
 	unsigned int old_domain = get_domain();
@@ -37,7 +37,7 @@ static inline unsigned int uaccess_save_and_enable(void)
 #endif
 }
 
-static inline void uaccess_restore(unsigned int flags)
+static __always_inline void uaccess_restore(unsigned int flags)
 {
 #ifdef CONFIG_CPU_SW_DOMAIN_PAN
 	/* Restore the user access mask */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
