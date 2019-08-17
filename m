Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC86391291
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 20:57:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6YRb2WlPyyVePjKAkswIG3keQIjFVigc0TJgANmCMgI=; b=Huj2k10beegK76P/hp3a4GxFq9
	HrfASVbaDgk+Zo9oEc2pqaSo5Bl6IyssV3mAiA8L483ybnSjVU2K2cc6LbJA83xIh57nxCVJWORv+
	lkEhgTvzMoxOtqlVjkyFWS2Q3ADp3i3e4ZJjC31cM7K97SdeFGIv1DEjBauCQufWEBQG8RHZp97Fc
	HY3GouUfmHT9ZDirTP0LtvR2GtlRkCvlnGIZZTI9sFUrckCjHZ17Jk0viSGx2sonZc5qKdR+K1j0n
	/tL+sOnpUuZrgpQnSCKxrGagItPUryl4TOXy49qe11tiOZn8ttr6oBOajUR6OZ04LB5/wQydphJen
	i0RcXiLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz3tB-00029F-Sp; Sat, 17 Aug 2019 18:57:22 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz3qu-0007Zf-1h
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 18:55:07 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id F2BADC0E44;
 Sat, 17 Aug 2019 18:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1566068097; bh=peW4UI5iQljYC0L2GAo9h+Jjy5CBHEqexF7wYBcojAo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=j383H8btghe0y1BAYtCTuzZFU+b5/9SQbLjqBdSV7YMPJkSzL4ZzIxeaDZVWhH5HM
 Usjew7mqZjBKQakeDSE5/5jjl8GU5uFhVJzP5a5NrHbExOPyZGw6KgaU66l5Rl/6PU
 8GKQix1YhJ6K5G4kntTFkpZQmSP8klW7nyZRzF7CtLNVI3azoD0vSU5SQsJipfFv3w
 L7Q8deOf6VMNjfySSW6slcgzJ2cmZyF6enmYZ93v82Vc3s47w6T/dVd/994nqEBnUB
 nrHqberYZOJEzdr+Tckll3pI5ebduMfFTBugLILcx4q0ZWF5Bh1uOvz41xO0O8VMoC
 MMAX06drgTPXQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id B0B70A0070;
 Sat, 17 Aug 2019 18:54:55 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v3 06/12] net: stmmac: dwxgmac: Add Flexible PPS
 support
Date: Sat, 17 Aug 2019 20:54:45 +0200
Message-Id: <13d91901b8f0d3d3109951e557eeace0d3f2453b.1566067803.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1566067802.git.joabreu@synopsys.com>
References: <cover.1566067802.git.joabreu@synopsys.com>
In-Reply-To: <cover.1566067802.git.joabreu@synopsys.com>
References: <cover.1566067802.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_115500_112061_143C64CB 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Jakub Kicinski <jakub.kicinski@netronome.com>,
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
