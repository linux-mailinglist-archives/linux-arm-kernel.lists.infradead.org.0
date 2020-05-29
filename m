Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF2F1E8784
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 21:17:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yR6WEqVAlGalfCss547K62XYACw2ms4eFWpeL7ykqxE=; b=B7jPJcf85s0K9bOcHmtwfrJYpp
	iOfQK5Wc0FI6LcjFxs8yNE6CS6Q8Z/OJjZxIZctLIhMbyH6i5LhtREzJnllwlhrLFG+bgsVc93+gR
	n5y2cNrGg2mbnHGGypkGumMIPvvEVqHHGzGR4S8A+XqDIUaTWyp1IeuKgW6+uk1OgGZUDDSX7n6kW
	cILZ037ybnKU52E6tOimFuZZdZwHh+PYUF6uaFF6vcnbBM6siCDvKBWfBnKkIH/YrW0o9P+BNKnh5
	mceydvZc35LxyCZcHuhjqCzEQhI85X6wMN8AwM4GrQfYBQztmcEb57RCXLNZ4eec4CITBzjgaEIdy
	HfUI5S0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jekVP-00039v-Vd; Fri, 29 May 2020 19:17:24 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jekUt-0002vZ-KL; Fri, 29 May 2020 19:16:52 +0000
Received: by mail-pj1-x1043.google.com with SMTP id k2so1921480pjs.2;
 Fri, 29 May 2020 12:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=CzfV181nJ0czd6Anf4yOzm4xivtTHh+yTDjv58w4w70=;
 b=S/6dcjQIEbJ25Pf3UZKFQPrGqREnkm5v3P/61f8HL1vF049E4Ijm+vZd2V+XHyET2r
 qqJfPzV/JwoVkb10XAOeC296dqcoonvcPt3fSm2T5mG52Hkg996Bf4DQsUvKAJbil+kZ
 3MM1BrmrmQ2XTdkmxsekAzVI2xRpAcpLHhGZLOEM1gVwU3mABllAxZsCWB/JsKKOGkV6
 mT+pS+GeInuKWUKpcKV6K8muEZvUMzs1SFT1S1uKAHGPLsTiCUSuc7GazcKYNwhv3FRY
 ud8VFRAwfuFapAGoALsnL6EQMfB2PoreyoCwx0vFYOR4riF7xw7h0uEKoI8SmX5/lfRt
 OfYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=CzfV181nJ0czd6Anf4yOzm4xivtTHh+yTDjv58w4w70=;
 b=RBvCHVHKnbnMqP8/56m3CeFYfN3MQ3pAU+EV6yJY/moL8IrTCUBFjKbSLKqVRro7sD
 mXGQXTupa1/1VKgF4lrUqWJ8h1k8QUOaOqziqP23bbPxHyzToO0OwR03XsRxyuRiHecN
 8dFeMT811rMHzTV+KMonIx6Js5+TJYKoVbnGiIIj/lRhFNPjDU3j5ey7XdwspU4xgSrM
 VC8viuWKGYtAhYf2/bA1ROegqJB/evIUg0/Hf72xQQMw2Lo5RWR9Ly0/XMCLDbDjOxI3
 Nt539rG7VyoBEZAcjIRd4gidfhoEMJtuOFT2Bz4xBCYZopER7LvYk3xkadM1viucSl+B
 fzPQ==
X-Gm-Message-State: AOAM530F0flIUK8Yy+zpI9JbBQXM1xU+v73O6GdD55sVVqSBxqpqf4d/
 gXpOToZ64VXwG/BiN46ZSE8=
X-Google-Smtp-Source: ABdhPJwiE7JqqB91i+tb2nNu5olc+hQhWoqv8JEsbpHU4cdrfZPZbm+aoD5VorW+QLpxDMUBSjxQBg==
X-Received: by 2002:a17:902:a989:: with SMTP id
 bh9mr10196254plb.44.1590779811075; 
 Fri, 29 May 2020 12:16:51 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id g92sm202505pje.13.2020.05.29.12.16.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 12:16:50 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/4] dt-bindings: pinctrl: Document 7211 compatible for
 brcm, bcm2835-gpio.txt
Date: Fri, 29 May 2020 12:15:19 -0700
Message-Id: <20200529191522.27938-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200529191522.27938-1-f.fainelli@gmail.com>
References: <20200529191522.27938-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_121651_662755_08F2DC4F 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
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
