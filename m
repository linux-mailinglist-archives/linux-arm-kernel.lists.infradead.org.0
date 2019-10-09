Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96CD7D0833
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 09:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DhCL9/081snv6LtcvCp8OMz2XNRGbsBVcyNm81qmVZo=; b=kLMkINXCsuUt9w
	A3ipJmhxyG5zfXNH1uIk9GN/56h/Itnxnjlz4n/q0BFXK6pfSC+Gnhg5Ih+YbgAQOfnw1PcxNg4Vs
	CAXAZIVwW++F/vnSuSs9hy1TyJ0FgV9lccMZ7yPOagJ2Or6W1w+2xF0+td1sQwiluNq1qPY8KhlpB
	IOkb0/4MPGDHVV/EHhq4mLgt35cLFCaXpOcbo5vodq/1BBe3lEZ28M2OM+khBBS0JIhL9ly4rn7tM
	1LMCwxu9s6Dh5IsQ/ST+d8QKY96kqAKhhCVCdFGW5hQpdrmXkqQvP36XXH213VaF3fRlAHKd5sS01
	gD2INcZd8PBsSCCzEJ3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI6K2-00087o-RJ; Wed, 09 Oct 2019 07:23:46 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6Jt-00086N-Kx; Wed, 09 Oct 2019 07:23:38 +0000
X-UUID: e94c77ca9b514960a2666e43532afa3d-20191008
X-UUID: e94c77ca9b514960a2666e43532afa3d-20191008
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1092957546; Tue, 08 Oct 2019 23:24:02 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 00:23:28 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 15:23:23 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 9 Oct 2019 15:23:22 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH v2] phy: tegra: xusb: remove unused variable
Date: Wed, 9 Oct 2019 15:23:09 +0800
Message-ID: <1570605789-5352-1-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-TM-SNTS-SMTP: D8D0E1454E0F109BF23A8F7C510BBF7B068E2C21E0924A0A2A54C96B63F1F33D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_002337_694578_332E36DA 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
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
Cc: JC Kuo <jckuo@nvidia.com>, linux-kernel@vger.kernel.org, Jonathan
 Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding <treding@nvidia.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The local variable @priv is set but not used, can be removed

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
Acked-by: Thierry Reding <treding@nvidia.com>
---
v2: add Acked-by: Thierry
---
 drivers/phy/tegra/xusb-tegra210.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/phy/tegra/xusb-tegra210.c b/drivers/phy/tegra/xusb-tegra210.c
index 0c0df6897a3b..bc71c897298a 100644
--- a/drivers/phy/tegra/xusb-tegra210.c
+++ b/drivers/phy/tegra/xusb-tegra210.c
@@ -1225,13 +1225,10 @@ static int tegra210_hsic_phy_power_on(struct phy *phy)
 	struct tegra_xusb_hsic_lane *hsic = to_hsic_lane(lane);
 	struct tegra_xusb_hsic_pad *pad = to_hsic_pad(lane->pad);
 	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
-	struct tegra210_xusb_padctl *priv;
 	unsigned int index = lane->index;
 	u32 value;
 	int err;
 
-	priv = to_tegra210_xusb_padctl(padctl);
-
 	err = regulator_enable(pad->supply);
 	if (err)
 		return err;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
