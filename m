Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 373B9975B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 11:12:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Pkeqi5jnV+xq0V97Bgggn2zqftZHaPZSVDktydlZzrY=; b=Or7
	2S4RxY3uAgMBXCL+gKTjRM7Nfec8W/ny/zjO5M2sOaxnVz0yUtppo0yz4qEXDH8CJ4Xz7z0zzTro8
	lVA1Tt7BzX2iigG4ufkQy+CBWWeXFbPD427jJnODSb5vW2VxK/dTDtPVadmFaxsbyNHbkLVIaHV8u
	uHLxYQYQlzv1FEZCu8X4hI7mMgligW3+gpPgnRR5d9g8hWCipZ+OWvRp4OEbeo9DCg3pXAvuixQN1
	GkvyB18mC7/jqsBJlkIfDMgaaTRkXzvjSEXKL6XTNDZTkdRlfgpGr37hWDPauwoqwLEehlhlE2uzW
	UHvHVRFpe2HoDB81p/+1ZJ9NHoWqDDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Met-00036e-Re; Wed, 21 Aug 2019 09:12:00 +0000
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Mee-000367-KF
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 09:11:46 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id x7L9BLsk025020;
 Wed, 21 Aug 2019 18:11:21 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com x7L9BLsk025020
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1566378682;
 bh=Y1VwZdO6Ru05gQk/29DwsFczvGNl4wiiOoEN8zKEUSA=;
 h=From:To:Cc:Subject:Date:From;
 b=OCWv7bX8zKjVb3P5hcq+uFD0oh1wi2o6X9ItcCPJPpgPh/MoHNGxniSEy5UDTnkn3
 2G3YS5UJVmEpZvr2x2/YbKCp+O7M+cKASteXh9YcatcXtsEdnQdzrFnxEl1x1iFvIh
 kSFmki8wWPfYPVw4n36rU+RzjTx8OVdP//DR3SPdBXvhnkiX2zjsu9xL24mTo/EZZV
 HkEsgXEB2CVROPQ8DIuuh42wO2jflyHpmUOZ8R1mbXUeJcqOs7Zo975iZjdERSOC7h
 8EV28AoOrKInvz225IqTCTL8Ol/ut5TnonFy/j3xq4Hk1HrT9DtJYYe6QPw8qQlc4U
 4AMTANgj88z8Q==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Will Deacon <will.deacon@arm.com>
Subject: [PATCH] arm64: add arch/arm64/Kbuild
Date: Wed, 21 Aug 2019 18:11:17 +0900
Message-Id: <20190821091117.7310-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_021144_990658_C8CE85BA 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.75 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the standard obj-y form to specify the sub-directories under
arch/arm64/. No functional change intended.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm64/Kbuild   | 6 ++++++
 arch/arm64/Makefile | 6 +-----
 2 files changed, 7 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm64/Kbuild

diff --git a/arch/arm64/Kbuild b/arch/arm64/Kbuild
new file mode 100644
index 000000000000..d6465823b281
--- /dev/null
+++ b/arch/arm64/Kbuild
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-y			+= kernel/ mm/
+obj-$(CONFIG_NET)	+= net/
+obj-$(CONFIG_KVM)	+= kvm/
+obj-$(CONFIG_XEN)	+= xen/
+obj-$(CONFIG_CRYPTO)	+= crypto/
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index d4ed1869e536..fd6714a585f7 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -136,11 +136,7 @@ KASAN_SHADOW_OFFSET := $(shell printf "0x%08x00000000\n" $$(( \
 
 export	TEXT_OFFSET GZFLAGS
 
-core-y		+= arch/arm64/kernel/ arch/arm64/mm/
-core-$(CONFIG_NET) += arch/arm64/net/
-core-$(CONFIG_KVM) += arch/arm64/kvm/
-core-$(CONFIG_XEN) += arch/arm64/xen/
-core-$(CONFIG_CRYPTO) += arch/arm64/crypto/
+core-y		+= arch/arm64/
 libs-y		:= arch/arm64/lib/ $(libs-y)
 core-$(CONFIG_EFI_STUB) += $(objtree)/drivers/firmware/efi/libstub/lib.a
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
