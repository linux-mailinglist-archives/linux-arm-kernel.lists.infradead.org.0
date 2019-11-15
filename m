Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 753D3FE828
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 23:39:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=P8agXz3k0KIGgYAhlmyYfH5JH39OgbqppSu5qqwnHVc=; b=A4RBMrgBPGWrm3S2+1HTYHO3QT
	zKEHbYP/FEm4UcgKd+muDKEVzZt8RkiwK+yZqQ34rPp1jY2v2DKazldxpVT1JxP57TlSkOt17eD//
	HCRqA5VBR1kDM1YkRFSSRbTHMMO1s1wY12YWXK1jwZE+t5z/sBCPq5JnoO3UgeqKTCjovq36NdoUQ
	0+/lxWLp348PsHXeMeGkVEWCsATe+479KIna+d32cRAYzLV9p7KCW+TiL9pa69xBv2ULPDqQE5APN
	4gukLtD1VPD7AjnpG5m0UjET6lRQjioUzrLLnL0lRBTgfDiFnhZ1F5iIs6AKKgTzYTqOrbGJgf++7
	pFIPwS6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVkFZ-0004FM-S3; Fri, 15 Nov 2019 22:39:33 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVkAS-0007MA-T0
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 22:34:18 +0000
Received: by mail-pl1-x642.google.com with SMTP id a18so5616894plm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 14:34:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FlA/WYoLeRABK4x8leOELB1KpW2VXeE/7KRkjFeheIs=;
 b=EuCYF29XK/mB/F3BxjT3sWX6z88YjtNqs+w5TNJQP6w08JiRou935ewYfWNAW/g3Eg
 FYlTO4DtoNdOTwlSxUFfeQtM32HB8UD4XiO9OLyVfO071D1lvVGMwJJWMxV7DW959l9H
 3cEwLuybSJy5RgNBVbsk3HFrKrWbg+s5SFLxWWx6v5gjbraobv8BFodgs84RA1TUiybx
 8wvlY+DBrzz7i+IYZ/fG8vjyNWly48fh5ZQWjCLhzQuBoYMt+ckcnb/GiIKLPGqHmTMR
 H6s2ATHNqRlbPvsQBZJwh0jEIKkumM1yU/gS+DXe538ozDU9zHQll5wun9QYpe4w15+l
 ifVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FlA/WYoLeRABK4x8leOELB1KpW2VXeE/7KRkjFeheIs=;
 b=qtZfF2gjceBvZKzx0mWr7MLo34GatCoVkJzTbQ69ztnokUc24vJcgHMtK3BnYdZGEh
 nm4a0ursFk6hl+k1mLQXIvYwsXFHPaMUvPflxhlIX952Z6bgt/4b/Q+PEVUjQiKQJgSc
 WLujI9DczX9KszUly7FkAm4i1tVfw8xaT5uI3GbdVIlzbcNpsdBjpjvE8/H1y2yvpctG
 YuxpGvDqZCJCQN/Mhfg3QFGp01P3UncUniBRflG0bdZjYIG5jRc00QzWb4nhyVQcAjQw
 SHMSGcIAyLKLLTKmDtPlm/McvWee8JldUrtoOqoRr4HfHEmCX84pPn+LKHZyuw74rqfJ
 HJXA==
X-Gm-Message-State: APjAAAUhPekPhS0rW1+eTnlyANaCseHzfldTaL3yBVUV0uE3ngsOyFDA
 Jb7YKJtjyv8fbZldFbYJNGlizw==
X-Google-Smtp-Source: APXvYqwrPgGdAOCHvG+Dr9yqtqFxSjTdBheEMm1jF9StVEaJaadS7qR9/JmFNyQStGJT1dxmYiuHuQ==
X-Received: by 2002:a17:90a:2385:: with SMTP id
 g5mr22958192pje.117.1573857255728; 
 Fri, 15 Nov 2019 14:34:15 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m15sm11699724pfh.19.2019.11.15.14.34.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 14:34:15 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19+][PATCH 20/20] dmaengine: stm32-dma: check whether
 length is aligned on FIFO threshold
Date: Fri, 15 Nov 2019 15:33:56 -0700
Message-Id: <20191115223356.27675-20-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115223356.27675-1-mathieu.poirier@linaro.org>
References: <20191115223356.27675-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_143416_976178_EEDA7E43 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
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

From: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>

commit cc832dc8e32785a730ba07c3a357e17c201a5df8 upstream

When a period length is not multiple of FIFO some data may be stuck
within FIFO.

Burst/FIFO Threshold/Period or buffer length check has to be hardened

In any case DMA will grant any request from client but will degraded
any parameters whether awkward.

Signed-off-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Cc: stable <stable@vger.kernel.org> # 4.19+
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/dma/stm32-dma.c | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/drivers/dma/stm32-dma.c b/drivers/dma/stm32-dma.c
index 379e8d534e61..4903a408fc14 100644
--- a/drivers/dma/stm32-dma.c
+++ b/drivers/dma/stm32-dma.c
@@ -308,20 +308,12 @@ static bool stm32_dma_fifo_threshold_is_allowed(u32 burst, u32 threshold,
 
 static bool stm32_dma_is_burst_possible(u32 buf_len, u32 threshold)
 {
-	switch (threshold) {
-	case STM32_DMA_FIFO_THRESHOLD_FULL:
-		if (buf_len >= STM32_DMA_MAX_BURST)
-			return true;
-		else
-			return false;
-	case STM32_DMA_FIFO_THRESHOLD_HALFFULL:
-		if (buf_len >= STM32_DMA_MAX_BURST / 2)
-			return true;
-		else
-			return false;
-	default:
-		return false;
-	}
+	/*
+	 * Buffer or period length has to be aligned on FIFO depth.
+	 * Otherwise bytes may be stuck within FIFO at buffer or period
+	 * length.
+	 */
+	return ((buf_len % ((threshold + 1) * 4)) == 0);
 }
 
 static u32 stm32_dma_get_best_burst(u32 buf_len, u32 max_burst, u32 threshold,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
