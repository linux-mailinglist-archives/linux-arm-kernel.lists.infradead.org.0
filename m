Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B98881E6AAB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 21:24:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=h8FODr/nY1cafidKah1PxXoN1kqLiqBsC1t4ijR844k=; b=ROfrRrX7b5wBibjzauWnRoS8Q1
	5sVZ4mZ6MdMPMwHB9u9auY7xzQnxeiFYaQMK4sLwv92X76Hr1cB9kYEe2jcqf58tTeUgW6nAwwsru
	z3CyV9FUT9iHVZD2ON2rEtdCJ0ToRYAtAEkKjR27O6JOT0w83/9OOhOVar0nrO5e/OShdxQNjTUkG
	9LuRs7dcT9pIvnJ1UNW5boXuXkhRxr0UuA2wGOD/yCd4ffbRwW8mGA6E3oKcd8wQo/P3+Apo1bDeZ
	9ZTcnqKX6J1Ck3LxMwbSEzO+eaFL56CtTYB9XGBFp2UT8NQ/POlfB01WmtkWsGQCm/8NZ45cWjwg4
	f2iAQmNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeO8Q-0000Sv-AM; Thu, 28 May 2020 19:24:10 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeO5i-000747-QV; Thu, 28 May 2020 19:21:44 +0000
Received: by mail-pj1-x1042.google.com with SMTP id nu7so27600pjb.0;
 Thu, 28 May 2020 12:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vSuzW0Fxrw3Yl1GJT8aprzfotLQBAijlg/osXVZg1ZM=;
 b=uFjCitPCaxYsDgzV4wY1TYNB22WXNriao+rasyTp6fx8oUZ/jZ7LgLdWFPCix2CDJc
 z4qY3S0mUwvqMnika7IAV6uS4E86uY25zzhpyepLrEp5b1zRPkXDOjoB0+lYgNWDXX6h
 vMWU0khZBLbCGrYW9folMLTTFn1jp6ztO4gRdezIfWp1n+z6E00zo1yw8NO8Qk8SyxHf
 PvNj1FwA6pZJwNXWBRyXVE8yFxdvh9QPUIa08WFfmWY/f/HejHq+ivPHf328ty5i3BtO
 KKMfa0DjB4e6NewHLjKz51JfVMJJsWyyL2Pvfa1/fUosoMEqT7mnwu8znYPWKWxmr+oo
 Qu2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vSuzW0Fxrw3Yl1GJT8aprzfotLQBAijlg/osXVZg1ZM=;
 b=Ti3EMOx53tMEZp2nm/R9QlmFq6mCRA20w5aVCcuWsmLJ+lfzgoMvCsjg0TaxQlVPOz
 8+CBVqxslHqtkxxiDqW142fMtVawpcTLtzuhdQjIMyJx5LpR55B/OCN6JBOTaa9Ljpu9
 l/FHfnXfE3G4sggEddBna/aYquSBbu0CTW3yUzTtnj90tgK5Dc6koadrVcMvF0U7IpOT
 9mXKASnAGlF3gaRAvecf3l2eMOex2xKDa/y7BEqPzCj1rJD4pPOLvSLWRUnpWpv/JEkF
 0kbInJ3zbxIipF52GN6HbPmEqvQvKKpULaaQDTsJAwr8PHYJluvM2aX56jeeEsnL9/59
 0Weg==
X-Gm-Message-State: AOAM532KjbwYdyQDRdLw/UZrRld/qaMZ3PHA7+IH1x+us0l4ZMC4ImZJ
 61rgsAVfYl3q39UFEP6TXFc=
X-Google-Smtp-Source: ABdhPJxYZhtmszsYJLmUdd8l8q5G5dedGQN9zo/773iAKQPdmlh60srlYF2tMJPwXu8PQYIGNSV0lQ==
X-Received: by 2002:a17:90a:268f:: with SMTP id
 m15mr5789502pje.190.1590693682172; 
 Thu, 28 May 2020 12:21:22 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id h11sm5460561pjk.20.2020.05.28.12.21.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 12:21:21 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] dt-bindings: pinctrl: Document optional BCM7211 wake-up
 interrupts
Date: Thu, 28 May 2020 12:21:10 -0700
Message-Id: <20200528192112.26123-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528192112.26123-1-f.fainelli@gmail.com>
References: <20200528192112.26123-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_122130_803581_B58C7EBB 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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
