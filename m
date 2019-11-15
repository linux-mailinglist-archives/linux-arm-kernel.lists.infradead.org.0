Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2614FE823
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 23:39:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WmHcEa39+zc7vteLZQ/NOlgANI/tC/cIBsQWECBJztY=; b=gEJ1ifipQNXMwPK6RKY7GooiCX
	on7lK43kLU6QsdHYm5DaGfH8wirzpf2wto6rdibMSTEhWNes7i1jo1e9QIJG8y5pjrYofg47ZFP+Q
	0YacuwoR9acoGwFLcdqqxb4eoYMmMAmjErUrEEzDCyUhkgiLbYfbmCZduwyQBOKqM8e7JKsPys5JI
	J1C96KU2EWQXIp1kpxvl95Wh41oGq0CacIaUqsKWQduw7K+Q06MAOlVDQORbTJbyfFw579GuazhHh
	6TnhaWzAeJyT1XDfbxBRelSUF9ArFGj7Z6aHBX3BHbw6qmxvQ+9tkUQYsFazD5asY56xx9mtp+Hmw
	vDUBOh6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVkFJ-00041c-1a; Fri, 15 Nov 2019 22:39:17 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVkAP-0007Ig-QX
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 22:34:15 +0000
Received: by mail-pf1-x443.google.com with SMTP id q13so7334559pff.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 14:34:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=K6EZMz28tei+A3Fv/t1+BOEFoAHrbvWtLCwNz1ul25g=;
 b=K+EFQOwvuF5Ea8JFTFkHmNjxaOLY3h/RqojbKXq9i/HQlhlztvlHNcN78FEt9TXC6o
 gSUamhTirK9XvaurkQpqxAGX9vGVxHMdQiaEQWdY4pU3qEj4HzoubKBVTea2SyfoaOJK
 BPCTKzxPUfEL6BWFoVxIfRmwHA4tUCwpDJ2n4SjysulPcZeL7QSTvBqV9U6sa5+BoRxN
 ByG3lYAWlD6MNyS7zATy/bbUyGMR05gPdPv2GsQzG7CJCDbPYpfG/4kCkSVGAS68F2K6
 gbCm66gHeb8hSy4KH2drGGvctHA7MuK4Ym++2SmPIVbJl9j9cJZ4kkEEVL0bmc7yyJmw
 rdUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=K6EZMz28tei+A3Fv/t1+BOEFoAHrbvWtLCwNz1ul25g=;
 b=VijdaRZ6AMBJWveauugMDtZkzMmRoL9OKxUKdKCJS3Y0D/XLlwVun3QFLOsQF+il6J
 6WPc06v51XIKLekTsJW3EJQ8wQ3gGE4EmS7OsTegm+L9Irwd1ePO+LpHdifcZ0sjstWN
 Lg0KbgizGrSAZti4KJGD+W51UBG6O+sszbihyKw+JyxcVlvsxqHl9uO2aFRfG6iLnNKC
 vSu1HE2V6uJPUUEpd9yVYQdfuuxxnBo+zzZIOWQyPxNVSuNU89mQWNt5vS7Gn/Ujv9/F
 TTzV+hagdpiwXHzjbOmZ6iNXStug/pBY0UohfIS/XhyfwAJJVYniXnXpJx1Z25cBeRun
 fGDw==
X-Gm-Message-State: APjAAAUU1c2omxUa3l4Ft3GIuLpSwRg3PZU6OM/GXdRJ6bXzcGM2C413
 PKNr126XeeFkUfK4iLKRdn8BYg==
X-Google-Smtp-Source: APXvYqwwG/XpWrw8NucKWEIVOJTEWpsvZTO9ZLZ6W3FY/qZdC0OPiY33DETIGgqjWtA92DNeccpTNQ==
X-Received: by 2002:a62:447:: with SMTP id 68mr20154481pfe.70.1573857252596;
 Fri, 15 Nov 2019 14:34:12 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m15sm11699724pfh.19.2019.11.15.14.34.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 14:34:11 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19+][PATCH 17/20] ASoC: stm32: i2s: fix IRQ clearing
Date: Fri, 15 Nov 2019 15:33:53 -0700
Message-Id: <20191115223356.27675-17-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115223356.27675-1-mathieu.poirier@linaro.org>
References: <20191115223356.27675-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_143413_861276_9FD501B0 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

From: Olivier Moysan <olivier.moysan@st.com>

commit 8ba3c5215d69c09f5c39783ff3b78347769822ad upstream

Because of regmap cache, interrupts may not be cleared
as expected.
Declare IFCR register as write only and make writings
to IFCR register unconditional.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
Cc: stable <stable@vger.kernel.org> # 4.19+
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
