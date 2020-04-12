Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BE21A5BA1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 02:27:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CxIGIZzYRDw8/7HKHdFFpY7UPHSpoRWufU3GAay6IXc=; b=GHG3lNlKmPYH+G
	jW0vHmid66OYmAI1ENnCIDIxcw25yJzuPDItxO4Gc+nD5FUe9J+lKY3AubJM+V4671P4w23Gi81kw
	AgT8zW6RrCdalYaoj8TMaHDuNvBbW+Tp2Ik10jXIChArjJ+1VXs//3ILz4jVkpQkou54B4q0rLuEM
	1zBYJT809EwfmTwyzZ/Z7/t94E/jkFxJrmNKxiP5aTgaehHMAqZ8wS/V9qf/8Q/iOyoaDC2JMAQR/
	RjzxnKDPKbeiUbEuDB68x95Qj1hX1naDPLsbabhdO9i8ci+I26VVwuZfH/PMR1X9zpunG6mCV3oNM
	dTQ+brrKheLVszmqF2Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNQTC-0003eY-8r; Sun, 12 Apr 2020 00:27:30 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNQSx-0003dz-7O
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 00:27:16 +0000
Received: by mail-lf1-x141.google.com with SMTP id w145so3950679lff.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 11 Apr 2020 17:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0rfhuBhilZ5BYkVWnJbdei+KYDMZ0DkELBKZFF32cII=;
 b=Jl3Lsfq+cqPCiONOXserQ7XI+uPHwv+u2R4qIKymkiuxRSCJRRwN1Vd6xBSimEl564
 GLp2KQxzPVc1Zgz13hUc+JTnP96uiytPfStB+jaonDCqh4Ke+fHB/4UCctt4GF64A3Ar
 ZKWQXf/Eso+IAogvZ4dAj90nJZoj6UVMmtQVOp9eQ5M8++sy3hJox6SOiOvUb2lsj/LX
 l7iL5yEDHphDdxch4iSYH8esWu6i5zwXY11KRS2/eAFcRdgmMcjmvh6X9QMcZmpg2oVx
 DZxVJQmwDqySLhZ7pCsB1I82o6cqlKTVsxSkR+D+grUrV8vyQL+141Egkl444kAG/M8J
 TDsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0rfhuBhilZ5BYkVWnJbdei+KYDMZ0DkELBKZFF32cII=;
 b=aXQVViQC51pxz9Fq3JrcT0d9QLjKTxU6uN6SPzTyP6IFWncV19EiCLI7WWeVSzlcJA
 ytPJiN3kG02CDAqO0z77aF+7ZGQ4C64iKdb/afEOuX7xf9VSKO3669mMFmm+tC71J3LS
 RPa66M5hQMQ0AGRlYVotaA+uYCpXoSFQi3JyspwjsttJSYkggU8tS2vb0N9AjpCA3QXz
 /NaoZ9Xa8tU4WMFGce1vWb0pzfcOrg43AdOh69O0bH5Rrn4kUhTC5SR/o9bPj/bAKemZ
 zkZA8o5wcEbfCQp1miuBw1xjfwtCJxdfHV/e7iz914aA7DAVuuFWvIiUqRcyBK8leP2A
 SkOA==
X-Gm-Message-State: AGi0PuZJdcC2mwT+pDdaRX2avajT7SsVUDb9RybBdB5hSsaiaA+CBswI
 PFMhKXNSlMtV8vrufIHcauhYLA==
X-Google-Smtp-Source: APiQypLJmrmAUhVPH2HUEdb0VBRtzsjgolPnlaJ2AnKFIPHcXxH/fmT1LwjO+g2AqZBGvuv0dXuYpQ==
X-Received: by 2002:a05:6512:3189:: with SMTP id
 i9mr6502375lfe.178.1586651233408; 
 Sat, 11 Apr 2020 17:27:13 -0700 (PDT)
Received: from localhost.localdomain
 (c-f3d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.243])
 by smtp.gmail.com with ESMTPSA id x29sm4907345lfn.64.2020.04.11.17.27.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Apr 2020 17:27:12 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Florian Fainelli <f.fainelli@gmail.com>,
 Abbott Liu <liuwenliang@huawei.com>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>, Andrey Ryabinin <aryabinin@virtuozzo.com>
Subject: [PATCH 1/5 v2] ARM: Disable KASan instrumentation for some code
Date: Sun, 12 Apr 2020 02:24:03 +0200
Message-Id: <20200412002407.396790-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200412002407.396790-1-linus.walleij@linaro.org>
References: <20200412002407.396790-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_172715_263065_B517129F 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrey Ryabinin <aryabinin@virtuozzo.com>

Disable instrumentation for arch/arm/boot/compressed/*
since that code is executed before the kernel has even
set up its mappings and definately out of scope for
KASan.

Disable instrumentation of arch/arm/vdso/* because that code
is not linked with the kernel image, so the KASan management
code would fail to link.

Disable instrumentation of arch/arm/mm/physaddr.c. See commit
ec6d06efb0ba ("arm64: Add support for CONFIG_DEBUG_VIRTUAL")
for more details.

Disable kasan check in the function unwind_pop_register because
it does not matter that kasan checks failed when unwind_pop_register()
reads the stack memory of a task.

Reported-by: Florian Fainelli <f.fainelli@gmail.com>
Reported-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Abbott Liu <liuwenliang@huawei.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- Removed the KVM instrumentaton disablement since KVM
  on ARM32 is gone.
---
 arch/arm/boot/compressed/Makefile | 1 +
 arch/arm/kernel/unwind.c          | 6 +++++-
 arch/arm/mm/Makefile              | 1 +
 arch/arm/vdso/Makefile            | 2 ++
 4 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
index 9c11e7490292..abd6f3d5c2ba 100644
--- a/arch/arm/boot/compressed/Makefile
+++ b/arch/arm/boot/compressed/Makefile
@@ -24,6 +24,7 @@ OBJS		+= hyp-stub.o
 endif
 
 GCOV_PROFILE		:= n
+KASAN_SANITIZE		:= n
 
 # Prevents link failures: __sanitizer_cov_trace_pc() is not linked in.
 KCOV_INSTRUMENT		:= n
diff --git a/arch/arm/kernel/unwind.c b/arch/arm/kernel/unwind.c
index 11a964fd66f4..739a77f39a8f 100644
--- a/arch/arm/kernel/unwind.c
+++ b/arch/arm/kernel/unwind.c
@@ -236,7 +236,11 @@ static int unwind_pop_register(struct unwind_ctrl_block *ctrl,
 		if (*vsp >= (unsigned long *)ctrl->sp_high)
 			return -URC_FAILURE;
 
-	ctrl->vrs[reg] = *(*vsp)++;
+	/* Use READ_ONCE_NOCHECK here to avoid this memory access
+	 * from being tracked by KASAN.
+	 */
+	ctrl->vrs[reg] = READ_ONCE_NOCHECK(*(*vsp));
+	(*vsp)++;
 	return URC_OK;
 }
 
diff --git a/arch/arm/mm/Makefile b/arch/arm/mm/Makefile
index 7cb1699fbfc4..432302911d6e 100644
--- a/arch/arm/mm/Makefile
+++ b/arch/arm/mm/Makefile
@@ -16,6 +16,7 @@ endif
 obj-$(CONFIG_ARM_PTDUMP_CORE)	+= dump.o
 obj-$(CONFIG_ARM_PTDUMP_DEBUGFS)	+= ptdump_debugfs.o
 obj-$(CONFIG_MODULES)		+= proc-syms.o
+KASAN_SANITIZE_physaddr.o	:= n
 obj-$(CONFIG_DEBUG_VIRTUAL)	+= physaddr.o
 
 obj-$(CONFIG_ALIGNMENT_TRAP)	+= alignment.o
diff --git a/arch/arm/vdso/Makefile b/arch/arm/vdso/Makefile
index d3c9f03e7e79..71d18d59bd35 100644
--- a/arch/arm/vdso/Makefile
+++ b/arch/arm/vdso/Makefile
@@ -42,6 +42,8 @@ GCOV_PROFILE := n
 # Prevents link failures: __sanitizer_cov_trace_pc() is not linked in.
 KCOV_INSTRUMENT := n
 
+KASAN_SANITIZE := n
+
 # Force dependency
 $(obj)/vdso.o : $(obj)/vdso.so
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
