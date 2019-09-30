Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDEDC1B2F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 08:01:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=W+mbL7Ex/9cMh711DVZ/0m5MiBlzHgTLcMGUvaMBcWw=; b=a0x
	JrvLix41qAb+dqNE5Knx5K5CTuCltWtuXQRPW+msa0ogQCubYxDN2mRpdqaWi+X3tzLBc8pgFk+1e
	DssV+g2HH/dSKtxk8mNZUuT6BzDr3094OdQuYwVtYrZb629pfl+pCXpUDu56qbcpjG1ufJA5+r8iV
	miyVVIeAxWOjSiZ2GuuQx4vtgsm3jbKdj6hyTfaBiJXO2HmLZTOmlp/51B696oOnpUJsCn67FJSr0
	algsaLgDuRWHN7Y6IRVEaL9E4q5zh6M8Ns4NZeyIa6cFA+/SNsgHFRrUv0lA0VMVVArKNW8roHKbb
	TjHWWQPp7n6BYhZ1+fDzo3V/EsM3g/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEokO-0003su-7y; Mon, 30 Sep 2019 06:01:24 +0000
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEokE-0003s7-GP
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 06:01:17 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-10.nifty.com with ESMTP id x8U60ANM011158;
 Mon, 30 Sep 2019 15:00:10 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com x8U60ANM011158
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1569823213;
 bh=31RHoPop8t0h2pCPRnwABR+VMelvfuLJ6qwFWQxvRAk=;
 h=From:To:Cc:Subject:Date:From;
 b=sVJyT1ROU+6mzkZMRTb0M214/0QcKkmxRbNgDwh2q1TPJpEjPLOoE+y1jkVndgyce
 qBfr7v3nYiN5WSsx5xTwPYvHohsWcSS3AWwyVRw8Kxjd0CGrX8l5WcF76SmCvJPLCB
 wLRZ7C1/Z/zv9v8AVlB2BGhDmSvNQJ9bvuGi42d+JbBXGDfg0HZGGHEj7yDDLBV9nW
 EZkTGzP6wtIdqgD6DM5Lj4LA7FnlzH8Ocy6yp5agIZ7tdaiVh4E+Xb97KFsLgRin/o
 kTPCap5ub1TziurVW+1pbzwH+G3TNVeY+yJdYcAQRFzXXOrTa7s5zIJUtObrYVGCA2
 ctH5uaN1kjx1g==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-arm-kernel@lists.infradead.org,
 Russell King <rmk+kernel@armlinux.org.uk>
Subject: [PATCH] ARM: fix __get_user_check() in case uaccess_* calls are not
 inlined
Date: Mon, 30 Sep 2019 14:59:25 +0900
Message-Id: <20190930055925.25842-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_230114_865605_27FC2356 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.77 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Russell King <linux@armlinux.org.uk>, Stefan Agner <stefan@agner.ch>,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Olof Johansson <olof@lixom.net>, Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KernelCI reports that bcm2835_defconfig is no longer booting since
commit ac7c3e4ff401 ("compiler: enable CONFIG_OPTIMIZE_INLINING
forcibly"):

  https://lkml.org/lkml/2019/9/26/825

I also received a regression report from Nicolas Saenz Julienne:

  https://lkml.org/lkml/2019/9/27/263

This problem has cropped up on arch/arm/config/bcm2835_defconfig
because it enables CONFIG_CC_OPTIMIZE_FOR_SIZE. The compiler tends
to prefer not inlining functions with -Os. I was able to reproduce
it with other boards and defconfig files by manually enabling
CONFIG_CC_OPTIMIZE_FOR_SIZE.

The __get_user_check() specifically uses r0, r1, r2 registers.
So, uaccess_save_and_enable() and uaccess_restore() must be inlined
in order to avoid those registers being overwritten in the callees.

Prior to commit 9012d011660e ("compiler: allow all arches to enable
CONFIG_OPTIMIZE_INLINING"), the 'inline' marker was always enough for
inlining functions, except on x86.

Since that commit, all architectures can enable CONFIG_OPTIMIZE_INLINING.
So, __always_inline is now the only guaranteed way of forcible inlining.

I want to keep as much compiler's freedom as possible about the inlining
decision. So, I changed the function call order instead of adding
__always_inline around.

Call uaccess_save_and_enable() before assigning the __p ("r0"), and
uaccess_restore() after evacuating the __e ("r0").

Fixes: 9012d011660e ("compiler: allow all arches to enable CONFIG_OPTIMIZE_INLINING")
Reported-by: "kernelci.org bot" <bot@kernelci.org>
Reported-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm/include/asm/uaccess.h | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm/include/asm/uaccess.h b/arch/arm/include/asm/uaccess.h
index 303248e5b990..559f252d7e3c 100644
--- a/arch/arm/include/asm/uaccess.h
+++ b/arch/arm/include/asm/uaccess.h
@@ -191,11 +191,12 @@ extern int __get_user_64t_4(void *);
 #define __get_user_check(x, p)						\
 	({								\
 		unsigned long __limit = current_thread_info()->addr_limit - 1; \
+		unsigned int __ua_flags = uaccess_save_and_enable();	\
 		register typeof(*(p)) __user *__p asm("r0") = (p);	\
 		register __inttype(x) __r2 asm("r2");			\
 		register unsigned long __l asm("r1") = __limit;		\
 		register int __e asm("r0");				\
-		unsigned int __ua_flags = uaccess_save_and_enable();	\
+		unsigned int __err;					\
 		switch (sizeof(*(__p))) {				\
 		case 1:							\
 			if (sizeof((x)) >= 8)				\
@@ -223,9 +224,10 @@ extern int __get_user_64t_4(void *);
 			break;						\
 		default: __e = __get_user_bad(); break;			\
 		}							\
-		uaccess_restore(__ua_flags);				\
+		__err = __e;						\
 		x = (typeof(*(p))) __r2;				\
-		__e;							\
+		uaccess_restore(__ua_flags);				\
+		__err;							\
 	})
 
 #define get_user(x, p)							\
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
