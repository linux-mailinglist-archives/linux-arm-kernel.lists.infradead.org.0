Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1162AD4F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 05:15:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ujSXX5XmVK+sb18wLT5Hi09+LGkZ2LoeFjNRoBpHadk=; b=tNAni7HfAUrxNh
	tat0HV2iUtD/jJj92z3v//Fode3d+hfqoCT3nJcAFtrVQMJsfihf1MWYoYf/4iF3O/2pKDFve3sYV
	0HC+Us0EnL+vPao+ghE51dspaxP+bvFAJPAn/P3txd5u/T8K3R0hDr+EaJBxPrquAsuYD+X7K/Gk4
	X3zIRa26DgzLadUBy6VZcALzb5PHNBrQQ21pwimkPp6wQIwdeODH3ffmfKh/5WC6sAYLpNK6OAg8H
	euEKHzPsfUDpD/febyDEP7tiBsT22VDkKpBzZWQg0lAMiSXpLPJpYpcACRgfFNTP7r1RyUOKFlnPM
	Fx7K/cDbiXANoOIjUfbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV66g-0007SX-NN; Mon, 27 May 2019 03:15:26 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV66K-0005wu-8Y; Mon, 27 May 2019 03:15:05 +0000
X-UUID: 70b65e9d998f4e0d89b9932be280172c-20190526
X-UUID: 70b65e9d998f4e0d89b9932be280172c-20190526
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1366140964; Sun, 26 May 2019 19:14:54 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 26 May 2019 20:14:52 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 27 May 2019 11:14:46 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 27 May 2019 11:14:45 +0800
From: Biao Huang <biao.huang@mediatek.com>
To: Jose Abreu <joabreu@synopsys.com>
Subject: [v3, PATCH] add some features in stmmac 
Date: Mon, 27 May 2019 11:14:26 +0800
Message-ID: <1558926867-16472-1-git-send-email-biao.huang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_201504_312579_A6695BB2 
X-CRM114-Status: UNSURE (   8.24  )
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

Changes in v3:                                                                  
        rewrite the patch base on serire in                                    
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
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c |    4 ++                    
 5 files changed, 40 insertions(+), 25 deletions(-)                             
                                                                                
--                                                                              
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
