Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B212C4262
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 23:14:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4yLL2PB8K9MCz3nWElC834JoL4s/53vnd2ai15Idhi8=; b=AP6tn8ufIW5KKO
	/j2o4LVibm04eu9vj2dJwaHsMhKAPdU1OqH20b0HpeXmvqC0oh0ihPoXvyyJrl3iQtI/y/EHL1u5d
	h0xG1S+xcPiEn0ECJv/joQugjS2iKM8GtgrvwUIEPeZ+o7v++8m13nFmHQWB2iudoyRUeI2QmhN+T
	7c2O3TPA+7P35fMgaapWFGHRFMn1WOmJ3g49wVY/On0K+9ZMFc9y+w4bHz16XBRX5JUdFwrianaDe
	KwSndJ2nxrI+PUQYVlCKh6wjV73fQvFBEG/L87F/hePrDdsvIp4ugT+BeojkMqMFlUVnqG5FU1eKD
	RChe9LMwRRL0PlxyYWhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFPTK-0006iz-Qs; Tue, 01 Oct 2019 21:14:14 +0000
Received: from avon.wwwdotorg.org ([104.237.132.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFPTB-0006hn-NO
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 21:14:07 +0000
Received: from swarren-lx1.nvidia.com (unknown [216.228.112.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by avon.wwwdotorg.org (Postfix) with ESMTPSA id 411071C0162;
 Tue,  1 Oct 2019 15:14:02 -0600 (MDT)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.100.3 at avon.wwwdotorg.org
From: Stephen Warren <swarren@wwwdotorg.org>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Prashant Gaikwad <pgaikwad@nvidia.com>
Subject: [PATCH 1/4] clk: tegra: Enable fuse clock on Tegra124
Date: Tue,  1 Oct 2019 15:13:43 -0600
Message-Id: <20191001211346.104400-1-swarren@wwwdotorg.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_141405_799767_57C978AB 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

For a little over a year, U-Boot has configured the flow controller to
perform automatic RAM re-repair on off->on power transitions of the CPU
rail1]. This is mandatory for correct operation of Tegra124. However, RAM
re-repair relies on certain clocks, which the kernel must enable and
leave running. The fuse clock is one of those clocks. Enable this clock
so that LP1 power mode (system suspend) operates correctly.

[1] 3cc7942a4ae5 ARM: tegra: implement RAM repair

Reported-by: Jonathan Hunter <jonathanh@nvidia.com>
Cc: stable@vger.kernel.org
Signed-off-by: Stephen Warren <swarren@nvidia.com>
---
 drivers/clk/tegra/clk-tegra124.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/tegra/clk-tegra124.c b/drivers/clk/tegra/clk-tegra124.c
index 0224fdc4766f..f53f6315c646 100644
--- a/drivers/clk/tegra/clk-tegra124.c
+++ b/drivers/clk/tegra/clk-tegra124.c
@@ -1291,6 +1291,7 @@ static struct tegra_clk_init_table common_init_table[] __initdata = {
 };
 
 static struct tegra_clk_init_table tegra124_init_table[] __initdata = {
+	{ TEGRA124_CLK_FUSE, -1, 0, 1 },
 	{ TEGRA124_CLK_SOC_THERM, TEGRA124_CLK_PLL_P, 51000000, 0 },
 	{ TEGRA124_CLK_CCLK_G, TEGRA124_CLK_CLK_MAX, 0, 1 },
 	{ TEGRA124_CLK_HDA, TEGRA124_CLK_PLL_P, 102000000, 0 },
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
