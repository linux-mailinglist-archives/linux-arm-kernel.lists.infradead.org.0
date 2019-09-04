Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 452FAA8392
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 15:19:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=m9PpBzhZKR8jYX7B9eNCBxsUmafA3Yq0CB/x9CNr5Xc=; b=iyv4+X8wzVtFTPMRuTWm+P5LoF
	F+uu6exoiOoDohBd1X2liJR0ElL+bl9auK1IL1x3iGEXOawtY+RrNfixmG1O6vY3L+IDgv/gPU5nW
	Ui2fHH8oNF0YoaDyJE4yWoa1TKUyOF/hprjoS3u6bO8BiktCBnyIlJam4wmIP1GnnoAaYe0bG8dIO
	Ik11q3u2c71I6XivRiNp56o9O/RP73Vp6l30S9rLqcE1uZUcsq1aPKt8o60EV9e4rIC2xdBDrPGn0
	ECiSVMiwTGpwXSTJuPHLSSZzWZ4yaHujO+cX1tx/i33MbwmpeBqdIW8W8ZwHHEjByqkFaBt5aU/7S
	ddKQSb2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5VBg-0002Qs-IY; Wed, 04 Sep 2019 13:19:04 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5V9v-0000vk-Bq
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 13:17:18 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id B6254C5744;
 Wed,  4 Sep 2019 13:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567603034; bh=vkwFXbNgXpcsWIBymeTdbdI0d7HHjr+O5myQC7lgDrs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=bSWsiHPfZ0peEAD/q/zor6wVobBF6CzK/l4f6+j85hk0JZgqoaZI0YdEYAL3E2iBJ
 J2t68SLVfnh1hOuOj3tAGoh6SjLfUjI5v5H3Q7GPsLEVNkGbj1IVgJ+qGTtc4s/dZv
 K2TgXHnUvDwFjU6kMbft+9ku9Tc8ARAB8MKeiroRdbaCjYOEKfLoNsMQ9N8h3xS+ZI
 eg76uXHG21o/mPxDKqkb7XO7lY2NzErYAlsLM1GjXs/Sdxti4/F/8kYR2ZXb2l7uDO
 se0xIbfIEuuIuo67k3ytVVshGwM+jF/uuQIu7rtQl6pBMR+Uc0BOI4sN/Uh9Xp0kts
 8zW6TF2qX6Eng==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 73A8CA0072;
 Wed,  4 Sep 2019 13:17:12 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH v2 net-next 06/13] net: stmmac: xgmac: Implement ARP Offload
Date: Wed,  4 Sep 2019 15:16:58 +0200
Message-Id: <910ee66fffd0cfedc5f85973cbf717afce9d41ad.1567602868.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1567602867.git.joabreu@synopsys.com>
References: <cover.1567602867.git.joabreu@synopsys.com>
In-Reply-To: <cover.1567602867.git.joabreu@synopsys.com>
References: <cover.1567602867.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_061715_420257_EDF4D3EF 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Implement the ARP Offload feature in XGMAC cores.

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
 drivers/net/ethernet/stmicro/stmmac/common.h        |  1 +
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c | 17 +++++++++++++++++
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c  |  1 +
 drivers/net/ethernet/stmicro/stmmac/hwif.h          |  3 +++
 4 files changed, 22 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/common.h b/drivers/net/ethernet/stmicro/stmmac/common.h
index 19538057c24e..912bbb6515b2 100644
--- a/drivers/net/ethernet/stmicro/stmmac/common.h
+++ b/drivers/net/ethernet/stmicro/stmmac/common.h
@@ -361,6 +361,7 @@ struct dma_features {
 	unsigned int vlins;
 	unsigned int dvlan;
 	unsigned int l3l4fnum;
+	unsigned int arpoffsel;
 };
 
 /* GMAC TX FIFO is 8K, Rx FIFO is 16K */
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
index 9f568b54b339..36262ef8b70a 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
@@ -1338,6 +1338,22 @@ static int dwxgmac2_config_l4_filter(struct mac_device_info *hw, u32 filter_no,
 	return 0;
 }
 
+static void dwxgmac2_set_arp_offload(struct mac_device_info *hw, bool en,
+				     u32 addr)
+{
+	void __iomem *ioaddr = hw->pcsr;
+	u32 value;
+
+	writel(addr, ioaddr + XGMAC_ARP_ADDR);
+
+	value = readl(ioaddr + XGMAC_RX_CONFIG);
+	if (en)
+		value |= XGMAC_CONFIG_ARPEN;
+	else
+		value &= ~XGMAC_CONFIG_ARPEN;
+	writel(value, ioaddr + XGMAC_RX_CONFIG);
+}
+
 const struct stmmac_ops dwxgmac210_ops = {
 	.core_init = dwxgmac2_core_init,
 	.set_mac = dwxgmac2_set_mac,
@@ -1380,6 +1396,7 @@ const struct stmmac_ops dwxgmac210_ops = {
 	.enable_vlan = dwxgmac2_enable_vlan,
 	.config_l3_filter = dwxgmac2_config_l3_filter,
 	.config_l4_filter = dwxgmac2_config_l4_filter,
+	.set_arp_offload = dwxgmac2_set_arp_offload,
 };
 
 int dwxgmac2_setup(struct stmmac_priv *priv)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
index fb0283b15c77..fd60bf5e0a72 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
@@ -370,6 +370,7 @@ static void dwxgmac2_get_hw_feature(void __iomem *ioaddr,
 	dma_cap->atime_stamp = (hw_cap & XGMAC_HWFEAT_TSSEL) >> 12;
 	dma_cap->av = (hw_cap & XGMAC_HWFEAT_AVSEL) >> 11;
 	dma_cap->av &= (hw_cap & XGMAC_HWFEAT_RAVSEL) >> 10;
+	dma_cap->arpoffsel = (hw_cap & XGMAC_HWFEAT_ARPOFFSEL) >> 9;
 	dma_cap->rmon = (hw_cap & XGMAC_HWFEAT_MMCSEL) >> 8;
 	dma_cap->pmt_magic_frame = (hw_cap & XGMAC_HWFEAT_MGKSEL) >> 7;
 	dma_cap->pmt_remote_wake_up = (hw_cap & XGMAC_HWFEAT_RWKSEL) >> 6;
diff --git a/drivers/net/ethernet/stmicro/stmmac/hwif.h b/drivers/net/ethernet/stmicro/stmmac/hwif.h
index 47c8ad9ec671..ddb851d99618 100644
--- a/drivers/net/ethernet/stmicro/stmmac/hwif.h
+++ b/drivers/net/ethernet/stmicro/stmmac/hwif.h
@@ -370,6 +370,7 @@ struct stmmac_ops {
 	int (*config_l4_filter)(struct mac_device_info *hw, u32 filter_no,
 				bool en, bool udp, bool sa, bool inv,
 				u32 match);
+	void (*set_arp_offload)(struct mac_device_info *hw, bool en, u32 addr);
 };
 
 #define stmmac_core_init(__priv, __args...) \
@@ -454,6 +455,8 @@ struct stmmac_ops {
 	stmmac_do_callback(__priv, mac, config_l3_filter, __args)
 #define stmmac_config_l4_filter(__priv, __args...) \
 	stmmac_do_callback(__priv, mac, config_l4_filter, __args)
+#define stmmac_set_arp_offload(__priv, __args...) \
+	stmmac_do_void_callback(__priv, mac, set_arp_offload, __args)
 
 /* PTP and HW Timer helpers */
 struct stmmac_hwtimestamp {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
