Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A57091638B4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 01:48:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQ5adOqqZNBVify9j4C1PRcBWskRv73d/OF+okT11Xs=; b=uxatowq5j5q0AL
	x9X/iu3F64G10MWe+xFd6qQYlIbeB5iF+gVqk7sHA4IRhz+mtJfBOycZlTExOb9BWonryvPJvbN6W
	uTL9+4L//lyKY2ecRRgVn3szKCFY0OJPvaWv13BuFbmK8OvoZthqVRBrRTdcAzNaHQ6oAFagysEFf
	S/rER5KXOuJ6Ox7PPz5HY2XQzr1rLVC1u/wtHasDi+oS+8wD/8vhYMs4gmeJsGJmDYFRFmiXkvbXt
	Ch1bifTHT5tLpxQa7DWVRR7BT4TsXr+FlqvhvvY4MXmp0vgZM+UClTwTg4hAFmL9BdbDYCI1OdKFV
	Vqtsdga+Hov6kgjH1n7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4DXh-0007zl-NF; Wed, 19 Feb 2020 00:48:45 +0000
Received: from gateway22.websitewelcome.com ([192.185.47.129])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4DXV-0007y2-Ux
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 00:48:35 +0000
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
 by gateway22.websitewelcome.com (Postfix) with ESMTP id 0C34F2FC6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 18:48:20 -0600 (CST)
Received: from br164.hostgator.com.br ([192.185.176.180]) by cmsmtp with SMTP
 id 4DXHjuGl7Sl8q4DXHjb1Mx; Tue, 18 Feb 2020 18:48:20 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=castello.eng.br; s=default; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JoYnHBAG6Y5v6fA38lydAZysRIc6JyUc06Qk8jBvAUk=; b=w1E4Gp6D/9U2l7EaNAy00GX6Jg
 17Xr4eHKch+rmlP/+VeQNFjzBvy8SfbIIsRnA1R7vPNk+ign0ZNg4cBqUa1Qh0WSIKbhS5woHIAYY
 G4oexTma33sdm2XgXOg9I+3piUWcBU69QXNi0K1qEqprdB8A1mwcUNvyaB4KSB7UEdb2CDakCjxfo
 Z5RNwe1fP8CP1rgwk5F8QsUTJmIxE2Xdm/2PczWq/bDdw6se6VjEwWM/PdfgBUNmYa1eeGysnmjut
 XrVlPT6rQ91P7B/m6NzhNw9hHTd/vew785BKQUdKzi4gfVheSGv43gu3+GII0IlDXJotY7phCkFaA
 Ar4Ym6tg==;
Received: from [191.31.202.255] (port=52372 helo=castello.castello)
 by br164.hostgator.com.br with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <matheus@castello.eng.br>)
 id 1j4DXG-000PIC-8O; Tue, 18 Feb 2020 21:48:18 -0300
From: Matheus Castello <matheus@castello.eng.br>
To: afaerber@suse.de,
	manivannan.sadhasivam@linaro.org
Subject: [PATCH v2] clocksource: owl: Improve owl_timer_init fail messages
Date: Tue, 18 Feb 2020 21:48:10 -0300
Message-Id: <20200219004810.411190-1-matheus@castello.eng.br>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <e3d851477d569ccb66294b2292495778a3a24c09.camel@suse.de>
References: <e3d851477d569ccb66294b2292495778a3a24c09.camel@suse.de>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - br164.hostgator.com.br
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - castello.eng.br
X-BWhitelist: no
X-Source-IP: 191.31.202.255
X-Source-L: No
X-Exim-ID: 1j4DXG-000PIC-8O
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (castello.castello) [191.31.202.255]:52372
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 2
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_164834_138075_08464EB0 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.47.129 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: tglx@linutronix.de, daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Matheus Castello <matheus@castello.eng.br>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Check the return from clocksource_mmio_init, add messages in case of
an error and in case of not having a defined clock property.

Signed-off-by: Matheus Castello <matheus@castello.eng.br>
---

Thanks Manivannan and Andreas for the review.
Tested on my Caninos Labrador s500 based board.

Changes since v1:
(suggested by maintainers)
- Maintains consistency output PTR_ERR(clk)
- Returning in case of error on clocksource_mmio_init
- Use parentheses between the error code
- Remove OF mention

 drivers/clocksource/timer-owl.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/clocksource/timer-owl.c b/drivers/clocksource/timer-owl.c
index 900fe736145d..820fbcc05503 100644
--- a/drivers/clocksource/timer-owl.c
+++ b/drivers/clocksource/timer-owl.c
@@ -135,8 +135,11 @@ static int __init owl_timer_init(struct device_node *node)
 	}

 	clk = of_clk_get(node, 0);
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
+	if (IS_ERR(clk)) {
+		ret = PTR_ERR(clk);
+		pr_err("Failed to get clock for clocksource (%d)\n", ret);
+		return ret;
+	}

 	rate = clk_get_rate(clk);

@@ -144,8 +147,12 @@ static int __init owl_timer_init(struct device_node *node)
 	owl_timer_set_enabled(owl_clksrc_base, true);

 	sched_clock_register(owl_timer_sched_read, 32, rate);
-	clocksource_mmio_init(owl_clksrc_base + OWL_Tx_VAL, node->name,
-			      rate, 200, 32, clocksource_mmio_readl_up);
+	ret = clocksource_mmio_init(owl_clksrc_base + OWL_Tx_VAL, node->name,
+				    rate, 200, 32, clocksource_mmio_readl_up);
+	if (ret) {
+		pr_err("Failed to register clocksource (%d)\n", ret);
+		return ret;
+	}

 	owl_timer_reset(owl_clkevt_base);

--
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
