Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B33920DF8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 19:27:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mZueTHHtgao3BYMTDiIV3U2+hMmoY0ln9q62DkJr+Do=; b=YIbAlSim2HBKOHHEmY46AlNrYw
	Iq0su3wDDr1PwqcOccceTiD13AqbwAr8eQ7c3o8XkOHhEmao9Zcysevljo2gY8t7C8WU66TFOx0/L
	sSw1iM0DlzEZZzvp2HmnRL37GjTueh/NbJBZfLk/v9qiepNcttor/QPDBWmMSoAitWKAu4pIKlQ4r
	dRkQcfC1HUpHv5kHHyUe2HcxfKCrI/B8T7GIWJKLnOIedoKL0NaUO5E0XMHrOeAtPd7e9QSQTlbWZ
	tjLDPz1X3Ymk8pVUSexAkIy4urxd9uZr1Hq7idzEF3jOa/6oO6TsibM40wral6HBOqD1VB4Lg7zQu
	NR5ZUIRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRK9u-0003oi-VS; Thu, 16 May 2019 17:27:11 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRK9V-0003S9-0v
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 17:26:48 +0000
Received: by mail-pg1-x543.google.com with SMTP id h17so1907176pgv.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 10:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=IlWeur6t+kwpySn24VqBEqPmtDVwsekAH2F04m0wTVs=;
 b=kmjzUz3GIXj8W64WIGM6+ZbI2+dQj9d4/0V7occ3VNHHmSGZx+WJbW4ov8IlbOpc/Q
 H06J4n6ZaSwGd7m/zNkCZ9brpjtsO2VyItzHeZv76NCFPvMkRDKroHSdbOFS86s2oaX3
 4ENJ7aXVpwPqGZZP6sEuEJDitLli+kY6sS2YgtkdKDb33mMc0H5niZSwvwWoq8cE25es
 z1n5KkU7sY3BayPkuPe3wNxlR7eqmuf7UOfxNRGzeyh3XGQCGFgjGJy6QZ0ZK86TBhSF
 MkLcU9S8HW74a4Sz25uQLuACZAbr6wfsMD/3Kk6VY55w+awNLxFQhazriM2XTAoBknRT
 GOwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=IlWeur6t+kwpySn24VqBEqPmtDVwsekAH2F04m0wTVs=;
 b=Dp2g4bPoU9O02qgKjlJEc+K6PnMUEcNpRYFegJcoZ5TQ3ou1hTui0LKojosCXFTBTj
 JvyVb3a1Gm0BcQCTWbZS/iB+CwN+ogaJDnmfnMlmtCRQTDq3y/10zRGbCJHL549LGnXQ
 EXAWEYgQDkZ1Waym9v5+/Koby+2aOqQVcMeYJ0B/Nwv+3XuOGKwbaSqioWojlO3+1cUP
 r4BcT16CtLMz+IZ6EBhawMkgT8o1furH+me5Hknto5rrbW1X7iU1q1wASdAN2DEZkYj6
 32tFg21ji69zK1n+WttSE7EBQPuNqKny5WrfEMVTVqALi83CsoxfRSliMncQLVbIrFuU
 in7w==
X-Gm-Message-State: APjAAAWaoKtYmDQIDA1qmvJJ8/IIwnHeQhJuyLlsjVYz2llx07zI2mD9
 Z8LnfCgPJv7+GKeBXz8+nmo=
X-Google-Smtp-Source: APXvYqxvISxdB727dwDNTOKXmKUrUn9+Kd3oUXSQ3tEcgfKkDjc40yubFAx2AFYNL5X0JTxXM4yK/A==
X-Received: by 2002:aa7:8f22:: with SMTP id y2mr44011586pfr.22.1558027604243; 
 Thu, 16 May 2019 10:26:44 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id r18sm16175557pfg.141.2019.05.16.10.26.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 May 2019 10:26:43 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, davem@davemloft.net, mchehab+samsung@kernel.org,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 Jonathan.Cameron@huawei.com, nicolas.ferre@microchip.com,
 paulmck@linux.ibm.com
Subject: [PATCH v2 2/2] dt-bindings: thermal: add binding document for h6
 thermal controller
Date: Thu, 16 May 2019 13:26:33 -0400
Message-Id: <20190516172633.12607-3-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190516172633.12607-1-tiny.windzz@gmail.com>
References: <20190516172633.12607-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_102645_358747_B5265D36 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds binding document for allwinner h6 thermal controller.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 .../bindings/thermal/sun8i-thermal.txt        | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/sun8i-thermal.txt

diff --git a/Documentation/devicetree/bindings/thermal/sun8i-thermal.txt b/Documentation/devicetree/bindings/thermal/sun8i-thermal.txt
new file mode 100644
index 000000000000..bd417260501f
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/sun8i-thermal.txt
@@ -0,0 +1,34 @@
+* Allwinner Thermal
+
+This describes the device tree binding for the Allwinner thermal controller
+which measures the on-SoC temperatures.
+
+Required properties:
+- compatible:
+  - "allwinner,sun50i-h6-ths" : For H6
+- reg: Address range of the thermal controller
+- clocks, clock-names: Clocks needed for the thermal controller.
+		       The required clocks for h6 are: "bus".
+- resets: Reference to the reset controller controlling the thermal controller.
+- interrupts: IRQ for the thermal controller
+- #thermal-sensor-cells : For H6 Should be 1.
+			  See ./thermal.txt for a description.
+
+Optional properties:
+- nvmem-cells: A phandle to the calibration data provided by a nvmem device. If
+	       unspecified default values shall be used.
+- nvmem-cell-names: Should be "calib".
+
+Example:
+
+	ths: ths@1c25000 {
+		compatible = "allwinner,sun50i-h6-ths";
+		reg = <0x05070400 0x100>;
+		clocks = <&ccu CLK_BUS_THS>;
+		clock-names = "bus";
+		resets = <&ccu RST_BUS_THS>;
+		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
+		nvmem-cells = <&tsen_calib>;
+		nvmem-cell-names = "calib";
+		#thermal-sensor-cells = <1>;
+	};
-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
