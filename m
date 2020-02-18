Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEBE162B08
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 17:49:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8gHvMrNoXeG8si+UPPToAu0n5ZwXZckez3A1Ja13Yt4=; b=YKdAP9s9K75yiN
	IK1/5U0j35/SdwfmAN6YVRSSqGTn23F9bR1HJmHqq4WRbo3vlAMkR86aF6096O0Ixdo4fRCxb1+Pk
	mB3M+OGO082XreTmkQeAKodgR3Z1yz9/YEpREFWYtPXfBti/LBi8SQkt5fi3OoF5BH8IlWiCI9++X
	iu3krvAUtC15MiemJjbusc7SH6/Cg8upySs1+fUJr+mk0QnDhn0psjJcsAWo7G9+sD9oGhpKZ1ps9
	DFI9qJuZcOZYZCH+zzV8ydyUlCHw+lgCYavxQBjjGAXCqnhLaNZ6w3iGT9uMa2352Tuh6+BztwQIU
	Yf4SO9hIKV4fOHMyNTpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4641-00088a-KK; Tue, 18 Feb 2020 16:49:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j463r-000883-Pr
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 16:49:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4625D30E;
 Tue, 18 Feb 2020 08:49:25 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7AFD23F703;
 Tue, 18 Feb 2020 08:49:24 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] arm64: lse: Fix LSE atomics with LLVM
Date: Tue, 18 Feb 2020 16:49:06 +0000
Message-Id: <20200218164906.35685-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_084927_885311_11262B45 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: amit.kachhap@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The introduction of the commit e0d5896bd356cd broke the compilation of
the kernel when the selected compiler is clang and it is used in
combination with "-no-integrated-as".
This happens because __LSE_PREAMBLE is defined as ".arch armv8-a+lse"
and this overrides the version of the architecture passed via -march
command line to the gas compiler.

The issue was noticed during the development of pauth on arm64 and an
error example is reported below:

$ aarch64-none-linux-gnu-as -EL -I ./arch/arm64/include
                                -I ./arch/arm64/include/generated
                                -I ./include -I ./include
                                -I ./arch/arm64/include/uapi
                                -I ./arch/arm64/include/generated/uapi
                                -I ./include/uapi -I ./include/generated/uapi
                                -I ./init -I ./init
                                -march=armv8.3-a -o init/do_mounts.o
                                /tmp/do_mounts-d7992a.s
/tmp/do_mounts-d7992a.s: Assembler messages:
/tmp/do_mounts-d7992a.s:1959: Error: selected processor does not support `autiasp'
/tmp/do_mounts-d7992a.s:2021: Error: selected processor does not support `paciasp'
/tmp/do_mounts-d7992a.s:2157: Error: selected processor does not support `autiasp'
/tmp/do_mounts-d7992a.s:2175: Error: selected processor does not support `paciasp'
/tmp/do_mounts-d7992a.s:2494: Error: selected processor does not support `autiasp'

Fix the issue replacing ".arch armv8-a+lse" with ".arch_extension lse" that does
not override the command line parameter.

Fixes: e0d5896bd356cd ("arm64: lse: fix LSE atomics with LLVM's integrated assembler")
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Reported-by: Amit Kachhap <Amit.Kachhap@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/include/asm/lse.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
index d429f7701c36..5d10051c3e62 100644
--- a/arch/arm64/include/asm/lse.h
+++ b/arch/arm64/include/asm/lse.h
@@ -6,7 +6,7 @@
 
 #ifdef CONFIG_ARM64_LSE_ATOMICS
 
-#define __LSE_PREAMBLE	".arch armv8-a+lse\n"
+#define __LSE_PREAMBLE	".arch_extension lse\n"
 
 #include <linux/compiler_types.h>
 #include <linux/export.h>
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
