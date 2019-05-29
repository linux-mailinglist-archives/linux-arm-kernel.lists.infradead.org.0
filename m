Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FD12E461
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 20:23:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uNm2R1ZJSDS686BD77lETSl8QOcYDa66J6PVe0TQXP8=; b=oCSZP22sKrh3Fo
	EEpEJ9m8gld+SqalJH7U8jTmfu+EzyIIo6TDz90UgjY+Dn87FbvtfmhpPusxMLFcj2aigQ/5xwNMa
	6VdvTpwZSQ1/cwh9RqfjfR9t6OwuXYCFcAdXV3d5WmU9fGDQ5MEmWhhJ5X9IgK+MHY+lUnh648gvz
	cjzOwadENv1VBelxKndMVyUpmpObza4LQIJgTTET0vPVxygOlxuBpr1KZnBU9P45TLcDNgaF9gfVd
	+ujmca0eCWQeJ2LgAk6oodu601Rw3U9vtpEYgpiO1vz0NbNtjNhrZyzyk8axIbuE/9dvl0zscN4k3
	ImcX10/GHKBzC3zvL46A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW3Eq-0002z1-Rj; Wed, 29 May 2019 18:23:48 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW3Ej-0002yA-Ka
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 18:23:43 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id c2fb5373;
 Wed, 29 May 2019 17:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
 :subject:date:message-id:mime-version:content-transfer-encoding;
 s=mail; bh=gYtRFTzPGPTPSkG9w5pOkEZn+Ho=; b=lDBVYM8WGc0FxLn08jwD
 nZgR+t9bpWIdm5oDXeDV+mP4rsRkT76wFFZUxDMIS2Uu+/5s/rDOpnw8S9lhdO4A
 /45dOCDJNbbnwrMM2xMEVIJy0XizNYAnSlOU6wnJiGSEBOdyVDciqhNRQHHgfM9T
 +rZXl69mtfOjsK6A+RmFJNVfwXDMj4sknWlfG9IWAEosSNEFevXzvBsM7JNLfdY0
 OdHr4EYjETQ14TOvHRoi92wXftInk7ivFN7TjB5P3VWMFTWCvDuuqPz8fmKXfXn3
 +JytPH4hYcawNt180N4YN4qXRBUMIvmH7aRGb1mmqovhIvuCQYgDmQ3PxmPCtb9b
 Xg==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id b8f6351b
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Wed, 29 May 2019 17:53:02 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm: vdso: pass --be8 to linker if necessary
Date: Wed, 29 May 2019 20:23:24 +0200
Message-Id: <20190529182324.8140-1-Jason@zx2c4.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_112341_745790_1BDB0687 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.95.5.64 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The commit fe00e50b2db8 ("ARM: 8858/1: vdso: use $(LD) instead of $(CC)
to link VDSO") removed the passing of CFLAGS, since ld doesn't take
those directly. However, prior, big-endian ARM was relying on gcc to
translate its -mbe8 option into ld's --be8 option. Lacking this, ld
generated be32 code, making the VDSO generate SIGILL when called by
userspace.

This commit passes --be8 if CONFIG_CPU_ENDIAN_BE8 is enabled.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Russell King <rmk+kernel@armlinux.org.uk>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm/vdso/Makefile | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/vdso/Makefile b/arch/arm/vdso/Makefile
index fadf554d9391..1f5ec9741e6d 100644
--- a/arch/arm/vdso/Makefile
+++ b/arch/arm/vdso/Makefile
@@ -10,9 +10,10 @@ obj-vdso := $(addprefix $(obj)/, $(obj-vdso))
 ccflags-y := -fPIC -fno-common -fno-builtin -fno-stack-protector
 ccflags-y += -DDISABLE_BRANCH_PROFILING
 
-ldflags-y = -Bsymbolic --no-undefined -soname=linux-vdso.so.1 \
+ldflags-$(CONFIG_CPU_ENDIAN_BE8) := --be8
+ldflags-y := -Bsymbolic --no-undefined -soname=linux-vdso.so.1 \
 	    -z max-page-size=4096 -z common-page-size=4096 \
-	    -nostdlib -shared \
+	    -nostdlib -shared $(ldflags-y) \
 	    $(call ld-option, --hash-style=sysv) \
 	    $(call ld-option, --build-id) \
 	    -T
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
