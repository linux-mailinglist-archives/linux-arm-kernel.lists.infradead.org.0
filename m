Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B83F11861B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 03:34:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=biWg4bcYgJ86JPIKsL3wPO6SVZHsgsli6xwjGGIC7KQ=; b=c3yz/GS/OKmzU1
	Oxzbw9dJ5MvKgGl71Oi36ksk2ZknCJfyx34wx7LtapDZb+1QT4Q7pAu/NSuxDRREaOaZzgwODo65H
	9VCmyRbrsgv/Fmlws/o1mm1ntLR8XGGLxmcMw3pU+BO52ICNem14Sqa38gbk8EmE+skEIP2uLcJyv
	wr1ZYCBxbQkq1PUEN+DhH9yodDUf0Dtup6RPBM5DN0soDb79wvf08M8/c4/sLP08vYADcT1SSRmcv
	M5WyWbecSqG546fOxC2O4AH2tf3tvao3u3bMVZjLGADj6cH6tReu6HCfDoLR70g7rk7IvXnuHZimh
	UsEuiq7InPD/5gMcrC2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDfZj-000285-82; Mon, 16 Mar 2020 02:33:55 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDfYz-0001lf-QV
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 02:33:11 +0000
Received: by mail-pg1-x541.google.com with SMTP id x7so8845186pgh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Mar 2020 19:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UOxHJj4HdQ88hqvaq4HbY/GpiedINXJyx4lWisWkp0c=;
 b=CEKGHAhjNx5OVWJ6pH6qnuCyJDP4H6nJmuCMA1rGBhvKab++FPyywXOWYZQIEjkvfX
 l5zkH83RqCkyGX3ALgRUtORxDk/eEq2uMefH7QwOWOPqcWDukZFnHV+ESaJqE2c176k9
 pL3+4a/k1vj/2jfuiqPtj+JQN17QrOTG9ptDxrvRTxZWRuzde+oYSbsNMQJYL0lRMPlF
 MDa9oM4iRszS161T7Y7Q86mGUJ+w2hZutedTIclbRr8pYSVy0MhZpb/C20YRttwh1fV1
 aHcEThV/TOfHsSnJZaEecxz0VT9RaWsOSMdWfCDyKvPac85CbNjJCBI0Y5yuVC8sJGzN
 fZjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UOxHJj4HdQ88hqvaq4HbY/GpiedINXJyx4lWisWkp0c=;
 b=TCy6TV/ebthJcKFS3NaSdLtuA8HOTbdwJxTQDJRLbhABeKr5jySjFFKVTTbrvHP6mg
 r/5giwKsaB6bbTh33Pq3RrF8IRVMgn3MGxtDXRR/muS25Yn82qXwVboEI2jQ8mXea1ck
 FkRpsfsMPwF/1Mwp8Gian4UxdzDNLj6yJR/f/XiuvseQQGYNDr1UQv1yOgY4Slpij0t0
 NRA0FIbSE+ET/ZsMWzTMxNUYcZaa5ryek966qcmpCN2RsVTe+zl1eyw4mxROVeTjqubO
 l2LZZA13dMpMJ5Y9H/8S6V0Obz1V1vsIrKpfp5vtx5ZSBM0Uwuc4GuZnv033CR5UzYXe
 bBuw==
X-Gm-Message-State: ANhLgQ31bcFVzW/+58nQ4/zguTTz+Y5Z4cwb3B3y9u0tHsEMqCbgqQC5
 tqr4z/+MBoku7dvfNQxue8Q=
X-Google-Smtp-Source: ADFU+vvjAcrdfpaC4Q9vMkz/EG7skwYb7zOD0ZKqUax3cK1CE/FEMScMnyrZrKrtsDbyLMmpSNvtqQ==
X-Received: by 2002:a63:ba5d:: with SMTP id l29mr4428057pgu.67.1584325988849; 
 Sun, 15 Mar 2020 19:33:08 -0700 (PDT)
Received: from localhost (216.24.188.11.16clouds.com. [216.24.188.11])
 by smtp.gmail.com with ESMTPSA id w188sm2510059pfb.198.2020.03.15.19.33.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Mar 2020 19:33:08 -0700 (PDT)
From: Dejin Zheng <zhengdejin5@gmail.com>
To: peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com,
 davem@davemloft.net, mcoquelin.stm32@gmail.com, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, andrew@lunn.ch
Subject: [PATCH net-next v3 2/2] net: stmmac: use readl_poll_timeout()
 function in dwmac4_dma_reset()
Date: Mon, 16 Mar 2020 10:32:54 +0800
Message-Id: <20200316023254.13201-3-zhengdejin5@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200316023254.13201-1-zhengdejin5@gmail.com>
References: <20200316023254.13201-1-zhengdejin5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_193309_929748_961A456F 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [216.24.188.11 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhengdejin5[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zhengdejin5[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dejin Zheng <zhengdejin5@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The dwmac4_dma_reset() function use an open coded of readl_poll_timeout().
Replace the open coded handling with the proper function.

Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>
---
v2 -> v3:
	- return whatever error code by readl_poll_timeout() returned.
v1 -> v2:
	- no changed.

 drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c
index 9becca280074..6e30d7eb4983 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c
@@ -6,6 +6,7 @@
  */
 
 #include <linux/io.h>
+#include <linux/iopoll.h>
 #include <linux/delay.h>
 #include "common.h"
 #include "dwmac4_dma.h"
@@ -14,22 +15,14 @@
 int dwmac4_dma_reset(void __iomem *ioaddr)
 {
 	u32 value = readl(ioaddr + DMA_BUS_MODE);
-	int limit;
 
 	/* DMA SW reset */
 	value |= DMA_BUS_MODE_SFT_RESET;
 	writel(value, ioaddr + DMA_BUS_MODE);
-	limit = 10;
-	while (limit--) {
-		if (!(readl(ioaddr + DMA_BUS_MODE) & DMA_BUS_MODE_SFT_RESET))
-			break;
-		mdelay(10);
-	}
-
-	if (limit < 0)
-		return -EBUSY;
 
-	return 0;
+	return readl_poll_timeout(ioaddr + DMA_BUS_MODE, value,
+				 !(value & DMA_BUS_MODE_SFT_RESET),
+				 10000, 100000);
 }
 
 void dwmac4_set_rx_tail_ptr(void __iomem *ioaddr, u32 tail_ptr, u32 chan)
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
