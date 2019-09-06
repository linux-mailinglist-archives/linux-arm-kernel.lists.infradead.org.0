Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C52CBAB273
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 08:27:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MajYOMuAz2kY2sbWdUNS+XyBrWzBO6B2exH0XpwwjaA=; b=gIpIoTOCSGyy5k
	MCz/McQ8r8yDucbuV8pIWOvEbJl9FzZd8rkNJA0mSsgiG5xeZzRZzE/3UgFObzGZjseUP1i3dXtzh
	WgCDs2JKIGSrqq4hlpKYe9KQbBMx/lPUYu9+NmxHx7pRPZ5TflgL4/wbyt0jj026hM/hyX1Hq33so
	2o2kz4uS1gj35dVE8b/EvOQukv6YpRbxkzYnf5wTwrJI0DcwONhBh6lwmwC10RawT0bWm0xD8G97M
	YMic6RCS+3Us5O5ERhMnm9YlZZdO8QXVakr+c6fp0j/IvvqQiQx67vyPOxqTv5EOHoQ3RHCd1ewYo
	hixpoWFkVuXZ5g0Dio8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i67i1-0005xP-P5; Fri, 06 Sep 2019 06:27:01 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i67hu-0005wu-Mi
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 06:26:55 +0000
Received: by mail-pf1-x443.google.com with SMTP id y72so3638273pfb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 23:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nBz/Nw09bo2+Nxy27B6Bnst72+LgNmbIsMhxAo7ybD0=;
 b=aUMqxfSdSnkuwGPqLRjheiUFzikOfV2fc0xU5mynUICbJ06VKhxLcszMC7XIGhR+9a
 LCox84h/CIDLKI1gSOXrLAHb3iR6w4VFUPCGACcdJ6Ma0OQwvRE2K/M2jl30aGnGEUHh
 qtdsJvleLml70aYLbf52MZduXl+OBtmnBO7lfJ5+23BRakN9poArHpHZ7Vp3xIAEP4Ip
 IKpv9txRDkokW+UwGti5JJzeptzCSA4SXd8fNu4C6HaAUyOdEMbrrwRHBDnX2D1FweAj
 5DG0jbewwAw/rv0ZkvJaoVxtqR6FcgG8OKwBRl3aqO1YWYoIVxWHLYc9xe36ZLlCKuq8
 nnWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nBz/Nw09bo2+Nxy27B6Bnst72+LgNmbIsMhxAo7ybD0=;
 b=GAcNIfCKQYDDgw97GCUT/KrqWVCBMfzqLRBqB+4v1YgN9EeN2QZVcSkMlNfI/Xyxm7
 AKUfGhB5T9nfrxHnaKM/GjEX+pXy5+O4JiflmGquGQPQ/AWuKvjaH2f+KfZSpONTtQRt
 Fux9/SXQju5U4P3F273FqGkOspG7jHwOwJ/clUMkISN9oBSRQCW5CBWBmCeavG/OKb6g
 QgBRvIbaoVNsQfwOjlPbPCZFHHIteBHU2p1yGq9RBd7tx651jQSX3KITnJYhVLCbmAK8
 4Qv0MX4lJ4UYKtFLmBrFfikr3WbqtNIMxtCSRsq0GoENGbaOPQGz4/2M2HFPQdUjPZaU
 ueNw==
X-Gm-Message-State: APjAAAXd2TssIyOTCDBCmnaZyE22cnda0CLSCs5u1LU2s3RNQfySWtTY
 +2Xpa7Z5IXTZSShP2/hXnlw=
X-Google-Smtp-Source: APXvYqxBZZ2BelsDovsxHdtpDaLyiv2LFGl8lKiDGpiVUZV8DHdc7jIWEf8BdGHl1IAd2NAHni+KZA==
X-Received: by 2002:a63:6904:: with SMTP id e4mr6538279pgc.321.1567751214158; 
 Thu, 05 Sep 2019 23:26:54 -0700 (PDT)
Received: from rashmica.ozlabs.ibm.com ([122.99.82.10])
 by smtp.gmail.com with ESMTPSA id a20sm3109704pfo.33.2019.09.05.23.26.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 23:26:53 -0700 (PDT)
From: Rashmica Gupta <rashmica.g@gmail.com>
To: linus.walleij@linaro.org
Subject: [PATCH v3 3/5] gpio/aspeed: Setup irqchip dynamically
Date: Fri,  6 Sep 2019 16:26:44 +1000
Message-Id: <20190906062644.13445-1-rashmica.g@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_232654_739006_82D25A46 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rashmica.g[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-aspeed@lists.ozlabs.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, open list <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Joel Stanley <joel@jms.id.au>,
 Rashmica Gupta <rashmica.g@gmail.com>,
 "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is in preparation for adding ast2600 support. The ast2600 SoC
requires two instances of the GPIO driver as it has two GPIO
controllers. Each instance needs it's own irqchip.

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
