Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06894188421
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 13:28:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4AeIdqkrLbJoDhq8Zjt/f5QK8PwC0S54ruWdyOQc24c=; b=aB232VKVJ1hQGp
	0F0vhsIwRahHAwwaNGjx4a93hiGHIVS5motOfyQo41TDzLUOljXgMQvj+uQAspn5aEx53fqq3agV8
	swbsZ4T6NnzXUXbrueI2hv6NEald8n2DBy1tc9ikJ1LBCy7c/zsCK9QEI2E8rDvwPlZyDZwny9I4q
	eM7ubvlfc4IfEquhgjn8P18hvRH7EAYrTLlpkDB8bBH/aJnwYjjgtZj0iUPthh2N+nFDEKO2PJ8C3
	I2djavwt/V8S+D976KtNFfmj4U2lTWzODnw5E8B3idd/JBT13cecl1YLtdAa5mpxSPQxwnSqcpCpw
	Ghm4k2JT7q6d9uXHcCdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEBKU-0003QX-LA; Tue, 17 Mar 2020 12:28:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEBGA-0006Ic-CS
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 12:23:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 71C0C101E;
 Tue, 17 Mar 2020 05:23:49 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6157C3F534;
 Tue, 17 Mar 2020 05:23:46 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 linux-mips@vger.kernel.org, x86@kernel.org
Subject: [PATCH v4 18/26] arm64: vdso32: Replace TASK_SIZE_32 check in
 vgettimeofday
Date: Tue, 17 Mar 2020 12:22:12 +0000
Message-Id: <20200317122220.30393-19-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200317122220.30393-1-vincenzo.frascino@arm.com>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_052350_530541_2C1BFB71 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, Andrei Vagin <avagin@openvz.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For ABI compatibility with arm32, the compat vDSO layer on arm64 needs
to return -EINVAL when UINTPTR_MAX is passed as argument to the
clock_get* functions.

Replace TASK_SIZE_32 with a more semantically correct formula that checks
for wrapping around 0.

Note: This will allow to not define TASK_SIZE_32 for the vdso headers in a
future patch that will introduce asm/vdso/processor.h on arm64.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/kernel/vdso32/vgettimeofday.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/vdso32/vgettimeofday.c b/arch/arm64/kernel/vdso32/vgettimeofday.c
index 54fc1c2ce93f..91138077b073 100644
--- a/arch/arm64/kernel/vdso32/vgettimeofday.c
+++ b/arch/arm64/kernel/vdso32/vgettimeofday.c
@@ -8,11 +8,14 @@
 #include <linux/time.h>
 #include <linux/types.h>
 
+#define VALID_CLOCK_ID(x) \
+	((x >= 0) && (x < VDSO_BASES))
+
 int __vdso_clock_gettime(clockid_t clock,
 			 struct old_timespec32 *ts)
 {
 	/* The checks below are required for ABI consistency with arm */
-	if ((u32)ts >= TASK_SIZE_32)
+	if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
 		return -EFAULT;
 
 	return __cvdso_clock_gettime32(clock, ts);
@@ -22,7 +25,7 @@ int __vdso_clock_gettime64(clockid_t clock,
 			   struct __kernel_timespec *ts)
 {
 	/* The checks below are required for ABI consistency with arm */
-	if ((u32)ts >= TASK_SIZE_32)
+	if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
 		return -EFAULT;
 
 	return __cvdso_clock_gettime(clock, ts);
@@ -38,9 +41,12 @@ int __vdso_clock_getres(clockid_t clock_id,
 			struct old_timespec32 *res)
 {
 	/* The checks below are required for ABI consistency with arm */
-	if ((u32)res >= TASK_SIZE_32)
+	if ((u32)res > UINTPTR_MAX - sizeof(res) + 1)
 		return -EFAULT;
 
+	if (!VALID_CLOCK_ID(clock_id) && res == NULL)
+		return -EINVAL;
+
 	return __cvdso_clock_getres_time32(clock_id, res);
 }
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
