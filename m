Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3A615D269
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 07:50:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AQAUhG5YpvZtd2TQI5y2SuzeyKsJYDSmoX/6cR7mW+k=; b=T9FTiGJ0OGz/nG
	A9ew2LcecrjZ7D9DJ9LZF4VW08iScUsBvEXzsZPIbSk4qHIzQMkR/EswCZQGfwKbuNvD92sHw+vct
	WVS2/OhfZfZPIF3wLLbW4abYdq9zjXYjL9UVkHDwRsGN4CPcVJN2X5wWAl3UnGpy2I5sFlWcmyu7t
	lEkOZ4nkkjVuabBj5ctMIh1k7FP/fyp0K8HZuup6B2XpGMPNMJ9Ab/fKRSSPmUsOSuz3ynKuozWpL
	ANw+4xgAkPOXnrOWEKlkNMAgeF/bx9M7+4ldaGYFqHSV3bw6F2ldfisH1kr4RmnpmxBj2bcFN+fdI
	o11rxJ+eml3JaIHzAQsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Unr-00055x-Tk; Fri, 14 Feb 2020 06:50:19 +0000
Received: from gateway24.websitewelcome.com ([192.185.51.61])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Unj-0003sv-Jd
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 06:50:13 +0000
Received: from cm16.websitewelcome.com (cm16.websitewelcome.com [100.42.49.19])
 by gateway24.websitewelcome.com (Postfix) with ESMTP id E7B8C31125
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 00:49:57 -0600 (CST)
Received: from br164.hostgator.com.br ([192.185.176.180]) by cmsmtp with SMTP
 id 2UnVjVddW8vkB2UnVjTK35; Fri, 14 Feb 2020 00:49:57 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=castello.eng.br; s=default; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x3HqSZrL9+fZXJMxZEHFm+rcw99J7Dz8a7+GnuEr4Rw=; b=TWNAS05Xry4K2p0yjDxEBDZAdf
 O+NW/uoIPWMBCYQ9zxRTDOiPqhpISuK/+8j+L6rXQsKVl2JnM8Y6ocp/5An1eVoUG1wfb8eNBHQzI
 olaFwqqhcKEYYEpZe0Q51CAllGtlBBYqFY6GQXQ8izA3zJhbWR1P8f6hVzNk2Om57+VcsCSJNqhiK
 ysFxY9waAt23Wq9yFOH60UX8rJmvNf8cT07h9Euqt8vNvJLPhDIoz12olW5hmQh2KB3NRWz//J0Bt
 0mE9yfynqz83Xt/aFV28uFpUX5tP4tAs/bKcmthIhlj+bPxwrntu8OnrizHaDtlf64BdgnWgOSHzx
 x2pd0Ggw==;
Received: from [191.31.199.191] (port=34918 helo=castello.castello)
 by br164.hostgator.com.br with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <matheus@castello.eng.br>)
 id 1j2UnV-0014Dq-4o; Fri, 14 Feb 2020 03:49:57 -0300
From: Matheus Castello <matheus@castello.eng.br>
To: afaerber@suse.de,
	manivannan.sadhasivam@linaro.org
Subject: [PATCH] clocksource: owl: Improve owl_timer_init fail messages
Date: Fri, 14 Feb 2020 03:49:23 -0300
Message-Id: <20200214064923.190035-1-matheus@castello.eng.br>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - br164.hostgator.com.br
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - castello.eng.br
X-BWhitelist: no
X-Source-IP: 191.31.199.191
X-Source-L: No
X-Exim-ID: 1j2UnV-0014Dq-4o
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (castello.castello) [191.31.199.191]:34918
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 2
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_225011_789004_157CE19E 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.51.61 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: tglx@linutronix.de, daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Matheus Castello <matheus@castello.eng.br>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adding error messages, in case of not having a defined clock property
and in case of an error in clocksource_mmio_init, which may not be
fatal, so just adding a pr_err to notify that it failed.

Signed-off-by: Matheus Castello <matheus@castello.eng.br>
---

Tested on my Caninos Labrador s500 based board. If the clock property is not
set this message would help debug:

...
[    0.000000] Failed to get OF clock for clocksource
[    0.000000] Failed to initialize '/soc/timer@b0168000': -2
[    0.000000] timer_probe: no matching timers found
...

 drivers/clocksource/timer-owl.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/clocksource/timer-owl.c b/drivers/clocksource/timer-owl.c
index 900fe736145d..f53596f9e86c 100644
--- a/drivers/clocksource/timer-owl.c
+++ b/drivers/clocksource/timer-owl.c
@@ -135,8 +135,10 @@ static int __init owl_timer_init(struct device_node *node)
 	}

 	clk = of_clk_get(node, 0);
-	if (IS_ERR(clk))
+	if (IS_ERR(clk)) {
+		pr_err("Failed to get OF clock for clocksource\n");
 		return PTR_ERR(clk);
+	}

 	rate = clk_get_rate(clk);

@@ -144,8 +146,11 @@ static int __init owl_timer_init(struct device_node *node)
 	owl_timer_set_enabled(owl_clksrc_base, true);

 	sched_clock_register(owl_timer_sched_read, 32, rate);
-	clocksource_mmio_init(owl_clksrc_base + OWL_Tx_VAL, node->name,
-			      rate, 200, 32, clocksource_mmio_readl_up);
+	ret = clocksource_mmio_init(owl_clksrc_base + OWL_Tx_VAL, node->name,
+				    rate, 200, 32, clocksource_mmio_readl_up);
+
+	if (ret)
+		pr_err("Failed to register clocksource %d\n", ret);

 	owl_timer_reset(owl_clkevt_base);

--
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
