Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B9D1D3071
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 14:58:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iKZ6hcWXmWe7oPAZfI1uw7xu8Mio9nCJMB5sfky2xKY=; b=gz5HY6+3nLDEDM
	yXnGCB2LfUEdOcHxZuh8XDGKi+fuNgnJATlr9IQFFCHFUc/e/xYUEUhrbdRDmlNLpaIN7MboxAcAh
	7Zxuk7FYbVfequp3ZWlXbdWd8Ei9X3oAviuaiUII+bbslCcfft36i0BC1D/Z5tISkLKuYD6TnPGqe
	Z8EZNhsBGW7FJBcv+DJcOqz8ABhd9L4UksJVyPb+cvQ2WoD6zMHC0IwBtonKcHxVqsFJOzxzmHU4/
	NntVHnRnB3Wf0Ilx6Xv9dP1djTFbQ8uJKZDCdYgeGO5HGotzzBH0/YcGoJXo8IosVF6XpTMPPBNAa
	QMQUTh5RKb04UGNxy43Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZDRY-0002gT-F8; Thu, 14 May 2020 12:58:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZDRP-0002g6-82; Thu, 14 May 2020 12:58:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0B2421042;
 Thu, 14 May 2020 05:58:21 -0700 (PDT)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 19B6C3F305;
 Thu, 14 May 2020 05:58:19 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	heiko@sntech.de
Subject: [PATCH] Revert "clk: rockchip: fix wrong mmc sample phase shift for
 rk3328"
Date: Thu, 14 May 2020 13:58:14 +0100
Message-Id: <e563eea358181446dc42c99e842c33f7ce911936.1589460539.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_055823_330659_61A15BEC 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit 82f4b67f018c88a7cc9337f0067ed3d6ec352648.

According to a subsequent revert in the vendor kernel, the original
change was based on unclear documentation and was in fact incorrect.

Emprically, my board's SD card at 50MHz and eMMC at 200MHZ seem to get
lucky with a phase where it had no impact, but limiting the eMMC clock
to 150MHz to match the nominal limit for the I/O pins made it virtually
unusable, constantly throwing errors and retuning. With this revert, it
starts behaving perfectly at 150MHz too.

Fixes: 82f4b67f018c ("clk: rockchip: fix wrong mmc sample phase shift for rk3328")
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/clk/rockchip/clk-rk3328.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3328.c b/drivers/clk/rockchip/clk-rk3328.c
index c186a1985bf4..2429b7c2a8b3 100644
--- a/drivers/clk/rockchip/clk-rk3328.c
+++ b/drivers/clk/rockchip/clk-rk3328.c
@@ -808,22 +808,22 @@ static struct rockchip_clk_branch rk3328_clk_branches[] __initdata = {
 	MMC(SCLK_SDMMC_DRV, "sdmmc_drv", "clk_sdmmc",
 	    RK3328_SDMMC_CON0, 1),
 	MMC(SCLK_SDMMC_SAMPLE, "sdmmc_sample", "clk_sdmmc",
-	    RK3328_SDMMC_CON1, 0),
+	    RK3328_SDMMC_CON1, 1),
 
 	MMC(SCLK_SDIO_DRV, "sdio_drv", "clk_sdio",
 	    RK3328_SDIO_CON0, 1),
 	MMC(SCLK_SDIO_SAMPLE, "sdio_sample", "clk_sdio",
-	    RK3328_SDIO_CON1, 0),
+	    RK3328_SDIO_CON1, 1),
 
 	MMC(SCLK_EMMC_DRV, "emmc_drv", "clk_emmc",
 	    RK3328_EMMC_CON0, 1),
 	MMC(SCLK_EMMC_SAMPLE, "emmc_sample", "clk_emmc",
-	    RK3328_EMMC_CON1, 0),
+	    RK3328_EMMC_CON1, 1),
 
 	MMC(SCLK_SDMMC_EXT_DRV, "sdmmc_ext_drv", "clk_sdmmc_ext",
 	    RK3328_SDMMC_EXT_CON0, 1),
 	MMC(SCLK_SDMMC_EXT_SAMPLE, "sdmmc_ext_sample", "clk_sdmmc_ext",
-	    RK3328_SDMMC_EXT_CON1, 0),
+	    RK3328_SDMMC_EXT_CON1, 1),
 };
 
 static const char *const rk3328_critical_clocks[] __initconst = {
-- 
2.23.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
