Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACB7B3AB4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 14:51:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9EyMBZEbj8uF0uQcnffIoGy09oNmGYqujjCSUvzVDpk=; b=OXLogV7kFUAWQT
	rTIFdoq4Ib+cwGP3JGUH/X28Tg/pUNcdhzlwsUY9FiMk/86L1EWX0nbniVn8OVvv3qP4YPsbIvpV4
	qL/svy3Zuju2SbhsEbeUpyGB0GXaPaMsHLPZtVO8PIxDhSZDvr00Rj0tgWT2DyYGg/pvI4uN3pCkV
	wsPHKxO3GgR+bAa7w1204SNEtXmQ/bZiWlS2XzgZMaZZ3sMpJnVqVBnbxB71Wm5JZltaxQW2Oysem
	4QZQwWFL33DhukKb9bo4OZd/kRo14/8O2VlK4SkQdcxxGcfvrM1UMiZAwGhReFfZWIPhpBCFHQsDF
	qR3FcNHnhGxyLlaTvChA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9qTy-0003Tk-OU; Mon, 16 Sep 2019 12:51:54 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qSZ-0002nA-0G
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 12:50:31 +0000
Received: by mail-wm1-x342.google.com with SMTP id 5so4167699wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 05:50:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XUfEPcm9zIxhFldZrxhkkyEwszDIg8DVmTXvmpvcNks=;
 b=hGzPVFic9jJ7l+dNqFEPZDAs17LUMFemybtUi2RQyKw4lNI31vG7ESwuhjCNfAhchl
 XL+JaCuTHmaduj2rp+jzvbG91jeWWFl1S9rh+MWdyOgDafQ3dHPu6spLWfinKamEXsYu
 k7J6v10E1nloeG+cbZ/Flvr4V7zrS9/24ysmPwpsMtcwmsC6Z6s2dyXzqyPMKgBDTPXE
 DbPgewVsW58oXs4phbQA2y/j4zIEN0faYeqmg0zyBS5BTYeL59yvrlEaFGFlFzr5IEwm
 l9RMFVTn1uiwphZ5Tf7dAoaD0AhtQYQ8F+B91Hhfkaknc14B0KVq7faVT4m9nScuyOuZ
 9+gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XUfEPcm9zIxhFldZrxhkkyEwszDIg8DVmTXvmpvcNks=;
 b=TCe+1ZD0elRmOiaFTNv09fv0fKHNNgg+997y9Nb2uEBEIykXZZt7PSe965LTgrtPHf
 aYitIDgY7c6nw5zmQJoaKOJgwnj3m5Ii2LvPH/z9t9DTSvtDKuOL6wmjOlcn4zR9VdjW
 iFf3IfanQnfJNqFgEBg+bnewjLuCZ/WHf7OBDXTrolG6mH2jEuh7HJfNlDIUdluIFfYW
 bak6TdYXyzTIjcE4a8tqPWvzcDJNDMU1sYWTGuxcpmQqCGP7dwA2JhlqKOmjg9q4fQrt
 CVKROpdOmO5mmdyFRv3LmVepE+sRl1egBnXFiHeDo2jxUaDr5aqT3blg6aGiNaqghf3s
 +qvQ==
X-Gm-Message-State: APjAAAXSeopYkLXdlgRz/HySaBD2+SeJAMDcPKBfO4x3WFiDCsHvKXML
 DzDfT4fXIcOIrJsu88fMfONuJGTXK97k0g==
X-Google-Smtp-Source: APXvYqzlEUxhl3f79IATgDynHyFjQHa279fyhuqpYRKAX5RH9mVOwoSkz7D6xHrly5Fbd8jfpRx2NQ==
X-Received: by 2002:a1c:7fcc:: with SMTP id a195mr14283145wmd.27.1568638225511; 
 Mon, 16 Sep 2019 05:50:25 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o12sm15109960wrm.23.2019.09.16.05.50.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 05:50:24 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com, lorenzo.pieralisi@arm.com, kishon@ti.com,
 bhelgaas@google.com, andrew.murray@arm.com, devicetree@vger.kernel.org
Subject: [PATCH v2 1/6] dt-bindings: pci: amlogic,
 meson-pcie: Add G12A bindings
Date: Mon, 16 Sep 2019 14:50:17 +0200
Message-Id: <20190916125022.10754-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190916125022.10754-1-narmstrong@baylibre.com>
References: <20190916125022.10754-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_055027_119463_704ECA4B 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, gouwa@khadas.com,
 Neil Armstrong <narmstrong@baylibre.com>, linux-pci@vger.kernel.org,
 nick@khadas.com, linux-kernel@vger.kernel.org, yue.wang@Amlogic.com,
 repk@triplefau.lt, maz@kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add PCIE bindings for the Amlogic G12A SoC, the support is the same
but the PHY is shared with USB3 to control the differential lines.

Thus this adds a phy phandle to control the PHY, and only requires the
MIPI clock for the Amlogic AXG SoC Family.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
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
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
