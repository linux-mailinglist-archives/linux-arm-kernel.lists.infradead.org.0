Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6391D143C3D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 12:47:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=P1gWvj+WHZFRze545DVzyvmbKxcviMGpBToFSzVLqwQ=; b=tjj6VmMpnvmXvqCBC9XIVBr+tc
	2kOeccEPXJqHSUnMJzGpEM5fnx9fcSh5I6TRDvjOBJNKB2t0wZ+udb8Y7HMk83LeBWzzgoqQOOFO8
	EvSa36lB/fKuPPFInwtjLla7EeZjYVSXexv3cTwrMQbu9qbTHgDaOcACnFFB/3R6QAD9wokuJN8jG
	yBqBiRpB6ZpoQnc9zbz4jZ6J4yx+cBvkzPYRXhN0g9LdtlWiTk4yR7BhJPjiJNdUQKGLomZ3NKdt5
	R2ov581e+9zRo9w3TR4f3jqpTvdxQv6Xh4klZPDO2q6wG62kFX+R7/Nue7jvhJZPMOvRJVugQI+zv
	+4rbiB3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1its04-0005s4-Fs; Tue, 21 Jan 2020 11:47:16 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itquW-00025o-8f
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:37:42 +0000
Received: from ramsan ([84.195.182.253]) by xavier.telenet-ops.be with bizsmtp
 id sydS2100a5USYZQ01ydSpS; Tue, 21 Jan 2020 11:37:26 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1itquU-00011T-7z; Tue, 21 Jan 2020 11:37:26 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1itquU-0000U9-6V; Tue, 21 Jan 2020 11:37:26 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 09/20] ARM: davinci: Drop unneeded select of TIMER_OF
Date: Tue, 21 Jan 2020 11:37:11 +0100
Message-Id: <20200121103722.1781-9-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200121103722.1781-1-geert+renesas@glider.be>
References: <20200121103413.1337-1-geert+renesas@glider.be>
 <20200121103722.1781-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_023728_527280_7C490E65 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a02:1800:120:4:0:0:f00:14 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support for TI DaVinci SoCs depends on ARCH_MULTI_V5, and thus on
ARCH_MULTIPLATFORM.
As the latter selects TIMER_OF, there is no need for MACH_DA8XX_DT to
select TIMER_OF.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Sekhar Nori <nsekhar@ti.com>
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
All patches in this series are independent of each other.
Cover letter at https://lore.kernel.org/r/20200121103413.1337-1-geert+renesas@glider.be

 arch/arm/mach-davinci/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-davinci/Kconfig b/arch/arm/mach-davinci/Kconfig
index 02b180ad724540c0..d028d38a44bfedba 100644
--- a/arch/arm/mach-davinci/Kconfig
+++ b/arch/arm/mach-davinci/Kconfig
@@ -64,7 +64,6 @@ config MACH_DA8XX_DT
 	default y
 	depends on ARCH_DAVINCI_DA850
 	select PINCTRL
-	select TIMER_OF
 	help
 	  Say y here to include support for TI DaVinci DA850 based using
 	  Flattened Device Tree. More information at Documentation/devicetree
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
