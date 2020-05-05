Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3B51C50B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 10:43:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i6+D1PI/JSLeK8tw6FQIhZYA5Wmtd8fEC0orPgQBR7E=; b=StRpVCVJHYa2J3
	n8NIsSAVBPhRmmNrONJxq4WsVJfXH/WafnUSuRC0PYySW9nzd5+Ri0gKEcfzlWrA3r90Yw400nrAl
	glO017b6AEjEOV/Efoql4X807ftbkok/41MC5LD1Flvp++bsJQiAn5/Zxjc03x2sE4fkh+xixKpYk
	V38GQCNNIyWkuZNTIPZe1I6IhNmvpeHIESBHAyzSgmq4VLhFyOeodaaAp9HPrCWElZuO1ezWPz9lo
	eIdN4wq9zzavVC2y1qSohMiT7k6Zgz0vT31dPzD5dGzpyMvHbhVQsY4UPzsCGPXc6DF3M7PLJ859n
	+WrPHZsqwO325PLQVfuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVtB7-0005cR-S8; Tue, 05 May 2020 08:43:49 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVtAr-0005SG-RM
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 08:43:35 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 9E70EEA5BFBC82BBE8BC;
 Tue,  5 May 2020 16:43:20 +0800 (CST)
Received: from localhost (10.166.215.154) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Tue, 5 May 2020
 16:43:13 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <peppe.cavallaro@st.com>, <alexandre.torgue@st.com>,
 <joabreu@synopsys.com>, <davem@davemloft.net>, <mcoquelin.stm32@gmail.com>
Subject: [PATCH net-next] net: stmmac: Remove unused inline function
 stmmac_rx_threshold_count
Date: Tue, 5 May 2020 16:42:56 +0800
Message-ID: <20200505084256.52048-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.166.215.154]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_014334_050071_8A5EB722 
X-CRM114-Status: UNSURE (   6.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: netdev@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There's no caller in-tree since
commit 2af6106ae949 ("net: stmmac: Introducing support for Page Pool")

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index ff22f274aa43..90bddca1ddd8 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -3543,15 +3543,6 @@ static void stmmac_rx_vlan(struct net_device *dev, struct sk_buff *skb)
 	}
 }
 
-
-static inline int stmmac_rx_threshold_count(struct stmmac_rx_queue *rx_q)
-{
-	if (rx_q->rx_zeroc_thresh < STMMAC_RX_THRESH)
-		return 0;
-
-	return 1;
-}
-
 /**
  * stmmac_rx_refill - refill used skb preallocated buffers
  * @priv: driver private structure
-- 
2.17.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
