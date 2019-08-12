Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B0789A54
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 11:47:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6YRb2WlPyyVePjKAkswIG3keQIjFVigc0TJgANmCMgI=; b=n2w1KUDwLRqk724VpHmMtTzaAU
	+ZuxW2bC4djM4GOLDvb3x7AWBJ8zT1vEmNhGqsIYP5s5EX9pHEWbPbKXDZIgipslq0OtE1LbnpTLf
	ZLmfeVQQZs6PK4qA/G1ZQa4a0f4XaSCFvVzwSytQmmJ+rBQZ7ZRhvv5IKd/z2hX6qQDzl1ZAzcGdq
	3szokHLfRC0HtUQcTqfL5M/lbuOtU8m+0HSdoAd+aO14Jm3t6ZdQS7tmz94BrjzBQ6NfeRDTPfjlw
	4xJcZD67WGp8BP8/wTKngKdCu4zJlAEfwfqt3JHH4p33PvkZzb4Kg2YbR0ZhOl1wr7Azuxk9WA6xK
	5bVBcKcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx6vD-00052I-1C; Mon, 12 Aug 2019 09:47:23 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx6sN-0001Pc-19
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 09:44:33 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 80199C21DE;
 Mon, 12 Aug 2019 09:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1565603065; bh=peW4UI5iQljYC0L2GAo9h+Jjy5CBHEqexF7wYBcojAo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=bzA6yC8oajVP8aLgjV6n3nFm06KxghFQzqYthyNQMC2gamyfeMHj2DJAJQdsXBQay
 XcD0iBPU4/GqKBDflqef73iY9enm4bfwzyVUFsaxRl3XoxKyK+fXlUtNsR7Qtx7PMS
 +pD2nzsnMaUyd9mlkyY6MljhXDjfaq3s6+I+diQ07bgOSB81HHmgZEpRR7HthS8zpM
 DaPVavVLivjpz2unECJFvC2170R6BqYB1ph7Mp7U7WL2fN1dQgVTnT5/dG8j2zZ30/
 ijCGhahzM258ovsgNYfcVTyW1NBYPfVVLqOYtCTtwFDLRiSvh5IMsPByEY3+X9ubsc
 lveKytukZysNg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 2F79EA006E;
 Mon, 12 Aug 2019 09:44:23 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v2 06/12] net: stmmac: dwxgmac: Add Flexible PPS
 support
Date: Mon, 12 Aug 2019 11:44:05 +0200
Message-Id: <495d44a7430c096afbae4a8a67c3b3f35b7f0a1f.1565602974.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1565602974.git.joabreu@synopsys.com>
References: <cover.1565602974.git.joabreu@synopsys.com>
In-Reply-To: <cover.1565602974.git.joabreu@synopsys.com>
References: <cover.1565602974.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_024427_111202_16871FA9 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the support for Flexible PPS in XGMAC cores.

Signed-off-by: Jose Abreu <joabreu@synopsys.com>

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     | 19 ++++++++
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    | 56 ++++++++++++++++++++++
 2 files changed, 75 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
index 995d533b9316..dbac63972faf 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
@@ -149,6 +149,25 @@
 #define XGMAC_TXTIMESTAMP_NSEC		0x00000d30
 #define XGMAC_TXTSSTSLO			GENMASK(30, 0)
 #define XGMAC_TXTIMESTAMP_SEC		0x00000d34
+#define XGMAC_PPS_CONTROL		0x00000d70
+#define XGMAC_PPS_MAXIDX(x)		((((x) + 1) * 8) - 1)
+#define XGMAC_PPS_MINIDX(x)		((x) * 8)
+#define XGMAC_PPSx_MASK(x)		\
+	GENMASK(XGMAC_PPS_MAXIDX(x), XGMAC_PPS_MINIDX(x))
+#define XGMAC_TRGTMODSELx(x, val)	\
+	GENMASK(XGMAC_PPS_MAXIDX(x) - 1, XGMAC_PPS_MAXIDX(x) - 2) & \
+	((val) << (XGMAC_PPS_MAXIDX(x) - 2))
+#define XGMAC_PPSCMDx(x, val)		\
+	GENMASK(XGMAC_PPS_MINIDX(x) + 3, XGMAC_PPS_MINIDX(x)) & \
+	((val) << XGMAC_PPS_MINIDX(x))
+#define XGMAC_PPSCMD_START		0x2
+#define XGMAC_PPSCMD_STOP		0x5
+#define XGMAC_PPSEN0			BIT(4)
+#define XGMAC_PPSx_TARGET_TIME_SEC(x)	(0x00000d80 + (x) * 0x10)
+#define XGMAC_PPSx_TARGET_TIME_NSEC(x)	(0x00000d84 + (x) * 0x10)
+#define XGMAC_TRGTBUSY0			BIT(31)
+#define XGMAC_PPSx_INTERVAL(x)		(0x00000d88 + (x) * 0x10)
+#define XGMAC_PPSx_WIDTH(x)		(0x00000d8c + (x) * 0x10)
 
 /* MTL Registers */
 #define XGMAC_MTL_OPMODE		0x00001000
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
index ba5183f38f84..f843e3640f50 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
@@ -8,6 +8,7 @@
 #include <linux/crc32.h>
 #include <linux/iopoll.h>
 #include "stmmac.h"
+#include "stmmac_ptp.h"
 #include "dwxgmac2.h"
 
 static void dwxgmac2_core_init(struct mac_device_info *hw,
@@ -1011,6 +1012,60 @@ static int dwxgmac2_get_mac_tx_timestamp(struct mac_device_info *hw, u64 *ts)
 	return 0;
 }
 
+static int dwxgmac2_flex_pps_config(void __iomem *ioaddr, int index,
+				    struct stmmac_pps_cfg *cfg, bool enable,
+				    u32 sub_second_inc, u32 systime_flags)
+{
+	u32 tnsec = readl(ioaddr + XGMAC_PPSx_TARGET_TIME_NSEC(index));
+	u32 val = readl(ioaddr + XGMAC_PPS_CONTROL);
+	u64 period;
+
+	if (!cfg->available)
+		return -EINVAL;
+	if (tnsec & XGMAC_TRGTBUSY0)
+		return -EBUSY;
+	if (!sub_second_inc || !systime_flags)
+		return -EINVAL;
+
+	val &= ~XGMAC_PPSx_MASK(index);
+
+	if (!enable) {
+		val |= XGMAC_PPSCMDx(index, XGMAC_PPSCMD_STOP);
+		writel(val, ioaddr + XGMAC_PPS_CONTROL);
+		return 0;
+	}
+
+	val |= XGMAC_PPSCMDx(index, XGMAC_PPSCMD_START);
+	val |= XGMAC_TRGTMODSELx(index, XGMAC_PPSCMD_START);
+	val |= XGMAC_PPSEN0;
+
+	writel(cfg->start.tv_sec, ioaddr + XGMAC_PPSx_TARGET_TIME_SEC(index));
+
+	if (!(systime_flags & PTP_TCR_TSCTRLSSR))
+		cfg->start.tv_nsec = (cfg->start.tv_nsec * 1000) / 465;
+	writel(cfg->start.tv_nsec, ioaddr + XGMAC_PPSx_TARGET_TIME_NSEC(index));
+
+	period = cfg->period.tv_sec * 1000000000;
+	period += cfg->period.tv_nsec;
+
+	do_div(period, sub_second_inc);
+
+	if (period <= 1)
+		return -EINVAL;
+
+	writel(period - 1, ioaddr + XGMAC_PPSx_INTERVAL(index));
+
+	period >>= 1;
+	if (period <= 1)
+		return -EINVAL;
+
+	writel(period - 1, ioaddr + XGMAC_PPSx_WIDTH(index));
+
+	/* Finally, activate it */
+	writel(val, ioaddr + XGMAC_PPS_CONTROL);
+	return 0;
+}
+
 const struct stmmac_ops dwxgmac210_ops = {
 	.core_init = dwxgmac2_core_init,
 	.set_mac = dwxgmac2_set_mac,
@@ -1048,6 +1103,7 @@ const struct stmmac_ops dwxgmac210_ops = {
 	.update_vlan_hash = dwxgmac2_update_vlan_hash,
 	.rxp_config = dwxgmac3_rxp_config,
 	.get_mac_tx_timestamp = dwxgmac2_get_mac_tx_timestamp,
+	.flex_pps_config = dwxgmac2_flex_pps_config,
 };
 
 int dwxgmac2_setup(struct stmmac_priv *priv)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
