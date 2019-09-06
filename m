Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD67AB369
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 09:42:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Hry7E5sYqq6ztbiKKH3NTB/agejoJJ/R0t/AEYpXF1Y=; b=Ho5CCfnCIlDusFthMBw96HSiq2
	IJX88JFtefHa4ebRsQiUjjKNuNNqOeHiWR5ryTk/O3f0kaNcFTfFno50R4IXlzpg+EJoPEzs9zGQh
	t1XfVn0igroA1QJOji2iXcFfzrM+rTM7ZkO5Mzuph29vN/r936ydKHNBb1sERWR93p2c2g9cSv5rf
	ktTp8hoM22XlgM+shkBZ1/D4irOYpj3qumt1jujCkit0lIDr106j6zhfzZl2AVEG9U2nv2/w4htOC
	42l1/HyqjT257fOcJpfpeSctDMriiuRv1xejJ/OGLc6fOCnbKcySI1JrsbwpSxcnu7qRm7hufGig9
	g/S9DEBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i68t9-0006NS-L1; Fri, 06 Sep 2019 07:42:35 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i68s6-0005h2-Pp
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 07:41:32 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 50F4AC0E3E;
 Fri,  6 Sep 2019 07:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567755688; bh=5PThB8CbPp7CzMhqALHU7PGlPrATo2NWaeXFnvxIVn8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=drvZ1NVfjP8S07HTglCD14IF98r7nF21bZy9Q7+7ipGQcVBY5gubVAMjK0yGX330n
 3JXnT4RfjyfzDpBZ6o4X9wUF0q68w/W3dm1fVeMomjRC26jkU893lHRk9iYcpJ2ZzX
 o8j22eZNVJ5Xv8Lq3UPedq0dczXiYjtqhRUD7kybd+D8/CoHbYji9MO73O1zrDdvbq
 nSezPLPbgExNnMomZlzp5HSInq9ivBA5AVu1Jawa7lT93AVLWBp+KsNJrEZrbbVgGH
 XdRWC/Z/DRw50fbXtY3vvaWuupikLWfsVVbLdejC1AgWAr1EiretupAuPe6hSptzxH
 ukgdeVJtn5IbA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id CDB44A0066;
 Fri,  6 Sep 2019 07:41:26 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 3/5] net: stmmac: dwmac4: Enable RX Jumbo frame
 support
Date: Fri,  6 Sep 2019 09:41:15 +0200
Message-Id: <1eb3adcf838e92cffd2c4a6ef405fed0f3ac2b1e.1567755423.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1567755423.git.joabreu@synopsys.com>
References: <cover.1567755423.git.joabreu@synopsys.com>
In-Reply-To: <cover.1567755423.git.joabreu@synopsys.com>
References: <cover.1567755423.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_004130_848450_79C1FAD7 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We are already doing it by default in the TX path so we can also enable
Jumbo Frame support in the RX path independently of MTU value.

Signed-off-by: Jose Abreu <joabreu@synopsys.com>

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/net/ethernet/stmicro/stmmac/dwmac4.h      | 3 ++-
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c | 6 ------
 2 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4.h b/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
index 2ed11a581d80..03301ffc0391 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
@@ -352,7 +352,8 @@ enum power_event {
 
 /* Default operating mode of the MAC */
 #define GMAC_CORE_INIT (GMAC_CONFIG_JD | GMAC_CONFIG_PS | \
-			GMAC_CONFIG_BE | GMAC_CONFIG_DCRS)
+			GMAC_CONFIG_BE | GMAC_CONFIG_DCRS | \
+			GMAC_CONFIG_JE)
 
 /* To dump the core regs excluding  the Address Registers */
 #define	GMAC_REG_NUM	132
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
index fc9954e4a772..596311a80d1c 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
@@ -25,15 +25,9 @@ static void dwmac4_core_init(struct mac_device_info *hw,
 {
 	void __iomem *ioaddr = hw->pcsr;
 	u32 value = readl(ioaddr + GMAC_CONFIG);
-	int mtu = dev->mtu;
 
 	value |= GMAC_CORE_INIT;
 
-	if (mtu > 1500)
-		value |= GMAC_CONFIG_2K;
-	if (mtu > 2000)
-		value |= GMAC_CONFIG_JE;
-
 	if (hw->ps) {
 		value |= GMAC_CONFIG_TE;
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
