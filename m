Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E24110CD4F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 17:54:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=d2qaNkZVEmXH28LcA5nBoxwcUerT5DsSGX0AyNUpqd0=; b=pyCr8oN0iBSALasFf+94GOg1P1
	ot6r/qGWC2MaBoiuezGbuJYzxvZn8ey1VlsvYiRbAOKtUJB4fGE8AeykM5WqVSBRXlxaj/tJwxMaV
	sVHUdlIsMf6YxIoAOz0wND2yy3kq+5kQdQJZM0Ucp/NUBKrssWaienGzwIEZMh+jmHNh56ZTns3ao
	wnea3q4F/uIxYxdmlKpjKmxhErIrj/LnFCfZKg+4Jg0xqJZjZNXM3JA8gHLeAXA3P38v9sqc4MdSf
	5Zk9LGhitiFAkOX8dX3TQJuKDWs09n8gRg5oKrDw2lX2pu2k5MqCvG4J+xe+Wj3DzEj18Fapa/e84
	e6ieXwIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaN3z-00082o-LB; Thu, 28 Nov 2019 16:54:43 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMzi-0004gu-AZ
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 16:50:20 +0000
Received: by mail-pl1-x643.google.com with SMTP id s10so11812139plp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 08:50:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zVs3SHcLVbqKmpq6Nb4lGHjdKCb+EPD/oEdMc3bO/jg=;
 b=l5Gr5Qjd9pVo0HxGFV6G8A0yjVBGoSZqzaCCL7mejIdkqCP3emkRfKj8vLMjNdrpI5
 bvYK/b71kLhhQVKEZiOQWGEt7vBsj8dzHZ4K6L1XdXY/KtWmYN0JevpFOi7pDPo80nKm
 XUlORXTdlW4bLLGIlr0oIyukod20PdmH18UUtPTZCj6rCyxonWYBR4EL+oIhrfooYI2G
 9cNOxHLh8rbhaCK5Ek1WiqhGaSM7g9KLuIuUeWE4xtOiN8xNKP0PgNzKpMklVjQJV15q
 g49ojWGv2xVRuHFFcgdRV5TslE85XMW6WJzfxKEMOl5c1eKidIUWEnBJOB1YP5/VeAuJ
 WEwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zVs3SHcLVbqKmpq6Nb4lGHjdKCb+EPD/oEdMc3bO/jg=;
 b=IWKpBOZwEF6nbveHF/jXmZqHXRaLs3fxHzUcp9XTtj0rSEnc7xCoPTW21p77fv3kll
 IfP/KRWe7w8zdoOgUwVt+ga1ZIBFACZIvgiOyj13Y5F2snBoYWMzT2huY7N/VzGUGZ51
 bVO8gfXcR0X3f4ZI7Rnm7rjHXWceOhhe7yEcHw7zAdayW5zUYlwmpc45FOgUvirtt2JU
 0nFOgJSNgZ0dDwBBRwcDpdW/QG/QnANmfNKi2iTmCHtXSNiK9uk/Gzmfa4Xf5Xyt0weN
 UIFjmbxD/eZKQYfZRhKa6fW5yQLDNnJbhL0jbDGSe9t1Pkju5qstReIyQMlIP4HJOxpV
 MTrQ==
X-Gm-Message-State: APjAAAXGXRxnBTW0rtOLWP/cKyR8iFvcQEsTdX8cRsKnBcMTiqcugJoE
 9jWr0MuyCS/YJzxsZiUGfSiQnfakfVQ=
X-Google-Smtp-Source: APXvYqz5iFTxCKBSv+g9xpXEiPFwlT40atPfb9JCN8mALvNzpqC+2vNzcqNyKb0PlddBnmfLwvZVBA==
X-Received: by 2002:a17:902:8bc8:: with SMTP id
 r8mr10661273plo.189.1574959817142; 
 Thu, 28 Nov 2019 08:50:17 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a15sm2450343pfh.169.2019.11.28.08.50.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 08:50:16 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19][PATCH 14/17] ASoC: stm32: i2s: fix 16 bit format support
Date: Thu, 28 Nov 2019 09:49:59 -0700
Message-Id: <20191128165002.6234-15-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191128165002.6234-1-mathieu.poirier@linaro.org>
References: <20191128165002.6234-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_085018_376492_9997E290 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

commit 0c4c68d6fa1bae74d450e50823c24fcc3cd0b171 upstream

I2S supports 16 bits data in 32 channel length.
However the expected driver behavior, is to
set channel length to 16 bits when data format is 16 bits.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
Cc: stable <stable@vger.kernel.org> # 4.19
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 sound/soc/stm/stm32_i2s.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/stm/stm32_i2s.c b/sound/soc/stm/stm32_i2s.c
index 449bb7049a28..004d83091505 100644
--- a/sound/soc/stm/stm32_i2s.c
+++ b/sound/soc/stm/stm32_i2s.c
@@ -501,7 +501,7 @@ static int stm32_i2s_configure(struct snd_soc_dai *cpu_dai,
 	switch (format) {
 	case 16:
 		cfgr = I2S_CGFR_DATLEN_SET(I2S_I2SMOD_DATLEN_16);
-		cfgr_mask = I2S_CGFR_DATLEN_MASK;
+		cfgr_mask = I2S_CGFR_DATLEN_MASK | I2S_CGFR_CHLEN;
 		break;
 	case 32:
 		cfgr = I2S_CGFR_DATLEN_SET(I2S_I2SMOD_DATLEN_32) |
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
