Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A107BA50CD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 10:04:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=m9PpBzhZKR8jYX7B9eNCBxsUmafA3Yq0CB/x9CNr5Xc=; b=AoVf5hm06ULocb//EKh0L08vaa
	SMpDrlodl6CZaLPj2M6m/th8XMI57qZ7O2C0tuN4egfJsDTudVibhSZ2bUNBziC83k2ejYu18EqeH
	W63P3+QACh6kiB26wrVHlFWUzFkrSLWPLEbylIBydjuVJVcip0pUArJ3LTk9ziC0uRa8tiWZlH7//
	I4DvKMnZMeNzkZk4mbH5ybVM5QRA9crXRFPNE9kUZ9iTkcvUTO3b4Df8ssh/OXNibjSNjvjtWMDR3
	dKVONfYCNRGRW15Bg8RKpTehLjo7MIpkuS4kfGHFhyPM7j7Jb0edSTBc9ttODxlbawhFxVYV3sZeB
	h5YdZYpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4hJl-0005GJ-8m; Mon, 02 Sep 2019 08:04:05 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4hIG-00048h-Bq
 for linux-arm-kernel@bombadil.infradead.org; Mon, 02 Sep 2019 08:02:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qj1vI0QH66b+JRB2nIb0H1cRKhAPmx5zgqrx6nCAR6A=; b=Il12qRkPB+HiN31p275Dn8E9k
 UFaOUuot5N5CsSwW94L9KXS+ccFzGGjXVJmuxrim4xzECsCDiA2c/CLJmGxRwK7FVmWnhgb53h8CO
 VsVxkF6zvcT2Ys0UFjZW2sGQxhmtrdDEy64pFliGe1LLNstjWFWegzzx7QfI5UFPR3365Xnnym4PD
 uMXle6iUOIy2fvLq9BxRz2I1yQEKb1q4UeDaF1PJ5zZD/E+TWKjLTrzrQMgUBVeaHkRs4JqIF3fnv
 i+ikZ3pAxcWI5BJDXAFi4DXAUlITG2Ic+ShO62PwAMSpfs7N/dSML/0+d7D3ad58cgJQz24fYeVkO
 k6WMxTNPg==;
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4hIV-0003ZD-Gk
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 08:02:51 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id A4D97C0437;
 Mon,  2 Sep 2019 08:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567411337; bh=vkwFXbNgXpcsWIBymeTdbdI0d7HHjr+O5myQC7lgDrs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=LIEnTSagSCBwmxKnAPXp3O0++ZlCBB8FAMf9sL7S3+HmictbEZ8LqxS6T2Ph8gRg7
 guM54HwcNUMsx6cllR+BT/c9JRS8CaGf97xe1CALRL926Ph0/PqoN6ZlfaL6OqNh5j
 WWkgGYrQeY6vll0IELIw8IcMnSSx9ImN8S3aOKVyOYb+OF8OgzwzA38zshR8KN5Fzo
 CxCByPHCSViOc7FEbNt9kzpSp7pK6M6oNyImGdnQaysq/8b9tTFNmz6nYPnYPp8kqO
 WzZvGMMg9AI2WFQckTseD4fEj33mh3LZKSUpg7ed718nClB8pM26ysRADTChWwLHYJ
 kNlU+f/FwYVkw==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 5F5B6A0073;
 Mon,  2 Sep 2019 08:02:15 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 06/13] net: stmmac: xgmac: Implement ARP Offload
Date: Mon,  2 Sep 2019 10:01:48 +0200
Message-Id: <91017a44b200aa4596947679f428fd00fefff2fd.1567410970.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1567410970.git.joabreu@synopsys.com>
References: <cover.1567410970.git.joabreu@synopsys.com>
In-Reply-To: <cover.1567410970.git.joabreu@synopsys.com>
References: <cover.1567410970.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_090248_671940_EC5AC8BD 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
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
