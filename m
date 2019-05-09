Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FBE193F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 23:01:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VOCPsq4y9zy8JWjsdxR+mgvN1FQxL+d5UhffYRIzuwM=; b=rqV+xs9GCwkuuBbR6aEl82MaVe
	SfJsJvirpLPniKzQl2lbJvrRHTKxJuwbYsch0tykcBNCHROw41mdjhIZ+fVseF5JrxrCETyx3u8MU
	5TDbZibMmQD6RLb0lFn4IDlsg4PdjOW7loRV+pGXrDGwY8fOLZbYlppaH4XDSF5TyrI2szBUGKlpz
	FmzSlpiFlJW6TPbNm++z0ujFaerFADAthAEQTAmGuNYz0l+y8ZMI2nzihmESVXlL5cenJgYKdo262
	4fLYqoBl1dVRr0iFPTymSTJxT7PLA+kaxAG47s7QaKL4QUO32H+bNhfYzXYFsJuXOwikVAW+Sqoq2
	ZvAfG2lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOqAd-0003VW-Ay; Thu, 09 May 2019 21:01:39 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOqAL-0003If-Kd; Thu, 09 May 2019 21:01:22 +0000
Received: by mail-pg1-x542.google.com with SMTP id d31so1818383pgl.7;
 Thu, 09 May 2019 14:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Rji3Tsx4QdgFefM8jscUiPkqR6jrOJsimIgfbLEWBM8=;
 b=qI6ufmv32wwIJe/P5xoB6V2LwPg2k0uATPOsgYvQ/FktxohPd6qokjj0qp9drwdjwg
 7CY8GzyGig23rFHllc8aINFtiVD/Z3RRCWKgqgzBaQwIVpnVOcJ3xUci/n/LZjr7OXwG
 riavwMw5bWNSE5/ZuR04jHA757v7RbyirigrVoJ7wYr8QcdVHk/eEsjQYPoJ8GUuJd9+
 oHL8ssMVpWeCHfz3VGUl5BBg/muHwDEkERYzioFgnWXKLKWMfQKrEwjj6HZPzP/ggSpO
 +9duQoHcTE00N9LzP1sG02BuG7Rp9uYVSUvQrF++uqpsGhn5OuBfNbvRUHDDCJPh7jqx
 3hwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Rji3Tsx4QdgFefM8jscUiPkqR6jrOJsimIgfbLEWBM8=;
 b=oQZHszV0en0OlbI48DwkETmthTUMasqS3yzvAcCbZ+d9bapAh8/CC7gBKa6UqnpT8s
 lKPd9+UjeJ98a048dsSHUOq7w+9jqliM6zCakmKHtax8IoETHNRSwdFJENnonLHXvYq2
 PkT4nNkVYYX/Zs8kM1iT10UnUYz28IuSXfXrfbMLn823YnmTkD2vXN0FP4nA0QKau2hL
 GiNZrAKERn45KjLNHQYxqx3OTw61KN0lMmUE6qucRfptL60lLEhXG19ODI3izTTWlKsw
 xp+pkA++bGuqacAak4JBhulckEs4fNJ5zKr1wdS4sXOpiYEqrbKuH4+Btf5M2MdYYBMA
 ZSLA==
X-Gm-Message-State: APjAAAUbYHqScVkB28nWlAmBjeVHBRq8p01HHKb/F4A1PhJNDXztS/KB
 3BiMBF44TjvrY8+I6wqc7aPRDpRy
X-Google-Smtp-Source: APXvYqxGsWxzMY/zvlEJjq4i52EZgy9WmOXV9oY/+hUqUu+ZAT9UlzzCIOeZHOjiUYsD90CSHX8NQQ==
X-Received: by 2002:a65:554d:: with SMTP id t13mr8487941pgr.171.1557435680626; 
 Thu, 09 May 2019 14:01:20 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id d15sm10989209pfm.186.2019.05.09.14.01.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 14:01:19 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] dt-bindings: pinctrl: bcm2835-gpio: Document BCM7211
 compatible
Date: Thu,  9 May 2019 13:59:53 -0700
Message-Id: <20190509205955.27842-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190509205955.27842-1-f.fainelli@gmail.com>
References: <20190509205955.27842-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_140121_674400_DC2A3FE2 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Matheus Castello <matheus@castello.eng.br>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>, Al Cooper <alcooperx@gmail.com>,
 Lukas Wunner <lukas@wunner.de>, open list <linux-kernel@vger.kernel.org>,
 Eric Anholt <eric@anholt.net>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 Doug Berger <opendmb@gmail.com>, Nathan Chancellor <natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

BCM7211 has a slightly different block layout and some additional GPIO
registers that were added, document the compatible string.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt          | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt b/Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt
index 3fac0a061bcc..ac6d614d74e0 100644
--- a/Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt
+++ b/Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt
@@ -5,6 +5,9 @@ controller, and pinmux/control device.
 
 Required properties:
 - compatible: "brcm,bcm2835-gpio"
+- compatible: should be one of:
+  "brcm,bcm2835-gpio" - BCM2835 compatible pinctrl
+  "brcm,bcm7211-gpio" - BCM7211 compatible pinctrl
 - reg: Should contain the physical address of the GPIO module's registers.
 - gpio-controller: Marks the device node as a GPIO controller.
 - #gpio-cells : Should be two. The first cell is the pin number and the
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
