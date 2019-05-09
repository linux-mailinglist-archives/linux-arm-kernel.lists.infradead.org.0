Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98402188C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 13:12:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tuVSbz3W42mr5n/TOOVCSgQDTS7Uq5TsJwsmB3n70uc=; b=tM+aTq4nIorjdUMFZim7cj2mzx
	9BO72iseNcON4MXPZ18XkG6w/oA/qNbwloAzfqHP+1CDiznxYsALpcSDnj6c1EIZE7BC9CTA0sPDP
	fnbNVux1Nr//MhgWITx7V7Xt7IuD2Fn4wvYWYM8aX0yOgoRi2/X6OwDnujkyRnbPJP0ShIKjsO6tQ
	ihK/RShe+irD/YIASUAm5AELWi5DZrpioHSsk4IrFD3MP2Xk63dU0V3xKVHEwEhurPG0bBkNzpp91
	NfsN4a9gc5vft7S1K3yn3k0cnLVQImJJ62mlPUiLXFJSt/Vt7qx/iLIf2nxoFpdnj9rmZfNOwxAc9
	KBupuIkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOgye-0000zI-0L; Thu, 09 May 2019 11:12:40 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOgxm-0008RR-AW
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 11:11:52 +0000
Received: by mail-wr1-x444.google.com with SMTP id w8so39812wrl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 04:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4vJDMe7+EQ4+NOcbJfE9TymlnXHgYOUGu64vsRLBkac=;
 b=N1bOovgDjxCRyHOozwBdr42aE3KEoSM4ABOm+YSUuvTxYz3N728+NYFaeNVTcHhB0w
 3+Tx/HAv1FP50LvgicZ8laxj3XvtiordKj+YJLDEBoqokxdbTbzTAalpDNk/2vC+e58q
 WAdIzJT6dybx3AOR3ifdPuxguzLh13XNSoJOXnb/Kdl6QYsFH4ZD6GAfs9kPjkHmOPoK
 fZjoUPBluexqvw1CE0LavuhSczNnGnjhgFrwb6lq5V/tecgYmqreqn1pj2jgZsGOOcgV
 AVhkLr4yOErKM1I90wdvH2P6ZggUA8OUIohUGVPqOIar4GlqY1tqXNvAeDtfA68nre1g
 p3tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4vJDMe7+EQ4+NOcbJfE9TymlnXHgYOUGu64vsRLBkac=;
 b=M+uSmFp+7TcvAqn9HmzRXkMTCQEQMa+F4mDROPb5pZEiuyng+KkRUZUMV2yiM+//Iv
 Qvkote/5jGwobCea20Ct91Y7Iy00mp0ilZwEntZx24QcE/ukK4HaEsedysb3Wp7y4eEb
 ooMhWI360jE6MeaUSaixQTpRd7bnWlpcaDY3g1A0x3fdaq8NPIrNqWKikf/JHzypw6LA
 6yJHHEwddladTG484yF+xJxvgaLPYoC0gvLlGGEfFbHxjeJC+8imPeuI5Aq9K8FUUqhx
 LJ4qjX/ySkmfozin37XBMu7BwMtVwhMNO9uXn1AkU4Na7bjgUc0gyCi/jmrRPeEcFsPV
 gr8g==
X-Gm-Message-State: APjAAAUMOBF8k1kM8+JJFCQ0yJ16FNdhs9kasAuPIsrjCONMc4+uC78P
 Anr9nSao+wbtaY7UJ758kPYyRA==
X-Google-Smtp-Source: APXvYqyznM88ESRAs+LX3rzCPuecwtfM5D1R3IAEYLE5GOnO4E4PyptKT1HZIjfQ8cevLhVUeuZ26Q==
X-Received: by 2002:a5d:4a44:: with SMTP id v4mr2574684wrs.84.1557400304781;
 Thu, 09 May 2019 04:11:44 -0700 (PDT)
Received: from mai.irit.fr ([141.115.39.235])
 by smtp.gmail.com with ESMTPSA id z7sm2299778wme.26.2019.05.09.04.11.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 04:11:44 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 14/15] clocksource/drivers/timer-atmel-tcb: Convert
 tc_clksrc_suspend|resume() to static
Date: Thu,  9 May 2019 13:10:47 +0200
Message-Id: <20190509111048.11151-14-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190509111048.11151-1-daniel.lezcano@linaro.org>
References: <7e786ba3-a664-8fd9-dd17-6a5be996a712@linaro.org>
 <20190509111048.11151-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_041146_889613_C9391242 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 kbuild test robot <lkp@intel.com>, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 "moderated list:ARM/Microchip AT91 SoC support"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: kbuild test robot <lkp@intel.com>

Statisticize tc_clksrc_suspend and tc_clksrc_resume.

Signed-off-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 drivers/clocksource/timer-atmel-tcb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clocksource/timer-atmel-tcb.c b/drivers/clocksource/timer-atmel-tcb.c
index 9de8c10ab546..6ed31f9def7e 100644
--- a/drivers/clocksource/timer-atmel-tcb.c
+++ b/drivers/clocksource/timer-atmel-tcb.c
@@ -66,7 +66,7 @@ static u64 tc_get_cycles32(struct clocksource *cs)
 	return readl_relaxed(tcaddr + ATMEL_TC_REG(0, CV));
 }
 
-void tc_clksrc_suspend(struct clocksource *cs)
+static void tc_clksrc_suspend(struct clocksource *cs)
 {
 	int i;
 
@@ -81,7 +81,7 @@ void tc_clksrc_suspend(struct clocksource *cs)
 	bmr_cache = readl(tcaddr + ATMEL_TC_BMR);
 }
 
-void tc_clksrc_resume(struct clocksource *cs)
+static void tc_clksrc_resume(struct clocksource *cs)
 {
 	int i;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
