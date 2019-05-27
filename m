Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7665A2BC17
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 00:41:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/9n+J8yMH9OZUusTYnij2aLjzKdq0xrTOmtTitKcn4=; b=KYt3BB8qwu8udF
	+29+zB5ipBdYrJRo6kHlXLwkAZ/lGB1DBBoh4XBV7r6y5nnbXvYFbXxzf3kNYeXeonWrM06AitGDr
	lOAEdi5/6PDNjpdhlHPjCSAy+dM0ebbQdkycC0JOMl/Fa3c4YodkPHjZ55lIPiSclprLXmBfdq2WD
	dsDq+s/8VGBfpLGBPHVUCiQECEd+e21iXxS+PvjLuHsc2FG9gy5GCUWF54Q9+uYFNd0l54LUOLxZ3
	BjifaVrb0wnTYJ4cqsHPUllVjodVNoUb3AKYg57sRlhZVccpZCmb1dsvxYyqnUzVlwP9BLiFk7r6H
	ayOWe4uDvs+93WHDFvJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVOIr-0005lG-VU; Mon, 27 May 2019 22:41:13 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVOIk-0005k0-SZ
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 22:41:08 +0000
Received: from zyt.lan (unknown [IPv6:2a02:169:3c0a::564])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 200D45C06AE;
 Tue, 28 May 2019 00:41:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1558996860;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WzRZ17pXEWQFjEk7pZRLwxgBHo2KMHTOBMHbwpIRG3E=;
 b=RidCRn50AciEbPsSMD+H0KVF3q+be+6DWATz87OjTTscmAmzpb6ygKYk/0ILdffLF4i07w
 oPHnIOmiOFA20BE9aBe38UKpcspn3QEr+M7QwFM6cIDLbqU+jwWrJYpy+ebKr9oGJDB9C7
 nZ4KWh/gFDnP+LxUnGlhFY3CVfjdLKg=
From: Stefan Agner <stefan@agner.ch>
To: arm@kernel.org,
	olof@lixom.net
Subject: [PATCH v4 2/2] ARM: OMAP2: drop explicit assembler architecture
Date: Tue, 28 May 2019 00:40:51 +0200
Message-Id: <5ead0fe96f7e5729e4a82f432022b16cb84458a6.1558996564.git.stefan@agner.ch>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <c0ca465daa7c7663c19b0bcb848c70e8da22baff.1558996564.git.stefan@agner.ch>
References: <c0ca465daa7c7663c19b0bcb848c70e8da22baff.1558996564.git.stefan@agner.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_154107_281189_79D6A426 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: andrew@lunn.ch, mans@mansr.com, tony@atomide.com,
 Stefan Agner <stefan@agner.ch>, robh@kernel.org, f.fainelli@gmail.com,
 gregory.clement@bootlin.com, linux@armlinux.org.uk, krzk@kernel.org,
 kgene@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 sebastian.hesselbarth@gmail.com, jason@lakedaemon.net, arnd@arndb.de,
 marc.w.gonzalez@free.fr, rjui@broadcom.com, ssantosh@kernel.org,
 linux-arm-kernel@lists.infradead.org, sbranden@broadcom.com, nico@fluxnic.net,
 ard.biesheuvel@linaro.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

OMAP2 depends on ARCH_MULTI_V6, which makes sure that the kernel is
compiled with -march=armv6. The compiler frontend will pass the
architecture to the assembler. There is no explicit architecture
specification necessary.

Signed-off-by: Stefan Agner <stefan@agner.ch>
Acked-by: Tony Lindgren <tony@atomide.com>
---
Changes since v2:
- New patch

Changes since v3:
- Rebase on top of v5.2-rc2

 arch/arm/mach-omap2/Makefile | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/mach-omap2/Makefile b/arch/arm/mach-omap2/Makefile
index f1d283995b31..600650551621 100644
--- a/arch/arm/mach-omap2/Makefile
+++ b/arch/arm/mach-omap2/Makefile
@@ -45,9 +45,6 @@ obj-$(CONFIG_SOC_DRA7XX)		+= $(omap-4-5-common) $(smp-y) sleep44xx.o
 obj-$(CONFIG_SOC_OMAP2420)		+= sram242x.o
 obj-$(CONFIG_SOC_OMAP2430)		+= sram243x.o
 
-AFLAGS_sram242x.o			:=-Wa,-march=armv6
-AFLAGS_sram243x.o			:=-Wa,-march=armv6
-
 # Restart code (OMAP4/5 currently in omap4-common.c)
 obj-$(CONFIG_SOC_OMAP2420)		+= omap2-restart.o
 obj-$(CONFIG_SOC_OMAP2430)		+= omap2-restart.o
@@ -89,8 +86,6 @@ obj-$(CONFIG_PM_DEBUG)			+= pm-debug.o
 obj-$(CONFIG_POWER_AVS_OMAP)		+= sr_device.o
 obj-$(CONFIG_POWER_AVS_OMAP_CLASS3)    += smartreflex-class3.o
 
-AFLAGS_sleep24xx.o			:=-Wa,-march=armv6
-
 endif
 
 ifeq ($(CONFIG_CPU_IDLE),y)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
