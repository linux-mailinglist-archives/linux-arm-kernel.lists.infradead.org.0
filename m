Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77356CB9FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:09:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XvMmij2/niW4PAuKJuDPg3KNyj1QdEx5Z81SHTXAEE4=; b=rlfUs/cz0VK51K
	OJ9DKynEf9I9Er+80VcSZllFXAvmjeYsjM8CMMyrgO3hkZ42qsN97gGVMqWwDDrJtBXpuDne1YBtY
	LZtz/57O8ORYrh0KZ/yDSwZXaHFJYNREZVXqu4qYD3opAySgLXkIiFXl2oDf6mFxFRnjRbELgck7G
	9A1TtCLNJwftnJvvVmgZmLkiLXkoo+EZnLU8DWmIa8txrVFfVajLiuYvrBagQ5ky3zU/JYcTvOxK4
	UpIpIKCjD3qvDF2EUoI+eZcLsTt1jJo7CRXCzE+4wcLuiCVFcTwxZJUqYR83uCIDTS4O3RwCSDqvJ
	vQ+tL8L3XOaiJNSLnBRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMP5-0007Lw-9y; Fri, 04 Oct 2019 12:09:47 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMKC-0001oP-Io
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:04:47 +0000
Received: by mail-wr1-x442.google.com with SMTP id p14so5921931wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 05:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Tutiye7X8Cf1Dsey2kXkk0MPW9x++NY7Pa/cCEc+R2U=;
 b=kJ88dIsHxnuH8Q61H3BW3PjMFwV7iFuHmhe2qH/yjYZBXu0brNN/Pm+bq4lxgSgSNr
 8zNwjv5qAjbDQZ9kFI1yZt2Gv6UqfhS0uGmO+I/qcQiLXXnQzxePzIxKi+V/Eihl3eI2
 t5akX5+hD+pdLw9a7JaceaNlUytTaU0t/BwlNY4y4NHn4ovMO9gQ5B9l8Mk4VsG7AsNq
 9nxBsQsjD0NMXAFmaExPAiJwhUubobkCSmGF2FkJShP12gotKXEBDeq18sNXdp907KIk
 yC/mtllkoom72Po7zG0xEsE6mxKOr7UCyU+Rfi5fDSyenQ9A1MOgiUY4RxQAfRSPpG/s
 i+gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Tutiye7X8Cf1Dsey2kXkk0MPW9x++NY7Pa/cCEc+R2U=;
 b=BnaDCK1mUROhi2AWu/YK23Ku2BkrVibGKpUoe6enhxbqlem/erS+ycdWl0WocLAKi5
 mbPRD7AyLXM3jvXOp9UkImalnN0VjBLI4EsANjI8MKy+JVYiE2bkzNkef4mjknWb1+Mi
 B3mxOzE3WyoaJa+5IgbXHEjoqD5Zc3lGs3sgV1QQtknikBC9ytueKt4YizOWDh87d2iz
 2EFxrvAAxRyTmFDA3tbRP6dKbH7WVg53zFt6c+2SQtL8UHZf8ftmfxSCqCd+o3DqiVr8
 jQLbpVxeeE4E0Pb7Fpy3v1q+aVTyvDs6Xgoq3KQScXgjoqiUNIKD4Hq2o/U1yjVEURzA
 ad8Q==
X-Gm-Message-State: APjAAAWtehuIB0IzeWfqwhPZsCVCKdprM2Tw8oALNcEFef+auZzc87G/
 7f0s3WgzEXBH2XNGobY1/9lLI6qjXrbQPfdI
X-Google-Smtp-Source: APXvYqy9TWfcjsqfoHxRHbb0uFugSsWlgsppGr4psiPl/l9O1csbM64b63nKPP/qq8/9+ENjflrzIQ==
X-Received: by 2002:a5d:4dd2:: with SMTP id f18mr11975835wru.20.1570190682784; 
 Fri, 04 Oct 2019 05:04:42 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:b51e:3d9d:ec16:def5])
 by smtp.gmail.com with ESMTPSA id f8sm5019628wmb.37.2019.10.04.05.04.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 04 Oct 2019 05:04:42 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC/RFT PATCH 05/16] arm64: fix SSBS sanitization
Date: Fri,  4 Oct 2019 14:04:19 +0200
Message-Id: <20191004120430.11929-6-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
References: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050444_712433_2D13EDD6 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Jeremy Linton <jeremy.linton@arm.com>, Andre Przywara <andre.przywara@arm.com>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mark Rutland <mark.rutland@arm.com>

In valid_user_regs() we treat SSBS as a RES0 bit, and consequently it is
unexpectedly cleared when we restore a sigframe or fiddle with GPRs via
ptrace.

This patch fixes valid_user_regs() to account for this, updating the
function to refer to the latest ARM ARM (ARM DDI 0487D.a). For AArch32
tasks, SSBS appears in bit 23 of SPSR_EL1, matching its position in the
AArch32-native PSR format, and we don't need to translate it as we have
to for DIT.

There are no other bit assignments that we need to account for today.
As the recent documentation describes the DIT bit, we can drop our
comment regarding DIT.

While removing SSBS from the RES0 masks, existing inconsistent
whitespace is corrected.

Fixes: d71be2b6c0e19180 ("arm64: cpufeature: Detect SSBS and advertise to userspace")
Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
(cherry picked from commit f54dada8274643e3ff4436df0ea124aeedc43cae)
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm64/kernel/ptrace.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
index 6219486fa25f..0211c3c7533b 100644
--- a/arch/arm64/kernel/ptrace.c
+++ b/arch/arm64/kernel/ptrace.c
@@ -1666,19 +1666,20 @@ void syscall_trace_exit(struct pt_regs *regs)
 }
 
 /*
- * SPSR_ELx bits which are always architecturally RES0 per ARM DDI 0487C.a
- * We also take into account DIT (bit 24), which is not yet documented, and
- * treat PAN and UAO as RES0 bits, as they are meaningless at EL0, and may be
- * allocated an EL0 meaning in future.
+ * SPSR_ELx bits which are always architecturally RES0 per ARM DDI 0487D.a.
+ * We permit userspace to set SSBS (AArch64 bit 12, AArch32 bit 23) which is
+ * not described in ARM DDI 0487D.a.
+ * We treat PAN and UAO as RES0 bits, as they are meaningless at EL0, and may
+ * be allocated an EL0 meaning in future.
  * Userspace cannot use these until they have an architectural meaning.
  * Note that this follows the SPSR_ELx format, not the AArch32 PSR format.
  * We also reserve IL for the kernel; SS is handled dynamically.
  */
 #define SPSR_EL1_AARCH64_RES0_BITS \
-	(GENMASK_ULL(63,32) | GENMASK_ULL(27, 25) | GENMASK_ULL(23, 22) | \
-	 GENMASK_ULL(20, 10) | GENMASK_ULL(5, 5))
+	(GENMASK_ULL(63, 32) | GENMASK_ULL(27, 25) | GENMASK_ULL(23, 22) | \
+	 GENMASK_ULL(20, 13) | GENMASK_ULL(11, 10) | GENMASK_ULL(5, 5))
 #define SPSR_EL1_AARCH32_RES0_BITS \
-	(GENMASK_ULL(63,32) | GENMASK_ULL(23, 22) | GENMASK_ULL(20,20))
+	(GENMASK_ULL(63, 32) | GENMASK_ULL(22, 22) | GENMASK_ULL(20, 20))
 
 static int valid_compat_regs(struct user_pt_regs *regs)
 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
