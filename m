Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3A39D7C0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 22:50:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OWyo+scPKfyn+lKm760mX5SmkpY7PLuxcwEGLuIXM6w=; b=cPvFP71hZMLfT4giXyxLwZRD8A
	iiY+wRy9FADGmk04tl1Lc8qiK/L/QMH3lEo8qvJrqK8hzVN0y8+/MJ/HbpNuFHEPOgPMT+KajBo0i
	EXH483kcEJIc4HhUIS16Vu7LwZELZnyCxwaa/s8inCSbtpXlrv8ZtJ5X4/l/WjSyr3rv09J2zqBQ3
	2/94e5gnGJfbLgzNSFFYfudUnIX1RfCe1ECq3xZI6yRf1dJPGe225JP/Z7TQQgylKKjF16KK3P9HS
	+NLcy0ujIPu6ZF9tvp7LQmsawWaIFjXD9AlUj352krujxDMKkxh8cMDIF+eI4Zeic07DrJZY47j39
	DvB6DOxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2LwQ-0006yd-VC; Mon, 26 Aug 2019 20:50:19 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2LrO-00039r-D3
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 20:45:08 +0000
Received: by mail-wm1-x342.google.com with SMTP id f72so785684wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 13:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FoQUNs6EXC98c6qNkjKAv+h1NQz6LneBfiroF9aLlEY=;
 b=jPW1jRGNr3AnUe8RjuZmRCXkYAzsbzMhz32nq0OWWy1zpvhbhiDiAAuRPeiyVl491V
 cCLcdpNtFLqim8SyephS7b9b9ko8sszl0kvNj9BUd6h/QBPgHXF6o+PKgNQPiVfYIRFH
 B5PaOVC29nRY9kNRjKZOXYVORKwkhwB4w6wIQfyh5qoOxK8zLHitQH33/0d6bWm9f+Hp
 jXHkDDm3osu6MOCTwW7J2wI7rENToUJpJEwajOTRQlt9CP252Ej6QkLEf/vKr4EMYtlw
 qSq1d5xHTNDG2TjA+3gjsTNtCTSGd3PgMPfHdHP33PAXjh10wjQNIX5E0VjydN1qN6wD
 2U1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FoQUNs6EXC98c6qNkjKAv+h1NQz6LneBfiroF9aLlEY=;
 b=r7BLhNX0Qu9HPE8/tDwt5pQmiLzTFMbwxcKZP3h4JMVB1JCJiTbwWrSc5m+I5d+mtC
 iznzcyOMQr2N9f4Xj/uI7obNHewn9HM0OAJSA9DmoKtYpDt1qJOoszloTEjiwycGmm7y
 p3XSNHtN32HZCIqdhqsF+jFN7dD406WJ3a8nfTAJPS7NynGualffvUe/glEztqWsWTXB
 L3e6tPQykgRtyCZxt0GmP/CvLx9s2vKiFNy+BG13n6xNtPSN+IaMM2xu78a5mFroW+BJ
 cgqbexI99D+WHo0FTB0iPkfY5v9i6C2Hgw7AxB75KNw7xWz1cEQvX+49Jjg8uKgFOc52
 LHTA==
X-Gm-Message-State: APjAAAVfy+eXrKSr01DsMUIphvR+0ltVaaYDuSCxh1ne8rEPsUytq6J0
 gB+npriVmHe3+idB7vw4KmK0EA==
X-Google-Smtp-Source: APXvYqyHbekAIjbL3EcGUIK26+5NTPt6HqD6js8hW+tX33ban4SVbg0ypMkdOAVMDSLQmyTu6FbxxA==
X-Received: by 2002:a7b:c8c1:: with SMTP id f1mr21953351wml.87.1566852304570; 
 Mon, 26 Aug 2019 13:45:04 -0700 (PDT)
Received: from mai.imgcgcw.net ([2a01:e34:ed2f:f020:f881:f5ed:b15d:96ab])
 by smtp.gmail.com with ESMTPSA id 20sm549557wmk.34.2019.08.26.13.45.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 13:45:03 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 10/20] clocksource/drivers/renesas-ostm: Use
 DIV_ROUND_CLOSEST() helper
Date: Mon, 26 Aug 2019 22:43:57 +0200
Message-Id: <20190826204407.17759-10-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826204407.17759-1-daniel.lezcano@linaro.org>
References: <df27caba-d9f8-e64d-0563-609f8785ecb3@linaro.org>
 <20190826204407.17759-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_134506_516988_9FCA2098 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "moderated list:ARM/STM32 ARCHITECTURE"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "moderated list:ARM/STM32 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Geert Uytterhoeven <geert+renesas@glider.be>

Use the DIV_ROUND_CLOSEST() helper instead of open-coding the same
operation.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Simon Horman <horms+renesas@verge.net.au>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 drivers/clocksource/renesas-ostm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clocksource/renesas-ostm.c b/drivers/clocksource/renesas-ostm.c
index 61d5f3b539ce..37c39b901bb1 100644
--- a/drivers/clocksource/renesas-ostm.c
+++ b/drivers/clocksource/renesas-ostm.c
@@ -221,7 +221,7 @@ static int __init ostm_init(struct device_node *np)
 	}
 
 	rate = clk_get_rate(ostm_clk);
-	ostm->ticks_per_jiffy = (rate + HZ / 2) / HZ;
+	ostm->ticks_per_jiffy = DIV_ROUND_CLOSEST(rate, HZ);
 
 	/*
 	 * First probed device will be used as system clocksource. Any
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
