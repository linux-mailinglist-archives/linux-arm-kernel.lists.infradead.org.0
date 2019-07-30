Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB82B7A220
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 09:23:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Mi4KYoVqO7hU9YQJFBVBxjVY+CruKiaek1W/VH8FNF4=; b=Byr
	CrKfB7L0HNW8ASNQXhGwCVZgIJZd+2MXOwYctmHohi4iHqa4y2hHje6NiAN0pVNmMtkzUNlkb6xUV
	FlpfIBgs74uK/zDFdhk2xt8BS+FCzVjuLAYK8gT767lDZgwk15mPMjW2XBrRjGRtnoJQIRlstmhZZ
	RMIK2b3lw5LT1AZ8bGMKNRC1NZLzHXMMtFbIgPUsfH9m6kJ2J5ov3Oi02ZsRTqi3HyxZK6JgoesA6
	KcY84weteWT64pu7euSFg3vydlePnNnWFdWEILd7DorC8iOiH3Hi5Fp7hYcF2uf8sTLVnhVHP70I8
	yn8CA/SSXQNGvRGc4nvgW4hFXWBHckA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsMTh-0004Kc-9v; Tue, 30 Jul 2019 07:23:21 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsMTS-0004Jp-V2
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 07:23:08 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id AF3621A05CF;
 Tue, 30 Jul 2019 09:23:02 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A30DF1A05C0;
 Tue, 30 Jul 2019 09:23:02 +0200 (CEST)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 2C2EF204D6;
 Tue, 30 Jul 2019 09:23:02 +0200 (CEST)
From: Abel Vesa <abel.vesa@nxp.com>
To: Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Guido Gunther <agx@sigxcpu.org>,
 Anson Huang <anson.huang@nxp.com>
Subject: [PATCH v3] clk: imx8mq: Mark AHB clock as critical
Date: Tue, 30 Jul 2019 10:22:55 +0300
Message-Id: <1564471375-6736-1-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_002307_142376_6005A78D 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Abel Vesa <abel.vesa@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Initially, the TMU_ROOT clock was marked as critical, which automatically
made the AHB clock to stay always on. Since the TMU_ROOT clock is not
marked as critical anymore, following commit:

431bdd1df48e ("clk: imx8mq: Remove CLK_IS_CRITICAL flag for IMX8MQ_CLK_TMU_ROOT")

all the clocks that derive from ipg_root clock (and implicitly ahb clock)
would also have to enable, along with their own gate, the AHB clock.

But considering that AHB is actually a bus that has to be always on, we mark
it as critical in the clock provider driver and then all the clocks that
derive from it can be controlled through the dedicated per IP gate which
follows after the ipg_root clock.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
Tested-by: Daniel Baluta <daniel.baluta@nxp.com>
Fixes: 431bdd1df48e ("clk: imx8mq: Remove CLK_IS_CRITICAL flag for IMX8MQ_CLK_TMU_ROOT")
---

Changes since v2:
 * added a more detailed commit message and mentioned the commit
   that this change is fixing

 drivers/clk/imx/clk-imx8mq.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index 4328c22..04302f2 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -406,7 +406,8 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MQ_CLK_NOC_APB] = imx8m_clk_composite_critical("noc_apb", imx8mq_noc_apb_sels, base + 0x8d80);
 
 	/* AHB */
-	clks[IMX8MQ_CLK_AHB] = imx8m_clk_composite("ahb", imx8mq_ahb_sels, base + 0x9000);
+	/* AHB clock is used by the AHB bus therefore marked as critical */
+	clks[IMX8MQ_CLK_AHB] = imx8m_clk_composite_critical("ahb", imx8mq_ahb_sels, base + 0x9000);
 	clks[IMX8MQ_CLK_AUDIO_AHB] = imx8m_clk_composite("audio_ahb", imx8mq_audio_ahb_sels, base + 0x9100);
 
 	/* IPG */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
