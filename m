Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD3016AD70
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:30:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YLSEFGlyST+ERhPnfeKI0Ao2n9xu88lPp02244OWaQ8=; b=ZzcvkVntNpgffu
	FbwZn5iKfAia4IWehTwWvCvgVgCz3FH5meC2zxAS2yS+AWQsyBQ8fQLZkO8g4Gtb8VwJR0BvF1nJj
	sDZESp/CDheyHPMBsFJCktuuiubrUv0eCu9B4PCe3n3WsEyPmbcOSrD9nWNGeXqGhTraIIHlt2mqZ
	nHo2gYsGkpmgqLZIphxOwcpzCEsmAqpARc26fsBJj6NOCpyq+y6IiQTGO0IoBc8PMLF+9/78p1ZDx
	3MN0svtd55SSGM8PVmRUFyuP3hXD21y4ApIOilV4kKNpQjM/xZhK7V+J/URVyNhxabWd6/kWR1WbW
	acxRQs/dJjmYGq5YsM3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6HYi-0002Ls-UX; Mon, 24 Feb 2020 17:30:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6HYT-0002LC-AL
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 17:30:06 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1j6HYO-0004HT-08; Mon, 24 Feb 2020 18:30:00 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1j6HYM-0007ZI-2z; Mon, 24 Feb 2020 18:29:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: [PATCH 2/2] net: ethernet: stmmac: don't warn about missing optional
 wakeup IRQ
Date: Mon, 24 Feb 2020 18:29:55 +0100
Message-Id: <20200224172956.28744-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200224172956.28744-1-a.fatoum@pengutronix.de>
References: <20200224172956.28744-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: afa@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_093005_362364_8B7DC31B 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 kernel@pengutronix.de, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The "stm32_pwr_wakeup" is optional per the binding and the driver
handles its absence gracefully. Request it with
platform_get_irq_byname_optional, so its absence doesn't needlessly
clutter the log.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
index dc84e5066bf8..b2dc99289687 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
@@ -324,7 +324,7 @@ static int stm32mp1_parse_data(struct stm32_dwmac *dwmac,
 	/* Get IRQ information early to have an ability to ask for deferred
 	 * probe if needed before we went too far with resource allocation.
 	 */
-	dwmac->irq_pwr_wakeup = platform_get_irq_byname(pdev,
+	dwmac->irq_pwr_wakeup = platform_get_irq_byname_optional(pdev,
 							"stm32_pwr_wakeup");
 	if (dwmac->irq_pwr_wakeup == -EPROBE_DEFER)
 		return -EPROBE_DEFER;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
