Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5D5ACF00
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Sep 2019 15:43:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=za7kuVriD1aZRPH80sp6QiDJNhUmLcET62szJcwBlEo=; b=VauCefjElg+H+AOUo5Y2/Oa/9j
	D8NW0vK0Qkie539k/NBIC63fzZLXIoojTsKDBq6LvrI34ynHLyJN8lZdQ2U/COdF9WDZmZ5F5ClUU
	eBwNhJRTxFxdaTsYRG5P043XnJrXvLziun16khSEkKFJBzB3/pdsvdrw9iwe7+WTdvTy8tKbgGNHi
	gkdFdaeBS9Q+x/8H6Q77fhz/QGyclc60M6cElTV7fP2iB2lkJU16obYM42kRaISydX4L1BP0af3HU
	23qqMpEJpZO4YOyCfQLnP8vVsVZeH59rDayPUTxPii+MKM17EHBzUDnvwzcPW/nphKtjuMDM3kpmW
	lS6V5nFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6xTY-000590-Nt; Sun, 08 Sep 2019 13:43:32 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6xT9-0004pd-S6
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Sep 2019 13:43:12 +0000
Received: by mail-wr1-x441.google.com with SMTP id w13so11013588wru.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 08 Sep 2019 06:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xt1ffsoUiU7bT/Gov0+R38ESRfVKrIaJ7x08/AD9uzc=;
 b=lbql9c8+5mvR7s5hfpeYHEGX44nXAwByd9MoEUudRXKDCdeTIQe/4v38PDvQWQfZld
 2IBA1YQXWdhy3Ww/R6HXHYdLi8j/vGRDOeMIB++OCr/0aQjHEY6Qq5JJ07scDhYtHBeh
 7/DBLZbcBSPfOPrpuo1se9tVTrcHpCYDJiNShaWxyMwrHO2zKWMQCqRCjyYvZc7hz5rP
 QLlBcksMZAX0b29TqiokQP9D91edjPv55/xfEc4U3PvTL8ZoxUb4leLIrg1jv9zpAlQe
 hByQQF4mjzB8y20bZSXdFBvUeLXG2PneuC7fvxJKn3bkIwXNrHyNSuQG7qzj+0WozHmd
 +OLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xt1ffsoUiU7bT/Gov0+R38ESRfVKrIaJ7x08/AD9uzc=;
 b=QR7T80TwFb5wO1fEq5j3zREOZsNTuR3WS0FZPxSp4qXgdLBEnKuxm2249jT1inN94m
 J5ecgNa6AOuON9fjlq9r2vdf86vwKzWnS+b13JASVZBhCBCFkL+cy0InuBGQ1EjY1m7t
 HlJNNDBZhHSiZdcZsh+M2uVr4RfJoGDyfkhHLa9YHJIcNq2ATo49d9UtdMyyyuBousGY
 Rcix8kzcgcj4qkcq5KMgN1piFPtsJLfO5OZVq07alyUJ2C6cTVi3dhKqQFXhtwIIpdCi
 aKZf309CaSO0dlpKQjhd1bz7gXjOoFAA/tzEltkGLiVSItclciW1OPYpTTHNBBQFwhDl
 ZOug==
X-Gm-Message-State: APjAAAUsC6yeEjKDnV7KhG3qQGJPSzsYP6aj75U6ecQTQ9Q0k1kmb2tl
 7je7dQxtLSQ4xYHDZ6McMheWaA==
X-Google-Smtp-Source: APXvYqyS25653EfNGnpyjyb3kIdPuTAn8ZaDNoaRLdF9Ag8xPDJ7VA8Zq5/dKaLqURBcQaOjHotmOA==
X-Received: by 2002:a5d:5444:: with SMTP id w4mr14661533wrv.180.1567950184983; 
 Sun, 08 Sep 2019 06:43:04 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.gmail.com with ESMTPSA id t203sm14313902wmf.42.2019.09.08.06.43.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 08 Sep 2019 06:43:04 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com, bhelgaas@google.com, lorenzo.pieralisi@arm.com,
 yue.wang@Amlogic.com, kishon@ti.com, devicetree@vger.kernel.org
Subject: [PATCH 1/6] dt-bindings: pci: amlogic,meson-pcie: Add G12A bindings
Date: Sun,  8 Sep 2019 13:42:53 +0000
Message-Id: <1567950178-4466-2-git-send-email-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567950178-4466-1-git-send-email-narmstrong@baylibre.com>
References: <1567950178-4466-1-git-send-email-narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_064307_916209_4307ED8A 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, maz@kernel.org,
 linux-kernel@vger.kernel.org, repk@triplefau.lt, linux-pci@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add PCIE bindings for the Amlogic G12A SoC, the support is the same
but the PHY is shared with USB3 to control the differential lines.

Thus this adds a phy phandle to control the PHY, and sets invalid
MIPI clock as optional for G12A.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../devicetree/bindings/pci/amlogic,meson-pcie.txt   | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/amlogic,meson-pcie.txt b/Documentation/devicetree/bindings/pci/amlogic,meson-pcie.txt
index efa2c8b9b85a..84fdc422792e 100644
--- a/Documentation/devicetree/bindings/pci/amlogic,meson-pcie.txt
+++ b/Documentation/devicetree/bindings/pci/amlogic,meson-pcie.txt
@@ -9,13 +9,16 @@ Additional properties are described here:
 
 Required properties:
 - compatible:
-	should contain "amlogic,axg-pcie" to identify the core.
+	should contain :
+	- "amlogic,axg-pcie" for AXG SoC Family
+	- "amlogic,g12a-pcie" for G12A SoC Family
+	to identify the core.
 - reg:
 	should contain the configuration address space.
 - reg-names: Must be
 	- "elbi"	External local bus interface registers
 	- "cfg"		Meson specific registers
-	- "phy"		Meson PCIE PHY registers
+	- "phy"		Meson PCIE PHY registers for AXG SoC Family
 	- "config"	PCIe configuration space
 - reset-gpios: The GPIO to generate PCIe PERST# assert and deassert signal.
 - clocks: Must contain an entry for each entry in clock-names.
@@ -23,12 +26,13 @@ Required properties:
 	- "pclk"       PCIe GEN 100M PLL clock
 	- "port"       PCIe_x(A or B) RC clock gate
 	- "general"    PCIe Phy clock
-	- "mipi"       PCIe_x(A or B) 100M ref clock gate
+	- "mipi"       PCIe_x(A or B) 100M ref clock gate for AXG SoC Family
 - resets: phandle to the reset lines.
 - reset-names: must contain "phy" "port" and "apb"
-       - "phy"         Share PHY reset
+       - "phy"         Share PHY reset for AXG SoC Family
        - "port"        Port A or B reset
        - "apb"         Share APB reset
+- phys: should contain a phandle to the shared phy for G12A SoC Family
 - device_type:
 	should be "pci". As specified in designware-pcie.txt
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
