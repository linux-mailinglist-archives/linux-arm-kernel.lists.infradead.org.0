Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F8B10CD50
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 17:55:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UU0lMK2EZjB2pJHHl9jbp/ZlEfV5/v8cDnd/xEG1YwE=; b=SlwEcK3jvnoglWMsypapV75+si
	wRUIcApSD0g5cTVsyMx92qOsz2/BxbMUWsUeuaczBtsUSQ9Pggqncwm1CjYZ1QtKDcGnw6dJP/zZH
	p8DRun90Ch6tSzEkkMk2j7UEcedsyzt9XH7s7+9FvKtXBu3TG14u8WPKTQQc/UsQX30QaU6OYpRby
	ZTyn3HoCZJJAFA92XkgivrHrPz4A5MCNJIrLr47K+1nTml/ATsVfI71JZl8BFAYkhTUAv/N7U8EHa
	AoOxgULerIq6SLn74DcNytOiZGrGw5K/dnxzEj1oR9NlJ93dRnN1OSK5COaLq7YiOcujWIggLQm9X
	utrc4gdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaN4E-0008Gx-MX; Thu, 28 Nov 2019 16:54:58 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMzl-0004k9-Ch
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 16:50:23 +0000
Received: by mail-pl1-x644.google.com with SMTP id s10so11812207plp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 08:50:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Ve1daf/mMGyyV9VtqaD9VZ+drFrdziUeyzqFEa1bEX8=;
 b=QdfKOwx2OJabOfCqE3mEGZgTrv2/gWtfc9aPsAegxShDlcJFxfod9xbR8qUpaUSrKA
 lN+swYwLnlgLgrSviR4JWJihJonMpuhy7wXqHAnmUInK0mv8323jJHcCIE4QGYw2lsZH
 q8oKAydylvf86RpUa4wuc+K76Mk8Yr0z0Bp0mJmTZlYpbNQelJuy2w772CJ365QXJ0hK
 sJQROf9qRH30ngnifsT6wcvVfOsqo0OHmynT5HckidI/ew0Z7ofqawUkSOMQO/qEzAcp
 C1v01meXvQFJRnBwVFxCG2S+pRY6T9NkCdPIOWPZspbfiwTUWLVf5twPkpqtU/z0nBQI
 nIVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Ve1daf/mMGyyV9VtqaD9VZ+drFrdziUeyzqFEa1bEX8=;
 b=XNDyrUfupwGXvypbuCE9e47Py+F+ebEZYugvx4EH/x53BCxI3qEXeNp+ejB2Rihsu/
 fmE87UnE+IRwxO6DgOQ8eN/5skg+quIRU7he62bmQplTP+PLN18WnV+HR4D1DBpciwEf
 5TuaL7dCoI9XPdhwtbvfKkFM68QXtzfk4pa4eHMeGkJSvrggYuaErL5yijDLIGxWNAk6
 DAmPHQ+c8NNzv/Z6vQya2kdAzUiXuwodqxuv263/QV4yupYnPHfRFSPO1h/brTLRBtPn
 4ajBe1+69tA1sVhuvtwdD/2QhdudURaukx4ZbthS5mfZTekT0tZi0nUdRkr7Lvq0r8Zd
 weqg==
X-Gm-Message-State: APjAAAUjjdE1R/0H9MBaaBkr3SAmFZnqEVsv9567M+qV0JGePcfyinxP
 EIAaCGKNsQ6YNoz+sTomrb2xFSsTCWo=
X-Google-Smtp-Source: APXvYqwF9EpUID9uoRJaTP7XOptfqBdu8zh2mx1l+skezdxU/+nVZEZ0krSH/BIt3st7U3Is4b6ZnQ==
X-Received: by 2002:a17:902:b181:: with SMTP id
 s1mr10698227plr.62.1574959820186; 
 Thu, 28 Nov 2019 08:50:20 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a15sm2450343pfh.169.2019.11.28.08.50.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 08:50:19 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19][PATCH 17/17] dmaengine: stm32-dma: check whether length
 is aligned on FIFO threshold
Date: Thu, 28 Nov 2019 09:50:02 -0700
Message-Id: <20191128165002.6234-18-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191128165002.6234-1-mathieu.poirier@linaro.org>
References: <20191128165002.6234-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_085021_481538_CD2CBCC7 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: stable <stable@vger.kernel.org> # 4.19
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
