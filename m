Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4D8185DC2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 16:03:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RdbUBSfheXgxsEbZ9DSoG4Vn0bfqIt2XUpcEa3wFRew=; b=h1dVVbTmhS3oFV
	bEdg2TxUDsn4joctoWgL7XumnoY4OHrV/W64b/vbeT8lctEibdUB8Y0PuBUPhXXXI0kOhBvC0tyBI
	T71noI4fyahvwYtYW/xaieyAkWTlLHcCUVvbxaBXE5R6yI2F2vTLpcoU7D2Mkd7UpaqhvdPK1qwYo
	L7geHxUPrDDKhuqLUSvJAjBbDM62Le8S+6nqBGxj4NXJpr+UI3WzkT0YsRV8hS5hK5Y0ac5nNc83A
	GnlJgiRT4iipxqz3ZUFc00Hh2N6ba2AK9MP4vxNO9T/ck6K2MZPhHN42onmtr1hQBBTfds8ENoRW0
	b9p7kCu1fRh91I4CsNXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDUnq-0007bk-Od; Sun, 15 Mar 2020 15:03:46 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDUnN-0007GP-6Z
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 15:03:18 +0000
Received: by mail-pj1-x1041.google.com with SMTP id o23so950948pjp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Mar 2020 08:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Akk5s7VpQ8EMc3QKWawmMJ2LR47WbqMiE93Yj41PNp4=;
 b=EXVKyar0oLMU5KHLP0/MgDHqO3OiUnDESNs5UJzJ9S7k4L+/ZVkySEuCx/dQsAJgjn
 q55m/TgfP+pwRhJyzcVffNuDndrcKrBLJkDgIRjck9pG3QXOAiuPj1CLQJB/t4YABVtf
 Mdp06gQ2T9rjOyUBBPJiY3vW+kKqe5xGnZI9/RYwaozLNgskqApBbDCe3ur3lkxGDCQJ
 8xyK0OQhgRK+hB4pcClarUopyNQ3SVqU1x6Yl2Y/iYmbUI7XlD8j56JpwBgYZit8F833
 xMFCP3mi2p1jXS+LV9IWS8pEQcfFSgj5eVHp+4iZJTfPGqd9gfD4PMGCwe57khOZFYeU
 GADQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Akk5s7VpQ8EMc3QKWawmMJ2LR47WbqMiE93Yj41PNp4=;
 b=PD9bG4inJ2nBe0iQ409jbFqfR2QoAogUt8UYDdflq5XHJKVid7BvNOZrBQtgADnVVB
 u0mJDDucBBzFt1IVICeJOazErJOhg9m0VA5paiiz2KB6vM0SCdC5qfZujJ/U1BD/rUTI
 xR5j01jq4Isv9r34ReCeU+K8v16ZS3lS1ZeRO0R81TjsgBWbh8Fr4jOiJNtgWOkI+k4c
 ghjs6oKDsmWy/JWWmGFcrQJegQus07Nv/hfpmPU1oh56HKliiRxodcNagAAGs+2nW9kU
 +3/hADA/H2qWeBD1wuaPDXKEbTgR31GKw8XuLoIu2g3BI3/aH4k5I6OlXI6s2dRSTvqg
 mC2w==
X-Gm-Message-State: ANhLgQ1P+VYAiYQmT6wzfaltKqXen+iHIQwu01SCvdrWDutb3he8XbsO
 Gree7Ub6BC8gNRuwXurbEYw=
X-Google-Smtp-Source: ADFU+vuRkV82PozUwcHEZyF4En2HI40Sx1yE+v/Qbqok6rp0jWAkSiIAPTyMe9knTgb7aSiGk0Ofbw==
X-Received: by 2002:a17:90a:d80b:: with SMTP id
 a11mr20775016pjv.21.1584284596078; 
 Sun, 15 Mar 2020 08:03:16 -0700 (PDT)
Received: from localhost (216.24.188.11.16clouds.com. [216.24.188.11])
 by smtp.gmail.com with ESMTPSA id j21sm16849584pji.13.2020.03.15.08.03.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Mar 2020 08:03:15 -0700 (PDT)
From: Dejin Zheng <zhengdejin5@gmail.com>
To: peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com,
 davem@davemloft.net, mcoquelin.stm32@gmail.com, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH net-next v2 2/2] net: stmmac: use readl_poll_timeout()
 function in dwmac4_dma_reset()
Date: Sun, 15 Mar 2020 23:03:01 +0800
Message-Id: <20200315150301.32129-3-zhengdejin5@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200315150301.32129-1-zhengdejin5@gmail.com>
References: <20200315150301.32129-1-zhengdejin5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_080317_313309_C5D1E259 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [216.24.188.11 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
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
v1 -> v2:
	- no changed.

 drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c
index 9becca280074..af68ef952cd6 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c
@@ -6,6 +6,7 @@
  */
 
 #include <linux/io.h>
+#include <linux/iopoll.h>
 #include <linux/delay.h>
 #include "common.h"
 #include "dwmac4_dma.h"
@@ -14,19 +15,16 @@
 int dwmac4_dma_reset(void __iomem *ioaddr)
 {
 	u32 value = readl(ioaddr + DMA_BUS_MODE);
-	int limit;
+	int err;
 
 	/* DMA SW reset */
 	value |= DMA_BUS_MODE_SFT_RESET;
 	writel(value, ioaddr + DMA_BUS_MODE);
-	limit = 10;
-	while (limit--) {
-		if (!(readl(ioaddr + DMA_BUS_MODE) & DMA_BUS_MODE_SFT_RESET))
-			break;
-		mdelay(10);
-	}
 
-	if (limit < 0)
+	err = readl_poll_timeout(ioaddr + DMA_BUS_MODE, value,
+				 !(value & DMA_BUS_MODE_SFT_RESET),
+				 10000, 100000);
+	if (err)
 		return -EBUSY;
 
 	return 0;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
