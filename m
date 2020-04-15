Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C5D1AA020
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 14:31:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DPsCSLQvpdUNECuoimS0ztjYG3lEEN7CKgZKNtkzZgk=; b=iIf
	RNqbYQQjfCD3jYM3lD891RUAMqPCXhfhwwWoKV3VXRdeXzuOBf+8dZ6VNk0zIvhtYyWTijmzrpVyN
	2mOI9kOhPavTr8RzEWXWBH8U4IL+x6jbySTivR7wfgb9CzwvGlw0H7tmLBUuLYVzdCYt5AfAkGysM
	9CPe4VuXAj3EsPtDYOBz76ff40JYpbRhX98SkUMHwRsq3/Dkc6Ftvv27ISNl2xJxWVG1RyXicO8W+
	rrYIxFYpMVCxXX1YC6151r11dFbrgY8E6sHOBlEPdi+5GpuR3tmRn/iO1ygwifc95CyioH1WeGBGw
	djj01Zrsrph7hVY0JM39VawINTXUZkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhC6-0000V9-Fz; Wed, 15 Apr 2020 12:31:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhBw-0000UG-Hc
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 12:31:00 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5356E2074F;
 Wed, 15 Apr 2020 12:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586953856;
 bh=mu9IqK1c6G1TDRhffx/Ewe4j3BF8M4oeXl1TC2k8hQY=;
 h=From:To:Cc:Subject:Date:From;
 b=OXFMa+hcLYyc036J4VhNQhBihduk2JDUMEdpR4EUe5m79g6Lrtoc6OH88Ho8km9/8
 JLFZ6aojYbgCHUpSFfHQG81j9oQ4+sHxgwnE5WZKo3FUF6CvuczTMKRPssVIzIC71x
 0lXci3qqyusAbNqfqh5yvvaWyNQKHodgG3BJa/NY=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: drop GZFLAGS definition and export
Date: Wed, 15 Apr 2020 14:30:49 +0200
Message-Id: <20200415123049.25504-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_053059_015874_76409D7B 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 james.morse@arm.com, will@kernel.org, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop the definition and export of GZFLAGS, which was never referenced
on arm64, and whose last recorded use in the ARM port (on which arm64
was based original) was removed by patch

  commit 5e89d379edb5ae08b57f39dd8d91697275245cbf [*]
  Author: Russell King <rmk@flint.arm.linux.org.uk>
  Date:   Wed Oct 16 14:32:17 2002 +0100

    [ARM] Convert ARM makefiles to new kbuild (Sam Ravnborg, Kai, rmk)

[*] git commit ID based on Thomas Gleixner's historical GIT repository at
    git://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm64/Makefile | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 8e9445faa8ac..e48867c335d2 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -12,7 +12,6 @@
 
 LDFLAGS_vmlinux	:=--no-undefined -X
 CPPFLAGS_vmlinux.lds = -DTEXT_OFFSET=$(TEXT_OFFSET)
-GZFLAGS		:=-9
 
 ifeq ($(CONFIG_RELOCATABLE), y)
 # Pass --no-apply-dynamic-relocs to restore pre-binutils-2.27 behaviour
@@ -131,7 +130,7 @@ KBUILD_CFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
 KBUILD_CPPFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
 KBUILD_AFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
 
-export	TEXT_OFFSET GZFLAGS
+export	TEXT_OFFSET
 
 core-y		+= arch/arm64/
 libs-y		:= arch/arm64/lib/ $(libs-y)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
