Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6781E94B1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 02:12:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=R6pM0S542C7qvOomq7r5Q4cwRCxoD2zUgUp+sk1MAOE=; b=Wmgo/K/fOhZ2jFGMXxB2+IxVxN
	102d92GxqD4vnqA2n+YuowNMGPHlFk9TvBLs6O5vrDoMEVR6aDG9t60Wdnd4JIPZD+S1RY1lbK/Ta
	RefBN4+MCDdG2poHZUILkubR8qg89ZsHfBzLjFQVmhfBbDYs+lJS1z42QnzmMqBTWkyxE3OlBcoui
	8jbag4Vu6i65jXIiY6cJQAdzk+xJSUpz0nVun9PAe+xkNmpkULKac7ms19BJnLubRRGsixs5QNso3
	QUIcRQOeWusqRx3BmhbrrTakeT8+V+bm2YCTthpjO3m2Y2Kp5fa8NI6CQX0Jjrdwbgph56CqvCPm9
	SOHZwx4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfBa6-0003IK-7Y; Sun, 31 May 2020 00:12:02 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfBZN-0002tH-TO; Sun, 31 May 2020 00:11:19 +0000
Received: by mail-wr1-x444.google.com with SMTP id r7so7889574wro.1;
 Sat, 30 May 2020 17:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vX2j+ZqsOynp+SkPgzqmgQI0qHfSmxvzrYIfKti767U=;
 b=cy1f+p4dDAWjMTLoinEhGQay6sqfyhmfWAy2m/5zqhP8Zv2jj1rifHH2ZepjX+OU6f
 mcuxW9yKPbz6l8RrL9oI7pJsKdFS8sdWXlI9mbyBgQLLOoJQWc/itzxxwXBd0bCrYuBP
 2Vax7Sxw5XUq0STfJiY2eEVMoB6VP8CP+HdnCFSul20CYrKj30DpVWYGiQAl0irSZcF1
 21OISGHPNSrvXf7w5S2/QHBzm/0YwRWlG1ZNQzOXl35spVVu6NkOEuANQ8yvcaSM0Hjc
 tf9o6EyL7lNmR21NOcBpIyhRwpb8DEK1iJja9+y0FaSvtfbUd1lz3shmOappEFNA6ssm
 DiYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vX2j+ZqsOynp+SkPgzqmgQI0qHfSmxvzrYIfKti767U=;
 b=cHoARx3l6KLUogpZVS7WSyQOUcE2rYdAMKZZWrkjIZtp5jpG+I0tnBX3sZ3snwyWY4
 tFBzh73uAX7jHliX4CXWGoaerlGj05nse1WjBTy1Tu1221eu4xXAPwXZuEwx8Y+zpFxN
 J/+hGbEnRTmD/1QZHpH3nb0AkW+H7UxN0a9ntUyiX3kJYJ4PncyuqCc8v77VieESuYea
 91TqaooFQBOlVbj57xaZkCSjTQsqVpjm+HiSNLCA/Gp98EpaLOUoH2GW1xzN2w2V2I6v
 /LCAnFWqzGkU3JECH3tsxsoo38kZlvXoWGixJUb7TcAM8bvd8SceCfpcYZ3uV2XcjrwQ
 xcNA==
X-Gm-Message-State: AOAM532TtAdOzVl6YjdOLMlzgfWcF1fPZCXf7PDIBLmYgZhiywIW7t8Q
 b1eOzW/N79PBMh/baDYjwaA=
X-Google-Smtp-Source: ABdhPJzmvV0vOAPA3dfn1ipknELjJg2/sLbGGdqcF12/Qa5dIVvV0XqsPfu44CCicBEqCvBSQ2Vi2A==
X-Received: by 2002:adf:e749:: with SMTP id c9mr16433368wrn.25.1590883876451; 
 Sat, 30 May 2020 17:11:16 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id d17sm15455807wrg.75.2020.05.30.17.11.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 May 2020 17:11:15 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/4] dt-bindings: pinctrl: Document optional BCM7211
 wake-up interrupts
Date: Sat, 30 May 2020 17:10:59 -0700
Message-Id: <20200531001101.24945-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200531001101.24945-1-f.fainelli@gmail.com>
References: <20200531001101.24945-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_171118_015438_32ED5E0C 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

BCM7211 supports wake-up interrupts in the form of optional interrupt
lines, one per bank, plus the "all banks" interrupt line.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt         | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt b/Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt
index dfc67b90591c..5682b2010e50 100644
--- a/Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt
+++ b/Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt
@@ -16,7 +16,9 @@ Required properties:
   second cell is used to specify optional parameters:
   - bit 0 specifies polarity (0 for normal, 1 for inverted)
 - interrupts : The interrupt outputs from the controller. One interrupt per
-  individual bank followed by the "all banks" interrupt.
+  individual bank followed by the "all banks" interrupt. For BCM7211, an
+  additional set of per-bank interrupt line and an "all banks" wake-up
+  interrupt may be specified.
 - interrupt-controller: Marks the device node as an interrupt controller.
 - #interrupt-cells : Should be 2.
   The first cell is the GPIO number.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
