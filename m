Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6DEA1C884E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 13:31:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+MZrV0QikfoOOt/64/N9D2ybUrOeiYzA/0xf1BCEZNk=; b=qVxmjQuuUK4IaDQiOB4YPozCJa
	kmkF3ZtmS8dUl8ESv1/JN35c4W++0WBAaYApLG7nVPZFxwegT3uj40mmJvh5Kyucug0zSmtLh1H+I
	tHULomuXiu8L/wAkqFL83Cn74tcqAiYa9YqtHqt8c43D7+KykUbROe0Z59lOuLW+EkmBgUe68RfRE
	L60estibddKcP1t68/Ycn8iYQr0V7V8TavdR84Tgt+JWS2OPga7N0vHsM69mFqP6UYsceAZbquoLC
	4UG2tagH7bWddJFLNzI+26zRDZVzWLbarcnFAowQwu21M21fwv0bxvJ+Pr7BchzLQ84WKoA5GVufJ
	yQk0L3qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWekY-0000ml-M9; Thu, 07 May 2020 11:31:34 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWejO-00080N-R7
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 11:30:24 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:6572:4a1f:d283:9ae8])
 by baptiste.telenet-ops.be with bizsmtp
 id bnW3220073ZRV0X01nW3o3; Thu, 07 May 2020 13:30:15 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jWej4-0006zF-Vp; Thu, 07 May 2020 13:30:02 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jWej4-00068N-VW; Thu, 07 May 2020 13:30:02 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Jens Axboe <axboe@kernel.dk>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH 1/4] ahci: qoriq: Add platform dependencies
Date: Thu,  7 May 2020 13:29:52 +0200
Message-Id: <20200507112955.23520-2-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507112955.23520-1-geert+renesas@glider.be>
References: <20200507112955.23520-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_043023_049314_8307B409 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:13 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-ide@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Freescale QorIQ AHCI SATA controller is only present on Freescale
Layerscape SoCs.  Add platform dependencies to the AHCI_QORIQ config
symbol, to avoid asking the user about it when configuring a kernel
without Layerscape support.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/ata/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
index 05ecdce1b702cf8b..d9e66b37acd1862a 100644
--- a/drivers/ata/Kconfig
+++ b/drivers/ata/Kconfig
@@ -264,6 +264,7 @@ config AHCI_XGENE
 config AHCI_QORIQ
 	tristate "Freescale QorIQ AHCI SATA support"
 	depends on OF
+	depends on SOC_LS1021A || ARCH_LAYERSCAPE || COMPILE_TEST
 	select SATA_HOST
 	help
 	  This option enables support for the Freescale QorIQ AHCI SoC's
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
