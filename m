Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CD11E8789
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 21:17:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=h8FODr/nY1cafidKah1PxXoN1kqLiqBsC1t4ijR844k=; b=mo4/5x/nTBYm5k1Np47/RcNIWZ
	7/f65nuN0v4KUTrOgtN047OYetj7pASPALgh4KtKqU9yIH2Om0OfMhzkqd3nRTsdWCtNz9OBTTjeI
	QU2mQHqfxlgCgFyW8lUVBAI1LVJzia6OalQuRee3VsjQ6Y4LL5ZKxZOltPtE6Urc7M3Da3wSWi6hC
	BHraHLKUajWhKqwiWH+XF4dnF0jbJ6g1hZ4dG1IT658FmT+HYsEhb+d48JtUMcjxEqAt0XOCfVlzv
	eTMJ3Tr0YCtLqMHSBJApXWkdtlDHaaYU42ZZwLss8dNkGJrxUIt6IdyZUI2FT+fYi/o1IQL6QHVNW
	cydIXhBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jekVg-0003PT-1E; Fri, 29 May 2020 19:17:40 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jekUv-0002wF-5s; Fri, 29 May 2020 19:16:54 +0000
Received: by mail-pg1-x542.google.com with SMTP id o6so387157pgh.2;
 Fri, 29 May 2020 12:16:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vSuzW0Fxrw3Yl1GJT8aprzfotLQBAijlg/osXVZg1ZM=;
 b=tdKG7Fj5mfIquGy1eUqVbKlogVE2r2eE0xHChc6Ukhnqc+QpBMZcy1wWbzEmzEYL2k
 6bi9XgN03X/RK5gtPXa9lTHLT8grv8Z4Bxw9y5Qk0ds+5kqiwaNfqgfpWkB6hHsU0yQz
 m2RKbjU4wr1t0Vc3KBFIsq0ULJUWC/iqGfpf9MqE55b4jxruuOj+3PDzMGfuCoUZqdsk
 5OorKwy8ziH4APZvvjRt+dLhUyx/CL+hqAuoLAO4jZQb1wY37fXUhKQiYyQ72As7Mt8I
 wLc60AIsWRvIZ+Ofn1kYd6YYI5nIpdgNfodqyVHbfjQ4K7T/M1hRX+8B49eOcR1rwqig
 40XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vSuzW0Fxrw3Yl1GJT8aprzfotLQBAijlg/osXVZg1ZM=;
 b=QZnqwm47ycrqH5x91YcSHDUk3ADTOk2bXKprWkgN991qKrY2u94rNrHsq4aRZpI84S
 SO4QmKFhFOgOLuQ/pqhAIukjeSsPHg9/O+jFaPtUCNVIb1sV5+GDgBX5Z6MAWOS7peYz
 8MI7z9cqnIwYLB2keklieOkNiVl4qJkpFuZB5UGHxNotGHaRsvqA6D9/Yg+bJIPxaIQY
 a+cRmHEIvJ9DosRC+GV3YcX3lrzKUrIZPuHj4TR5Wt83nxh5DnR4GpkmbQMYI+OrKR0N
 3+f5paAJRvp6hYClXfqQ9MaM87zL4P+R3aY5Q9pErkmS85gNDkoDQVi8bR+/15PJ+1vF
 EqIw==
X-Gm-Message-State: AOAM532B2TzZFzqcZEIh5lBDcvRx6RUNn1nNhZt6QDG+7ZkUfkx35mv2
 nrYnGcVqYyioVyOF7iUsAwE=
X-Google-Smtp-Source: ABdhPJxUBqwsPVzMf/xOoD/c6fqXBbj/6QGB9lXW5L5Z8RrZaLVL+aBLPOwze0zw6HCZngwJRSZ3Lw==
X-Received: by 2002:a63:4b0c:: with SMTP id y12mr9343218pga.56.1590779812662; 
 Fri, 29 May 2020 12:16:52 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id g92sm202505pje.13.2020.05.29.12.16.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 12:16:52 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/4] dt-bindings: pinctrl: Document optional BCM7211
 wake-up interrupts
Date: Fri, 29 May 2020 12:15:20 -0700
Message-Id: <20200529191522.27938-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200529191522.27938-1-f.fainelli@gmail.com>
References: <20200529191522.27938-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_121653_214993_4272A44A 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

BCM7211 supports wake-up interrupts in the form of optional interrupt
lines, one per bank, plus the "all banks" interrupt line.

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
