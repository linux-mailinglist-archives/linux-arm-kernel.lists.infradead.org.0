Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C102F2956A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:06:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EOV7rbJ989YT3C/uHl78LKSXGAmFumfaiEbHnaPHzAI=; b=URifn6KZW+1bvs
	oEQTOHYL5kkzpz81SPUH/1D3zSTqcfJPflvV/iYOfQ9Z7KL3L2lEFDW0nbnsrMUDFExpArzbknIvb
	LXIuBrG4FScfD8ixwHm5eOND1LGFvzPaQfSnR9hUeCbcGMwRVAeTmikzOtvNbXSH6Bt1S3Qp0p/wr
	/7XefFjUK66qSylpaGtlRzYs8DXN/kHSDDjvlJvMY6J7+FmqtsGPiF/ff03xqPzG9TSH9ZtfV/jDt
	pRORC61HbWwyO2zzu0IRk8fiy6p9uz9CKdiHPbzW+hOPfaGzTBZMb2YNfF5nzIogAc2XomHoUceSd
	YGZRxbn8351PHT5PyAVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU768-0000tc-0r; Fri, 24 May 2019 10:06:48 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU75Z-0000LQ-8U
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:06:15 +0000
X-Originating-IP: 90.88.147.134
Received: from mc-bl-xps13.lan
 (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr [90.88.147.134])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 3639F40003;
 Fri, 24 May 2019 10:06:04 +0000 (UTC)
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: davem@davemloft.net
Subject: [PATCH net-next 2/5] net: mvpp2: cls: Bypass C2 internals FIFOs at
 init
Date: Fri, 24 May 2019 12:05:51 +0200
Message-Id: <20190524100554.8606-3-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524100554.8606-1-maxime.chevallier@bootlin.com>
References: <20190524100554.8606-1-maxime.chevallier@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_030613_447052_E20CD324 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alan Winkowski <walan@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>, netdev@vger.kernel.org,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>, nadavh@marvell.com,
 linux-arm-kernel@lists.infradead.org, thomas.petazzoni@bootlin.com,
 miquel.raynal@bootlin.com, stefanc@marvell.com, mw@semihalf.com,
 Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The C2 TCAM has internal FIFOs that are only useful for the built-in
self-tests. Disable these FIFOS at init, as recommended in the
functionnal specs.

Suggested-by: Alan Winkowski <walan@marvell.com>
Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
---
 drivers/net/ethernet/marvell/mvpp2/mvpp2.h     | 2 ++
 drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c | 6 ++++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2.h b/drivers/net/ethernet/marvell/mvpp2/mvpp2.h
index d5df813e08c4..bb466af9434b 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2.h
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2.h
@@ -148,6 +148,8 @@
 #define MVPP22_CLS_C2_ATTR2			0x1b6c
 #define     MVPP22_CLS_C2_ATTR2_RSS_EN		BIT(30)
 #define MVPP22_CLS_C2_ATTR3			0x1b70
+#define MVPP22_CLS_C2_TCAM_CTRL			0x1b90
+#define     MVPP22_CLS_C2_TCAM_BYPASS_FIFO	BIT(0)
 
 /* Descriptor Manager Top Registers */
 #define MVPP2_RXQ_NUM_REG			0x2040
diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
index 9ce73297276e..d549e9a29d9a 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
@@ -923,6 +923,12 @@ void mvpp2_cls_init(struct mvpp2 *priv)
 		mvpp2_cls_c2_write(priv, &c2);
 	}
 
+	/* Disable the FIFO stages in C2 engine, which are only used in BIST
+	 * mode
+	 */
+	mvpp2_write(priv, MVPP22_CLS_C2_TCAM_CTRL,
+		    MVPP22_CLS_C2_TCAM_BYPASS_FIFO);
+
 	mvpp2_cls_port_init_flows(priv);
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
