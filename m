Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C5D1A26A3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 18:01:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ff2qIhI+kuDzhw40oAud9QVI7qT9owQa7Y6JS1OWnJY=; b=r62nBgQPTsp6zY
	z2iRiz3DvUz4AussMU1nb9I9g++HzERR6CXNOvBPPTORmfa/YHPcSrlFJyaMYiGVRdzqM4v990hQb
	PEQdOsKY2ouI/hvDoD5bxVrvwRFQzwzUEQD5UQLxNprkOYi8r6DNSCV1FAVjGbzicPfkGCoiEPd+E
	GHheZ5ADhaaC/DUC2C8wTJnPJ7t3LYk1ztA8OM9+WaXWA6KTshvRfQjgnPj9SYDrOZkseS3iXaT0H
	t/nXAz13FcFYauihkUESDc+V39Zhj+okh0/gVCPcUOKZtX2dFn5fbRwEfpo6oY9Bjf0WdeO2gY9ko
	ONmwLW74L5arR+zgSqJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMD8l-0001u0-N2; Wed, 08 Apr 2020 16:01:23 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMD8e-0001td-Td
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 16:01:18 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MnqbU-1iyNtW0WDK-00pLyR; Wed, 08 Apr 2020 18:00:52 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: catalin.marinas@arm.com, will@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, chunyan.zhang@unisoc.com
Subject: [PATCH] [RFC] clk: sprd: fix compile-testing
Date: Wed,  8 Apr 2020 18:00:44 +0200
Message-Id: <20200408160044.2550437-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:J6BJpZg6tGsBXqhtv/w/5/oW9Rnzup92xQ0SjE2vxeldApZgQj9
 QjIHkGAG9aQIQmH9wpdSxYOE8QHIrmRca7klY5BYRWNRjv+M/rvK7ySHuCj78C/tBmbdtvC
 FS3jMKblE2ms/X1TDRHMo8xVheCVUPLzBh57wOq6D1AkTFaAVPQ9YI/CwhmuU7H1O+zlmTr
 FkuoYSJHEbhujCgRBWFNg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:a5QNQCaQT/k=:DSU4RMPmXjdaZVRs5KjWyf
 1YJwTvHrV2NqGLbVw5DcrdAOeBpKGdP6kedqM9Wcaeq5NLG7tK6HzfyMRmn4e2DO4uiAdYU3R
 HT1hK+gqGMHIpgm60ILZCLXhXQhKTrq4SIy/C4C0UcUx28SjA+UJ3oQDNb/0Rzn3LRCj1w4Lv
 5h/cj50kjyCi2pMrd1Ll3x/1kXvKVaL2gi2/35dLlUQUF4bK7N9Sn+Y17zq2NzFvaXlP6X0aU
 PWieHwNI70NWitkFoOHjnjMq7UK70LlkWfFaIJJwg8fQu4FBTn2WJPl3RAGGB9v7NzHy9Fv6a
 AhZMFMbARBMtfvxO+k6A9Rb+x+uFTuQSgvkWXUV5zjpIPLQXRQhGYskWtFbZCg+jc4xGJ1wld
 ukvUrn4CNR25sIC48g19/lvgF0bnnYKQdHwofRfYybe41F5X+pERcRR2bXz6BK7Aw2OBt8nhB
 qQOpQm3lwdYvfJWe3+9r0MiUlTu9uIyTO2i20UF611jY8g1FyH0q/fwjSsXDpowRZF86/1gsG
 mFiR8/iocQl4wH1y/PAocYHiVwTFSGx4x5aF/HnQUxAPzqB5JRppW/AsAKdofh2xrN5iN0Zwu
 e3zo0yvYEuaSowf22S9SnFRNPotXKcFz7R/5Wx/0HrnYK5Ly805H7MkqnrRRbZ5K59JjTA6k/
 WlBveSvQ8dpe0mEs7CFRr4CfXpEDzssdl7afxlBI3krwXX5ieaCeap7im2BZH7vYWz4yJeqb+
 VLIklPNdmo1cVMamOWG+bWw+Rf6UxN6N9VGIFhpUgfZwF2k6RnQcvgquIRqeKfVlxfJTZGkVX
 on5K/cARIyGjlSCw3WWM2LPwOt1GjCCPYEwSK9Y1jC3JaNZFoM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_090117_246424_263E1C2E 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
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
Cc: gregkh@linuxfoundation.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I got a build failure with CONFIG_ARCH_SPRD=m when the
main portion of the clock driver failed to get linked into
the kernel:

ERROR: modpost: "sprd_pll_sc_gate_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
ERROR: modpost: "sprd_pll_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
ERROR: modpost: "sprd_div_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
ERROR: modpost: "sprd_comp_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
ERROR: modpost: "sprd_mux_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
ERROR: modpost: "sprd_gate_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
ERROR: modpost: "sprd_sc_gate_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
ERROR: modpost: "sprd_clk_probe" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
ERROR: modpost: "sprd_clk_regmap_init" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
ERROR: modpost: "sprd_pll_ops" [drivers/clk/sprd/sc9860-clk.ko] undefined!
ERROR: modpost: "sprd_div_ops" [drivers/clk/sprd/sc9860-clk.ko] undefined!
ERROR: modpost: "sprd_mux_ops" [drivers/clk/sprd/sc9860-clk.ko] undefined!

This is a combination of two trivial bugs:

- A platform should not be 'tristate', it should be a 'bool' symbol
  like the other platforms, if only for consistency, and to avoid
  surprises like this one.

- The clk Makefile does not traverse into the sprd subdirectory
  if the platform is disabled but the drivers are enabled for
  compile-testing.

Fixing either of the two would be sufficient to address the link failure,
but for correctness, both need to be changed.

Fixes: 2b1b799d7630 ("arm64: change ARCH_SPRD Kconfig to tristate")
Fixes: d41f59fd92f2 ("clk: sprd: Add common infrastructure")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm64/Kconfig.platforms | 2 +-
 drivers/clk/Makefile         | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 55d70cfe0f9e..3c7e310fd8bf 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -248,7 +248,7 @@ config ARCH_TEGRA
 	  This enables support for the NVIDIA Tegra SoC family.
 
 config ARCH_SPRD
-	tristate "Spreadtrum SoC platform"
+	bool "Spreadtrum SoC platform"
 	help
 	  Support for Spreadtrum ARM based SoCs
 
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index f4169cc2fd31..60e811d3f226 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -105,7 +105,7 @@ obj-$(CONFIG_CLK_SIFIVE)		+= sifive/
 obj-$(CONFIG_ARCH_SIRF)			+= sirf/
 obj-$(CONFIG_ARCH_SOCFPGA)		+= socfpga/
 obj-$(CONFIG_PLAT_SPEAR)		+= spear/
-obj-$(CONFIG_ARCH_SPRD)			+= sprd/
+obj-y					+= sprd/
 obj-$(CONFIG_ARCH_STI)			+= st/
 obj-$(CONFIG_ARCH_STRATIX10)		+= socfpga/
 obj-$(CONFIG_ARCH_SUNXI)		+= sunxi/
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
