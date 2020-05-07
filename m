Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D3A1C8B4F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 14:49:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZfLDBp6BuqFKI7tJkVy8qi1j4xkRtDW5YIYc9XUKoCI=; b=Pelp0YdzFboibo
	iUDbm/lMqPRA0N6FEug4N24gZSv6BXrwHnGPsjkwdWNzMqM2AJUWAvq5h4MsbvD4H4Da96n+82ptr
	Dg2tZagWyhwxosTjmKK53iwxQvsajRS0Go24plvJHXwITlRjowXW/B5CPuFOSPHlGVd/bU3ZFqnxo
	AxHZtMsTErZ3GBFJ0SAqX4ObPhXcHf0sQkGIzSl9UJapCuj/4MZv31hwi3jk0zzDOpQ4Yv959rwgB
	drD23WyYE58HpE+n6+VuJG68Uw67Czb29R2634c6NyslARJb1VqzFf22m5T1COtF6iEzu3ZVOjMSv
	gChKMQOXUxbIiWcJoKCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWfxk-00054P-5H; Thu, 07 May 2020 12:49:16 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWfwW-0003vO-Sx
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 12:48:02 +0000
Received: by mail-lj1-x243.google.com with SMTP id e25so6158922ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 05:48:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nM7TzUBJiuB8tbDUVVmcxE6+YeyITN8sIcQWGY4GUzQ=;
 b=tV8Y9hHUUBcAdzedAA29PfoAHWR3L3za2Q6AsU9uRlK2YUxoVAULgPyqENcL+3L3Rd
 Q+ZzPJlnkTHqUqq6p6dCasIX2QMdfq0ngjYSAy34PKxlVP93zSO2r7GZ3OsW7bvE8E8/
 B2/5mlGC0dUcpQAtYgi0/px4b/6lxDFcEoal+7aRSokaehJJDRfoa15GX3lHSukkFHOp
 7qWtw+aD3ZOOuc+TpgaXNalbMPxJmFSgdItCfYd/cJ/CpnxguFv05TV3+txuXSRtR3SP
 dit3YP+Fn8/FGc3CySvMlc6ZffyYw+p05K2pCXIv5x/E+8q6pGtaqQwIIE292Ku4cnqv
 1BBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nM7TzUBJiuB8tbDUVVmcxE6+YeyITN8sIcQWGY4GUzQ=;
 b=V/DW1lNkzilf1/ErbZXJzadi8kbgHM2GfAs+psD3eRJQkE1t8GZ/BtKaflQlyuieYx
 XFQtnN4Ha5AEZi1ohN0S1TyYlW2hPq6LqXwrXYLVcpd/KOuWw0atCan5A4xgHKfPUngl
 OkMFdMn3XHXwHUGD2Tn7Y18VZR/wwURKf+scglK6GWQf2FTF/pGLkMe+3zgpUa4HJjX+
 2X1eP49Og8Z5Sc+LH6F5FNCY2KG17na8FysnVJteUyIWJJwJ9vKvz6KMHgyQFk4tjd4x
 L0u8HCFOZyy0z9fbq5vjkvd32UL/6lhwJU9ECuyfjr+Mgx7eFKw/CMsORAuEJGB+MA/5
 79ZA==
X-Gm-Message-State: AGi0PuZ9gmLVS6In1VAhlfEtGth7u/CSHp1z0p4qDuP4lUsE3zCSZDZh
 mCSkKPN0dSTZkHm/rhkfNyHekg==
X-Google-Smtp-Source: APiQypJPxZKk5X7Cks/ImJR+drA2mswQMGnT1GRp9Hm5RfiJqJo8BgdQfUeCC99WjW5uHi/WDRJ4SQ==
X-Received: by 2002:a2e:8753:: with SMTP id q19mr8466814ljj.6.1588855679326;
 Thu, 07 May 2020 05:47:59 -0700 (PDT)
Received: from localhost.localdomain
 (c-f3d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.243])
 by smtp.gmail.com with ESMTPSA id b4sm3730126lfo.33.2020.05.07.05.47.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 05:47:58 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Florian Fainelli <f.fainelli@gmail.com>,
 Abbott Liu <liuwenliang@huawei.com>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>, Andrey Ryabinin <aryabinin@virtuozzo.com>
Subject: [PATCH 5/5 v8] ARM: Enable KASan for ARM
Date: Thu,  7 May 2020 14:45:22 +0200
Message-Id: <20200507124522.171323-6-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200507124522.171323-1-linus.walleij@linaro.org>
References: <20200507124522.171323-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_054800_955438_0959222B 
X-CRM114-Status: GOOD (  15.22  )
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
Signed-off-by: Abbott Liu <liuwenliang@huawei.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v7->v8:
- Moved the hacks to __ADDRESS_SANITIZE__ to the patch
  replacing the memory access functions.
- Moved the definition of KASAN_OFFSET out of this patch
  and to the patch that defines the virtual memory used by
  KASan.
---
 Documentation/dev-tools/kasan.rst | 4 ++--
 arch/arm/Kconfig                  | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

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
