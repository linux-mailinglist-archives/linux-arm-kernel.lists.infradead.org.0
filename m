Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D9910CD49
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 17:53:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=m6oWGyMFlVzoJNCzzRp8IQwmT91t1UiAsRb9Rfp7UGQ=; b=WBJa1DUwITgifH50jy4DKq8KNX
	RMLCTZTMG/IxLqNVlB/dcNjLH3pw9gcqWJm3gN7A7c/4+EnHa32CxxI20B5xqj8RiXNwIlehEYRZh
	w1tcWvWnkmPAhhHfFsPkyJ7t2d7Zecwgnpx8pAFVNOfsgh2LkVfwE3hCOKoQqhih0eYQTDz/VZBY/
	ZzQaDiRH2dbrVDElwjE5koECVJUl93/pXnhpQ/XQ0vxlbWwbSIB7hSG8+i/jMiwL1zxWj3QGFn2PC
	9SKHY5tiL1b1YJxMB9qO2NBHd9HmsGXgGAsPrveoh+xVqZuO3WvQkaqLEOELnmpCsKLF/e+H+1Wn0
	2rQqkl0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaN2m-00071G-Aa; Thu, 28 Nov 2019 16:53:28 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMzh-0004fx-3c
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 16:50:19 +0000
Received: by mail-pf1-x442.google.com with SMTP id h14so3190842pfe.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 08:50:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wD+KHeFwNIT1Ivtv7WYTanJVrN7dwD/1vKpe+xiraBg=;
 b=XxJzsLiKI5MPczc6OehjYgyBmdMq1rBlV4V+Ha6DjUUuQDc58zxRJ15aB+Flz2aYMS
 /2fsKbeii5vSFGyYLFyJL0ieaEG1MHCsh/SccclxbtTiOnqYmeL3m7skNy5lBQvJOuOT
 m+rX2LH9zpUQ7UCKhfMObYPSO4Z60lL4f3A9/vOxeL99JNhzPvuuT+Z8eWysovrGetzS
 8K5SG/rBLI4MDRNqWPudwHilN9b2NSGyWWr9rMZOFPKx1eX691hk+wXM1nql2Rvzn7NL
 DqT5nYp8ugOe+SrQ/msGWXnfK/LlZqTDFIAy0jA5CwthjBn12uB0UtN/h0ka68rAPhJq
 JFVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wD+KHeFwNIT1Ivtv7WYTanJVrN7dwD/1vKpe+xiraBg=;
 b=Amgd27mK7uqeBYSkRuz09UtaqJ6uVRWWAUKxixVo+ni50EEZ+hliSXPkP3gmqbaH9k
 3WK4yQaJcVvtjBa8Vxlad9/fBVaLzCNR8N7GSU/cYC2YfRVELPWoTARip9RCnWX29gqN
 O1yz+zk/sfKSl9ALLS1/x2Ay/8D1WnGvncD06U5XOZWyaz8YlGVd1vmJeqSWRXEuvuss
 64IRoBJAyuNO0lc5W3trXcnrZZ4HJwh9IkUSLJr7kQkcLhzwMhHtAlXSrozyK8ogj71h
 syGbSvy1tr1gVMkytH30aAk1Lgq6QrrKzbYWvqGhl9ShYbiV1G7D7Tw2jSt593LqAXp/
 Qb+g==
X-Gm-Message-State: APjAAAX4bEADH1ykAUl9YvfKNK9HI2rxstvevO/4OnthHA1lFU/8DMeF
 evJn93Ec++kkD6QpWXsu/xcr7w==
X-Google-Smtp-Source: APXvYqxS0HAt+GN5cRfQFCDZXmck4pldUrQ2zjv5oJleqUtgJvq5m2IQPbX/dTwWRbfK5ghbhPf7iw==
X-Received: by 2002:aa7:828c:: with SMTP id s12mr52785777pfm.166.1574959816244; 
 Thu, 28 Nov 2019 08:50:16 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a15sm2450343pfh.169.2019.11.28.08.50.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 08:50:15 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19][PATCH 13/17] ASoC: stm32: i2s: fix dma configuration
Date: Thu, 28 Nov 2019 09:49:58 -0700
Message-Id: <20191128165002.6234-14-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191128165002.6234-1-mathieu.poirier@linaro.org>
References: <20191128165002.6234-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_085017_170182_D39090EB 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

From: Olivier Moysan <olivier.moysan@st.com>

commit 1ac2bd16448997d9ec01922423486e1e85535eda upstream

DMA configuration is not balanced on start/stop.
Move DMA configuration to trigger callback.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
Cc: stable <stable@vger.kernel.org> # 4.19
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
