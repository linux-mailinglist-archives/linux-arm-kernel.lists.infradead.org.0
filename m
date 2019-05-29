Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BB42D912
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 11:31:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n0E2AKXXEnI8cwtXF39fjJyCIQIeVpmWnEDLi832SPM=; b=Y1YAIwe9BRanVq
	SHGDvnhWGLd8iA4ODmMF1pq5ppnSoI4QWZ79P6HKq65/mSLjaZP0Gexqol3EcJ6Oi6C8zmzMJaR9w
	PuQ4tVZkU2aV0H6i9Kas3/MAofe70xog1ESnAZy8MBwSXbVZ99ZtdP37/YMiiiJlpyOHk4xV71E0J
	x1B73gRLjV7Uvk51uzS2paIJOZAdAWkbdkaYn3XoiA95mTYkmpm+JPFRR7uEHhowj5RSyoFvIdjeP
	G8XmpeqrgCZ2Ywm6KDckzLIWBUl/5S8A5upciyUpMf6eTlmhTrYPNeheuktQmOVThlzxYHWZZ2Kkf
	DHEzZC5KIpB4SLbMaxgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVuvd-0007Hk-F7; Wed, 29 May 2019 09:31:25 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVuvV-0007H4-5O; Wed, 29 May 2019 09:31:19 +0000
X-UUID: 6edb70e74bee46f78c5a5a9d37177b28-20190529
X-UUID: 6edb70e74bee46f78c5a5a9d37177b28-20190529
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1390532171; Wed, 29 May 2019 01:31:14 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 May 2019 02:31:13 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 May 2019 17:31:11 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 29 May 2019 17:31:10 +0800
From: Biao Huang <biao.huang@mediatek.com>
To: Jose Abreu <joabreu@synopsys.com>
Subject: [v5, PATCH] add some features in stmmac
Date: Wed, 29 May 2019 17:31:07 +0800
Message-ID: <1559122268-22545-1-git-send-email-biao.huang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_023117_209412_11C79413 
X-CRM114-Status: UNSURE (   9.32  )
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
Cc: andrew@lunn.ch, jianguo.zhang@mediatek.com,
 Alexandre Torgue <alexandre.torgue@st.com>, boon.leong.ong@intel.com,
 biao.huang@mediatek.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 yt.shen@mediatek.com, linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes in v5:                                                                  
        1. run checkpatch.pl to fix coding style issue.                         
        2. apply reverse xmas tree ordering.                                             
        3. add output log of "ethtool -t eth0" to commit message.               
                                                                                
Changes in v4:                                                                  
        retain the reverse xmas tree ordering.                                  
                                                                                
Changes in v3:                                                                  
        rewrite the patch base on serires in                                    
        https://patchwork.ozlabs.org/project/netdev/list/?series=109699         
                                                                                
Changes in v2;                                                                  
        1. reverse Christmas tree order in dwmac4_set_filter.                   
        2. remove clause 45 patch, waiting for cl45 patch from Boon Leong       
                                                                                
v1:                                                                             
This series add some features in stmmac driver.                                 
        1. add support for hash table size 128/256                              
        2. add mdio clause 45 access from mac device for dwmac4.                
                                                                                
Biao Huang (1):                                                                 
  net: stmmac: add support for hash table size 128/256 in dwmac4                
                                                                                
 drivers/net/ethernet/stmicro/stmmac/common.h      |    7 +--                   
 drivers/net/ethernet/stmicro/stmmac/dwmac4.h      |    4 +-                    
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c |   49 ++++++++++++--------- 
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c  |    1 +                     
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c |    6 +++                   
 5 files changed, 42 insertions(+), 25 deletions(-)                             
                                                                                
--                                                                              
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
