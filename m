Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E420FEA71
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 Nov 2019 04:44:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Pmj765qLi8mcj7mLTDKxkTKgWHSFq/Wi+eZHFxU6I/0=; b=YvoKlMuB1TuT5Y
	bWODDIpqDyCKqq0lGvNZ0ULXc7JR2Nuxd1UgkFHQXnEt3knYQBHTFu8i5a7BNZey908jdCYd3sspJ
	YVkioMyTsJJ5JCWZOoxhQIBKq948xx2nkcnEw8LahNwcgkdq6RISE7k7hubUK5UxkQY3oT3gyMqD2
	OqDdodAjmEnO/YtsI1r8HCtBuOzq5detjnFnyVr4p3S95WKPEiC8ekyqMYKMgXKkFJfcVeGBTOoi5
	465s6u4U1oQwQlqqnPH6PnaWnFKVnNE0os1e4jZZ5QWo9iYr5i7lx5vvhTwNhfJmvfqQ5aAbUydt+
	xdn572edTuVLUMB/ewUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVp0I-0006l1-TO; Sat, 16 Nov 2019 03:44:06 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVp0C-0006j2-33
 for linux-arm-kernel@lists.infradead.org; Sat, 16 Nov 2019 03:44:01 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id EB98DC47404AEEF3A289;
 Sat, 16 Nov 2019 11:43:44 +0800 (CST)
Received: from localhost.localdomain (10.90.53.225) by
 DGGEMS408-HUB.china.huawei.com (10.3.19.208) with Microsoft SMTP Server id
 14.3.439.0; Sat, 16 Nov 2019 11:43:39 +0800
From: Chen Wandun <chenwandun@huawei.com>
To: <davem@davemloft.net>, <joabreu@synopsys.com>, <netdev@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] net: stmmac: remove variable 'ret' set but not used
Date: Sat, 16 Nov 2019 11:50:46 +0800
Message-ID: <1573876246-139122-1-git-send-email-chenwandun@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_194400_312859_29938240 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: chenwandun@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/net/ethernet/stmicro/stmmac/stmmac_main.c: In function stmmac_rx_buf1_len:
drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:3460:6: warning: variable ret set but not used [-Wunused-but-set-variable]

Signed-off-by: Chen Wandun <chenwandun@huawei.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 39b4efd..7003a30 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -3457,7 +3457,7 @@ static unsigned int stmmac_rx_buf1_len(struct stmmac_priv *priv,
 				       struct dma_desc *p,
 				       int status, unsigned int len)
 {
-	int ret, coe = priv->hw->rx_csum;
+	int coe = priv->hw->rx_csum;
 	unsigned int plen = 0, hlen = 0;
 
 	/* Not first descriptor, buffer is always zero */
@@ -3465,7 +3465,7 @@ static unsigned int stmmac_rx_buf1_len(struct stmmac_priv *priv,
 		return 0;
 
 	/* First descriptor, get split header length */
-	ret = stmmac_get_rx_header_len(priv, p, &hlen);
+	stmmac_get_rx_header_len(priv, p, &hlen);
 	if (priv->sph && hlen) {
 		priv->xstats.rx_split_hdr_pkt_n++;
 		return hlen;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
