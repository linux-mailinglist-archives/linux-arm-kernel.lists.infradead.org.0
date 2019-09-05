Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB030A97ED
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 03:17:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KyeNb52Z8jfDPZLlWCVEHGchEu4DrQABHtC7s3ZVYBU=; b=AgxU5lxi4kBYy9
	xQCbnD4sbqM6NFtsQmfbehoSTeEM7Ci3j80QSXFJXmpMkztZYWnm8cao6OBfKwrF0W6cSwEEd+v+m
	Mb6LkD0BX/6GNN51/p2q6qVtsg5OTF/LpXY0vjPM4R45T/pYOdxWPDlywrMCQZJm9FMkY+eZHeoSe
	44hd9o8aOFbDTC61dNdLf4puMevU5dfETIw9hN8O6GOTfDI5zofB2GzFv983V4v5LNANOlpF4c+Yr
	nd4TWwhviTN2+daQ1S2r7QDa12bn+XjQAT5CL3sGJWxPnM5jOOgss/OjKffcwzmrro2lt3RS/OkJT
	1spW51/jvhQzqqMCRBqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5gOr-00033H-UT; Thu, 05 Sep 2019 01:17:26 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5gOj-00032v-0E
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 01:17:18 +0000
Received: by mail-pf1-x441.google.com with SMTP id 205so585355pfw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 18:17:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6xBV7lQcJGLCdJ1DprCQZXPKzQ/B4slHcpqoJmoHHX0=;
 b=DsoLW11sIiOue6shE75Kxyfal48BeGlDYtuQ+uPzHfgLzR4wvmdRUekonS4w+/F3I5
 KVLSfhFMcJ5lVUmtJbWWFyyGLz7SfEwmIXgvuB06UoufGIWtcI0TJVARStBpb3TjqDHd
 PhiPHPhRdYmfDRTHhqLMoJy2tooTqkyEo1Q8krWJHMsGqC4Xs4EvMjd/0LbcFH1uEPgn
 FdPmGFI6GedTiP4ugFuXKQiYJlXR5H3QhdzXUjdO19ZmlJQz6ulRVnLwJ7b/nXcMdnYO
 N0wO0JPWewff3GpxQbkgX8XPXQU/kVmto4x5XE25Jc6kwVROiGxA9zWZosi3eBpZ/scA
 dzHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6xBV7lQcJGLCdJ1DprCQZXPKzQ/B4slHcpqoJmoHHX0=;
 b=MTEWZg/++gZn4Usaphu5Idfp7rSAEbmjxBByZKKc98jyNqlv9O6l7W9l8C3HPaY2Da
 dAc3EPx3pdIXs0LQAHpFt6h1fmHFkJ5Q7xnAvrSq35dROwHzaJ6Wk0ADx9ZRKCngO6Z8
 Kf+t8mz8TYOflNuNXn4+Q5PThcZyXUzrBejS8biiJ2gVvylFKvZnG9+7nIh35ouKCgqj
 Pd6i4Gqx6bjnKAst4Hn+8nBKCW5mmbjodQEsKw/uYAAorR8UnMAyfbvWbmmIlGLbNeqb
 hDyH6bTDUeJj0O4571P8uPmM47PCeAKeipIRfeCyzPpB+ocwyyobbeYU2SMdbQCWwhzb
 V5mw==
X-Gm-Message-State: APjAAAW4kTKSfc6UM6RkGZ4sv8AhzYjw3tAPWbt5BcM2jU5F85ITywIY
 7V42IpKG3E8+AvcnIy5O+S4=
X-Google-Smtp-Source: APXvYqyLU0ir1KiY3O4QnlY1CFxOjeaDqE6YSk1Fqt8q7NGwnUf983bmjsuDk0IW04G2/KhqGC4LYw==
X-Received: by 2002:a17:90a:ca02:: with SMTP id
 x2mr1077306pjt.98.1567646236325; 
 Wed, 04 Sep 2019 18:17:16 -0700 (PDT)
Received: from rashmica.ozlabs.ibm.com ([122.99.82.10])
 by smtp.gmail.com with ESMTPSA id f12sm294387pgq.52.2019.09.04.18.17.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 18:17:15 -0700 (PDT)
From: Rashmica Gupta <rashmica.g@gmail.com>
To: linus.walleij@linaro.org
Subject: [PATCH v2 2/4] gpio/aspeed: Setup irqchip dynamically
Date: Thu,  5 Sep 2019 11:17:01 +1000
Message-Id: <20190905011701.15981-1-rashmica.g@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_181717_042172_1FE9E0EF 
X-CRM114-Status: GOOD (  10.80  )
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
Cc: linux-aspeed@lists.ozlabs.org, linux-gpio@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Joel Stanley <joel@jms.id.au>,
 Rashmica Gupta <rashmica.g@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is in preparation for adding ast2600 support. The ast2600 requires two
GPIO drivers which each need their own irqchip.

Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>
---
 drivers/gpio/gpio-aspeed.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/gpio/gpio-aspeed.c b/drivers/gpio/gpio-aspeed.c
index b83e23aecd18..16c6eaf70857 100644
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
