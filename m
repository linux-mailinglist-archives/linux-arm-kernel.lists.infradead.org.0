Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DC91E94A9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 02:11:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tspCCcrgKitLcpmHWJZNq2Izw00iLaSJujEA3Xq7OP4=; b=MG4qxTrTvQP8xVa1ZnyXnHOYip
	XwyX5Zu5sWxCN22rJNJluI7XtoinAUAVI0HCL2cSiE6O3hw3Hmmv5ZTP5HgKHtWBritcQD2XS8+Ln
	Ewr9m1xUBaQMajGub3ldpQLMxru7RxlO16D2nGe1fQGvfwtmlEVE791wJ81QBP1Qvi+DVrISE0uWW
	me1TPwIugyom+ISvFTlOJgiCQKgAY00OEmB4/atXyjNCTcPLw9TP2vf0yVLGIvfDNbOKd26dGlGva
	Q7yrJjOCi24AAUsRRtewGnaoMUQbRy8DJ2Sm68w2OBFvCqIrCw+8WT2SYR2biuvfAuVOyA4hNEN9d
	LpZ33BZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfBZm-00034m-DV; Sun, 31 May 2020 00:11:42 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfBZK-0002qP-KE; Sun, 31 May 2020 00:11:15 +0000
Received: by mail-wr1-x444.google.com with SMTP id l11so7895249wru.0;
 Sat, 30 May 2020 17:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=eeOtfUnNMqcaG7SNioiM08zG3B07ZSO5p4wZgemPb6U=;
 b=r8kDQ9TJ/zw/d+P+7AZ8A5uYtTUJYxPwGpcpXIvEhKkzP3sN9gf54eX9zHYYcfV2p/
 7eChzNehPkaG8nsoUdBF27Ahn/JWJPkr6HovLW3KnqhRg3DF0HBROEojt2LZp79L/NGx
 FsZArpt31Z9JNRPbxPbwdCzl8ESFndplykUDPRZca6ojdSice5KfEi36Wd6/BiOXPPL4
 xHtI0DrP9gfRyAI1WT9vmxS2lVAHyLOlUNH3kw2/Pa83NsC1pclE1fkgO1gcsEBW9CvO
 NOo0lqGKCmtVAVvd1qhtzizjKgxQwm7AF7+TD6Mofce6q2+ZshsVb9Llpf8o+Ao8gje2
 qAVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=eeOtfUnNMqcaG7SNioiM08zG3B07ZSO5p4wZgemPb6U=;
 b=LsQ4fF8x+u9wTKBj7uLhvqfGPkFy99XsptlCYEjSpvZg48ny2Dh3gT5VGbZiXY36Dn
 DC1+9YSWq1QBpjXFYNCXKPZ5zTrlyNxQdnqWei1iMHYviEEnWdPA0W3OC1iGq/SkjxTl
 ff3NoCcBHU3HIbvmBvisXD8jfwM3I40kIGyfNaW5G0DbEleF8MXtfN0XmugaOLOeY2Ww
 bPceC7O03F8coL2lJOl4F56on5rDwSy+Rwif+lCGRXr3aZGltWJMuxbo2wVdU1bHs0jL
 XOJ/r4oeiiixlbKG3t82EQd36I+touX0kIsnXrsGddyCLK3flxpiIglaYq6GGSw3UGdW
 lqsQ==
X-Gm-Message-State: AOAM533NyvyMQbVt0ioN2jfnn8oufONYEoOE+CxcgnZHFkW38FXzO+RL
 fcOCT12U/d7AchicAXW8IPM=
X-Google-Smtp-Source: ABdhPJzgqbBmeJjv5bbxJymjCkeb6LrQ6AVgLDZTVItGXROWg1+X/8xllqQJJ84cmk3A7+qnAYJMfQ==
X-Received: by 2002:a5d:490f:: with SMTP id x15mr15033799wrq.259.1590883873134; 
 Sat, 30 May 2020 17:11:13 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id d17sm15455807wrg.75.2020.05.30.17.11.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 May 2020 17:11:12 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/4] dt-bindings: pinctrl: Document 7211 compatible for
 brcm, bcm2835-gpio.txt
Date: Sat, 30 May 2020 17:10:58 -0700
Message-Id: <20200531001101.24945-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200531001101.24945-1-f.fainelli@gmail.com>
References: <20200531001101.24945-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_171114_678689_6FB04F61 
X-CRM114-Status: GOOD (  12.04  )
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

Document the brcm,bcm7211-gpio compatible string in the
brcm,bcm2835-gpio.txt document.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt b/Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt
index 3cab7336a326..dfc67b90591c 100644
--- a/Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt
+++ b/Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt
@@ -9,6 +9,7 @@ Required properties:
   "brcm,bcm2835-gpio" - BCM2835 compatible pinctrl
   "brcm,bcm7211-gpio" - BCM7211 compatible pinctrl
   "brcm,bcm2711-gpio" - BCM2711 compatible pinctrl
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
