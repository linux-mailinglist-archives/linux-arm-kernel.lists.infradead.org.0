Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 052E032653
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 03:59:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mSw++qsV28AwdmphJkLac0UOXPopKdoOsxZpBb79kyY=; b=EyMfl2GvNsVKuV
	BHJKNwy+xxLyoaqdT9dIuZU+LiMpHAGrUwc1C0AVWkQN+KfH8aahl+eh/OAFZt9LqRYqAfgHnKETJ
	NOYbSLJlTmLtDiYkv/hUCuWDoDfnotMvwuONkBYPYzoH/TybRzUdoKWThazHbKYtXO7vOkJEQFLq0
	hGz4q9TbpAcH/9X3LMbN8/RQeIyY0I5Ji72q8d4pvxOKBSANeLn49iDSuUex30WN7rl/a1t+WoRuo
	XxsP+ZTL6NFfVRVBdufcm5IuXspCMnDH5Y3FPgXJ4oh3s4WnzfV+40FA+8bakm33Hq0CbJDxBmAtQ
	VGANNiwKAGcYNi0smelw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXcFz-0005le-2h; Mon, 03 Jun 2019 01:59:27 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXcFB-0004nU-Vc; Mon, 03 Jun 2019 01:58:39 +0000
X-UUID: c5112f8f83ca42d2b956c569366a6ea9-20190602
X-UUID: c5112f8f83ca42d2b956c569366a6ea9-20190602
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1415399635; Sun, 02 Jun 2019 17:58:23 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 2 Jun 2019 18:58:22 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 3 Jun 2019 09:58:21 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 3 Jun 2019 09:58:20 +0800
From: Biao Huang <biao.huang@mediatek.com>
To: <davem@davemloft.net>, Jose Abreu <joabreu@synopsys.com>, <andrew@lunn.ch>
Subject: [v2, PATCH 3/4] net: stmmac: modify default value of tx-frames
Date: Mon, 3 Jun 2019 09:58:05 +0800
Message-ID: <1559527086-7227-4-git-send-email-biao.huang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1559527086-7227-1-git-send-email-biao.huang@mediatek.com>
References: <1559527086-7227-1-git-send-email-biao.huang@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: BD275BFD7C7B409CEB7828DFEDF77080E409217901078B7CB600EA6F89081E792000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_185838_028655_B4BEF91F 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: jianguo.zhang@mediatek.com, Alexandre Torgue <alexandre.torgue@st.com>,
 boon.leong.ong@intel.com, biao.huang@mediatek.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, yt.shen@mediatek.com,
 linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

the default value of tx-frames is 25, it's too late when
passing tstamp to stack, then the ptp4l will fail:

ptp4l -i eth0 -f gPTP.cfg -m
ptp4l: selected /dev/ptp0 as PTP clock
ptp4l: port 1: INITIALIZING to LISTENING on INITIALIZE
ptp4l: port 0: INITIALIZING to LISTENING on INITIALIZE
ptp4l: port 1: link up
ptp4l: timed out while polling for tx timestamp
ptp4l: increasing tx_timestamp_timeout may correct this issue,
       but it is likely caused by a driver bug
ptp4l: port 1: send peer delay response failed
ptp4l: port 1: LISTENING to FAULTY on FAULT_DETECTED (FT_UNSPECIFIED)

ptp4l tests pass when changing the tx-frames from 25 to 1 with
ethtool -C option.
It should be fine to set tx-frames default value to 1, so ptp4l will pass
by default.

Signed-off-by: Biao Huang <biao.huang@mediatek.com>
---
 drivers/net/ethernet/stmicro/stmmac/common.h |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/common.h b/drivers/net/ethernet/stmicro/stmmac/common.h
index 26bbcd8..6a08cec 100644
--- a/drivers/net/ethernet/stmicro/stmmac/common.h
+++ b/drivers/net/ethernet/stmicro/stmmac/common.h
@@ -261,7 +261,7 @@ struct stmmac_safety_stats {
 #define STMMAC_COAL_TX_TIMER	1000
 #define STMMAC_MAX_COAL_TX_TICK	100000
 #define STMMAC_TX_MAX_FRAMES	256
-#define STMMAC_TX_FRAMES	25
+#define STMMAC_TX_FRAMES	1
 
 /* Packets types */
 enum packets_types {
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
