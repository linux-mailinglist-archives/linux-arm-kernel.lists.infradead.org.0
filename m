Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3E5CFDEA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:41:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8bC2XooyI4aMcfZVyim4ivXCp8gl8jttO5TAjtlmzP0=; b=Uh5v3nIFww5cXV
	RRk0gVqNgQyxEAs9o6hjp7eQPs1NjyA3bnHG8pLWaQwSoT7+nromGWdd2f2J1vtRfE9cPjwjj7+iN
	lXBbPJc3wlGTSAJM+02x/ajXH7F6ZB3k0IK6X3TtjIrwP14txdKyWxiMPPhsCW1UZ6T7MtJNxYgJy
	uAvf+6UuFpGVkPK3QDzOIl+JxsnK7EdhxCAL0Pvw7/ZG1pFop+k8WxrYBcbFlPUdz950bMHWiwVXe
	mtaWvNIl+4bZhsHmqRhU5om+blyMFSxtvp9Tkmw2Q62ef7f4rL1XwUR3cVI7sa642+g/i+oXFBAds
	YJ86cHYiEweGt0NC6lgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrcW-00087T-CA; Tue, 08 Oct 2019 15:41:52 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHrax-0006qw-QO
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:40:17 +0000
Received: by mail-wm1-x341.google.com with SMTP id r19so3702112wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 08:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TiS7GtjKACCq/gPzWLfsIVgr7mVCgq9QJv62y5ATfHE=;
 b=Rb6AtPIls/TUR8VV/nV1wTxl6lCS5Fv2dTAroWe5wdy74pXlVUkWyf2Ekb5xglXmCZ
 DsjQmN5bN6lBT3fVVnkIub1yJzxdDuFSB9/YVwlC88yg0CaVVgglV8BamvtwpfIpihsS
 MC6a4m68Brp9JNJpDVD17ZJV9L2CGu2AR0UYdPRwJEu2WE9Z3p5qQtfBSP8ClH8BIGsq
 mfsiTux20ay0M4M+Sq/pM48DeWxZLByJt4KNHf0RfQh0V6e0w4Hrjw7BMFTgifUze7re
 LNugtIOcXV6LFZ5MiLzUTknpucRX6cJqUTw/8f9bDAYmpo/zpu0jQEjXAFpr/+r3vJ4e
 9xLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TiS7GtjKACCq/gPzWLfsIVgr7mVCgq9QJv62y5ATfHE=;
 b=dMjh5ibFoOoxaW1VmkZefkfSqOJ/nxpLNZCsfDIN4c+hBsGndb+zQEffFDhtYOxA/t
 GMTXU/EQVTTSWteckJjkzfiCbcSsMBgj94gpnF3+kyYAkH4UlTHE8a5+xbTQILHJYBhp
 f32Sax+CdGDYGZ0RmAAYhPCo1/sBTSZ5uhLgjnfAPrDzKc6G/Sv2754a/tFb5LfOd+tl
 RDI3QLzph/WT1rRxZ629evVTAOo1/Qy29IvS40QvH+wHqT06iwUMufCMnJHHOMDGC9jR
 g+Pt3nj6rvt0UkXhzHCrHb/X3mjfLUlJ0FRIVZpPsrB8UX/JMgFKPQUHcS9Bw3gB7mz3
 vm5g==
X-Gm-Message-State: APjAAAWuA6wRKyxpgKb1LJpFAYU7mqGmW60N2dor8isci3A/iOvNqRrT
 IoI3/M40h7zhXzR6CfXusaNYUG/nPvmeug==
X-Google-Smtp-Source: APXvYqy2hKOKY5Mhzu/+EyhO5AYyQJ8z8wLw4YZ4/w/hl3v7wiDedWsPPgJojXbtLANsvZYEQsOJ+Q==
X-Received: by 2002:a1c:f718:: with SMTP id v24mr4090040wmh.82.1570549214361; 
 Tue, 08 Oct 2019 08:40:14 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id x16sm16784723wrl.32.2019.10.08.08.40.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 08:40:13 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.19 05/16] arm64: fix SSBS sanitization
Date: Tue,  8 Oct 2019 17:39:19 +0200
Message-Id: <20191008153930.15386-6-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
References: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_084015_902321_A3A302F0 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mark Rutland <mark.rutland@arm.com>

[ Upstream commit f54dada8274643e3ff4436df0ea124aeedc43cae ]

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
