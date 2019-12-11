Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE0C11B29F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:39:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qMRCk/ielV/ay1DuB2TvN89OLcea8cckQFYeJ4IF/mI=; b=Fk+COPmBarJbqI
	df/EmJE20HWcpa6P3I929/YADxol7tHc2D3yE6HKgy79PHQyqRuZocHc7AJRwYdGfc2PVrnuCuwgN
	q2PQG9QQhRX6bs0jfKAxVd+leovGkOn/n2rCutghEx/7jfISKZhmOf+vOty6rQc7aiVZd9kKnfRCz
	KQdYpy3wgsgNQxj84wZcdmuZokp151u5lCQUzoFphMkdugTIUUqf1wvz6oxdJemf8OmxIQTOwRp5Q
	6hhDPq5n/ED+a8U6utfIPZoMfkDfrVGvwUigpiFq8OOWPuFyGkne8gwxiFj7muIw2EMhoXiKN2oM6
	4Ivm47iYQBT5feuepeVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if44n-0002pj-J3; Wed, 11 Dec 2019 15:38:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if44g-0002oz-IX
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:38:51 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 71B342467F;
 Wed, 11 Dec 2019 15:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576078730;
 bh=IG9kGKLljauydAeaT7R+w9w3rEQaS3pDBysxhkF6U/4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=h9x1n5q2tbIyxwxJ0z3JcbN1K1sXNlj5HyieaMbWqex5TfE8cbOu2P1492f/Ibhth
 YfR/12TM5Ru+qoj2OnYwKdx6S4myIsAs1mlJQFFma3Sfpp/X4Vg2p4HCNmts/bubpD
 Kw97iab3a8H/4VxeFT6Mi5/J2vA8NaC0gCGXHxSI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.4 34/37] libfdt: define INT32_MAX and UINT32_MAX in
 libfdt_env.h
Date: Wed, 11 Dec 2019 10:38:10 -0500
Message-Id: <20191211153813.24126-34-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191211153813.24126-1-sashal@kernel.org>
References: <20191211153813.24126-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_073850_630912_29CF22AE 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Masahiro Yamada <yamada.masahiro@socionext.com>

[ Upstream commit a8de1304b7df30e3a14f2a8b9709bb4ff31a0385 ]

The DTC v1.5.1 added references to (U)INT32_MAX.

This is no problem for user-space programs since <stdint.h> defines
(U)INT32_MAX along with (u)int32_t.

For the kernel space, libfdt_env.h needs to be adjusted before we
pull in the changes.

In the kernel, we usually use s/u32 instead of (u)int32_t for the
fixed-width types.

Accordingly, we already have S/U32_MAX for their max values.
So, we should not add (U)INT32_MAX to <linux/limits.h> any more.

Instead, add them to the in-kernel libfdt_env.h to compile the
latest libfdt.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Signed-off-by: Rob Herring <robh@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/compressed/libfdt_env.h | 4 +++-
 arch/powerpc/boot/libfdt_env.h        | 2 ++
 include/linux/libfdt_env.h            | 3 +++
 3 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/compressed/libfdt_env.h b/arch/arm/boot/compressed/libfdt_env.h
index 005bf4ff1b4cb..f3ddd4f599e3e 100644
--- a/arch/arm/boot/compressed/libfdt_env.h
+++ b/arch/arm/boot/compressed/libfdt_env.h
@@ -1,11 +1,13 @@
 #ifndef _ARM_LIBFDT_ENV_H
 #define _ARM_LIBFDT_ENV_H
 
+#include <linux/limits.h>
 #include <linux/types.h>
 #include <linux/string.h>
 #include <asm/byteorder.h>
 
-#define INT_MAX			((int)(~0U>>1))
+#define INT32_MAX	S32_MAX
+#define UINT32_MAX	U32_MAX
 
 typedef __be16 fdt16_t;
 typedef __be32 fdt32_t;
diff --git a/arch/powerpc/boot/libfdt_env.h b/arch/powerpc/boot/libfdt_env.h
index 0b3db6322c793..5f2cb1c53e151 100644
--- a/arch/powerpc/boot/libfdt_env.h
+++ b/arch/powerpc/boot/libfdt_env.h
@@ -5,6 +5,8 @@
 #include <string.h>
 
 #define INT_MAX			((int)(~0U>>1))
+#define UINT32_MAX		((u32)~0U)
+#define INT32_MAX		((s32)(UINT32_MAX >> 1))
 
 #include "of.h"
 
diff --git a/include/linux/libfdt_env.h b/include/linux/libfdt_env.h
index 8850e243c9406..bd0a55821177a 100644
--- a/include/linux/libfdt_env.h
+++ b/include/linux/libfdt_env.h
@@ -6,6 +6,9 @@
 
 #include <asm/byteorder.h>
 
+#define INT32_MAX	S32_MAX
+#define UINT32_MAX	U32_MAX
+
 typedef __be16 fdt16_t;
 typedef __be32 fdt32_t;
 typedef __be64 fdt64_t;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
