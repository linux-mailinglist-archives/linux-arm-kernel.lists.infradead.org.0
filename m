Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53941C4817
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 09:08:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1OeHrE+jofmZaylCZ5B/2tSQqOOpB9xljqF1+TYZne8=; b=V0FzHdWSzxTBmW
	ofbq27VwyAVjWoAd1idtu1uytQy9pbabUgmOVirjQA0mDaJNkMksKxB+dov9Daqr2dzTtVaGrSgDb
	M+kRK3z1YJIwGP7ZsYDdpTYveVE2aj3+HzgK+PS+lVO2fOj51P78LQQz4r8fTIZekSdeZArSOw+Sh
	6B4h6Z1TGNksRlX/AYKhnaHL3SiYQFKRrlB2iCZY/JYfx4XjV9ezZJeibMJ86+201YN9u2gz+1NG4
	BGCCuQd60gZQQHwpOy9SPkWgqUlwDeMt5dBrGx9o+EIuxslHrLdvOM0GCT8o4a6n+jBOuLs0I6+VH
	ZPdGOc6QLipc4myU7SOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFYk0-0001vD-02; Wed, 02 Oct 2019 07:08:04 +0000
Received: from smtp.cellavision.se ([84.19.140.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFYjt-0001u7-8T
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 07:07:58 +0000
Received: from DRCELLEX03.cellavision.se (172.16.169.12) by
 DRCELLEX03.cellavision.se (172.16.169.12) with Microsoft SMTP Server (TLS) id
 15.0.1044.25; Wed, 2 Oct 2019 09:07:46 +0200
Received: from ITG-CEL-24768.cellavision.se (10.230.0.148) by
 DRCELLEX03.cellavision.se (172.16.169.12) with Microsoft SMTP Server id
 15.0.1044.25 via Frontend Transport; Wed, 2 Oct 2019 09:07:46 +0200
From: Hans Andersson <haan@cellavision.se>
To: <mcoquelin.stm32@gmail.com>
Subject: [PATCH] net: stmmac: Read user ID muliple times if needed.
Date: Wed, 2 Oct 2019 09:07:21 +0200
Message-ID: <20191002070721.9916-1-haan@cellavision.se>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_000757_299253_9548E212 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, davem@davemloft.net, joabreu@synopsys.com,
 peppe.cavallaro@st.com, Hans Andersson <hans.andersson@cellavision.se>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hans Andersson <hans.andersson@cellavision.se>

When we read user ID / Synopsys ID we might still be in reset,
so read muliple times if needed.

Signed-off-by: Hans Andersson <hans.andersson@cellavision.se>
---
 drivers/net/ethernet/stmicro/stmmac/hwif.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/hwif.c b/drivers/net/ethernet/stmicro/stmmac/hwif.c
index 6c61b75..3347164 100644
--- a/drivers/net/ethernet/stmicro/stmmac/hwif.c
+++ b/drivers/net/ethernet/stmicro/stmmac/hwif.c
@@ -10,7 +10,16 @@
 
 static u32 stmmac_get_id(struct stmmac_priv *priv, u32 id_reg)
 {
-	u32 reg = readl(priv->ioaddr + id_reg);
+	u32 reg;
+	int i;
+
+	/* We might still be in reset when we read, */
+	/* so read multiple times if needed. */
+	for (i = 0; i < 10; i++) {
+		reg = readl(priv->ioaddr + id_reg);
+		if (reg)
+			break;
+	}
 
 	if (!reg) {
 		dev_info(priv->device, "Version ID not available\n");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
