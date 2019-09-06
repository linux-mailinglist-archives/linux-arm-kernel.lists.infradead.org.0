Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D2EAB44E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 10:47:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pnv11easxPqKan+/kdp0yMjAE0Bem/ult1nadj1cak8=; b=UPPJbna/E2w9XTNiM+ytoN4/6g
	2M5opf5DkNJu1iQ2+q7/cj3Rgh0agO2OR1FZ5nydV25ZdcwecwIxFDyv2mqMlxHn5VtgcEs0fa58Z
	sGKtNSnjA6MmyElyK+T6ESR1xdpH5cDUSDKF7rMor5eUgmUzWlqvmJlOJA1KLMx0Jq2oVV6ScrZ2u
	tQi1lt8PFi/pB4BrWOgLpkfJh+c8QrFiKosff09IErrT2Kc3odDsOouCtWhB5jVV7xnGFuzQ3DsV+
	sMoKwqxiawxziEHkevsick+QaGTl5yH+JVtxJkvWbPIiJlSN0IobMh13W0jV/5Ol0SfjBoKLGMJaK
	oWgUiRdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i69tq-0006Sy-IM; Fri, 06 Sep 2019 08:47:22 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i69sO-0005kq-5S
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 08:45:56 +0000
Received: from ramsan ([84.194.98.4]) by andre.telenet-ops.be with bizsmtp
 id y8lh2000405gfCL018lhM0; Fri, 06 Sep 2019 10:45:41 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i69sD-0003NA-0D; Fri, 06 Sep 2019 10:45:41 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i69sC-0005hC-VA; Fri, 06 Sep 2019 10:45:40 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH 4/4] gpio: devres: Switch to EXPORT_SYMBOL_GPL()
Date: Fri,  6 Sep 2019 10:45:39 +0200
Message-Id: <20190906084539.21838-5-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190906084539.21838-1-geert+renesas@glider.be>
References: <20190906084539.21838-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_014552_376354_7DA286C0 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:15 listed in]
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

Change all exported symbols for managed GPIO functions from
EXPORT_SYMBOL() to EXPORT_SYMBOL_GPL(), like is used for their
non-managed counterparts.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
The only exception was gpiod_get_from_of_node(), as everything in
drivers/gpio/gpiolib-of.c used EXPORT_SYMBOL(), until the previous
patch.
---
 drivers/gpio/gpiolib-devres.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpio/gpiolib-devres.c b/drivers/gpio/gpiolib-devres.c
index 0acc2cc6e868fdef..98e3c20d9730e66a 100644
--- a/drivers/gpio/gpiolib-devres.c
+++ b/drivers/gpio/gpiolib-devres.c
@@ -59,7 +59,7 @@ struct gpio_desc *__must_check devm_gpiod_get(struct device *dev,
 {
 	return devm_gpiod_get_index(dev, con_id, 0, flags);
 }
-EXPORT_SYMBOL(devm_gpiod_get);
+EXPORT_SYMBOL_GPL(devm_gpiod_get);
 
 /**
  * devm_gpiod_get_optional - Resource-managed gpiod_get_optional()
@@ -77,7 +77,7 @@ struct gpio_desc *__must_check devm_gpiod_get_optional(struct device *dev,
 {
 	return devm_gpiod_get_index_optional(dev, con_id, 0, flags);
 }
-EXPORT_SYMBOL(devm_gpiod_get_optional);
+EXPORT_SYMBOL_GPL(devm_gpiod_get_optional);
 
 /**
  * devm_gpiod_get_index - Resource-managed gpiod_get_index()
@@ -127,7 +127,7 @@ struct gpio_desc *__must_check devm_gpiod_get_index(struct device *dev,
 
 	return desc;
 }
-EXPORT_SYMBOL(devm_gpiod_get_index);
+EXPORT_SYMBOL_GPL(devm_gpiod_get_index);
 
 /**
  * devm_gpiod_get_from_of_node() - obtain a GPIO from an OF node
@@ -182,7 +182,7 @@ struct gpio_desc *devm_gpiod_get_from_of_node(struct device *dev,
 
 	return desc;
 }
-EXPORT_SYMBOL(devm_gpiod_get_from_of_node);
+EXPORT_SYMBOL_GPL(devm_gpiod_get_from_of_node);
 
 /**
  * devm_fwnode_get_index_gpiod_from_child - get a GPIO descriptor from a
@@ -239,7 +239,7 @@ struct gpio_desc *devm_fwnode_get_index_gpiod_from_child(struct device *dev,
 
 	return desc;
 }
-EXPORT_SYMBOL(devm_fwnode_get_index_gpiod_from_child);
+EXPORT_SYMBOL_GPL(devm_fwnode_get_index_gpiod_from_child);
 
 /**
  * devm_gpiod_get_index_optional - Resource-managed gpiod_get_index_optional()
@@ -268,7 +268,7 @@ struct gpio_desc *__must_check devm_gpiod_get_index_optional(struct device *dev,
 
 	return desc;
 }
-EXPORT_SYMBOL(devm_gpiod_get_index_optional);
+EXPORT_SYMBOL_GPL(devm_gpiod_get_index_optional);
 
 /**
  * devm_gpiod_get_array - Resource-managed gpiod_get_array()
@@ -303,7 +303,7 @@ struct gpio_descs *__must_check devm_gpiod_get_array(struct device *dev,
 
 	return descs;
 }
-EXPORT_SYMBOL(devm_gpiod_get_array);
+EXPORT_SYMBOL_GPL(devm_gpiod_get_array);
 
 /**
  * devm_gpiod_get_array_optional - Resource-managed gpiod_get_array_optional()
@@ -328,7 +328,7 @@ devm_gpiod_get_array_optional(struct device *dev, const char *con_id,
 
 	return descs;
 }
-EXPORT_SYMBOL(devm_gpiod_get_array_optional);
+EXPORT_SYMBOL_GPL(devm_gpiod_get_array_optional);
 
 /**
  * devm_gpiod_put - Resource-managed gpiod_put()
@@ -344,7 +344,7 @@ void devm_gpiod_put(struct device *dev, struct gpio_desc *desc)
 	WARN_ON(devres_release(dev, devm_gpiod_release, devm_gpiod_match,
 		&desc));
 }
-EXPORT_SYMBOL(devm_gpiod_put);
+EXPORT_SYMBOL_GPL(devm_gpiod_put);
 
 /**
  * devm_gpiod_unhinge - Remove resource management from a gpio descriptor
@@ -374,7 +374,7 @@ void devm_gpiod_unhinge(struct device *dev, struct gpio_desc *desc)
 	/* Anything else we should warn about */
 	WARN_ON(ret);
 }
-EXPORT_SYMBOL(devm_gpiod_unhinge);
+EXPORT_SYMBOL_GPL(devm_gpiod_unhinge);
 
 /**
  * devm_gpiod_put_array - Resource-managed gpiod_put_array()
@@ -390,7 +390,7 @@ void devm_gpiod_put_array(struct device *dev, struct gpio_descs *descs)
 	WARN_ON(devres_release(dev, devm_gpiod_release_array,
 			       devm_gpiod_match_array, &descs));
 }
-EXPORT_SYMBOL(devm_gpiod_put_array);
+EXPORT_SYMBOL_GPL(devm_gpiod_put_array);
 
 
 
@@ -444,7 +444,7 @@ int devm_gpio_request(struct device *dev, unsigned gpio, const char *label)
 
 	return 0;
 }
-EXPORT_SYMBOL(devm_gpio_request);
+EXPORT_SYMBOL_GPL(devm_gpio_request);
 
 /**
  *	devm_gpio_request_one - request a single GPIO with initial setup
@@ -474,7 +474,7 @@ int devm_gpio_request_one(struct device *dev, unsigned gpio,
 
 	return 0;
 }
-EXPORT_SYMBOL(devm_gpio_request_one);
+EXPORT_SYMBOL_GPL(devm_gpio_request_one);
 
 /**
  *      devm_gpio_free - free a GPIO
@@ -492,4 +492,4 @@ void devm_gpio_free(struct device *dev, unsigned int gpio)
 	WARN_ON(devres_release(dev, devm_gpio_release, devm_gpio_match,
 		&gpio));
 }
-EXPORT_SYMBOL(devm_gpio_free);
+EXPORT_SYMBOL_GPL(devm_gpio_free);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
