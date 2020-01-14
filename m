Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB8F138EC5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 11:15:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XniBK6UJn4hDdH8837VHT+AlQFCb7qKUYQCpM2QZC8k=; b=AvCeQX6TH8TfEHMqQW7HB6LFaH
	13uWikNcgTzt+xXLELfMu5DbA6QZErGs7qat5usEoq3jz9gF/k5ywys65DSOvxYVTOopYhcFELCbh
	AvbZCSfctB4xp8ERdh4eKgyD+ivmLeU8lLSyA06+f3TDzhuIcNcn+iE6xS0WEVWMF+K3NgNEALmQ6
	VZGZsamf1ffhVlwBet6PfWvIC0zdJfAiN3fWYCDnKxFmE/C/ET30+QDZDUwyVjRpMpu8n72/RIIPj
	Bl32oPxH63mTrDcOCkIahpHmpp5F+++76BZJAI+3q6IWQqkb/ZlJQZdByRpcB8Pth6QsKtgV9/Z0c
	BSDIyp6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwkG-0000UH-FU; Mon, 13 Jan 2020 10:14:52 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwj4-0007iW-EM
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 10:13:39 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 02:13:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,428,1571727600"; d="scan'208";a="397116812"
Received: from bong5-hp-z440.png.intel.com ([10.221.118.136])
 by orsmga005.jf.intel.com with ESMTP; 13 Jan 2020 02:13:35 -0800
From: Ong Boon Leong <boon.leong.ong@intel.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 4/7] net: stmmac: Fix priority steering for tx/rx queue >3
Date: Tue, 14 Jan 2020 10:01:13 +0800
Message-Id: <1578967276-55956-5-git-send-email-boon.leong.ong@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578967276-55956-1-git-send-email-boon.leong.ong@intel.com>
References: <1578967276-55956-1-git-send-email-boon.leong.ong@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_021338_533446_2E844C8A 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 DATE_IN_FUTURE_12_24   Date: is 12 to 24 hours after Received:
 date
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Voon Weifeng <weifeng.voon@intel.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Tan Tee Min <tee.min.tan@intel.com>, Ong Boon Leong <boon.leong.ong@intel.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Voon Weifeng <weifeng.voon@intel.com>

Fix MACRO function define for TX and RX user priority queue steering for
register masking and shifting.

Fixes: a8f5102af2a7 ("net: stmmac: TX and RX queue priority configuration")

Signed-off-by: Voon Weifeng <weifeng.voon@intel.com>
Signed-off-by: Ong Boon Leong <boon.leong.ong@intel.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac4.h | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4.h b/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
index 2dc70d1..798a53a 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
@@ -97,12 +97,14 @@
 #define GMAC_RX_FLOW_CTRL_RFE		BIT(0)
 
 /* RX Queues Priorities */
-#define GMAC_RXQCTRL_PSRQX_MASK(x)	GENMASK(7 + ((x) * 8), 0 + ((x) * 8))
-#define GMAC_RXQCTRL_PSRQX_SHIFT(x)	((x) * 8)
+#define GMAC_RXQCTRL_PSRQX_MASK(x)	GENMASK(7 + (((x) % 4) * 8), \
+						0 + (((x) % 4) * 8))
+#define GMAC_RXQCTRL_PSRQX_SHIFT(x)	(((x) % 4) * 8)
 
 /* TX Queues Priorities */
-#define GMAC_TXQCTRL_PSTQX_MASK(x)	GENMASK(7 + ((x) * 8), 0 + ((x) * 8))
-#define GMAC_TXQCTRL_PSTQX_SHIFT(x)	((x) * 8)
+#define GMAC_TXQCTRL_PSTQX_MASK(x)	GENMASK(7 + (((x) % 4) * 8), \
+						0 + (((x) % 4) * 8))
+#define GMAC_TXQCTRL_PSTQX_SHIFT(x)	(((x) % 4) * 8)
 
 /* MAC Flow Control TX */
 #define GMAC_TX_FLOW_CTRL_TFE		BIT(1)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
