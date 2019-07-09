Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB68562E35
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 04:37:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BgXQtOiDsq7QUO1E52fBJItKqcf8BXOxyl2CwIfrjjI=; b=Mco/S9GoOIdbas
	HyBkGBv/SYzNLe6se2bahsVsSC0IEUEkB/lawNmwC7eYdZU62f3mrXRrno+WNRNUyNyOplRVsSlUO
	JoGcIGr0oMMI56dpHm5RtSTe/afEHMl3s0+Bgk2uwMGu6g/ZFNYNBct5fFgrD4/sAU9Cv1xIpCOs2
	r+kblvfi+a+ANGZV6cTodO7fuqmylE3Aj3Zl5gPx5dJqm1o1SGQ6VDgnlS7URwpyvQW+U2eZn71vv
	C6ux8YY1OEsdzXtMskmYZoYvXTrw0n+3lbfEwJNx7+La4oDXKMGMQ5Gewi/AzsC19q+Emf8EXxBZH
	zkplh3spAx/d9i9dNJlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkg0b-0002g0-9z; Tue, 09 Jul 2019 02:37:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkfzq-0002BD-OY; Tue, 09 Jul 2019 02:36:48 +0000
X-UUID: 5eaa5c62cd8040579460b69041f65fa8-20190708
X-UUID: 5eaa5c62cd8040579460b69041f65fa8-20190708
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1301266761; Mon, 08 Jul 2019 18:36:37 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 8 Jul 2019 19:36:36 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 9 Jul 2019 10:36:34 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 9 Jul 2019 10:36:34 +0800
From: Biao Huang <biao.huang@mediatek.com>
To: <davem@davemloft.net>, Jose Abreu <joabreu@synopsys.com>, <andrew@lunn.ch>
Subject: [PATCH 0/2 net-next] fix out-of-boundary issue and add taller hash
 table support
Date: Tue, 9 Jul 2019 10:36:21 +0800
Message-ID: <20190709023623.8358-1-biao.huang@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_193646_827203_15C65D4E 
X-CRM114-Status: UNSURE (   6.64  )
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

Fix mac address out-of-boundary issue in net-next tree.
and resend the patch which was discussed in
https://lore.kernel.org/patchwork/patch/1082117
but with no further progress.

Biao Huang (2):
  net: stmmac: dwmac4: mac address array boudary violation issue
  net: stmmac: add support for hash table size 128/256 in dwmac4

 drivers/net/ethernet/stmicro/stmmac/common.h  |  7 +--
 drivers/net/ethernet/stmicro/stmmac/dwmac4.h  |  4 +-
 .../net/ethernet/stmicro/stmmac/dwmac4_core.c | 51 +++++++++++--------
 .../net/ethernet/stmicro/stmmac/dwmac4_dma.c  |  1 +
 .../net/ethernet/stmicro/stmmac/stmmac_main.c |  6 +++
 5 files changed, 43 insertions(+), 26 deletions(-)

-- 
2.18.0



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
