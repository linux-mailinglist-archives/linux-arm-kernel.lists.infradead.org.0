Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D621810CD52
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 17:55:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7xdiY0W/upJ3P834ikYfx5pnKGizZw0IWWZzAFLA/Qw=; b=B3+bzhuxReculT8qLQ3rKZ/dWl
	Klce9JCdoTrvF/dcDmP0eb5gmOY+D9STm4w/t4/+lhb8cSEJmkUWCQisZxIfpEX5fDQ3Ov08txt2U
	7Of93Kl9QjGKLZ173zeiLaHjf5j/16VqTqQThgkUq/XfQmr1LxdEeKdGAxuGygCdrP+y0Wa4yQOrZ
	v+/km2ePYDUFl5GQQUWIeT0sYP/eFH79XEuqoN/YI4IQgOnO/vHBRPuf9B9Fj+zDuA2ecDc4vOQo6
	Q2NkRddS8qYtLezyADFfNqTeVQ710q/Y7sWr6vLPSuDmq9qX4c/h+kxf7xTJmlfOH8MkAgpEU2bKf
	Y8rTaFcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaN4l-0001Zo-JO; Thu, 28 Nov 2019 16:55:31 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMzj-0004hy-DO
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 16:50:21 +0000
Received: by mail-pj1-x1041.google.com with SMTP id v93so8843831pjb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 08:50:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=j3tKRddo0sP/VNAlHyU3woPmGtLiTh7D/WlbKBjTt+o=;
 b=rqAF6te9rthxTZcjJVMOHReLi4Ieoi1PglEBAato0h+n0Nte51no34MOFzYYTnECH7
 tjTEGEoyXtjxOY9bbCX1BEZbD1S9gXhuEU3FurHraYK6FfyuLO2wnwN9spCkBk1vBXG9
 oZ4ydp3GGO82nT0eUUczi+ThQKTSsyUmPY7YYKA2BdQO6VZoTO/RVjfC0I2Q6ktbxPhR
 IEN+Bl8Shj2G6ap1l4T2tFQAzKaxwz7/BHTdJMeslUFTaoUgFxR0BgMbPmzl4tX/My7l
 LLEm4c7IOb6zdU2ScOJxnZH96HtYv9IiHEGbJg/rew3s66cM6VfHq2DSxyfGyg1jzfeZ
 JZqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=j3tKRddo0sP/VNAlHyU3woPmGtLiTh7D/WlbKBjTt+o=;
 b=iLEgoQE5za3tzzNGTeouYUx0UG7L6g1bzSrrkIc7QiCZJn0MT/uSYTscrtADvjt2us
 bdZPuXBCtVbG2TKW0mUIz4XAcH0k3lcOAXlRMctne7eT69U6Rd1yg9Mnj4cRKCL4TWVF
 XPmBJ6cOe2PaOffQVsPSs7CrcBeEtBIkjBBM4X3dzlujCJXCoTgZhMz77Sup4GYl9EHM
 TB2/l3JrM+ygwsXt50RBNdpVT92nSw4v2+N1IQf8bdrck2OOUjlbGtWDjwF1MxHu2qOZ
 zgmSsv9XbSMLmkX35TdvBCrDAiKURNYHNOctkz5DEd1AtYWxI5PLnY2w4c8o/QZyiuVW
 F8gA==
X-Gm-Message-State: APjAAAUVsHduGptCm8rTpofT8/jm3bAHMFnLJuPoTd4F1d9Iv72ER2A9
 TW7D6UbXQB/x1ZrnbDO57V9SUg==
X-Google-Smtp-Source: APXvYqw6bnbkAyEs9nANIBldH4r+0Epb9o9R/X8vZKnvryS9C7Bs7E5j0NZVw8WMZoHllLJCzCi41A==
X-Received: by 2002:a17:902:ff0e:: with SMTP id
 f14mr10621260plj.3.1574959818336; 
 Thu, 28 Nov 2019 08:50:18 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a15sm2450343pfh.169.2019.11.28.08.50.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 08:50:17 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19][PATCH 15/17] ASoC: stm32: i2s: fix IRQ clearing
Date: Thu, 28 Nov 2019 09:50:00 -0700
Message-Id: <20191128165002.6234-16-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191128165002.6234-1-mathieu.poirier@linaro.org>
References: <20191128165002.6234-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_085019_501241_E76484A6 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

From: Olivier Moysan <olivier.moysan@st.com>

commit 8ba3c5215d69c09f5c39783ff3b78347769822ad upstream

Because of regmap cache, interrupts may not be cleared
as expected.
Declare IFCR register as write only and make writings
to IFCR register unconditional.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
Cc: stable <stable@vger.kernel.org> # 4.19
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 sound/soc/stm/stm32_i2s.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/sound/soc/stm/stm32_i2s.c b/sound/soc/stm/stm32_i2s.c
index 004d83091505..aa2b1196171a 100644
--- a/sound/soc/stm/stm32_i2s.c
+++ b/sound/soc/stm/stm32_i2s.c
@@ -246,8 +246,8 @@ static irqreturn_t stm32_i2s_isr(int irq, void *devid)
 		return IRQ_NONE;
 	}
 
-	regmap_update_bits(i2s->regmap, STM32_I2S_IFCR_REG,
-			   I2S_IFCR_MASK, flags);
+	regmap_write_bits(i2s->regmap, STM32_I2S_IFCR_REG,
+			  I2S_IFCR_MASK, flags);
 
 	if (flags & I2S_SR_OVR) {
 		dev_dbg(&pdev->dev, "Overrun\n");
@@ -276,7 +276,6 @@ static bool stm32_i2s_readable_reg(struct device *dev, unsigned int reg)
 	case STM32_I2S_CFG2_REG:
 	case STM32_I2S_IER_REG:
 	case STM32_I2S_SR_REG:
-	case STM32_I2S_IFCR_REG:
 	case STM32_I2S_TXDR_REG:
 	case STM32_I2S_RXDR_REG:
 	case STM32_I2S_CGFR_REG:
@@ -547,8 +546,8 @@ static int stm32_i2s_startup(struct snd_pcm_substream *substream,
 	i2s->refcount++;
 	spin_unlock(&i2s->lock_fd);
 
-	return regmap_update_bits(i2s->regmap, STM32_I2S_IFCR_REG,
-				  I2S_IFCR_MASK, I2S_IFCR_MASK);
+	return regmap_write_bits(i2s->regmap, STM32_I2S_IFCR_REG,
+				 I2S_IFCR_MASK, I2S_IFCR_MASK);
 }
 
 static int stm32_i2s_hw_params(struct snd_pcm_substream *substream,
@@ -603,8 +602,8 @@ static int stm32_i2s_trigger(struct snd_pcm_substream *substream, int cmd,
 			return ret;
 		}
 
-		regmap_update_bits(i2s->regmap, STM32_I2S_IFCR_REG,
-				   I2S_IFCR_MASK, I2S_IFCR_MASK);
+		regmap_write_bits(i2s->regmap, STM32_I2S_IFCR_REG,
+				  I2S_IFCR_MASK, I2S_IFCR_MASK);
 
 		if (playback_flg) {
 			ier = I2S_IER_UDRIE;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
