Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CE632652
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 03:59:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kLLdHgFXtnSZpgl0tO0yj1IFYS/W9u89MwKmCVh2yr4=; b=FfkASMWNxnyL1q
	PTO8MHIINJuK1bX3BTXtqasLjaOmE9XTkTsXA56SuGW3FZweYIhX3dH/EkA7myCQsH2vn6oWNllHG
	qDQikaysS9CqnTPiYxYTXTPaZAMKilCpe5xgBMw9jbmOwMqLKMeY//6iJ9KYqDkjnrFtuTAD4WoRD
	xEZ7HolpBPNEdDcRx7zritJK07APY9lC/ZcI7fG0lxEqPWsq9d65ynPgH1m1wjHctIYpBejotXkm2
	WhNGZ7dgGq119YzfZGEWm7u8pWxiLbMAnt5ZrKssntv5ak+KhgIWCYIcMtO2wiN1jIZn7Tfs9cEhQ
	Ld/3cr4vhHqjaGIRy+Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXcFn-0005YL-VU; Mon, 03 Jun 2019 01:59:15 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXcFB-0004nS-Mg; Mon, 03 Jun 2019 01:58:38 +0000
X-UUID: 7b506dc25ea74a68a0cc19193fce00d4-20190602
X-UUID: 7b506dc25ea74a68a0cc19193fce00d4-20190602
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2121285427; Sun, 02 Jun 2019 17:58:22 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 2 Jun 2019 18:58:20 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 3 Jun 2019 09:58:18 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 3 Jun 2019 09:58:17 +0800
From: Biao Huang <biao.huang@mediatek.com>
To: <davem@davemloft.net>, Jose Abreu <joabreu@synopsys.com>, <andrew@lunn.ch>
Subject: [v2,
 PATCH 0/4] complete dwmac-mediatek driver and fix flow control issue
Date: Mon, 3 Jun 2019 09:58:02 +0800
Message-ID: <1559527086-7227-1-git-send-email-biao.huang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: EC69FD41C9E8FD24660C96396E7791983B1B28FC35671685A2509970C2084FF82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_185837_775591_E67715FC 
X-CRM114-Status: UNSURE (   7.24  )
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

Changes in v2:                                                                  
        patch#1: there is no extra action in mediatek_dwmac_remove, remove it            
                                                                                
v1:                                                                             
This series mainly complete dwmac-mediatek driver:                              
        1. add power on/off operations for dwmac-mediatek.                      
        2. disable rx watchdog to reduce rx path reponding time.                
        3. change the default value of tx-frames from 25 to 1, so               
           ptp4l will test pass by default.                                     
                                                                                
and also fix the issue that flow control won't be disabled any more             
once being enabled.                                                             
                                                                                
Biao Huang (4):                                                                 
  net: stmmac: dwmac-mediatek: enable Ethernet power domain                     
  net: stmmac: dwmac-mediatek: disable rx watchdog                              
  net: stmmac: modify default value of tx-frames                                
  net: stmmac: dwmac4: fix flow control issue                                   
                                                                                
 drivers/net/ethernet/stmicro/stmmac/common.h       |    2 +-                   
 .../net/ethernet/stmicro/stmmac/dwmac-mediatek.c   |    8 ++++++++             
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c  |    8 ++++++--             
 3 files changed, 15 insertions(+), 3 deletions(-)                              
                                                                                
--                                                                              
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
