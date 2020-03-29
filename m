Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB933196CA9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 12:49:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L/XFzHUli1PUEtBCwsYEPAcGNR/WwBTRI+vuPRiIOzM=; b=cGliYYZY631F7h
	EKtdnX+0SoSpCCrtMu9hP9S1Sc1WWBcWQ0HcDhhfLf43e2dI2q/joj+yEwsE09RBkAMH+lnaLivzq
	vzsGGssDMTmY7gryMnnbZ17TztwLRF5waqf25zG1qSbDvzU6EL0pq7vFvirDPYbJqloO6KZNR2AP8
	Ap9T5Hrt9veucY4SfJPDFZHRPjbSm5sb2StZDEoo2uXtAyg8Bic3juJe/2edC/t9Nj4UKzRqVCVE9
	HKPPEiyb/opnd03Sl3UibnM/pHiA8IOlEQ7Cnv0NNPtEGqDy46ZA32pPlHaWTsvsrIEMRY74m1Ahm
	q+d2CK3YNGUTEslZ7o4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIVV2-0004s2-LN; Sun, 29 Mar 2020 10:49:04 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIVUp-0004mT-93
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 10:48:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:To:From:References:In-Reply-To
 :Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fDxFOVlMCyOGehYYYAC/qV8jV1DTDosFgHZObj8sD4E=; b=jF9Yd5vVNjmTFZW9qQ2dGkTrEs
 rzEbH3EM1ym7PA0E4cHPnC7/kcQ6/XV6b1JTJdj9OxK72Hxkm/EB8JPylLx8poD8dl8KqBDQ88yXT
 82h7IgE07i/0esOAmpCPRxOOlU2phodccMmacYHTyDKjdZTGwLACjE4l4dr95vPrIX7XjOXQMSnKJ
 qKcX4t8HP/4OPyew+u3j/9Q96BH7/i5wFaTiHLd+opj0RvpqmnkA7ZV8xSqAN+NoBAET+tSk+8SX9
 XKPULaM0MRF/1wMq/EHujOvnUWNGVZWO++Ao19qFmdLm9nF3CdnOTld8Zr9gDuhm+eQXB4aMkTjQK
 xMdwdrQA==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:37650 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jIVUB-0004Ve-3L; Sun, 29 Mar 2020 11:48:11 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jIVU9-0005h4-QU; Sun, 29 Mar 2020 11:48:09 +0100
In-Reply-To: <20200329104549.GX25745@shell.armlinux.org.uk>
References: <20200329104549.GX25745@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, devicetree@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-pwm@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 "Uwe Kleine-Konig" <u.kleine-koenig@pengutronix.de>
Subject: [PATCH RFC 2/6] gpio: mvebu: honour EPROBE_DEFER for devm_clk_get()
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1jIVU9-0005h4-QU@rmk-PC.armlinux.org.uk>
Date: Sun, 29 Mar 2020 11:48:09 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_034851_321088_EF85C86A 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Honour deferred probing for devm_clk_get() so that we can get the clock
for PWM.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/gpio/gpio-mvebu.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpio/gpio-mvebu.c b/drivers/gpio/gpio-mvebu.c
index fa5641615db6..ee13b11c5298 100644
--- a/drivers/gpio/gpio-mvebu.c
+++ b/drivers/gpio/gpio-mvebu.c
@@ -1132,6 +1132,9 @@ static int mvebu_gpio_probe(struct platform_device *pdev)
 	}
 
 	mvchip->clk = devm_clk_get(&pdev->dev, NULL);
+	if (mvchip->clk == ERR_PTR(-EPROBE_DEFER))
+		return -EPROBE_DEFER;
+
 	/* Not all SoCs require a clock.*/
 	if (!IS_ERR(mvchip->clk))
 		clk_prepare_enable(mvchip->clk);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
