Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EAC646BA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 15:05:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+zImXNk5Q3SwBdskQDGN7p5Ox3/uE93JI6V68eHLHp0=; b=bPkZQ8ppOwF9ni
	fKN0ns1G/AbBYjjwuWjmQUsA+5CeeXcGMmOFBcZ6PWBq9KMKF56584sedlpBYqcwik4VQE/KohEdM
	ERe1Fv3zp6zVbXxT/vYf/fXIUHw0diOheFzctlCDBxzL0Ii09YgePegPygplDmNSLHu9NoP7htFJU
	Asspx9anpfUGJ5AyLglVaIb/VZhEE2YIanVlzc18ORfbN4DrgxieZ5ZwZb5KU9iSpQ6/h3Cm/McQU
	Ze1wd4eReGHoHpf0hyD85n+Wu4m9zP+nsI+voa2CMRDzyW9HhrYJ4hKzfAJu/cdmg8bQOQHetjbQM
	nbCLQRtLZYWYuEH2fRrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlCHh-0003ct-NJ; Wed, 10 Jul 2019 13:05:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlCHW-0003cC-5u
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 13:05:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5893A2B;
 Wed, 10 Jul 2019 06:05:08 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 846A43F738;
 Wed, 10 Jul 2019 06:05:05 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-kselftest@vger.kernel.org
Subject: [PATCH] arm64: vdso: Fix ABI regression in compat vdso
Date: Wed, 10 Jul 2019 14:04:52 +0100
Message-Id: <20190710130452.44111-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190621095252.32307-11-vincenzo.frascino@arm.com>
References: <20190621095252.32307-11-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_060510_271166_9FB13598 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: shuah@kernel.org, andre.przywara@arm.com, arnd@arndb.de,
 huw@codeweavers.com, catalin.marinas@arm.com, daniel.lezcano@linaro.org,
 will.deacon@arm.com, linux@armlinux.org.uk, ralf@linux-mips.org,
 salyzyn@android.com, luto@kernel.org, paul.burton@mips.com,
 john.stultz@linaro.org, 0x7f454c46@gmail.com, linux@rasmusvillemoes.dk,
 tglx@linutronix.de, sthotton@marvell.com, pcc@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Prior to the introduction of Unified vDSO support and compat layer for
vDSO on arm64, AT_SYSINFO_EHDR was not defined for compat tasks.
In the current implementation, AT_SYSINFO_EHDR is defined even if the
compat vdso layer is not built and this causes a regression in the
expected behavior of the ABI.

Restore the ABI behavior making sure that AT_SYSINFO_EHDR for compat
tasks is defined only when CONFIG_GENERIC_COMPAT_VDSO and
CONFIG_COMPAT_VDSO are enabled.

Reported-by: John Stultz <john.stultz@linaro.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/include/asm/elf.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/elf.h b/arch/arm64/include/asm/elf.h
index 3c7037c6ba9b..b7992bb9d414 100644
--- a/arch/arm64/include/asm/elf.h
+++ b/arch/arm64/include/asm/elf.h
@@ -202,7 +202,7 @@ typedef compat_elf_greg_t		compat_elf_gregset_t[COMPAT_ELF_NGREG];
 ({									\
 	set_thread_flag(TIF_32BIT);					\
  })
-#ifdef CONFIG_GENERIC_COMPAT_VDSO
+#if defined(CONFIG_COMPAT_VDSO) && defined(CONFIG_GENERIC_COMPAT_VDSO)
 #define COMPAT_ARCH_DLINFO						\
 do {									\
 	/*								\
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
