Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C42F69B3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 Nov 2019 16:32:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OejIY4EV8qqyoTpeZQaV5maA9s5eOkxFVypKFS3LwK8=; b=fMQaag5ddX556+
	9MktTtfuTydB93drgDhDTSjfqlcoiwO9+F2wS8CZdL71lPK3g8dWHrSjAhA7LW6YsLHMuuHPpfPaW
	3mfKYaH++wYNv7u0PivnXU2pADrjuaubFiWB1jAJTQDS6s+YDiaNc+iVd14WAVJxGjRZMkLAFdMqy
	deddtwEnt1vE+biO4fDCij9t4woEVWg2CCe3fh72R7OoxxktN7tiP1ahQGl/maYHXxFHQ0QseAHoT
	sYf1t/0j2CJ5f2Na570IcrtGwz3x1D7DPABFawEPMECdCjdvFNBJbyGQ382K+MwQtA6fELLgnOYW9
	3EWvxfLRAwG1i719Kikw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTpCC-0005Qi-5d; Sun, 10 Nov 2019 15:32:08 +0000
Received: from forward104j.mail.yandex.net ([2a02:6b8:0:801:2::107])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTpC1-0005PC-Ee
 for linux-arm-kernel@lists.infradead.org; Sun, 10 Nov 2019 15:32:01 +0000
Received: from forward103q.mail.yandex.net (forward103q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:50:0:640:b21c:d009])
 by forward104j.mail.yandex.net (Yandex) with ESMTP id 5D05A4A11C7;
 Sun, 10 Nov 2019 18:31:47 +0300 (MSK)
Received: from mxback7q.mail.yandex.net (mxback7q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:41:0:640:cbbf:d618])
 by forward103q.mail.yandex.net (Yandex) with ESMTP id 5572161E0005;
 Sun, 10 Nov 2019 18:31:47 +0300 (MSK)
Received: from vla5-9cb0c276d29e.qloud-c.yandex.net
 (vla5-9cb0c276d29e.qloud-c.yandex.net [2a02:6b8:c18:3588:0:640:9cb0:c276])
 by mxback7q.mail.yandex.net (mxback/Yandex) with ESMTP id FSAetauLC0-VkeGYqD8; 
 Sun, 10 Nov 2019 18:31:47 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=golovin.in; s=mail;
 t=1573399907; bh=J9gGtCi1bqhoTbjtK0ZLFDb2RPEmtebHwiHCJTTfQV4=;
 h=Subject:To:From:Cc:Date:Message-Id;
 b=ucwdZ079I8uW6r0LnYZ6jCy87vyQV/a6SlR1OCEI9A8r0pCWur7Fsl0l1ylRp3pRs
 hP2VnvyYLwr+9Ubr+KsA9K644hmpAFsP8dQgaVC+IVoJ/+OYI1CBDuoxmim/V8pnOf
 n9wWCRy2u1z8KR2O7Nx/GutWx28wD4GXy0+pyx10=
Authentication-Results: mxback7q.mail.yandex.net;
 dkim=pass header.i=@golovin.in
Received: by vla5-9cb0c276d29e.qloud-c.yandex.net (smtp/Yandex) with ESMTPSA
 id 5WwNymo0nq-Vi0mgFID; Sun, 10 Nov 2019 18:31:45 +0300
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (Client certificate not present)
From: Dmitry Golovin <dima@golovin.in>
To: 
Subject: [PATCH] ARM: kbuild: use correct nm executable
Date: Sun, 10 Nov 2019 17:30:39 +0200
Message-Id: <20191110153043.111710-1-dima@golovin.in>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_073157_855860_D63D0A7A 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:6b8:0:801:2:0:0:107 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Nicolas Pitre <nico@fluxnic.net>,
 Matthias Maennich <maennich@google.com>, Russell King <linux@armlinux.org.uk>,
 Stefan Agner <stefan@agner.ch>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 clang-built-linux@googlegroups.com,
 Nathan Chancellor <natechancellor@gmail.com>, Dmitry Golovin <dima@golovin.in>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since $(NM) variable can be easily overridden for the whole build, it's
better to use it instead of $(CROSS_COMPILE)nm. The use of $(CROSS_COMPILE)
prefixed variables where their calculated equivalents can be used is
incorrect. This fixes issues with builds where $(NM) is set to llvm-nm.

Link: https://github.com/ClangBuiltLinux/linux/issues/766
Signed-off-by: Dmitry Golovin <dima@golovin.in>
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Cc: Matthias Maennich <maennich@google.com>
---
 arch/arm/boot/compressed/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
index 9219389bbe61..a1e883c5e5c4 100644
--- a/arch/arm/boot/compressed/Makefile
+++ b/arch/arm/boot/compressed/Makefile
@@ -121,7 +121,7 @@ ccflags-y := -fpic $(call cc-option,-mno-single-pic-base,) -fno-builtin -I$(obj)
 asflags-y := -DZIMAGE
 
 # Supply kernel BSS size to the decompressor via a linker symbol.
-KBSS_SZ = $(shell echo $$(($$($(CROSS_COMPILE)nm $(obj)/../../../../vmlinux | \
+KBSS_SZ = $(shell echo $$(($$($(NM) $(obj)/../../../../vmlinux | \
 		sed -n -e 's/^\([^ ]*\) [AB] __bss_start$$/-0x\1/p' \
 		       -e 's/^\([^ ]*\) [AB] __bss_stop$$/+0x\1/p') )) )
 LDFLAGS_vmlinux = --defsym _kernel_bss_size=$(KBSS_SZ)
@@ -165,7 +165,7 @@ $(obj)/bswapsdi2.S: $(srctree)/arch/$(SRCARCH)/lib/bswapsdi2.S
 # The .data section is already discarded by the linker script so no need
 # to bother about it here.
 check_for_bad_syms = \
-bad_syms=$$($(CROSS_COMPILE)nm $@ | sed -n 's/^.\{8\} [bc] \(.*\)/\1/p') && \
+bad_syms=$$($(NM) $@ | sed -n 's/^.\{8\} [bc] \(.*\)/\1/p') && \
 [ -z "$$bad_syms" ] || \
   ( echo "following symbols must have non local/private scope:" >&2; \
     echo "$$bad_syms" >&2; false )
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
