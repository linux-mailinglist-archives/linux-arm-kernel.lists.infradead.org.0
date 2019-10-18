Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2285EDCC0A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:57:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=758xN2CkSjbemjGPfjWtImh7JAjRlQLx4bue9BdHeGY=; b=NonnqnjCfkJFAc
	ZNpkuXgdisFpDhCCGQCQw6peNm06CG8OXPZsYqPHgStJjugvOB7kdkU7hrZ5OvVlT+OnUw522fII6
	16RhZpdG5mHOecQqsRiA53/sy+vtz+LtOt8tPh5OUu6Sr4D10l8Z4Se0OlX84Db0wiN/lrasasICx
	dE3rrGHHugaKVG5b/EL9Xdwgkfnj+sVAaHe+WUHrX/VIlza/zPeUnxPdXx4D7jNJDtoajAMLDcf4D
	jIy2RloW1RysCkJyBDxF7abY+kanI8vYjPZTTxvFAMdRHJhTUGgrhcL+dVt8Z0YUlqaw1kNhXGsBB
	Aq7b7M+WfZ/33n4U5grQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLVYy-0005YM-0f; Fri, 18 Oct 2019 16:57:16 +0000
Received: from unicorn.mansr.com ([2001:8b0:ca0d:8d8e::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLVYp-0005TX-0F
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:57:08 +0000
Received: by unicorn.mansr.com (Postfix, from userid 51770)
 id 578A81560D; Fri, 18 Oct 2019 17:57:01 +0100 (BST)
From: Mans Rullgard <mans@mansr.com>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>
Subject: [PATCH v2] net: ethernet: dwmac-sun8i: show message only when
 switching to promisc
Date: Fri, 18 Oct 2019 17:56:58 +0100
Message-Id: <20191018165658.9752-1-mans@mansr.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_095707_207335_76C17FEF 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: netdev@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Printing the info message every time more than the max number of mac
addresses are requested generates unnecessary log spam.  Showing it only
when the hw is not already in promiscous mode is equally informative
without being annoying.

Signed-off-by: Mans Rullgard <mans@mansr.com>
---
Changed in v2:
- test only RXALL bit
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
index 79c91526f3ec..c186de64e552 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
@@ -646,7 +646,8 @@ static void sun8i_dwmac_set_filter(struct mac_device_info *hw,
 			}
 		}
 	} else {
-		netdev_info(dev, "Too many address, switching to promiscuous\n");
+		if (!(readl(ioaddr + EMAC_RX_FRM_FLT) & EMAC_FRM_FLT_RXALL))
+			netdev_info(dev, "Too many address, switching to promiscuous\n");
 		v = EMAC_FRM_FLT_RXALL;
 	}
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
