Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 531A51D4CE3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:43:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SIG7YsRJ1EroOs2YiAewSOJuvzV1Jnzuq6JHAIaBvME=; b=rsNaV3T7vasT27
	GQ3X6dOsdbYB340C4/LNq4zpiCxYFYkHzWP0homcatpFLzG/f2YAGlCAoAN6VJmgWUYZAMPfNltH9
	5GucFzWRth+MSKvf8Q0fW/ZVJtzp9OeiqoSoESWw/3YEwfSQFbZ6o0sxkPsPSobNKYBvquYiga5O6
	QQAmYGjnyveT+NdsFS6r1CgRBPMhorPl0N4BPdQ6JMylutUhDkRBJCHS61+G3LkWDj9s6Ux0a49e1
	mbuUrtQzJgmG271WOU/zMytmEgS7ea3BBhdFHmq1qFA9Dy9MhEkbkFuLWxi5nOHTq/+DJDdb0gZGm
	lAWjxXKmX5lhe2iSRRlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZYjs-0001WS-IY; Fri, 15 May 2020 11:42:52 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZYhz-0008HL-6F
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 11:40:57 +0000
Received: by mail-lj1-x243.google.com with SMTP id e25so1887936ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 04:40:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KLuWrligKNn1WjBKyBQuwxe6r/5e6Gs1d25GaKttivE=;
 b=JWuuM1dgl86Ow5FAPBP+B0FsXJrQEhmXKX52Chk828QdTAovC56pauNk2BqubeVHDQ
 /TpLEruxfAjmSkfsrXSd8cNRLd5maTKvqCUv92utSeRlHVS8GgNHgRCF1Punof5ey78+
 xkzAMxiNUul9REuQ/61jnJJIAF+MTEBL+lO9Q+v7qQ6peQcyehD//eGiHo2taD+GGfjq
 +6tQs03fKMuPWq3lErBRW6eEwGVpx/Xu3AcX0tJWi0SuOByslt92IvqVstQHYoPfHCcD
 caQ3bEUcydUK9aURdTLYq2EKGIxruau0S4dJF/286S+24sERpEHL2lu5imlWqP6EhSW2
 Fylw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KLuWrligKNn1WjBKyBQuwxe6r/5e6Gs1d25GaKttivE=;
 b=UN5aEB9CPgNXBvgNWKPM93lPHn8d4AJFh6aUJTtb4dil5qPpAY325co4J+pf2Ec1Da
 mFj7alwbNoQ1zMewbM0fDk868S4jfEV7PI+qSD8mS2+Pk3+jrZG5U0extK4wVio3HV1F
 nc5qfFFHmAWEcMQfQRnogVSZAGv/JMKAsW+9lHC6v6Iyk7cKJjm6NsMyCCnsrIfJr/e9
 8r4WJIesKtWalxH+ttnSU8hGVD9ZWVjYFTP/TWh8L1qe2Okt/gH1QovRXEc7yiv2emw8
 3iLIUdiGi2VUGxFiuwXpIRGRdVDbmEtiGMPzEYWmcoQpmk8zMkhaPKAshLRcQ3ZAt2ZY
 +e3g==
X-Gm-Message-State: AOAM5301uSP/U7S8eAdAD5cS76fF+5u2in7501WSp4l6NAq2/Zn0FAX5
 aLwQ5N+v+mPS5e1ysGn8GnvRmw==
X-Google-Smtp-Source: ABdhPJwnrUhOBNe6056n8oCA8AKpitQC216dpFq2VOVyw/ab4ZK4KfkqLVvnPo6D41UxAkIYVoRBlg==
X-Received: by 2002:a2e:9cc1:: with SMTP id g1mr2056865ljj.261.1589542853237; 
 Fri, 15 May 2020 04:40:53 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id 130sm1218445lfl.37.2020.05.15.04.40.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 04:40:51 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Florian Fainelli <f.fainelli@gmail.com>,
 Abbott Liu <liuwenliang@huawei.com>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>, Andrey Ryabinin <aryabinin@virtuozzo.com>
Subject: [PATCH 5/5 v9] ARM: Enable KASan for ARM
Date: Fri, 15 May 2020 13:40:28 +0200
Message-Id: <20200515114028.135674-6-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200515114028.135674-1-linus.walleij@linaro.org>
References: <20200515114028.135674-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_044055_452951_D6AAA136 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 kasan-dev@googlegroups.com, Alexander Potapenko <glider@google.com>,
 linux-arm-kernel@lists.infradead.org, Andrey Ryabinin <ryabinin@virtuozzo.com>,
 Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrey Ryabinin <ryabinin@virtuozzo.com>

This patch enables the kernel address sanitizer for ARM. XIP_KERNEL
has not been tested and is therefore not allowed for now.

Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
Cc: Alexander Potapenko <glider@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>
Cc: kasan-dev@googlegroups.com
Acked-by: Dmitry Vyukov <dvyukov@google.com>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Tested-by: Ard Biesheuvel <ardb@kernel.org> # QEMU/KVM/mach-virt/LPAE/8G
Signed-off-by: Abbott Liu <liuwenliang@huawei.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v8->v9:
- Fix the arch feature matrix for Arm to include KASan.
- Collect Ard's tags.
ChangeLog v7->v8:
- Moved the hacks to __ADDRESS_SANITIZE__ to the patch
  replacing the memory access functions.
- Moved the definition of KASAN_OFFSET out of this patch
  and to the patch that defines the virtual memory used by
  KASan.
---
 Documentation/dev-tools/kasan.rst                   | 4 ++--
 Documentation/features/debug/KASAN/arch-support.txt | 2 +-
 arch/arm/Kconfig                                    | 1 +
 3 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/Documentation/dev-tools/kasan.rst b/Documentation/dev-tools/kasan.rst
index c652d740735d..0962365e1405 100644
--- a/Documentation/dev-tools/kasan.rst
+++ b/Documentation/dev-tools/kasan.rst
@@ -21,8 +21,8 @@ global variables yet.
 
 Tag-based KASAN is only supported in Clang and requires version 7.0.0 or later.
 
-Currently generic KASAN is supported for the x86_64, arm64, xtensa, s390 and
-riscv architectures, and tag-based KASAN is supported only for arm64.
+Currently generic KASAN is supported for the x86_64, arm, arm64, xtensa, s390
+and riscv architectures, and tag-based KASAN is supported only for arm64.
 
 Usage
 -----
diff --git a/Documentation/features/debug/KASAN/arch-support.txt b/Documentation/features/debug/KASAN/arch-support.txt
index 304dcd461795..8f6283604028 100644
--- a/Documentation/features/debug/KASAN/arch-support.txt
+++ b/Documentation/features/debug/KASAN/arch-support.txt
@@ -8,7 +8,7 @@
     -----------------------
     |       alpha: | TODO |
     |         arc: | TODO |
-    |         arm: | TODO |
+    |         arm: |  ok  |
     |       arm64: |  ok  |
     |         c6x: | TODO |
     |        csky: | TODO |
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index f6f2d3b202f5..f5d26cbe2f42 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -64,6 +64,7 @@ config ARM
 	select HAVE_ARCH_BITREVERSE if (CPU_32v7M || CPU_32v7) && !CPU_32v6
 	select HAVE_ARCH_JUMP_LABEL if !XIP_KERNEL && !CPU_ENDIAN_BE32 && MMU
 	select HAVE_ARCH_KGDB if !CPU_ENDIAN_BE32 && MMU
+	select HAVE_ARCH_KASAN if MMU && !XIP_KERNEL
 	select HAVE_ARCH_MMAP_RND_BITS if MMU
 	select HAVE_ARCH_SECCOMP_FILTER if AEABI && !OABI_COMPAT
 	select HAVE_ARCH_THREAD_STRUCT_WHITELIST
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
