Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6EF1C5AAB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:11:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=R0jAVJ5m4E2BoA2k3FhBj6RD7ucpqvwE6c7tcpEJ3eE=; b=e9u0fDWmxnowijQHEZsiKyuRWv
	SrSShR8yTH47L1yIFxoj9B196Xy65oweLVq3q/ZXEBloHn+jp8fL4Q7oY6GBiYkebhca1UMkHq6Cj
	xoetwhtkyilX4e7Oho4w30ogaUu3dPs2PS5UT5l77nJN+bW4rQ+iQtcceLsQcs16MELBMSmFjB5dh
	7a8AAUNTWjnSr176kil4jwpt9Unwq0wqgRfpwX1ecf+tSEsf/EIf+Uvzh8qtcz5JnWu0GFZhXr3dT
	cnS6CqVlTXn3DN8Ee4/ffttQdxIM/qbRrasdf7yFGz4bpydmCj+MmsrcspjrF6nizhC5kEic5rU3U
	YewTuN8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzDg-0003cH-Hg; Tue, 05 May 2020 15:10:52 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzAg-0006rF-5S
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:07:47 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:bd97:8453:3b10:1832])
 by baptiste.telenet-ops.be with bizsmtp
 id b37U2200B3VwRR30137UdF; Tue, 05 May 2020 17:07:29 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jVzAO-00028U-1I; Tue, 05 May 2020 17:07:28 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jVzAN-0000Qw-Ut; Tue, 05 May 2020 17:07:27 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: soc@kernel.org
Subject: [PATCH v2 11/15] ARM: mvebu: Drop unneeded select of HAVE_SMP
Date: Tue,  5 May 2020 17:07:18 +0200
Message-Id: <20200505150722.1575-12-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505150722.1575-1-geert+renesas@glider.be>
References: <20200505150722.1575-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_080746_382290_10617DF6 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:13 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Andrew Lunn <andrew@lunn.ch>, Arnd Bergmann <arnd@arndb.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>,
 Gregory Clement <gregory.clement@bootlin.com>, linux-kernel@vger.kernel.org,
 Olof Johansson <olof@lixom.net>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support for Marvell Armada 375, 380, 385, and 39x SoCs depends on
ARCH_MULTI_V7.
As the latter selects HAVE_SMP, there is no need for MACH_ARMADA_375,
MACH_ARMADA_38X, and MACH_ARMADA_39X to select HAVE_SMP.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Gregory Clement <gregory.clement@bootlin.com>
Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Acked-by: Arnd Bergmann <arnd@arndb.de>
---
v2:
  - Add Acked-by.
---
 arch/arm/mach-mvebu/Kconfig | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index 7a5629b9bede4e3f..34dbeaab94b07e52 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -47,7 +47,6 @@ config MACH_ARMADA_375
 	select ARMADA_375_CLK
 	select HAVE_ARM_SCU
 	select HAVE_ARM_TWD if SMP
-	select HAVE_SMP
 	select MACH_MVEBU_V7
 	select PINCTRL_ARMADA_375
 	help
@@ -66,7 +65,6 @@ config MACH_ARMADA_38X
 	select ARMADA_38X_CLK
 	select HAVE_ARM_SCU
 	select HAVE_ARM_TWD if SMP
-	select HAVE_SMP
 	select MACH_MVEBU_V7
 	select PINCTRL_ARMADA_38X
 	help
@@ -82,7 +80,6 @@ config MACH_ARMADA_39X
 	select CACHE_L2X0
 	select HAVE_ARM_SCU
 	select HAVE_ARM_TWD if SMP
-	select HAVE_SMP
 	select MACH_MVEBU_V7
 	select PINCTRL_ARMADA_39X
 	help
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
