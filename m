Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E48154607
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 15:25:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ciY0npmIFBmaiwjuvJu+XL8TF0xW3Y+xjTImqPeATsQ=; b=hzsTbrUACcJcrx
	Ec8NBOb+hsdz3RxVddc70Kt4J6bCLzwc3TsJpTs5vzhBtJThY2fyzoR8v74e39gcCTlmk1TuxoDAz
	nk0qqP9GVUWcgVPZjfqPvhhRAeWakIdeb2PWdtfsinre4lzyLW5lBe3dUZLvl/65pRXz4dwvjtflt
	b0gKrv6jxm8P0kt/0NJ03vOmdsem5KsE00755gmXVH4/XFMXsDCI4kknwFiauen9UVUJycUC1Qs5x
	3Pr19v2bYeWTVkK2zv1/raSqjO6fkDnZz3rr7t5bbp8K23p8SgqUpWklev3pRdNMATXJYEqQ0Isxm
	5NjRarAoHykwyvo58NjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izi5Q-0003Q4-Tq; Thu, 06 Feb 2020 14:24:56 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izi5B-0003K8-A9
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 14:24:42 +0000
Received: by mail-pg1-x543.google.com with SMTP id g3so2822502pgs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 06:24:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wQjSqjPnCsGymzsifLNmUAkPPkBxHXDH/G5MVJ/Zpj4=;
 b=kSGiazQopCo0sSM9TFubaUcSJ9VVWKx13crgeyVQCTvzSjYif/Wb8scZXxOpvzP3R8
 5lMbn0lWbpXhTYcfPDnCMO1jWlHa1cBXW0/UCYvX51l+0XuXRq3A2hv8Z+zLQa6CRoPf
 ElPVZGAAZyez6DheqHu+MOderzBYHe6YQ1utfO/z+J3KZKUK53ogL8WEnBScEOoCzyNE
 dTPoTD/etB51NoXMilmYL09pmcWdqOgUzOhFveK0FQeTwsWo7grckVxpMc9xc8UIk302
 ITl4W1Jy+9/xq9kT7tqRM/KZJ7cpr5D5gOOqNMJTUiW5tGXSUYKX79iNjHIj8t7f5ewX
 mkfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wQjSqjPnCsGymzsifLNmUAkPPkBxHXDH/G5MVJ/Zpj4=;
 b=nTKIaw3O4vQkvY33yXCIhnLEccVWx0zQUQvOH+JswD2L72M6gC7CqhaGgofA4Wfgzv
 rjHrwPjq5UnkiWY2/wmpzmcAjNVuiOFSxyD6xG7oJ0rzIl/1Nozqa9ce9q4bmOdneKrG
 7n6MmujvE/8Xia862aBwCuwEFhFPe9/I9RDxbOK3sb2dHW88FD5usx3axG1amTizEVsq
 vU44YY0Q51y9X0y/PbAC+Ujqn6e2Y7rMH3TYUN1hJyyuB4MWZJdgLBmrSOTHMHaHgAeA
 0W5z+SApMfGBxjz07wldOB2vHoikbL/cxpVT7Ux3B0+eQNGGRPAs2w9Obm578naS1TL3
 K2lw==
X-Gm-Message-State: APjAAAVzZco/ceqlBn1HlZrorjGOZ62JWPzr2sBwGQCgRESFV2VpDHny
 w1v+KNE7MlmFfSzyM5lkvgc=
X-Google-Smtp-Source: APXvYqxIpANX4/2P10i3M0tJgchopDXvDHoETQqvb5iNVXRpjk0EH55o246IT+xkuYsVLXZtkB+X+A==
X-Received: by 2002:a63:5157:: with SMTP id r23mr3723390pgl.81.1580999080676; 
 Thu, 06 Feb 2020 06:24:40 -0800 (PST)
Received: from localhost (104.128.80.227.16clouds.com. [104.128.80.227])
 by smtp.gmail.com with ESMTPSA id m101sm3416844pje.13.2020.02.06.06.24.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Feb 2020 06:24:40 -0800 (PST)
From: Dejin Zheng <zhengdejin5@gmail.com>
To: peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com,
 davem@davemloft.net, mcoquelin.stm32@gmail.com, netdev@vger.kernel.org
Subject: [PATCH 2/2] net: stmmac: use readl_poll_timeout() function in
 dwmac4_dma_reset()
Date: Thu,  6 Feb 2020 22:24:04 +0800
Message-Id: <20200206142404.24980-3-zhengdejin5@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200206142404.24980-1-zhengdejin5@gmail.com>
References: <20200206142404.24980-1-zhengdejin5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_062441_369287_8A54BA23 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhengdejin5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zhengdejin5[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Dejin Zheng <zhengdejin5@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The dwmac4_dma_reset() function use an open coded of readl_poll_timeout().
Replace the open coded handling with the proper function.

Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c
index f2a29a90e085..6b911e360e27 100644
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
