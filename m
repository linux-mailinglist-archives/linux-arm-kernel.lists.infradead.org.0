Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6781483D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 15:23:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XiJFN0HFgJoIkbrnWYMTJvJz5RSg1fo9qYwF6tn3j2I=; b=HyMgCVOENgj2gO
	wglG1fdLxx0/D6xqae+OVAOQcHpu9qp/dk0bAOPoGSxfv97EfDw6bijfqjtZ7cwakNbtYhEIW+4Zv
	IE79vXVfcRXdztQVYc4+zPCD9kt7cT3KImrKaefPj0pHE+5uywax0h1gOPQRSCCYRBm7ufaJExMQZ
	2k/7JILINeVHkl9Bm0jxzqwfSAX4TNGWEZMseBDMs8ABy0CX2IEPOnd6TB1YLuVwkGY+CCHVCScJl
	8UgYWKtUde7p1EH8RpqtE8pfvPqd5zAISIHfGHQTIcNNIwExUbyj2mNyhqWYuwmdE1nGp7oBw9IXu
	6yJAryy8j9ZDvmpEz31Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrbf-0005PL-Ia; Mon, 17 Jun 2019 13:23:31 +0000
Received: from smtp3-g21.free.fr ([212.27.42.3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrbU-0005IN-46
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 13:23:21 +0000
Received: from anisse-station.iliad.local (unknown [213.36.7.13])
 by smtp3-g21.free.fr (Postfix) with ESMTPS id CDE8713F85F;
 Mon, 17 Jun 2019 15:22:49 +0200 (CEST)
From: Anisse Astier <aastier@freebox.fr>
To: Will Deacon <will.deacon@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/2] arm64/sve: <uapi/asm/ptrace.h> should not depend on
 <uapi/linux/prctl.h>
Date: Mon, 17 Jun 2019 15:22:22 +0200
Message-Id: <20190617132222.32182-2-aastier@freebox.fr>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190617132222.32182-1-aastier@freebox.fr>
References: <20190617084545.GA38959@anisse-station>
 <20190617132222.32182-1-aastier@freebox.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_062320_307773_266BE270 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.27.42.3 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Sasha Levin <sashal@kernel.org>,
 Anisse Astier <aastier@freebox.fr>, Catalin Marinas <catalin.marinas@arm.com>,
 Rich Felker <dalias@aerifal.cx>, linux-kernel@vger.kernel.org,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 "Dmitry V . Levin" <ldv@altlinux.org>, Ricardo Salveti <ricardo@foundries.io>,
 Richard Henderson <richard.henderson@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Otherwise this will create userspace build issues for any program
(strace, qemu) that includes both <sys/prctl.h> (with musl libc) and
<linux/ptrace.h> (which then includes <asm/ptrace.h>), like this:

	error: redefinition of 'struct prctl_mm_map'
	 struct prctl_mm_map {

See https://github.com/foundriesio/meta-lmp/commit/6d4a106e191b5d79c41b9ac78fd321316d3013c0
for a public example of people working around this issue.

Copying the defines is a bit imperfect here, but better than creating a
whole other header for just two defines that would never change, as part
of the kernel ABI.

This patch depends on patch "arm64: ssbd: explicitly depend on
<linux/prctl.h>" for kernel >= 4.18

Fixes: 43d4da2c45b2 ("arm64/sve: ptrace and ELF coredump support")
Cc: stable@vger.kernel.org
Signed-off-by: Anisse Astier <aastier@freebox.fr>
---
 arch/arm64/include/uapi/asm/ptrace.h | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/include/uapi/asm/ptrace.h b/arch/arm64/include/uapi/asm/ptrace.h
index 97c53203150b..e932284993d4 100644
--- a/arch/arm64/include/uapi/asm/ptrace.h
+++ b/arch/arm64/include/uapi/asm/ptrace.h
@@ -65,8 +65,6 @@
 
 #ifndef __ASSEMBLY__
 
-#include <linux/prctl.h>
-
 /*
  * User structures for general purpose, floating point and debug registers.
  */
@@ -113,10 +111,10 @@ struct user_sve_header {
 
 /*
  * Common SVE_PT_* flags:
- * These must be kept in sync with prctl interface in <linux/ptrace.h>
+ * These must be kept in sync with prctl interface in <linux/prctl.h>
  */
-#define SVE_PT_VL_INHERIT		(PR_SVE_VL_INHERIT >> 16)
-#define SVE_PT_VL_ONEXEC		(PR_SVE_SET_VL_ONEXEC >> 16)
+#define SVE_PT_VL_INHERIT		((1 << 17) /* PR_SVE_VL_INHERIT */ >> 16)
+#define SVE_PT_VL_ONEXEC		((1 << 18) /* PR_SVE_SET_VL_ONEXEC */ >> 16)
 
 
 /*
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
