Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F2E1C5A8F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:08:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Es9+FNSXaAPqzz7jnRanqgC4aTSXJSgaY3Ax61Y7S6E=; b=c+eQUIPzqmARw5o4b6hZ+AG7hX
	0vXxbytRE9tSby/FiQP3YMwgrjUyFaj6EJMVURAlNdBT7ghetfOR2IRB+7+cZpAq2XH9F2QFNRWGs
	9/6pnZtCEFGpQErinhdmY5h5Hp/qua/6oPlGeIJIdF4bP+23op8EyJX9wd3Esv9Ppwd3RSBo/wks4
	4n+LGbxFs9nsXKzlKPM7tJQtSuQAR2lQy1eXaQVKNu6S0D0fOcP6bgeDlIR2UTk49wuOMT5cGkeS/
	aYnedf32oy2P98ifH48Gs/DCtxpNcdoQiQ4jEmfcCtaCtY6WjFNlXtiAKKcf2VZM1wSLUfM2I33e5
	ormUKNrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzB9-0007D5-MA; Tue, 05 May 2020 15:08:15 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzAW-0006jE-KD
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:07:40 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:bd97:8453:3b10:1832])
 by xavier.telenet-ops.be with bizsmtp
 id b37T2200X3VwRR30137TZS; Tue, 05 May 2020 17:07:28 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jVzAN-00028K-SI; Tue, 05 May 2020 17:07:27 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jVzAN-0000Qm-Qi; Tue, 05 May 2020 17:07:27 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: soc@kernel.org
Subject: [PATCH v2 08/15] ARM: davinci: Drop unneeded select of TIMER_OF
Date: Tue,  5 May 2020 17:07:15 +0200
Message-Id: <20200505150722.1575-9-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505150722.1575-1-geert+renesas@glider.be>
References: <20200505150722.1575-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_080736_805965_ACCC5E8B 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@lists.infradead.org
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
Acked-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Sekhar Nori <nsekhar@ti.com>
---
v2:
  - Add Acked-by.
---
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
