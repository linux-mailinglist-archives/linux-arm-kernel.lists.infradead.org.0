Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75BE8CB077
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 22:50:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Pbdwb8MBwm+tkPkwcUHVq0W7TAgCjN8cX7nqIPxmLjQ=; b=KzMFhigyYx0uav
	H5kTvuhp77XS4U77KlZ3Y3+aSN6Vdai0XzgHJ4oQwuwm4sjxggsB6c6opW0LJ/pm+qkO1a1hyl03H
	zCUMUleTLwwA65gI+MkQiaP/NhQplPJChFAY1e1lWwPHJ3nX3CwZisI5tSnqxhgGQjZY0lKhw8CCD
	iXpbJr2DFV8GuAJ+C8L7VJn1hrTZ67EMZ3sGcsvd4w3GZmnEYL0WN7HaR6EmRywbOIWsvMM122ND3
	lxTEFBJ96YR8fkigq5eK2wI+sYfDj+8xpw6SWabQql8OiWmd6rkUmxHwfHAviOSbmKCHSPgh/fZQb
	u+7gfllaUY5LmFE0t73A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG83i-0005x4-2O; Thu, 03 Oct 2019 20:50:46 +0000
Received: from avon.wwwdotorg.org ([104.237.132.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG83Z-0005vw-Fd
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 20:50:38 +0000
Received: from swarren-lx1.nvidia.com (unknown [216.228.112.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by avon.wwwdotorg.org (Postfix) with ESMTPSA id 232B21C0728;
 Thu,  3 Oct 2019 14:50:36 -0600 (MDT)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.100.3 at avon.wwwdotorg.org
From: Stephen Warren <swarren@wwwdotorg.org>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Prashant Gaikwad <pgaikwad@nvidia.com>
Subject: [PATCH V3 1/4] clk: tegra: mark fuse clock as critical
Date: Thu,  3 Oct 2019 14:50:30 -0600
Message-Id: <20191003205033.98381-1-swarren@wwwdotorg.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_135037_564314_87762A3C 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Stephen Boyd <sboyd@kernel.org>, linux-tegra@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stephen Warren <swarren@nvidia.com>

For a little over a year, U-Boot on Tegra124 has configured the flow
controller to perform automatic RAM re-repair on off->on power transitions
of the CPU rail1]. This is mandatory for correct operation of Tegra124.
However, RAM re-repair relies on certain clocks, which the kernel must
enable and leave running. The fuse clock is one of those clocks. Mark this
clock as critical so that LP1 power mode (system suspend) operates
correctly.

[1] 3cc7942a4ae5 ARM: tegra: implement RAM repair

Reported-by: Jonathan Hunter <jonathanh@nvidia.com>
Cc: stable@vger.kernel.org
Signed-off-by: Stephen Warren <swarren@nvidia.com>
---
v3: Added comment to the clock table entry indicating why the clock is
    critical.
v2: Set CRITICAL flag on the clock, rather than enabling it in
    tegra124_init_table[].
---
 drivers/clk/tegra/clk-tegra-periph.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/tegra/clk-tegra-periph.c b/drivers/clk/tegra/clk-tegra-periph.c
index 1ed85f120a1b..49b9f2f85bad 100644
--- a/drivers/clk/tegra/clk-tegra-periph.c
+++ b/drivers/clk/tegra/clk-tegra-periph.c
@@ -785,7 +785,11 @@ static struct tegra_periph_init_data gate_clks[] = {
 	GATE("ahbdma", "hclk", 33, 0, tegra_clk_ahbdma, 0),
 	GATE("apbdma", "pclk", 34, 0, tegra_clk_apbdma, 0),
 	GATE("kbc", "clk_32k", 36, TEGRA_PERIPH_ON_APB | TEGRA_PERIPH_NO_RESET, tegra_clk_kbc, 0),
-	GATE("fuse", "clk_m", 39, TEGRA_PERIPH_ON_APB, tegra_clk_fuse, 0),
+	/*
+	 * Critical for RAM re-repair operation, which must occur on resume
+	 * from LP1 system suspend and as part of CCPLEX cluster switching.
+	 */
+	GATE("fuse", "clk_m", 39, TEGRA_PERIPH_ON_APB, tegra_clk_fuse, CLK_IS_CRITICAL),
 	GATE("fuse_burn", "clk_m", 39, TEGRA_PERIPH_ON_APB, tegra_clk_fuse_burn, 0),
 	GATE("kfuse", "clk_m", 40, TEGRA_PERIPH_ON_APB, tegra_clk_kfuse, 0),
 	GATE("apbif", "clk_m", 107, TEGRA_PERIPH_ON_APB, tegra_clk_apbif, 0),
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
