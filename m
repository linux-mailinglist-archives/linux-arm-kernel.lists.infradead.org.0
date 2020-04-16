Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBFF1AC104
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 14:21:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h4Ak4GQlVjnzYdHkABV26aQiUpch75xs4taNx49qDuA=; b=WfCP5T9cU/xwdx
	2tJJluazHX0bzIfJasmRhiNazGlxQK59aifwQsRE6yp5I7zT039GhbOEDr4bS/v9Nb9k3ZSEMDlCQ
	aVgbKYjeMbCmDfnoI3PHmQGOK8WdxMGruHIcr52AeA8WlFRWXcXfoBNqxhJVLr07AXi3f9t8p0lvF
	orNF6JcJB+Yysb+OjEtW5O+TCfuI/vOrPCR1XYMkxst6Iovf3h9PF47MonGzZdaj6jwMnAXloRe4V
	rnrYvbulLHWEyxUAyTabqp/j1ihHrcy602Jt9A0V5uBqXqimhPLX30RC2GmzYCkbUwgMS1BG1WqCh
	NROzauCWQTVcEXsp8IbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP3WY-0002Ii-NU; Thu, 16 Apr 2020 12:21:42 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP3UP-0006HY-Fn
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 12:19:31 +0000
Received: by mail-wr1-x442.google.com with SMTP id h26so4558807wrb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 05:19:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HXXf6CzGWvqGfJ+pWD/XxsKx7m/sfAMCErpAVa4yyHE=;
 b=WQyDyR5mxzNp5S9/EFFpNUBzyCTrTp2awkJyanbeEFwI7GQHQF6wbpwEwd+J9y+Upf
 qEzKbb5p8JSw6giqyoQ8c3kElv/qoYGvCe1/xCr4lg6pTaVtbW6ErRiHU88hL3t9VNbB
 hhiYTyMz3U2/c8QGkhk8GwYOR1CYm1Kc7ZHlN/E7INk4aXqte01N1CSiyAp2tveR1B2I
 hb7cQ9CsHMHsxaI2V7jJmoW2KDav/NTUM93UD8Vif1i9eqqJ7NQ1fzC0WTcRwn2aiWl/
 zA0XNuRTHj4BeQ6HxqOBh8YmKwiNvREECaZahCrX4PcwvIhE6M82DGq7hR9Agv1jpOn6
 0YkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HXXf6CzGWvqGfJ+pWD/XxsKx7m/sfAMCErpAVa4yyHE=;
 b=TFKjytSQfV05hoW9qaC2hPXWZ4Nod++gQzspLlfXFgMpxZa9HrXHiGYwog9mq4hkOl
 4QRk7KlCdjl6GTQ/+lAzlI4+AcBovw15ApaMhtK9zRKaVvL+a8JnXchyoQgh+yRtrSiJ
 wQ+5qoTc2B327fCnGFyEZ0i/9icTHhOaPdma0i8hIg5JwnDcPuSRfoBEEQaq3olYW/gf
 Kr5LBUW+Gh8AxCRX7FLarw2SUZVi7ksW2gyPucCAvWVSNdAXfkYHMAgLzxSqhwE3QUH/
 NGYejd1NgunzztcszcFwjWcb8HocTUlLoMaOFUHVb9JzZ7l+jrN/hatAtXVIhWXVaQl5
 VQmw==
X-Gm-Message-State: AGi0PuahO3j/yKnpns2rofnB0t5Cjs7m00/vKRc49yMvrH7LJVuq/QeR
 a5n+UfOYHx4nbTVI9BnzHbTzPxcSZoTIoQ==
X-Google-Smtp-Source: APiQypKqIj6sEk0xjD5CGDimPOpkhr5FgQcDq+KtN3ZtPclHdg8q5OF+FP+2ZyDS9S0qDaRuPbSqCQ==
X-Received: by 2002:a05:6000:12c5:: with SMTP id
 l5mr35779556wrx.185.1587039568034; 
 Thu, 16 Apr 2020 05:19:28 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56])
 by smtp.gmail.com with ESMTPSA id
 i13sm22035602wro.50.2020.04.16.05.19.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 05:19:27 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: kishon@ti.com, balbi@kernel.org, khilman@baylibre.com,
 martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org
Subject: [PATCH v3 8/8] dt-bindings: usb: dwc3: remove old DWC3 wrapper
Date: Thu, 16 Apr 2020 14:19:10 +0200
Message-Id: <20200416121910.12723-9-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200416121910.12723-1-narmstrong@baylibre.com>
References: <20200416121910.12723-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_051929_542144_DE006F7D 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rob Herring <robh@kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

There is now an updated bindings for these SoCs making the old
compatible obsolete.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../devicetree/bindings/usb/amlogic,dwc3.txt  | 42 -------------------
 1 file changed, 42 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/usb/amlogic,dwc3.txt

diff --git a/Documentation/devicetree/bindings/usb/amlogic,dwc3.txt b/Documentation/devicetree/bindings/usb/amlogic,dwc3.txt
deleted file mode 100644
index 9a8b631904fd..000000000000
--- a/Documentation/devicetree/bindings/usb/amlogic,dwc3.txt
+++ /dev/null
@@ -1,42 +0,0 @@
-Amlogic Meson GX DWC3 USB SoC controller
-
-Required properties:
-- compatible:	depending on the SoC this should contain one of:
-			* amlogic,meson-axg-dwc3
-			* amlogic,meson-gxl-dwc3
-- clocks:	a handle for the "USB general" clock
-- clock-names:	must be "usb_general"
-- resets:	a handle for the shared "USB OTG" reset line
-- reset-names:	must be "usb_otg"
-
-Required child node:
-A child node must exist to represent the core DWC3 IP block. The name of
-the node is not important. The content of the node is defined in dwc3.txt.
-
-PHY documentation is provided in the following places:
-- Documentation/devicetree/bindings/phy/meson-gxl-usb2-phy.txt
-- Documentation/devicetree/bindings/phy/meson-gxl-usb3-phy.txt
-
-Example device nodes:
-		usb0: usb@ff500000 {
-			compatible = "amlogic,meson-axg-dwc3";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
-
-			clocks = <&clkc CLKID_USB>;
-			clock-names = "usb_general";
-			resets = <&reset RESET_USB_OTG>;
-			reset-names = "usb_otg";
-
-			dwc3: dwc3@ff500000 {
-				compatible = "snps,dwc3";
-				reg = <0x0 0xff500000 0x0 0x100000>;
-				interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
-				dr_mode = "host";
-				maximum-speed = "high-speed";
-				snps,dis_u2_susphy_quirk;
-				phys = <&usb3_phy>, <&usb2_phy0>;
-				phy-names = "usb2-phy", "usb3-phy";
-			};
-		};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
