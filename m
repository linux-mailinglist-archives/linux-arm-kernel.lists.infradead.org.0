Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27278A7B50
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 08:13:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TDbaiEPq7s1gMq1XQd2rLrm9egLJAQ/fHP19TuAuTrM=; b=qNjXQ7YkilZt96
	8Dt7so/FA/7wZk6MDZRR4n67eQiSB4rVdgNVeQ76UAGXdGlMvzIOFzBplCb5sfMrixGYjAmDGNMy9
	F97ZO/I55ntYpt+8TviZxWmJn7pd35R4FceHv4uuIWIuz7yp5lMCdwMXnqRj6AU5gcgRvhF/1m5WJ
	WOWdd9b+X04yaWe11FLVRKfwzfiYuXRj33vJgvBu/HZ9Ywb8xV9Og8Nlg6NBqVCo2vx28mpMGnGfq
	igjRBt9ApIw9UOG5y+yVoDO6x7GWuVGMChjtaNA/Dk1aqKG3Fvv01kppWmO6B2Rg66/McbBjCl0nf
	KV7e7nJsJJSgfaUcpwmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5OY6-00079c-Ev; Wed, 04 Sep 2019 06:13:46 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5OXh-0006yE-4l
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 06:13:22 +0000
Received: by mail-pf1-x441.google.com with SMTP id y22so6911710pfr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 23:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0R4od+wuMr+NDzF1+z+ZTrIyJPL7Gs58v3spHNx+2Ww=;
 b=I9GQo1LKddFj+zeh1M5ALKgcSoPfUmH8J1F6u4tihZK///JmHS0Rut+73m0FesKYOV
 /f7RfOB7hF8MdsxLiaIj7UOr99ai6wOj2P1bVUnzKQWBL8Lh3CukghsKchIWSRF+1Ega
 0GoKw0T3XUSIpclPFQVKsuWJEgi1wLOg92abAbggKjGZHV3yWpxF90rBtcOtLScznd+t
 Kr1xXyg1pRjscBMPIua94ge1T6WL3gLNll8w0I8RBIcKOaKfG79CHLO4w5BgWXyUMaCS
 61/lrsEh6AOtynDw5tRsEX2IoAz0Ay3NP6OJcGLtBKfSJ0m8gDFa2r0ExuEiGKv1y3Bh
 mjVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0R4od+wuMr+NDzF1+z+ZTrIyJPL7Gs58v3spHNx+2Ww=;
 b=D1pzs5YAHmxEig+l2vaitx/3SgRKLqE7VfiFdnOm4/EtwbE6qnoRRL+CknM4bOd585
 uioXal4xirNaqj/sgKB811cpB6XmvtkgswTAiB7u1ZGMT2RcFzpARDCPmCXEIva8gh5P
 skuORISZX0xn2kky/ABo66TJEdL1sE3bg8ki0rXCiu/WQ7XV6clcX9VJZG3DqgkPcJTU
 66QBwcwacAWGMuDSQigYjwZCq0cs1Nx0WvZFPsV9QGtes0lVG+IAu8ARcikd2jF92jjl
 OLa38kdiDUmINLshVi3xqeOPO2eYtaf/JVv5aWC24y/k5hh98WOPb7F+iFjXKM+2wpUf
 9Cxw==
X-Gm-Message-State: APjAAAWF9gne5zwUnGaZqnWaYYT1ItqQHx61Sv0WZukCRlPibnOV2tcP
 6nOV1bnUt8IV/cyjU7jWvjc=
X-Google-Smtp-Source: APXvYqyrSsRag5fFUjnjFpISMekXcJebSX0p+DbmDDo9Ojs7XfwNCS4cd2mq5Gn2rGzkdbFERUMFEg==
X-Received: by 2002:a62:e205:: with SMTP id a5mr44807409pfi.137.1567577600668; 
 Tue, 03 Sep 2019 23:13:20 -0700 (PDT)
Received: from rashmica.ozlabs.ibm.com ([122.99.82.10])
 by smtp.gmail.com with ESMTPSA id i9sm42443093pgo.46.2019.09.03.23.13.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 23:13:20 -0700 (PDT)
From: Rashmica Gupta <rashmica.g@gmail.com>
To: linus.walleij@linaro.org, linux-gpio@vger.kernel.org,
 bgolaszewski@baylibre.com
Subject: [PATCH 2/4] gpio/aspeed: Setup irqchip dynamically
Date: Wed,  4 Sep 2019 16:12:43 +1000
Message-Id: <20190904061245.30770-2-rashmica.g@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190904061245.30770-1-rashmica.g@gmail.com>
References: <20190904061245.30770-1-rashmica.g@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_231321_202943_FE94806C 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rashmica.g[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-aspeed@lists.ozlabs.org, andrew@aj.id.au,
 linux-kernel@vger.kernel.org, joel@jms.id.au,
 Rashmica Gupta <rashmica.g@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is in preparation for ast2600 as we will have two gpio drivers
which need their own irqchip.

Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>
---
 drivers/gpio/gpio-aspeed.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/gpio/gpio-aspeed.c b/drivers/gpio/gpio-aspeed.c
index 77752b2624e8..60ab042c9129 100644
--- a/drivers/gpio/gpio-aspeed.c
+++ b/drivers/gpio/gpio-aspeed.c
@@ -52,6 +52,7 @@ struct aspeed_gpio_config {
  */
 struct aspeed_gpio {
 	struct gpio_chip chip;
+	struct irq_chip irqc;
 	spinlock_t lock;
 	void __iomem *base;
 	int irq;
@@ -681,14 +682,6 @@ static void aspeed_gpio_irq_handler(struct irq_desc *desc)
 	chained_irq_exit(ic, desc);
 }
 
-static struct irq_chip aspeed_gpio_irqchip = {
-	.name		= "aspeed-gpio",
-	.irq_ack	= aspeed_gpio_irq_ack,
-	.irq_mask	= aspeed_gpio_irq_mask,
-	.irq_unmask	= aspeed_gpio_irq_unmask,
-	.irq_set_type	= aspeed_gpio_set_type,
-};
-
 static void set_irq_valid_mask(struct aspeed_gpio *gpio)
 {
 	const struct aspeed_bank_props *props = gpio->config->props;
@@ -1192,7 +1185,12 @@ static int __init aspeed_gpio_probe(struct platform_device *pdev)
 
 		gpio->irq = rc;
 		girq = &gpio->chip.irq;
-		girq->chip = &aspeed_gpio_irqchip;
+		girq->chip = &gpio->irqc;
+		girq->chip->name = dev_name(&pdev->dev);
+		girq->chip->irq_ack = aspeed_gpio_irq_ack;
+		girq->chip->irq_mask = aspeed_gpio_irq_mask;
+		girq->chip->irq_unmask = aspeed_gpio_irq_unmask;
+		girq->chip->irq_set_type = aspeed_gpio_set_type;
 		girq->parent_handler = aspeed_gpio_irq_handler;
 		girq->num_parents = 1;
 		girq->parents = devm_kcalloc(&pdev->dev, 1,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
