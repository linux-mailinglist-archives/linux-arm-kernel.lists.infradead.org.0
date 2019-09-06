Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECE5AB443
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 10:46:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=l2rACloqwuHDDrGZvssAa/3k9jhLEoefPeGwh4RazmU=; b=h1xDOppXiPhjSkH4mMOJhMEttB
	MJWylUzcg6M0UYvomCDgIxGV+hbtjEpHy5CMTgE0llQrB0/pXLTwJd1iNChKCixBSiWOlvN4tVKxP
	kYtBN4nachIt3n2n48DEjHs+3S6Bm0mGmScbKTgbIQ+kNUl4/JWbLGd1XF0pJMN4FjnG7byttcvxp
	j/3kZNVww5v/sdm1A/DvlCO4vrWo5OBSdqGZwAfEHCJ6oac/QG83BdW8oyRy11CxqUtuq2ZGkJZJg
	JmYcXhIs7NZQg8R1mV/BWtzCtB5jlPjmkNHKXL0EIqJrDNz1sKyF9gW5lqYVNcFfYDUevqmH3g+DI
	5F2K/6FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i69sc-0005nl-HV; Fri, 06 Sep 2019 08:46:06 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i69sO-0005kk-5h
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 08:45:55 +0000
Received: from ramsan ([84.194.98.4]) by michel.telenet-ops.be with bizsmtp
 id y8lh2000805gfCL068lhD3; Fri, 06 Sep 2019 10:45:43 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i69sC-0003N7-Vj; Fri, 06 Sep 2019 10:45:40 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i69sC-0005h9-UA; Fri, 06 Sep 2019 10:45:40 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH 3/4] gpio: of: Switch to EXPORT_SYMBOL_GPL()
Date: Fri,  6 Sep 2019 10:45:38 +0200
Message-Id: <20190906084539.21838-4-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190906084539.21838-1-geert+renesas@glider.be>
References: <20190906084539.21838-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_014552_376756_20C62F62 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All exported functions provide genuine Linux-specific functionality.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/gpio/gpiolib-of.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpio/gpiolib-of.c b/drivers/gpio/gpiolib-of.c
index fad3aad667558325..7aea6d0f3ace9b82 100644
--- a/drivers/gpio/gpiolib-of.c
+++ b/drivers/gpio/gpiolib-of.c
@@ -274,7 +274,7 @@ int of_get_named_gpio_flags(struct device_node *np, const char *list_name,
 	else
 		return desc_to_gpio(desc);
 }
-EXPORT_SYMBOL(of_get_named_gpio_flags);
+EXPORT_SYMBOL_GPL(of_get_named_gpio_flags);
 
 /**
  * gpiod_get_from_of_node() - obtain a GPIO from an OF node
@@ -343,7 +343,7 @@ struct gpio_desc *gpiod_get_from_of_node(struct device_node *node,
 
 	return desc;
 }
-EXPORT_SYMBOL(gpiod_get_from_of_node);
+EXPORT_SYMBOL_GPL(gpiod_get_from_of_node);
 
 /*
  * The SPI GPIO bindings happened before we managed to establish that GPIO
@@ -719,7 +719,7 @@ int of_mm_gpiochip_add_data(struct device_node *np,
 	pr_err("%pOF: GPIO chip registration failed with status %d\n", np, ret);
 	return ret;
 }
-EXPORT_SYMBOL(of_mm_gpiochip_add_data);
+EXPORT_SYMBOL_GPL(of_mm_gpiochip_add_data);
 
 /**
  * of_mm_gpiochip_remove - Remove memory mapped GPIO chip (bank)
@@ -736,7 +736,7 @@ void of_mm_gpiochip_remove(struct of_mm_gpio_chip *mm_gc)
 	iounmap(mm_gc->regs);
 	kfree(gc->label);
 }
-EXPORT_SYMBOL(of_mm_gpiochip_remove);
+EXPORT_SYMBOL_GPL(of_mm_gpiochip_remove);
 
 static void of_gpiochip_init_valid_mask(struct gpio_chip *chip)
 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
