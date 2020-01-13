Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 775F013971F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 18:09:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:
	From:Message-Id:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/XfVmQbBfTrfcHmN8soxzB3taKwsDeHo9i29tb+qkO8=; b=Amk
	V5FU3Ww/lic6a5O1dj7o1cQeDVkPHc1ZBfzuLk7Jie+U0tCAska4hAC/ru/zK9NF/RGvQlJK35AjH
	usw6er60CQgpiW0bLVQum76sxeedTy1hetKnGSKUm/CgwV2xwrzxuMdPZ/UwSH5/1xM1ByCM5Yp6Z
	bHJc8LPGI7+WkR33lOSoZL/gntjdJuZWarEJANLzCQaxpWoAmuaIgzqpQ3mTpT9H72VBCcfL79csi
	N8s+1f29DKlOMF3www4BlZLiAE2frQSNwh9BYu2CBqIXCLTAB8Sv6k363j09lDRGSDasZ0BB19Fau
	dXMyhMSwu1t/kYXArp74Sm3pIkudwiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir3Df-0002yb-9e; Mon, 13 Jan 2020 17:09:39 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir3Cn-0002KC-RX
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 17:08:47 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 47xKmf0c4xz9txyr;
 Mon, 13 Jan 2020 18:08:34 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=VCsSI0Ym; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id YpE9yvHpzNph; Mon, 13 Jan 2020 18:08:34 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47xKmd6Vt6z9txyq;
 Mon, 13 Jan 2020 18:08:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1578935313; bh=HWz0NtVtGF6JzuFvn1IEu26bS25Q46p2uQtnUn88eHs=;
 h=From:Subject:To:Cc:Date:From;
 b=VCsSI0YmRfqt3jhfrCAg6RSUj1sPG5J+ypYkfjIgakQ3Ukz7AtoB6jArFcyzqYdsZ
 GlhNVPJmOaYwxRRlvFQOZdIwpAANt/SritBFT2Q6XoBOZFXYKGIL0rKzuczCydlRP5
 jjqR1csQiqmNFtLuAyN1E7m3v17abUHCf230875A=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 3C3628B7C9;
 Mon, 13 Jan 2020 18:08:39 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id 8wXE7irLHIRC; Mon, 13 Jan 2020 18:08:39 +0100 (CET)
Received: from po14934vm.idsi0.si.c-s.fr (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id ECB1A8B7BE;
 Mon, 13 Jan 2020 18:08:38 +0100 (CET)
Received: by localhost.localdomain (Postfix, from userid 0)
 id 8DBC464A1D; Mon, 13 Jan 2020 17:08:38 +0000 (UTC)
Message-Id: <cover.1578934751.git.christophe.leroy@c-s.fr>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [RFC PATCH v3 00/12] powerpc: switch VDSO to C implementation.
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>, 
 arnd@arndb.de, tglx@linutronix.de, vincenzo.frascino@arm.com,
 luto@kernel.org
Date: Mon, 13 Jan 2020 17:08:38 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_090846_180906_9473C58B 
X-CRM114-Status: GOOD (  12.33  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This is a third tentative to switch powerpc VDSO to generic C implementation.

This version should work on PPC64 (untested). VDSO32 for PPC64 is
impossible to build and has been de-activated, because the powerpc
ASM header files for C are not prepared to build 32 bits code with CONFIG_PPC64.

powerpc is a bit special for VDSO as well as system calls in the
way that it requires setting CR SO bit which cannot be done in C.
Therefore, entry/exit and fallback need to be performed in ASM.

On a powerpc8xx, with current powerpc/32 ASM VDSO:

gettimeofday:    vdso: 737 nsec/call
clock-getres-realtime:    vdso: 475 nsec/call
clock-gettime-realtime:    vdso: 892 nsec/call

The first patch adds VDSO generic C support without any changes to common code.
Performance is as follows:

gettimeofday:    vdso: 1379 nsec/call
clock-getres-realtime-coarse:    vdso: 984 nsec/call
clock-gettime-realtime-coarse:    vdso: 868 nsec/call
clock-getres-realtime:    vdso: 922 nsec/call
clock-gettime-realtime:    vdso: 1511 nsec/call
clock-getres-monotonic-raw:    vdso: 968 nsec/call
clock-gettime-monotonic-raw:    vdso: 1576 nsec/call

Then a few changes in the common code have allowed performance improvement. At
the end of the series we have:

gettimeofday:    vdso: 899 nsec/call
clock-getres-realtime-coarse:    vdso: 546 nsec/call
clock-gettime-realtime-coarse:    vdso: 615 nsec/call
clock-getres-realtime:    vdso: 545 nsec/call
clock-gettime-realtime:    vdso: 1064 nsec/call
clock-getres-monotonic-raw:    vdso: 546 nsec/call
clock-gettime-monotonic-raw:    vdso: 1125 nsec/call

Christophe Leroy (12):
  powerpc/64: Don't provide time functions in compat VDSO32
  powerpc/vdso: Switch VDSO to generic C implementation.
  lib: vdso: mark __cvdso_clock_getres() as static
  lib: vdso: inline do_hres() and do_coarse()
  lib: vdso: Avoid duplication in __cvdso_clock_getres()
  lib: vdso: __iter_div_u64_rem() is suboptimal for 32 bit time
  powerpc/vdso: simplify __get_datapage()
  lib: vdso: allow arches to provide vdso data pointer
  powerpc/vdso: provide inline alternative to __get_datapage()
  powerpc/vdso: provide vdso data pointer from the ASM caller.
  lib: vdso: split clock verification out of __arch_get_hw_counter()
  powerpc/vdso: provide __arch_is_hw_counter_valid()

 arch/powerpc/Kconfig                         |   2 +
 arch/powerpc/include/asm/vdso/gettimeofday.h | 104 +++++++++++
 arch/powerpc/include/asm/vdso/vsyscall.h     |  25 +++
 arch/powerpc/include/asm/vdso_datapage.h     |  52 +++---
 arch/powerpc/kernel/asm-offsets.c            |  46 +----
 arch/powerpc/kernel/time.c                   |  90 ----------
 arch/powerpc/kernel/vdso.c                   |  58 ++----
 arch/powerpc/kernel/vdso32/Makefile          |  30 +++-
 arch/powerpc/kernel/vdso32/datapage.S        |  10 +-
 arch/powerpc/kernel/vdso32/gettimeofday.S    | 258 ++++-----------------------
 arch/powerpc/kernel/vdso32/vdso32.lds.S      |   9 +-
 arch/powerpc/kernel/vdso32/vgettimeofday.c   |  29 +++
 arch/powerpc/kernel/vdso64/Makefile          |  23 ++-
 arch/powerpc/kernel/vdso64/datapage.S        |  13 +-
 arch/powerpc/kernel/vdso64/gettimeofday.S    | 257 ++++----------------------
 arch/powerpc/kernel/vdso64/vdso64.lds.S      |   7 +-
 arch/powerpc/kernel/vdso64/vgettimeofday.c   |  29 +++
 lib/vdso/gettimeofday.c                      | 130 +++++++++++---
 18 files changed, 457 insertions(+), 715 deletions(-)
 create mode 100644 arch/powerpc/include/asm/vdso/gettimeofday.h
 create mode 100644 arch/powerpc/include/asm/vdso/vsyscall.h
 create mode 100644 arch/powerpc/kernel/vdso32/vgettimeofday.c
 create mode 100644 arch/powerpc/kernel/vdso64/vgettimeofday.c

-- 
2.13.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
