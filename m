Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9AD318B53F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 14:17:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=laXbFUnPd9dG5cG+zJgGSdupQmEwALiNlRsSDM1s2cM=; b=VMKIpdqqycZVxu
	fUcuOcjazIGJ/rIVyoiT3CmNvdxDgB6mpKX5vS+tmSeZ7eA7/Av7NPKu3hN6+f8sFGgb4EiwCTcyw
	mtkEJ6mXapzoTbr7jaZySspyne1EdrxeBm/GTep/ASOHAYhjh0ufBvHQNJszWBAKHPgt/oWxWDGcs
	SgPCrAEhVoiyOo/Nt+tIFQQs0WC49LZrYwYO5dVm5gR9hsJNsC7P2qEXQwgXy1lIiKepqJPQEX2X8
	YSOsGBH+f1w8D0TzdJWmcrCqHd0GdnJi0MHvUTu1Mfr1Ze7QHq0Iik8LkiwQBTQ9s5sBl3Kc1bPCc
	whSV4hrKN9t3m4Lbb6gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEv2e-0003YD-EA; Thu, 19 Mar 2020 13:16:56 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEv2U-0003Xo-TL
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 13:16:48 +0000
Received: by mail-pg1-x544.google.com with SMTP id b1so1254255pgm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 06:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nqJw5vg4Nil/Y9pZjcpy6DTelU/teueaanPhC3c5U58=;
 b=T+cYXbZAHaDkG0GNHDjApa0wSTlshXtBKTVMP29hon48mbyn2rSVvYi8nKMBRhYv9j
 MaKesS8Pu3GoCeHrmfoHRCXKVwIARQ+N1VF8r9mMjrHKehag+deLDFwHqy1/FTUkY05S
 sVFv9NZdiGYRSgp05pOjM0JIVbyLu+ZxdRZxdviw9Je8WpmC/i2tyZNZz+Te2KvU9QW8
 kdwYoB2a2CEZcw/nAJpp1R7rHtdDIZKpe9p5irMpWk6Wzn/6LtM5AysvML1Dnh/9sa3O
 Kr6n9MBkKJjOY7RyLAJSwa7bpppLJSIOzc7Ly3KI+uiKWassksQrMsoh1gxvZTIgRr/o
 pY3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nqJw5vg4Nil/Y9pZjcpy6DTelU/teueaanPhC3c5U58=;
 b=VO94L7QlsG294GjzToQioLxGpslF3EjNc1jFU5VIVSd3AOF6yyMWZEmi0z0Z3VTi+j
 c4fKwzfJb9DjaheQN3qS2zuLoOM3xrsNkR/KeU0astea2fncZMZ2MkQQv5mdpEv3Y436
 c1b7ub8Eo8+LRzVQBV66yM3b1NvUuEswpyKaj+dJzlQCd+78F35UwdqO/ci27aMIDwQd
 VqZ0APa+XaboCVEC8VuCkR8K74At9jRvNuJDwuy74eOtEcao4hi1B4qbf0DEuBJyYXIK
 /Ev7cFhk5PYjflgl34jOK5U8MySbiFqj0aCzx79q6N5S7BNzHcM7R+Fd8xfw04Cr80yV
 YwMA==
X-Gm-Message-State: ANhLgQ0VR5PCFHbsDX+OXA8GbyDRPh40tWsERyEkJKHPwTak98RO2ZSS
 OjArelaRfd9bh5flzN11c2Q=
X-Google-Smtp-Source: ADFU+vsVUcop1IJD5Y5GJDWMkZo9mIv9UFBUlK2kkpeO2PwWiaR6FToo9iw+OWXW3qnKj5G8oMYMrA==
X-Received: by 2002:a63:fd0d:: with SMTP id d13mr2905382pgh.302.1584623806046; 
 Thu, 19 Mar 2020 06:16:46 -0700 (PDT)
Received: from localhost ([216.24.188.11])
 by smtp.gmail.com with ESMTPSA id j38sm2383940pgi.51.2020.03.19.06.16.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 19 Mar 2020 06:16:45 -0700 (PDT)
From: Dejin Zheng <zhengdejin5@gmail.com>
To: peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com,
 davem@davemloft.net, mcoquelin.stm32@gmail.com, netdev@vger.kernel.org
Subject: [PATCH net-next v2] net: stmmac: dwmac_lib: remove unnecessary checks
 in dwmac_dma_reset()
Date: Thu, 19 Mar 2020 21:16:38 +0800
Message-Id: <20200319131638.12936-1-zhengdejin5@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_061646_951182_401222CA 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [216.24.188.11 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zhengdejin5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhengdejin5[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

it will check the return value of dwmac_dma_reset() in the
stmmac_init_dma_engine() function and report an error if the
return value is not zero. so don't need check here.

Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>
---
v1 -> v2:
	changed subject-prefix to [PATCH net-next v2] from [PATCH]

 drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c b/drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c
index 688d36095333..cb87d31a99df 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c
@@ -16,19 +16,14 @@
 int dwmac_dma_reset(void __iomem *ioaddr)
 {
 	u32 value = readl(ioaddr + DMA_BUS_MODE);
-	int err;
 
 	/* DMA SW reset */
 	value |= DMA_BUS_MODE_SFT_RESET;
 	writel(value, ioaddr + DMA_BUS_MODE);
 
-	err = readl_poll_timeout(ioaddr + DMA_BUS_MODE, value,
+	return readl_poll_timeout(ioaddr + DMA_BUS_MODE, value,
 				 !(value & DMA_BUS_MODE_SFT_RESET),
 				 10000, 100000);
-	if (err)
-		return -EBUSY;
-
-	return 0;
 }
 
 /* CSR1 enables the transmit DMA to check for new descriptor */
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
