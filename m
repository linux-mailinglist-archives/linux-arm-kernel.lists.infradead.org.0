Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7044FFE7E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 23:34:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Wr+h0dWZpkx+tk9knfQWs65dB/7ZI5b/K9aYCM4yJJo=; b=Kh/Y8cZ76OA+6yKMTxUslEl25d
	5rcQdI8hdBC26IMYiZJtSLgSLG/6oLVQsx+LxwrBumwfd4PQv9kKqD4Mm4ddnsdhSNqpQ5AYyQPYX
	szFlzCoX7gFru2Wb7hmF57IcLsqfY9I53srlbekJLaoMd51VNA5KkVtzBTq7kUHsm+2EvS+sAVQcM
	oa+aHNZOWv/R9fNT+0qNvr0lubyFsVBv0OaP44VfuO8MnXgSJ+PIS9JfHq1LVTGGxwOKeHF6xgOez
	l5B5WZQ7b1lg3gxVUu2DP72+egmmitcVT6KEfEjawjXe3vEGiE9Kjc5zRyEr/yxSOZgNIsPEz3NAL
	oq2wvPFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVkAk-0007PD-7C; Fri, 15 Nov 2019 22:34:34 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVkAD-00076K-LI
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 22:34:03 +0000
Received: by mail-pj1-x1041.google.com with SMTP id m71so159509pjb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 14:34:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5tCHcBKEZssfZtGLO4lrvgsi0FdvjwhVDJVSSTh6psc=;
 b=T5gTpPfMPcBQaM1Rda0Ndn9G4cEZJwjbmnNlxXqg9buGJ/wlKso18b4SNXgJD7wEjJ
 rOro72GB7K62gRe3juF5g9nEfWBkcsocfcJAPAukedKksQ9p/Ct99Cz7rAfD0zWrGgCT
 t55WWai/iFvSieafgwu7rtv7uNqXlW18lIIAG+PCfV+zOwAQgcrzYQZrFYj1SAtAyGdz
 cUv8qB5jxyGPynQ7jFkXphM8oHv+T229CnEEWm+EoVNr3J8vMlXstQwEIl4FeI/NjSH3
 nVfEjRJCBYn8gJpA95V+ZVLMi5mzXl1i+KBtLJVt8bVqYLlL4lqi5vxI1KNbXvHMRRTV
 JVZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5tCHcBKEZssfZtGLO4lrvgsi0FdvjwhVDJVSSTh6psc=;
 b=dTXSA4GitOXWsekf9sn9iHxQahoFOdjZrYPDHqDikWcLNuI/GwIpDuo9zK0yUxkQ4n
 F//BlIBEQ9V3itsH7G6ZIoPnxvK3UouQv31OglwycbfOySnOFMyg3a3HqufAsGVnhYFt
 /GP7Sp+ocG2YkVaA6VrQPUjfAuDDA0Q8WnGfUTgAWPkkq39djGPJKH7FNv4eDG+Jpkgo
 wuH4YzEmEhlBfOAYQ55x+7ku2LDS7TDDpMLzUksEV2C0v8HqpNHN2rJX5rzB/3jrAKaF
 BqCPbuuTkSwVTFMozZ0UwG7CYR11ZcdORcHxyx7v6qflmda4TFvePcJ6PDSyignWYiT8
 OsPQ==
X-Gm-Message-State: APjAAAXQOQpQPPxQXjhFENUv2CkmM0HIWTVNbBLclbhFiG7m2GtFF6Jl
 +y82mCd5alj/pdYo7Si25a9Bug==
X-Google-Smtp-Source: APXvYqwvOrQGWg4m3FQouJyEIubtEKECASGnP2QVJqCfiGFzcLOOO3tw+OVASMP7PJoPOnKieSXp8g==
X-Received: by 2002:a17:902:8d81:: with SMTP id
 v1mr1565624plo.289.1573857239827; 
 Fri, 15 Nov 2019 14:33:59 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m15sm11699724pfh.19.2019.11.15.14.33.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 14:33:59 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19+][PATCH 03/20] mailbox: stm32_ipcc: add spinlock to fix
 channels concurrent access
Date: Fri, 15 Nov 2019 15:33:39 -0700
Message-Id: <20191115223356.27675-3-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115223356.27675-1-mathieu.poirier@linaro.org>
References: <20191115223356.27675-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_143401_692867_5177FE1B 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Arnaud Pouliquen <arnaud.pouliquen@st.com>

commit dba9a3dfe912dc47c9dbc9ba1f5f65adbf9aea0f upstream

Add spinlock protection on IPCC register update to avoid race condition.
Without this fix, stm32_ipcc_set_bits and stm32_ipcc_clr_bits can be
called in parallel for different channels. This results in register
corruptions.

Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
Reviewed-by: Fabien Dessenne <fabien.dessenne@st.com>
Signed-off-by: Jassi Brar <jaswinder.singh@linaro.org>
Cc: stable <stable@vger.kernel.org> # 4.19+
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/mailbox/stm32-ipcc.c | 37 ++++++++++++++++++++++++++----------
 1 file changed, 27 insertions(+), 10 deletions(-)

diff --git a/drivers/mailbox/stm32-ipcc.c b/drivers/mailbox/stm32-ipcc.c
index ca1f993c0de3..e31322225e93 100644
--- a/drivers/mailbox/stm32-ipcc.c
+++ b/drivers/mailbox/stm32-ipcc.c
@@ -50,6 +50,7 @@ struct stm32_ipcc {
 	void __iomem *reg_base;
 	void __iomem *reg_proc;
 	struct clk *clk;
+	spinlock_t lock; /* protect access to IPCC registers */
 	int irqs[IPCC_IRQ_NUM];
 	int wkp;
 	u32 proc_id;
@@ -58,14 +59,24 @@ struct stm32_ipcc {
 	u32 xmr;
 };
 
-static inline void stm32_ipcc_set_bits(void __iomem *reg, u32 mask)
+static inline void stm32_ipcc_set_bits(spinlock_t *lock, void __iomem *reg,
+				       u32 mask)
 {
+	unsigned long flags;
+
+	spin_lock_irqsave(lock, flags);
 	writel_relaxed(readl_relaxed(reg) | mask, reg);
+	spin_unlock_irqrestore(lock, flags);
 }
 
-static inline void stm32_ipcc_clr_bits(void __iomem *reg, u32 mask)
+static inline void stm32_ipcc_clr_bits(spinlock_t *lock, void __iomem *reg,
+				       u32 mask)
 {
+	unsigned long flags;
+
+	spin_lock_irqsave(lock, flags);
 	writel_relaxed(readl_relaxed(reg) & ~mask, reg);
+	spin_unlock_irqrestore(lock, flags);
 }
 
 static irqreturn_t stm32_ipcc_rx_irq(int irq, void *data)
@@ -92,7 +103,7 @@ static irqreturn_t stm32_ipcc_rx_irq(int irq, void *data)
 
 		mbox_chan_received_data(&ipcc->controller.chans[chan], NULL);
 
-		stm32_ipcc_set_bits(ipcc->reg_proc + IPCC_XSCR,
+		stm32_ipcc_set_bits(&ipcc->lock, ipcc->reg_proc + IPCC_XSCR,
 				    RX_BIT_CHAN(chan));
 
 		ret = IRQ_HANDLED;
@@ -121,7 +132,7 @@ static irqreturn_t stm32_ipcc_tx_irq(int irq, void *data)
 		dev_dbg(dev, "%s: chan:%d tx\n", __func__, chan);
 
 		/* mask 'tx channel free' interrupt */
-		stm32_ipcc_set_bits(ipcc->reg_proc + IPCC_XMR,
+		stm32_ipcc_set_bits(&ipcc->lock, ipcc->reg_proc + IPCC_XMR,
 				    TX_BIT_CHAN(chan));
 
 		mbox_chan_txdone(&ipcc->controller.chans[chan], 0);
@@ -141,10 +152,12 @@ static int stm32_ipcc_send_data(struct mbox_chan *link, void *data)
 	dev_dbg(ipcc->controller.dev, "%s: chan:%d\n", __func__, chan);
 
 	/* set channel n occupied */
-	stm32_ipcc_set_bits(ipcc->reg_proc + IPCC_XSCR, TX_BIT_CHAN(chan));
+	stm32_ipcc_set_bits(&ipcc->lock, ipcc->reg_proc + IPCC_XSCR,
+			    TX_BIT_CHAN(chan));
 
 	/* unmask 'tx channel free' interrupt */
-	stm32_ipcc_clr_bits(ipcc->reg_proc + IPCC_XMR, TX_BIT_CHAN(chan));
+	stm32_ipcc_clr_bits(&ipcc->lock, ipcc->reg_proc + IPCC_XMR,
+			    TX_BIT_CHAN(chan));
 
 	return 0;
 }
@@ -163,7 +176,8 @@ static int stm32_ipcc_startup(struct mbox_chan *link)
 	}
 
 	/* unmask 'rx channel occupied' interrupt */
-	stm32_ipcc_clr_bits(ipcc->reg_proc + IPCC_XMR, RX_BIT_CHAN(chan));
+	stm32_ipcc_clr_bits(&ipcc->lock, ipcc->reg_proc + IPCC_XMR,
+			    RX_BIT_CHAN(chan));
 
 	return 0;
 }
@@ -175,7 +189,7 @@ static void stm32_ipcc_shutdown(struct mbox_chan *link)
 					       controller);
 
 	/* mask rx/tx interrupt */
-	stm32_ipcc_set_bits(ipcc->reg_proc + IPCC_XMR,
+	stm32_ipcc_set_bits(&ipcc->lock, ipcc->reg_proc + IPCC_XMR,
 			    RX_BIT_CHAN(chan) | TX_BIT_CHAN(chan));
 
 	clk_disable_unprepare(ipcc->clk);
@@ -208,6 +222,8 @@ static int stm32_ipcc_probe(struct platform_device *pdev)
 	if (!ipcc)
 		return -ENOMEM;
 
+	spin_lock_init(&ipcc->lock);
+
 	/* proc_id */
 	if (of_property_read_u32(np, "st,proc-id", &ipcc->proc_id)) {
 		dev_err(dev, "Missing st,proc-id\n");
@@ -259,9 +275,10 @@ static int stm32_ipcc_probe(struct platform_device *pdev)
 	}
 
 	/* mask and enable rx/tx irq */
-	stm32_ipcc_set_bits(ipcc->reg_proc + IPCC_XMR,
+	stm32_ipcc_set_bits(&ipcc->lock, ipcc->reg_proc + IPCC_XMR,
 			    RX_BIT_MASK | TX_BIT_MASK);
-	stm32_ipcc_set_bits(ipcc->reg_proc + IPCC_XCR, XCR_RXOIE | XCR_TXOIE);
+	stm32_ipcc_set_bits(&ipcc->lock, ipcc->reg_proc + IPCC_XCR,
+			    XCR_RXOIE | XCR_TXOIE);
 
 	/* wakeup */
 	if (of_property_read_bool(np, "wakeup-source")) {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
