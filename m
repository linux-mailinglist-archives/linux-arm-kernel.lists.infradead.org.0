Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DEB5196F59
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 20:43:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u6/lD1BZAq802P2iv/stPT0iVZny+HOxAUxvN+4Gv0w=; b=WWRa3v3Rj7nXGg
	iksFdP574ZiyBbza0bwALiDqWoedufNA0LxSnRWtSOcyAJIVR7tdFiE4D0HWWLITRWXKr+wKjyfHm
	NMNeei28Llu58qD0IFSdsMwYve9MAWJDkcT9hWlahiKw2RxX306GU7IPObO9Mt/42FjKIoZKaGkAa
	niP2A+VTqczbiBC2M/zl9BZlm4Nz9/0cnROdwihHA0Ad/wGKNXcDyjGEU9kRD41vv7o0YLqdHrDtU
	5UBk84Zm/GstkSQer5SiN3fKJ4/uPBSRuGK4dyIweZ4qXVuuWWJtpeC6Ir5KbiYTcwWPdFOyf80mq
	41WQUV5oqg6nthA0VeqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIctz-0004q4-QC; Sun, 29 Mar 2020 18:43:19 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIctr-0004fF-0u
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 18:43:12 +0000
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 3EF795C0870;
 Sun, 29 Mar 2020 20:43:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1585507388;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references; bh=lnu+KMdllhKFSlzHplG4kJn5iW0F84lGeX1xzZIYAts=;
 b=foiZtoQOanmpdsMLM7SK+Zq7g/PZANc15HdoUTRqh11ZXs6xG/hcNgTzKX9K3M3dzSQl+B
 E0s3+n6Y6SAAYDbC7tfRDGKSsqrApx10VlZuX4uqzEm8WNv4VqtqZg0ZcwHiKOqCWC9+Q+
 BGbSPocVZYMxBX8j6qjL6Jd9Be7VxT8=
From: Stefan Agner <stefan@agner.ch>
To: linux@armlinux.org.uk
Subject: [PATCH v2] ARM: warn if pre-UAL assembler syntax is used
Date: Sun, 29 Mar 2020 20:43:04 +0200
Message-Id: <a651d5eaf312c771c9d2e0160ddd905550bbd4e3.1585507235.git.stefan@agner.ch>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_114311_225003_B88073DF 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: clang-built-linux@googlegroups.com, arnd@arndb.de,
 ard.biesheuvel@linaro.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
 jiancai@google.com, yamada.masahiro@socionext.com, manojgupta@google.com,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove the -mno-warn-deprecated assembler flag to make sure the GNU
assembler warns in case non-unified syntax is used.

This also prevents a warning when building with Clang and enabling its
integrated assembler:
clang-10: error: unsupported argument '-mno-warn-deprecated' to option 'Wa,'

GCC before 5.1 emits pre-UAL assembler. This can lead to warnings if
inline assembler explicitly switches to unified syntax by using the
".syntax unified" directive (e.g. arch/arm/include/asm/unified.h).
Hence keep the flag for GCC versions before 5.1.

This is a second attempt of commit e8c24bbda7d5 ("ARM: 8846/1: warn if
divided syntax assembler is used") which has subsequently been reverted
with commit b752bb405a13 ("Revert "ARM: 8846/1: warn if divided syntax
assembler is used"").

Signed-off-by: Stefan Agner <stefan@agner.ch>
---
Changes in v2:
- Reference revert commit b752bb405a13 ("Revert "ARM: 8846/1: warn if
  divided syntax assembler is used"")
- Reword commit message

 arch/arm/Makefile | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 1fc32b611f8a..b37bb985a3c2 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -119,21 +119,25 @@ ifeq ($(CONFIG_CC_IS_CLANG),y)
 CFLAGS_ABI	+= -meabi gnu
 endif
 
-# Accept old syntax despite ".syntax unified"
-AFLAGS_NOWARN	:=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
-
 ifeq ($(CONFIG_THUMB2_KERNEL),y)
-CFLAGS_ISA	:=-mthumb -Wa,-mimplicit-it=always $(AFLAGS_NOWARN)
+CFLAGS_ISA	:=-mthumb -Wa,-mimplicit-it=always
 AFLAGS_ISA	:=$(CFLAGS_ISA) -Wa$(comma)-mthumb
 # Work around buggy relocation from gas if requested:
 ifeq ($(CONFIG_THUMB2_AVOID_R_ARM_THM_JUMP11),y)
 KBUILD_CFLAGS_MODULE	+=-fno-optimize-sibling-calls
 endif
 else
-CFLAGS_ISA	:=$(call cc-option,-marm,) $(AFLAGS_NOWARN)
+CFLAGS_ISA	:=$(call cc-option,-marm,)
 AFLAGS_ISA	:=$(CFLAGS_ISA)
 endif
 
+ifeq ($(CONFIG_CC_IS_GCC),y)
+ifeq ($(call cc-ifversion, -lt, 0501, y), y)
+# GCC <5.1 emits pre-UAL code and causes assembler warnings, suppress them
+CFLAGS_ISA	+=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
+endif
+endif
+
 # Need -Uarm for gcc < 3.x
 KBUILD_CFLAGS	+=$(CFLAGS_ABI) $(CFLAGS_ISA) $(arch-y) $(tune-y) $(call cc-option,-mshort-load-bytes,$(call cc-option,-malignment-traps,)) -msoft-float -Uarm
 KBUILD_AFLAGS	+=$(CFLAGS_ABI) $(AFLAGS_ISA) $(arch-y) $(tune-y) -include asm/unified.h -msoft-float
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
