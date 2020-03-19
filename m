Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 385BE18B49D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 14:11:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JJ0ZwTSu9ql4S+mEZcRNOg6fma40erWZnH+GD8nlBdA=; b=nbB/OWNTWTjMTF
	47vtOlK+CezrytCUWRy3edMp8g0CGGaM2ZvPri9u6rDIfKv8ymMpDaobFTb4DOMbgcPa6qBPnCiw5
	otd3WKKTl1fbrKoiCtT4JYKhb+xAGvvKk4WuxUoo0BUFyAtM61fgZUXoW8pXuVCvGp3GV1CMNp84f
	egWqWsrxkm5Msyf62Jack/1JWyDsnFct+YD/h9ocb8nAdzg8SYb8dYLwmEuS+TBtZf1IQt7Lq6MgG
	jolIpgtfeZzWW8hWN/IAs87OexpEVq3RSjr7qhBJBvanCEropgmTPw7FV+efeE/GF5w4mpALX4k+U
	34niWZLQBBB306bkvW4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEuxD-0000I7-Mm; Thu, 19 Mar 2020 13:11:19 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEuwy-0000HN-V4
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 13:11:06 +0000
Received: by mail-pg1-x542.google.com with SMTP id d17so684756pgo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 06:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B4nHSl+0pWGmInbe8FQHGu8YA5O/4e10+dn6tS8W63s=;
 b=gbLWcG94Hw5eFr5F713x2ZHuuzXvDsR7HTPfXMj/bIwF+d8ypI7MQ0pyYwa+09U5TZ
 NqzDcIq3rhIlQ4m3ktNvDy5fiWpyluuTk2aj13Vrd5xi/rvbzDOTKr5HnOlQqlMtqq2I
 M30MLa3Mre/tQuTekAAIEmcBZZtLSzzPQpAZxWmDu3aa4Zrs7fadQ+K7/FGUMgA0sb49
 PyYhYjlIHoob0v7+ijdGrXE0Gm8ie9bwPUlzDJXrH7xRsp8cxgd4KmLEzHO+mBmV/t2S
 jn7lhWtnvbAEt837OOgOCRB6KtNhzETY7bPO8q91avv2t4qOmYnjaaHLMF7/VWFOygUJ
 ukTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B4nHSl+0pWGmInbe8FQHGu8YA5O/4e10+dn6tS8W63s=;
 b=ENYXPUDZjrUllvdT3tQe7vNSBpkz33zlb1DoUxoTiqDyOjAXU0bLDfUld4MlRXfL0a
 AKMdoMrlj9tW8KAYEwExpGVL74HKxFacabMW6VC3KkODESypL05JR7QLoDuc9ODOuCX7
 sTQwjvPNPTVjdZYas36pw+GS2bA9isXC2u3VLMsZPSw7f3kGK2UcUKV+7LAVRiqHpfuL
 Q2JI0xJJElKKYD5kS1i+RqKPrOm+83u5qAEdNkHarWtpF4Dt0jtfD0JVje7b5wyra++d
 g/+ncBrVXC3/XUZSr1PSDcNC1HAKurutRc3KG7DX5O15y51bcH2T5WQO3KYGng32Y3Di
 RKtA==
X-Gm-Message-State: ANhLgQ0eZYw8OccuKSmK/LQ9rvi+DZjsf+IqCwG7WPM51dGoYLb3CXK1
 tq1HIgMuOv8UD38HpwWHOW4=
X-Google-Smtp-Source: ADFU+vu6U87IPTR0D2iW/QPtoCB5nPrRdEyRPfJY+KBcojiba6nAoCyZgW5BQnWhYb7EwcPvHQuD8w==
X-Received: by 2002:aa7:81c1:: with SMTP id c1mr3943700pfn.236.1584623463897; 
 Thu, 19 Mar 2020 06:11:03 -0700 (PDT)
Received: from localhost ([216.24.188.11])
 by smtp.gmail.com with ESMTPSA id lt11sm2087682pjb.2.2020.03.19.06.11.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 19 Mar 2020 06:11:03 -0700 (PDT)
From: Dejin Zheng <zhengdejin5@gmail.com>
To: peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com,
 davem@davemloft.net, mcoquelin.stm32@gmail.com, netdev@vger.kernel.org
Subject: [PATCH] net: stmmac: dwmac_lib: remove unnecessary checks in
 dwmac_dma_reset()
Date: Thu, 19 Mar 2020 21:10:19 +0800
Message-Id: <20200319131019.12829-1-zhengdejin5@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_061104_999024_F0931402 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
