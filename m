Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDCEFE81D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 23:38:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=r8amxKgHtULf/csKFN0VUpBpEHeH4VWGMMDmf5ARXZ0=; b=GCAKjBkobciqiQCh6P4OKeu2T3
	N412Kpg4dmA8lkS+O2sZAgOwK6shtqeE22G3De11XHlNj+S2gn+5hjLoPKvV36f0kDtTNLGUPrtK4
	Oc818i8rl3hM6YME+Sy30r1HUAa0VKz5xRO3hsTgMJqrKUWn7F+MsgT4pmtZ1+lX/DfNeDo75f6vb
	FyvDnYJu/7Mt2ywhlzrwSGWTYEw/JBeQYMtcDBuGXzNzJZ2/vLKbIT58kb9DuWpCBI13zx6ORrvvi
	pG36GeZ9TtQIneQ9lylLpVzEabZj0UGGUNKBA1wZ/MI568wsYJdbkNgwXTQ/bWQsqWJ0k82tq+jBQ
	Lt0amHLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVkER-0003Hc-JL; Fri, 15 Nov 2019 22:38:23 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVkAN-0007Gj-Ms
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 22:34:13 +0000
Received: by mail-pl1-x641.google.com with SMTP id az9so5620237plb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 14:34:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=f67vg1P6cp56FC+gFomHmc7P3PWgRttseTI8GzuDMDw=;
 b=xA6/rKgNfSpMNx7U2CIf58R0lskOLg3y9hYciTIt8ZD92F0abPfnJuNWvlOArEOELy
 Eg1q0mG7cr3zITCHPC3sYPPWPZpvKqTpZpqj0CiwzgBAHOv+44QxulLsvWlnsWu4gd8H
 iEOqm1GqavhvEBS16eTYSVDgdfFhUlNs4E2uzERBdCZlfSInyLMACfvujQG9qO/qlK0o
 Uxl2r/sRt1TU1QCCi/KATL4JehE2IfKdKDi6Uc6qegftMBClBcB7jv9K0QwVPVRGR5/u
 9OJPcNqlrci4gxNVVvGbQUOYbTYXj8dLUk0yvBsQPmQBCW0m6Up7CMw0HPCnXfY/E4wQ
 KWAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=f67vg1P6cp56FC+gFomHmc7P3PWgRttseTI8GzuDMDw=;
 b=mJ8g81y9gDp/VoUMI4NRENqozU/Tf3V5c21mLn6G8IceQPVn5/P+NIo8zNnQWc+zSX
 NSc1uUdj3YzHg8XzVFUVL4GsvQReb5fDT755VhYspNEqxxwR0GZSbPOSlhsKH5CXM1l8
 lwXeA2BE6m100uLOOOBrsrIBtDfmHW/YSHLcKgIEdJou4ZZU/Fq3uCz0XN8WOqVDN8DR
 P7QljRMFgKUEYl3sBgKC0hLJphmoCXePwpqvuZ4U5WzJzbS1oo8uRyUihQ34SJDERaET
 ZgqozMCdbHdBqq1lPZ7N3GGimxx3aIzzF1Mv7EFe18COP4aQaHvmV7sxplVLEKvqr6r/
 oFLQ==
X-Gm-Message-State: APjAAAWlYC2NcInd8SKUIpysqLAAfgyGL6AqNd9m+NNNlByqjwxeO4cy
 xyy5fXNtH6Dud25zrc2OwMWK6w==
X-Google-Smtp-Source: APXvYqy5gmuKV2XPYe0CJ9Tar06N04Tv6DzHZfUu5lOREsiiyK0PNj9Ybul3RHjzrkIoJm7yH+3w2A==
X-Received: by 2002:a17:902:ff14:: with SMTP id
 f20mr17167605plj.225.1573857250463; 
 Fri, 15 Nov 2019 14:34:10 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m15sm11699724pfh.19.2019.11.15.14.34.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 14:34:09 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19+][PATCH 15/20] ASoC: stm32: i2s: fix dma configuration
Date: Fri, 15 Nov 2019 15:33:51 -0700
Message-Id: <20191115223356.27675-15-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115223356.27675-1-mathieu.poirier@linaro.org>
References: <20191115223356.27675-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_143411_833826_BD172D92 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

commit 1ac2bd16448997d9ec01922423486e1e85535eda upstream

DMA configuration is not balanced on start/stop.
Move DMA configuration to trigger callback.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
Cc: stable <stable@vger.kernel.org> # 4.19+
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 sound/soc/stm/stm32_i2s.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/sound/soc/stm/stm32_i2s.c b/sound/soc/stm/stm32_i2s.c
index 6d0bf78d114d..449bb7049a28 100644
--- a/sound/soc/stm/stm32_i2s.c
+++ b/sound/soc/stm/stm32_i2s.c
@@ -488,7 +488,7 @@ static int stm32_i2s_configure(struct snd_soc_dai *cpu_dai,
 {
 	struct stm32_i2s_data *i2s = snd_soc_dai_get_drvdata(cpu_dai);
 	int format = params_width(params);
-	u32 cfgr, cfgr_mask, cfg1, cfg1_mask;
+	u32 cfgr, cfgr_mask, cfg1;
 	unsigned int fthlv;
 	int ret;
 
@@ -529,15 +529,11 @@ static int stm32_i2s_configure(struct snd_soc_dai *cpu_dai,
 	if (ret < 0)
 		return ret;
 
-	cfg1 = I2S_CFG1_RXDMAEN | I2S_CFG1_TXDMAEN;
-	cfg1_mask = cfg1;
-
 	fthlv = STM32_I2S_FIFO_SIZE * I2S_FIFO_TH_ONE_QUARTER / 4;
-	cfg1 |= I2S_CFG1_FTHVL_SET(fthlv - 1);
-	cfg1_mask |= I2S_CFG1_FTHVL_MASK;
+	cfg1 = I2S_CFG1_FTHVL_SET(fthlv - 1);
 
 	return regmap_update_bits(i2s->regmap, STM32_I2S_CFG1_REG,
-				  cfg1_mask, cfg1);
+				  I2S_CFG1_FTHVL_MASK, cfg1);
 }
 
 static int stm32_i2s_startup(struct snd_pcm_substream *substream,
@@ -589,6 +585,10 @@ static int stm32_i2s_trigger(struct snd_pcm_substream *substream, int cmd,
 		/* Enable i2s */
 		dev_dbg(cpu_dai->dev, "start I2S\n");
 
+		cfg1_mask = I2S_CFG1_RXDMAEN | I2S_CFG1_TXDMAEN;
+		regmap_update_bits(i2s->regmap, STM32_I2S_CFG1_REG,
+				   cfg1_mask, cfg1_mask);
+
 		ret = regmap_update_bits(i2s->regmap, STM32_I2S_CR1_REG,
 					 I2S_CR1_SPE, I2S_CR1_SPE);
 		if (ret < 0) {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
