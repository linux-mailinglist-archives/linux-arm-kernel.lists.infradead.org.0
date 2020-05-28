Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4DD1E6A9A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 21:23:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yR6WEqVAlGalfCss547K62XYACw2ms4eFWpeL7ykqxE=; b=R8blx5dTJoWjXlgUAVyXsNu2aT
	Sxt7L6Esel/wC+LJ76IC/LXZFLSCqw7VaFbaspXIqZKigvjkBz8BF3a91R6IO+e2pjhNY9/9FqBKs
	0LfGLHQZn/h/bk3dMiWi4i2cAkdjmM1G6DsfeinHYB3YbDQMBbOE24qRrjTcF9Oa98x/hWqjmoUFV
	nwQTajYGZMbonbQZYhv9A+fJLIKwsRvTi19bjfeGPWUIAgzzMwlnkoeGxjoM7i96gCMnrzEDPcXyF
	/ofg3IrXLE7VJfO49I5NJD3y4E/gJerpfuq+wI24F/UHba8BaDfvxLnQavBh53j8e5gHljSteQw6i
	/nxxEOSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeO88-0000Bb-6J; Thu, 28 May 2020 19:23:52 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeO5g-00073w-SU; Thu, 28 May 2020 19:21:40 +0000
Received: by mail-pg1-x541.google.com with SMTP id c75so57560pga.3;
 Thu, 28 May 2020 12:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=CzfV181nJ0czd6Anf4yOzm4xivtTHh+yTDjv58w4w70=;
 b=SEwS6IkmE/Vm6DfcfMAtkS88bdBGDTwOipqJzGzYUEgqSlmUGL4CsRcYnbhDYsTOc/
 iVXx6qAo+DcuR+V46NVIWhweiXhNraus2SQxu7AwRoJ4pk6mmLSPsf5sopuYqkZkLVJS
 O3XJAR/cdyjuFqgxmiCazRx+p9dZnmviVkapsfPgfrkoaXV4raK3mFMMrkUe5oYbVW3L
 a6s1s3Zz0r/vK6f/u/tgrGhDWGd9ufQo4YdcYZm1jaL2RskV2JzWZmZCVKPfyEF84ax0
 KHCFfNfquzsilCbDgQ8BqlhTLJOPFIBJgYpUZoIu3kqfxXr2SItKP9HU/YNtrnC9EB1b
 100g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=CzfV181nJ0czd6Anf4yOzm4xivtTHh+yTDjv58w4w70=;
 b=uby6QnZl2taAdTLuj25O76o3c+Yf1rP7OcOIbYKlxtr2qhleZehxPFfSUpL0c93MOB
 pong2ToAZHamlX6iRujwmrMtyZi4MHH3dNWYTxReuYqwSBGvZOW9xYDFlwfAqmqDyIx3
 Jcg3GYOOwquLyQ6hQ/ZqKrpM/nHqicURcmuSpRGoQOXEOLUYbXF++KlqHjtUq/w2hPhZ
 j37U47hfk8ffALeqsKyhq3G1SfDwPrVD1be2XsCEVtb1Qf33l37r8GBOSG4XD/NEtn12
 5fh+7OSlB2WQv4+9AmYg6+wceSmBes7L/84G6doOHG7kgBGmq5UG46GDdK+pUujkPBoa
 HL+g==
X-Gm-Message-State: AOAM531yYbfF21KVE3HUO9rCyjC3z9SxL6HMM3bcESOpb1NjFZ+ex9Em
 +oeKKyWWVxCWYCmR+AOW57pQQWr8
X-Google-Smtp-Source: ABdhPJwajHR+L1XGUzSZpZbJ6JCmAwM42UTuf8mYpiuyGtE7PLwR/qlqTJZGYpaZv9PvQQpzp7KA2A==
X-Received: by 2002:a62:1845:: with SMTP id 66mr4749410pfy.192.1590693680279; 
 Thu, 28 May 2020 12:21:20 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id h11sm5460561pjk.20.2020.05.28.12.21.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 12:21:19 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] dt-bindings: pinctrl: Document 7211 compatible for brcm,
 bcm2835-gpio.txt
Date: Thu, 28 May 2020 12:21:09 -0700
Message-Id: <20200528192112.26123-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528192112.26123-1-f.fainelli@gmail.com>
References: <20200528192112.26123-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_122130_794472_9FCE3A20 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
