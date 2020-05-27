Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D00981E4401
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 15:41:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qVf0+ihEYtvXSf6CNNIeaHI1CSv1VLoeA8PLxDBBch0=; b=rP3o1wpXR4zK8P
	5KoOw6TvQpJ3WDSsUe3uEX7I/AY7HmnvT6ghqAMOmvtBK6JtdFGlX/C6CxQ3S0fD9NbWDCZU6hYsw
	njeiVi4ek2c5eL7mEbA/rYjJpj3FTzbmkMWftSxNZid69kL5BFKIfvupwxT83+kLodjbJtKiIT7uA
	tKkW60KcLsYBT/cFxuNk7cSVX5xUVzkDFuov1n9ODcVPjQvjPRkHZ9vvIrqQ8hedOKiq0eSSNcHSf
	qAhsBLfA+mmFUBI7hf/jRfOWIcL2YGALt4kvafc3Yy/5FRoWj3X0VNcED3PgvtWvqZj49mR4Imz6A
	utWQrjg+18EGNCz1V8Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdwIp-00064B-QO; Wed, 27 May 2020 13:41:03 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdwIc-00063N-5D
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 13:40:52 +0000
Received: from localhost.localdomain ([149.172.98.151]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MxHLs-1ipQ2O23r6-00xZeZ; Wed, 27 May 2020 15:40:44 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH] clk: versatile: undo some dependency changes
Date: Wed, 27 May 2020 15:40:33 +0200
Message-Id: <20200527134043.807045-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:oX8d96/3agk6HQYMnHtVprdFalOQlNymeCToneAXooVriuWLRR+
 c/h+AwhIj6fC9vUzuz5Aa2eLCM3DNnwR+1QROcwAEUOdv4Lulkj+kNPH+g7+VS00QAnl+gr
 c/dD0CTtn4iEhMxVhrytOTGK3BdJav61Y5VWmm06MbbfbRJF+wr0RM02TJCmEuNKu6GocqM
 fVPA8dCdLvlOl5QyMJoIg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8aMReIkVdqU=:yhFX2lu64OasDPFeHhky3H
 IC/WFCqnWvNVHYf5ttpwJsFmp8RmKdFCdbWyOd18oY93TMgMHBSi8BG4PNcmAcoOCzQbTAjVe
 2n0FO4gp/b8z0cbzciNh1NhDV0DzamUtNPfAS8PAhkfrmKZw8elLwnUZMZOT7mBFEkOgGvNzZ
 ThhEgJyTv2JKI3sgBiQKIbZb8GRfvZJ3uGyje0aDEnZvabf/qwD8lcTjl9Ke1tA3R3Uli1pIv
 YoMV4J4lZrUpvBNy8Hszb8VvYzzsmcfUTxRdAdpHfd6a6WiVtbzPYQCTCu0UYPfSgoXCDkm6k
 Bl9xZ1P2tqJTpSTlI7fKnvmoU/cyRIE/E3ra0bIx1xIbMaptle12QYTc16RCVzmhe62aBMJ7J
 Ml2ZBk2UrFyq8fbq0BoH6b/xnigNotBVskzXNTlpg+GA5iAgAVBC468xVXlMixGq51OsYx4ur
 ikKJLzdpwjh+l5Ci1t7KLGorX51y2xm09nP3NGro/PAOMBUOC8JaaVCUxTy5QkjoWIveWwXfv
 f4Vh12dELsS0OTHvouycvZJ7B8ti+36fqacZ///KhnekwVAtgGhn4/3MJCplRbvNIPV9c8jfG
 pAmlZjnk/57dsb0vHyc7IO4OW+Lm6F8ZoFYg6K+W66eZNwPy269MjncCjaCFa2B7xl+/Ys+ug
 +mW0eawTP/R9H0IE7cOoAfPolwNq2bevSAywLpxhuuU/cgovHRbYKgMBRInSn2LkLb7YkIoPU
 L7z0bsXHv515uZ0R8FsS5miYtqW8nxOfNOvXXjBtw9udx3Qz5UiemItenrFyhRpLkCQzgja/D
 vToTOthP83fSoshZtvzcCxjjx3RTDLF3cS67SJ6JCc5FYsPm2E=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_064050_483560_F24D7999 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
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
Cc: Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SP810 and ICST are selected by a couple of platforms, most but
not all in the versatile family:

WARNING: unmet direct dependencies detected for CLK_SP810
  Depends on [n]: COMMON_CLK [=y] && COMMON_CLK_VERSATILE [=n]
  Selected by [y]:
  - ARCH_REALVIEW [=y] && (ARCH_MULTI_V5 [=n] || ARCH_MULTI_V6 [=n] ||
ARCH_MULTI_V7 [=y])

WARNING: unmet direct dependencies detected for ICST
  Depends on [n]: COMMON_CLK [=y] && COMMON_CLK_VERSATILE [=n]
  Selected by [y]:
  - ARCH_REALVIEW [=y] && (ARCH_MULTI_V5 [=n] || ARCH_MULTI_V6 [=n] || ARCH_MULTI_V7 [=y])
  - ARCH_VEXPRESS [=y] && ARCH_MULTI_V7 [=y]
  - ARCH_ZYNQ [=y] && ARCH_MULTI_V7 [=y]

Change back the Kconfig logic to allow these to be selected
without the main option.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/clk/versatile/Kconfig | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/versatile/Kconfig b/drivers/clk/versatile/Kconfig
index a0ed412e8396..a557886d813e 100644
--- a/drivers/clk/versatile/Kconfig
+++ b/drivers/clk/versatile/Kconfig
@@ -7,6 +7,18 @@ menuconfig COMMON_CLK_VERSATILE
 
 if COMMON_CLK_VERSATILE
 
+config CLK_VEXPRESS_OSC
+	tristate "Clock driver for Versatile Express OSC clock generators"
+	depends on VEXPRESS_CONFIG
+	select REGMAP_MMIO
+	default y if ARCH_VEXPRESS
+	---help---
+	  Simple regmap-based driver driving clock generators on Versatile
+	  Express platforms hidden behind its configuration infrastructure,
+	  commonly known as OSCs.
+
+endif
+
 config ICST
 	bool "Clock driver for ARM Reference designs ICST"
 	select REGMAP_MMIO
@@ -22,14 +34,4 @@ config CLK_SP810
 	  Supports clock muxing (REFCLK/TIMCLK to TIMERCLKEN0-3) capabilities
 	  of the ARM SP810 System Controller cell.
 
-config CLK_VEXPRESS_OSC
-	tristate "Clock driver for Versatile Express OSC clock generators"
-	depends on VEXPRESS_CONFIG
-	select REGMAP_MMIO
-	default y if ARCH_VEXPRESS
-	---help---
-	  Simple regmap-based driver driving clock generators on Versatile
-	  Express platforms hidden behind its configuration infrastructure,
-	  commonly known as OSCs.
 
-endif
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
