Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FE31C8B4A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 14:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v71CVjQ4Jyj/B7uUFLfTEgjh5alSV5F9evw9Blg7MIo=; b=NmX1Zo8cZemtMB
	qqtMmOTtIWVheJtVK7si81GT1a5QD6cuZWrd/Z5Uvo7V7pMxMRKYY/YJNcHIFRzmROS0gdLzOWCBj
	7uUfMCyIrNdO73UHm6e/9PxLv6mPqybg41W522V4M9HenC3u5I8lNvndJcTLH5VKwFMg375xPGFiF
	xhPyOT726SdUYpLu1KwQavy7vR3aMWdznwwawJFHIqoceXG7SdPY8pKr9wnVUzxpTpchM1nOme3qY
	EosIcPMftJIfY/j1/iKSLeTgH2JWsRQtggd5j9sLzi8njiy03s4LCxD3L6lH6QVhvM1bqOMz+UGii
	JXOJCjKpIfAYPZc60gTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWfwf-0003sD-A1; Thu, 07 May 2020 12:48:09 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWfwO-0003r6-I3
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 12:47:55 +0000
Received: by mail-lf1-x141.google.com with SMTP id h26so4364698lfg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 05:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OFzLjGWJZUchbaZBa5lRk73Fn2jLSts6/MNQ/Gs4VTs=;
 b=a22GdmKBqc+5ptk049hmaGN51vA0PLwaTwz7t3pYsA+uUWVJvk90vmzagbo9MJ2erO
 qpwhOVdXLoGuqBam8EwaDEcSGo064GSu7zel3p/SuEVfr5ks5cqsnNH6/pzbjc+A62lA
 AddXgSKk0pffWl0jKGkz+o91K4oIo86yETCGYyNbvrB3yFCnX8R59Mxffw9SGubKPTgh
 u4pTBDWPkas8DJWsxGYjMzPk5+2umRRX2tbmfcegnvVH6QqZwnsNOLUVch5eJg7m7tdV
 HGeiacKMm4Ily9FmAx4st56hWv0WA195X/RdrjczULN6egedG+2LROl/CgBbx3OWZngY
 vRDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OFzLjGWJZUchbaZBa5lRk73Fn2jLSts6/MNQ/Gs4VTs=;
 b=HDcqrO3Q6FyNtrg9lvxKw3nyIX1vhDVF6t1jdgS5viToSz503abYG0FLg/5+XBq1iK
 d79KpfRYB/uRB6hSDHvyGDuREAtfTOtAgvxQyd3Iy5wHWsQXYAm9CUNoygVXlOBKW6k2
 yoNpEYCtBmQOBDxQx/+P9LfBBb5dPRjt/DhTIR7L+42yiKv7iktLNOwSZU4yVLbP8/U3
 rdrl4hjt5b2RY+PPT6Rg8XpM7EUnkDenK6hr6aGt6ka1W1d5Z+K33oQP18VDkpR7bUok
 oKm0OWl0347dedEP2WOvIw50Bnw0Wg8h67Y+D6bHpvYcjuZqoyvUG1bMhH8WQq8Ax8Ng
 sZeg==
X-Gm-Message-State: AGi0PubZL38LzOxTm3Y6aQj/5XrLNDTcgZLQMX2e16PVsMewp2eA4Zvz
 u00woPsQLv+yzpFthZOXxuXPLA==
X-Google-Smtp-Source: APiQypJZnquex9IGiWOJpZxIB69gaTFVmbQ6TK5DNd63nQMp6IOttHQYCRjVNVBQWmKDLUP8TtgDaQ==
X-Received: by 2002:a19:644f:: with SMTP id b15mr8825581lfj.28.1588855670390; 
 Thu, 07 May 2020 05:47:50 -0700 (PDT)
Received: from localhost.localdomain
 (c-f3d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.243])
 by smtp.gmail.com with ESMTPSA id b4sm3730126lfo.33.2020.05.07.05.47.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 05:47:49 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Florian Fainelli <f.fainelli@gmail.com>,
 Abbott Liu <liuwenliang@huawei.com>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>, Andrey Ryabinin <aryabinin@virtuozzo.com>
Subject: [PATCH 1/5 v8] ARM: Disable KASan instrumentation for some code
Date: Thu,  7 May 2020 14:45:18 +0200
Message-Id: <20200507124522.171323-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200507124522.171323-1-linus.walleij@linaro.org>
References: <20200507124522.171323-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_054752_606077_88467804 
X-CRM114-Status: GOOD (  17.92  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Marc Zyngier <marc.zyngier@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, kasan-dev@googlegroups.com,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Dmitry Vyukov <dvyukov@google.com>
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

Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
Cc: Alexander Potapenko <glider@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>
Cc: kasan-dev@googlegroups.com
Reported-by: Florian Fainelli <f.fainelli@gmail.com>
Reported-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Abbott Liu <liuwenliang@huawei.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v7->v8:
- Do not sanitize arch/arm/mm/mmu.c.
  Apart from being intuitively correct, it turns out that KASan
  will insert a __asan_load4() into the set_pte_at() function
  in mmu.c and this is something that KASan calls in the early
  initialization, to set up the shadow memory. Naturally,
  __asan_load4() cannot be called before the shadow memory is
  set up so we need to exclude mmu.c from sanitization.
ChangeLog v6->v7:
- Removed the KVM instrumentaton disablement since KVM
  on ARM32 is gone.
---
 arch/arm/boot/compressed/Makefile | 1 +
 arch/arm/kernel/unwind.c          | 6 +++++-
 arch/arm/mm/Makefile              | 2 ++
 arch/arm/vdso/Makefile            | 2 ++
 4 files changed, 10 insertions(+), 1 deletion(-)

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
index 7cb1699fbfc4..99699c32d8a5 100644
--- a/arch/arm/mm/Makefile
+++ b/arch/arm/mm/Makefile
@@ -7,6 +7,7 @@ obj-y				:= extable.o fault.o init.o iomap.o
 obj-y				+= dma-mapping$(MMUEXT).o
 obj-$(CONFIG_MMU)		+= fault-armv.o flush.o idmap.o ioremap.o \
 				   mmap.o pgd.o mmu.o pageattr.o
+KASAN_SANITIZE_mmu.o		:= n
 
 ifneq ($(CONFIG_MMU),y)
 obj-y				+= nommu.o
@@ -16,6 +17,7 @@ endif
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
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
