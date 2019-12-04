Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B00DE112214
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 05:28:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RUpFmXBh44JJLctdBfsKE9CgTTadr8emOdczPDNlZLs=; b=C2Q
	tIy+rgarmaU6ilpbm5H4t32UO0/ZO8yrlro8f6J2nxwcEo8COwDpnN5ycFtJqZ2XWTyjnlmqgd2c2
	UlV0evFCI8JKy8tOR+96D7VyJD8a30oiHB2qGDdOFVRAGcbUrG6bZvcZgVxrOO/FYpElT8GiIQAHu
	f+D2O+/rwRJdV/mcePARbYYavWyXnfwx7glaV1uD4lac6GW6UGKHgt6sb1BwRRHrZoCxpP1uZYFQv
	bp/fs+plpRV60idxOrXXdBgBxWb9gX9mFpb0/352LqmCorl7ASWqHENVIRwomS8csttCWl0+DlfQE
	DaaD5M8FYOYyJ2Ppb9dyioAPdbY7z/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icMHQ-0006Nm-5F; Wed, 04 Dec 2019 04:28:48 +0000
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icMHI-0006NT-1i
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 04:28:41 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id xB44SEjv007912;
 Wed, 4 Dec 2019 13:28:14 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com xB44SEjv007912
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1575433694;
 bh=aZBc4IVru6RGfaR7ceRLbfahtURpRZYF6EvcHQYceI0=;
 h=From:To:Cc:Subject:Date:From;
 b=HTXFfWeetey0nr5Exo6zi1nh1p8lFfnNhnAYaHttpJ+kadz/VQguBJe3bfSLKGTVt
 9CkBdwN/f2IMZ6UarVAWoE+EOE4nd+6aloabRz0AABRnWTrpg5XlgELfWvTADuGSn4
 dVX5N7gLfUKbvE6K+6EUMPYq/cRCiuPCcalsx2ME41KXgVqYb3VsBx37gKeI20QDH6
 9tfU8h0aEyKfMkcqcGMU0tGNjjsWGWJ0zXuxjF1QZwIDy72uytQrHahlC11Xj5roNJ
 tjb/d+g1uI4QmW9+VgrxNGOzVzgGxgxJ1osThXLnv9aJwZxdWuOwDO5iZwkJYDtoy5
 SJe04muS2z5vQ==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: patches@arm.linux.org.uk
Subject: [PATCH] ARM: decompressor: use CONFIG option instead of cc-option
Date: Wed,  4 Dec 2019 13:28:12 +0900
Message-Id: <20191204042813.7484-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_202840_433131_D80523B0 
X-CRM114-Status: UNSURE (   7.65  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Masahiro Yamada <masahiroy@kernel.org>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Kconfig stage (arch/Kconfig) has already evaluated whether the
compiler supports -fno-stack-protector.

You can use CONFIG_CC_HAS_STACKPROTECTOR_NONE instead of invoking
the compiler to check the flag here.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

KernelVersion: v5.5-rc1


 arch/arm/boot/compressed/Makefile | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
index a1e883c5e5c4..da599c3a1193 100644
--- a/arch/arm/boot/compressed/Makefile
+++ b/arch/arm/boot/compressed/Makefile
@@ -110,12 +110,12 @@ endif
 
 # -fstack-protector-strong triggers protection checks in this code,
 # but it is being used too early to link to meaningful stack_chk logic.
-nossp_flags := $(call cc-option, -fno-stack-protector)
-CFLAGS_atags_to_fdt.o := $(nossp_flags)
-CFLAGS_fdt.o := $(nossp_flags)
-CFLAGS_fdt_ro.o := $(nossp_flags)
-CFLAGS_fdt_rw.o := $(nossp_flags)
-CFLAGS_fdt_wip.o := $(nossp_flags)
+nossp-flags-$(CONFIG_CC_HAS_STACKPROTECTOR_NONE) := -fno-stack-protector
+CFLAGS_atags_to_fdt.o := $(nossp-flags-y)
+CFLAGS_fdt.o := $(nossp-flags-y)
+CFLAGS_fdt_ro.o := $(nossp-flags-y)
+CFLAGS_fdt_rw.o := $(nossp-flags-y)
+CFLAGS_fdt_wip.o := $(nossp-flags-y)
 
 ccflags-y := -fpic $(call cc-option,-mno-single-pic-base,) -fno-builtin -I$(obj)
 asflags-y := -DZIMAGE
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
