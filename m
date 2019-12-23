Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFD7129778
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 15:32:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:
	From:Message-Id:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=N29oiLSf884NqGyRSdql0sYQYXsqPUaDrhzjiuRZ4lk=; b=kVk
	X1BhgN+YA5ZH5CWvF88YRjLMXGEl0V5dGreXh1mHBXyg9LjYPcqLbKG1SB0u3x8dlp5E7bLO9rZXG
	mLO97ulfIDmSVamU1RnzxlId+vTtOb2QVzyULPuBufTOKlZPoia6B0mnl4Bmw4MwuXU2KXEn0obho
	q7r/8giH7JsK8XWZoAPgYDpm8lRwBt9T/3Nmjsy+AgIe/vlL3kmByaWDKtNofQJoKYEXPIzhXOG8C
	xWC3Q5aLhLvJHCI4oXuuEnFI/gNbzfX96zNscPbf4yjoTT98lFTBaQIO+kFdyp5MKvQCDJrbYFoEi
	KNzPzBm7+DyiS2Vof6GXhkHjjyu+UQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijOkx-0001W5-JZ; Mon, 23 Dec 2019 14:32:23 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijOjn-0000k7-Qm
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 14:31:13 +0000
Received: from localhost (mailhub1-ext [192.168.12.233])
 by localhost (Postfix) with ESMTP id 47hMGS5T4sz9txjw;
 Mon, 23 Dec 2019 15:30:56 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=cfApg9sH; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id NGVhIXcP7bQ8; Mon, 23 Dec 2019 15:30:56 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47hMGS4B7Wz9txjv;
 Mon, 23 Dec 2019 15:30:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1577111456; bh=yVxuGmQR051J6pETL5q29uPkTsP81kEW/OmeuvlbY/k=;
 h=From:Subject:To:Cc:Date:From;
 b=cfApg9sH1a9HHa55YFyf8L755JhqvakH05NG+R/qHkWzE5LUPrg24rswTt4CXyRyC
 2bhyW8BcRvrp/qnckgOME1s7wI6VFu8a2RSUlLqOrq/21c00ILlXV1sAzj+xe5fgf+
 5bND3VhxVxgMSsmr0NGgo6eGrLt7/vsuVuvx9Kh4=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id AD3658B7AB;
 Mon, 23 Dec 2019 15:31:01 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id AbT8jpQZojIw; Mon, 23 Dec 2019 15:31:01 +0100 (CET)
Received: from po16098vm.idsi0.si.c-s.fr (po15451.idsi0.si.c-s.fr
 [172.25.230.100])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 7C04C8B7A1;
 Mon, 23 Dec 2019 15:31:01 +0100 (CET)
Received: by po16098vm.idsi0.si.c-s.fr (Postfix, from userid 0)
 id 57F2B637D4; Mon, 23 Dec 2019 14:31:01 +0000 (UTC)
Message-Id: <cover.1577111363.git.christophe.leroy@c-s.fr>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [RFC PATCH v2 00/10] powerpc/32: switch VDSO to C implementation.
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>, 
 arnd@arndb.de, tglx@linutronix.de, vincenzo.frascino@arm.com,
 luto@kernel.org
Date: Mon, 23 Dec 2019 14:31:01 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_063112_161879_FB1F7B6B 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: x86@kernel.org, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a second tentative to switch powerpc/32 vdso to generic C implementation.

It will likely not work on 64 bits or even build properly at the moment.

powerpc is a bit special for VDSO as well as system calls in the
way that it requires setting CR SO bit which cannot be done in C.
Therefore, entry/exit and fallback needs to be performed in ASM.

To allow that, the fallback calls are moved out of the common code
and left to the arches.

A few other changes in the common code have allowed performance improvement.

The performance has improved since first RFC, but it is still lower than
current assembly VDSO.

On a powerpc8xx, with current powerpc/32 ASM VDSO:

gettimeofday:    vdso: 737 nsec/call
clock-getres-realtime:    vdso: 475 nsec/call
clock-gettime-realtime:    vdso: 892 nsec/call
clock-getres-monotonic:    vdso: 475 nsec/call
clock-gettime-monotonic:    vdso: 1014 nsec/call

First try of C implementation:

gettimeofday:    vdso: 1533 nsec/call
clock-getres-realtime:    vdso: 853 nsec/call
clock-gettime-realtime:    vdso: 1570 nsec/call
clock-getres-monotonic:    vdso: 835 nsec/call
clock-gettime-monotonic:    vdso: 1605 nsec/call

With this series:

gettimeofday:    vdso: 1016 nsec/call
clock-getres-realtime:    vdso: 560 nsec/call
clock-gettime-realtime:    vdso: 1192 nsec/call
clock-getres-monotonic:    vdso: 560 nsec/call
clock-gettime-monotonic:    vdso: 1192 nsec/call


Changes made to other arches are untested, not even compiled.


Christophe Leroy (10):
  lib: vdso: ensure all arches have 32bit fallback
  lib: vdso: move call to fallback out of common code.
  lib: vdso: Change __cvdso_clock_gettime/getres_common() to
    __cvdso_clock_gettime/getres()
  lib: vdso: get pointer to vdso data from the arch
  lib: vdso: inline do_hres()
  lib: vdso: make do_coarse() return 0
  lib: vdso: don't use READ_ONCE() in __c_kernel_time()
  lib: vdso: Avoid duplication in __cvdso_clock_getres()
  powerpc/vdso32: inline __get_datapage()
  powerpc/32: Switch VDSO to C implementation.

 arch/arm/include/asm/vdso/gettimeofday.h          |  26 +++
 arch/arm/vdso/vgettimeofday.c                     |  32 ++-
 arch/arm64/include/asm/vdso/compat_gettimeofday.h |   2 -
 arch/arm64/include/asm/vdso/gettimeofday.h        |  26 +++
 arch/arm64/kernel/vdso/vgettimeofday.c            |  24 +-
 arch/arm64/kernel/vdso32/vgettimeofday.c          |  39 +++-
 arch/mips/include/asm/vdso/gettimeofday.h         |  28 ++-
 arch/mips/vdso/vgettimeofday.c                    |  56 ++++-
 arch/powerpc/Kconfig                              |   2 +
 arch/powerpc/include/asm/vdso/gettimeofday.h      |  45 ++++
 arch/powerpc/include/asm/vdso/vsyscall.h          |  27 +++
 arch/powerpc/include/asm/vdso_datapage.h          |  28 +--
 arch/powerpc/kernel/asm-offsets.c                 |  23 +-
 arch/powerpc/kernel/time.c                        |  92 +-------
 arch/powerpc/kernel/vdso.c                        |  19 +-
 arch/powerpc/kernel/vdso32/Makefile               |  19 +-
 arch/powerpc/kernel/vdso32/cacheflush.S           |   9 +-
 arch/powerpc/kernel/vdso32/datapage.S             |  28 +--
 arch/powerpc/kernel/vdso32/gettimeofday.S         | 265 +++-------------------
 arch/powerpc/kernel/vdso32/vgettimeofday.c        |  32 +++
 arch/x86/entry/vdso/vclock_gettime.c              |  52 ++++-
 arch/x86/include/asm/vdso/gettimeofday.h          |  28 ++-
 lib/vdso/gettimeofday.c                           | 100 +++-----
 23 files changed, 505 insertions(+), 497 deletions(-)
 create mode 100644 arch/powerpc/include/asm/vdso/gettimeofday.h
 create mode 100644 arch/powerpc/include/asm/vdso/vsyscall.h
 create mode 100644 arch/powerpc/kernel/vdso32/vgettimeofday.c

-- 
2.13.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
