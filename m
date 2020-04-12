Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A62151A5BA5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 02:28:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xSvR/WLGvScItq2K4+dS9RE7wQnNYoe/lEs4DOWgi/A=; b=jiHxTL9cgNJxgI
	PfK1SGPrpEDMW+imv4fsUeVItNd+9SEEziPVdxFmqs/ytQFnCL8bA9hE/SOn0RM8UwFT6sQtL3maB
	wnJd0oWnkOtm66/3oXliavL+GmV4G8O+o8NIPLzrTU6u2eELwYyoCl3zrQMec6irfkm7ZfkTe/w0Q
	xgXk4sxOX16B6FzLEi6+se198nV873STHU3OiOPCshoYIU/5p0SyZPPLLELJZblzSgZsm4fQRduW/
	WnsKwHlESgKz9sAAo1ce3RpJo5fu++0ZJawROm1AlS/pDqyDfF+dbKF9fHxNrbw8fDZ6TfoXBMLef
	NFleW8F4qmJiFz0DpEIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNQUU-0004fO-Sz; Sun, 12 Apr 2020 00:28:50 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNQT6-0003kJ-Dc
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 00:27:25 +0000
Received: by mail-lf1-x144.google.com with SMTP id 198so3937289lfo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 11 Apr 2020 17:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fHKoplYFxoQLQhXHoGF+ijfq6s6m1RbHqeEl83lbyFI=;
 b=AITvCVpscrZGcYEtTdPZ8bnHXm70GmWU4CODY3O08StjYpkXpDhz6oaV80pshUG1/1
 MnpixoLYd4VEH8sspUi262Urr4JUkx29UMKL+Rbz9Psq2uaGoh917WU/Xm3djtps8ib0
 UUDwQ//IAIontRmMF6YHDQB7cFaCW7BQ1+iThL/5wBib13Dh9LLvv7kJjVBSF8q86Hri
 KTsy/Vl3lPCqiR8U2NTc0DEmBVHl0nzScdcp2XB7/AmdIKKRQGm015O/sJv4Rc/oKzkK
 oObVkjWijFcVqChrkAYsyv0Iky5aevH8j7O7aM8VsGvvJ3+JYrzQKiUpEVzDEz8t129f
 nYDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fHKoplYFxoQLQhXHoGF+ijfq6s6m1RbHqeEl83lbyFI=;
 b=Dru45MC10zzx/KIgT6lz/FoYPbcijIHMMdS+r5YZZoDBjw72knb5DxFtnuSrFDYQm4
 0tUYsV8J6ZoeGmPGbTDzACj2aHlDUACzVStCifcrzW4Vc0hlEpHxZttKddriz4O/v4e7
 LfGYaYl731tZ6MG1TO7Ft9ytjKxKlQQFraEgKoQBet06VDrzXNIxImCBEAI4CJZGuIFE
 vSAe6yKByAunYWXUQBknXqWurQp/8vuQShLDZRUtfvE57K6m1pX7cjiZ3xm7QHVXiWxY
 EEN8u/HgmWL1oUZGYdU71kdUpEdoDy/qgKB4d+uO1Ec5UYNI9G84I88F/t93SnySQEdR
 pblg==
X-Gm-Message-State: AGi0PubUrWbXqjs1Iw3OBzxEqN4skC8wGwELVn9cTDkkUcTodqnlGTTe
 OM75r2XlZn+MDGLy0wW+LdX0HC305yw=
X-Google-Smtp-Source: APiQypLgxFrsFMBdZBlylEQWno/RTMJhyM9w8GGGFnbvkFtkLCFNpSHl/OjCpXSsdDZFHrjAWRmV4Q==
X-Received: by 2002:ac2:548f:: with SMTP id t15mr6336083lfk.107.1586651242640; 
 Sat, 11 Apr 2020 17:27:22 -0700 (PDT)
Received: from localhost.localdomain
 (c-f3d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.243])
 by smtp.gmail.com with ESMTPSA id x29sm4907345lfn.64.2020.04.11.17.27.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Apr 2020 17:27:21 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Florian Fainelli <f.fainelli@gmail.com>,
 Abbott Liu <liuwenliang@huawei.com>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>, Andrey Ryabinin <aryabinin@virtuozzo.com>
Subject: [PATCH 5/5 v2] ARM: Enable KASan for ARM
Date: Sun, 12 Apr 2020 02:24:07 +0200
Message-Id: <20200412002407.396790-6-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200412002407.396790-1-linus.walleij@linaro.org>
References: <20200412002407.396790-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_172724_499054_72C0A34F 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
Cc: Dmitry Vyukov <dvyukov@google.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Andrey Ryabinin <ryabinin@virtuozzo.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrey Ryabinin <ryabinin@virtuozzo.com>

This patch enables the kernel address sanitizer for ARM. XIP_KERNEL
has not been tested and is therefore not allowed for now.

Acked-by: Dmitry Vyukov <dvyukov@google.com>
Signed-off-by: Abbott Liu <liuwenliang@huawei.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
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
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
