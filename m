Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3579B9EA0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 17:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bfZLCN5Q3xwslAkNreB++4k//+c3rsAfLdSximeMrTk=; b=jGfnpGS0kyukaw
	lRiJnnO//Edh1I/H3CLwDPtgEB6ZN5PGuFdbv4rJ6nmRHhBjpdDcNupHhzOzNwDr0JOogCBJ3YC/r
	pnIWkwinf2fiuUKE7mVZW4Kobz8ARLCi79MrwX/qdvO1m6JfROGf7qE9Wa5pABEkxdNgVyj/+1kZF
	BLmiACv269RtlC8+YmrRdzd2Zm7+9xH7cZfCw77lTdc+xvhxbQ2mO2MXs+DqdOdSBPHPHc2b5AEI3
	+vNj2pXS9hZMrW+g1dw3yxppm6N44nzUyrmrvNJIFoMPFrwoL/k3wa4ERnQsz9iQbLus1Jg1GxvgZ
	g1+w4qZMgpUigaVTFKjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBhBz-0004mw-T4; Sat, 21 Sep 2019 15:21:00 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBh9z-000284-1Q; Sat, 21 Sep 2019 15:18:56 +0000
Received: by mail-wm1-x342.google.com with SMTP id a6so5373936wma.5;
 Sat, 21 Sep 2019 08:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FR91Xkho7A58iCTl5ApNx6Gn9blyxo7jlHkr4Z2ufbE=;
 b=KWRSBJVsDsKJOmZiT5h/pv4+GIz8T9Vn5Sg/QFlaN8AL6lpIc1VBJZRBiglIK0acUE
 I3dWlqeUmi5lESjDBd6eVVY/oe0QcxsXIiUsgm8iyKkH45U0jTjcZ+AW0SHByk0LJ7CB
 VWrOs6MKnx4J7EUGSv4VqEHMZddFyBeCYc3HwSrh80uTIV2QwkjsQ48C/iQdRtltTsUH
 zJhAfbRzf8oB2sLRFT/h10adWMx+BQ/HkJgch2fFN1QNfLxoXG6Rc+ITjehYR9n9IKgY
 ynAE5QCmoybHDI8BN1BJVEhTDhXRcNnOTzuOdg15ms4wnY8vWzupygv0snfKJA6MgOd/
 /+cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FR91Xkho7A58iCTl5ApNx6Gn9blyxo7jlHkr4Z2ufbE=;
 b=ejtOHA9u0JKXDCk31px3ntT/YDBv9wOqDXEuBxcBfUit7caPw0AtyzWbBwYCA1s3N4
 5EoOXNXNMqmPA+y3oxTRYrJL1qDBs6qrDQBIRDdIlRKEkFZQcE5rdYGZRLunwgdnsN+G
 qUVTLxCdqX/wIks3cxmHwdDfsr++gMzCGf8UmjBJmvDaILeHG6QPtjW7CORjJz1VnWuE
 nVQ4MtZD6Lt8kwzLIAteO0cLAG/X0zHsFFyWTkrtxq+jmNfTMAYnx6Doozob/7MRqa9Z
 tOV4RaNHcK/IplzQRztIx2+S762azxdWPYAv6DP5+5/DWh6L6QWygJ+JoxpMkOsvXcth
 HH7g==
X-Gm-Message-State: APjAAAXbTO0gUH0Zqhu+w66mAHjOAWBNSbFwsV5i8NmWeCJ4ecNXtkR2
 yE1tISlgkf/oelnXbNUAjX0=
X-Google-Smtp-Source: APXvYqxVJaRV1NZ9p+a9UvRRJxgcRUElyATnSz2niSamFqTnFOLRoyRIYqzSD+uFEQH+1eVwneDFYg==
X-Received: by 2002:a1c:ba08:: with SMTP id k8mr7603515wmf.63.1569079133659;
 Sat, 21 Sep 2019 08:18:53 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133CE0B0028BAA8C744A6F562.dip0.t-ipconnect.de.
 [2003:f1:33ce:b00:28ba:a8c7:44a6:f562])
 by smtp.googlemail.com with ESMTPSA id c6sm6003120wrb.60.2019.09.21.08.18.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Sep 2019 08:18:53 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com, robh+dt@kernel.org,
 mark.rutland@arm.com, linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org, khilman@baylibre.com
Subject: [PATCH 5/6] ARM: dts: meson8: add the DDR clock controller
Date: Sat, 21 Sep 2019 17:18:34 +0200
Message-Id: <20190921151835.770263-6-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190921151835.770263-1-martin.blumenstingl@googlemail.com>
References: <20190921151835.770263-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_081855_079984_9507599B 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the DDR clock controller and pass it's DDR_CLKID_DDR_PLL to the main
(HHI) clock controller as "ddr_clk". The "ddr_clk" is used as one of the
inputs for the audio clock muxes.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8.dtsi | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/meson8.dtsi b/arch/arm/boot/dts/meson8.dtsi
index 4f59a4c8f036..257c1364864c 100644
--- a/arch/arm/boot/dts/meson8.dtsi
+++ b/arch/arm/boot/dts/meson8.dtsi
@@ -3,6 +3,7 @@
  * Copyright 2014 Carlo Caione <carlo@caione.org>
  */
 
+#include <dt-bindings/clock/meson8-ddr-clkc.h>
 #include <dt-bindings/clock/meson8b-clkc.h>
 #include <dt-bindings/gpio/meson8-gpio.h>
 #include <dt-bindings/reset/amlogic,meson8b-clkc-reset.h>
@@ -195,6 +196,14 @@
 		#size-cells = <1>;
 		ranges = <0x0 0xc8000000 0x8000>;
 
+		ddr_clkc: clock-controller@400 {
+			compatible = "amlogic,meson8-ddr-clkc";
+			reg = <0x400 0x20>;
+			clocks = <&xtal>;
+			clock-names = "xtal";
+			#clock-cells = <1>;
+		};
+
 		dmcbus: bus@6000 {
 			compatible = "simple-bus";
 			reg = <0x6000 0x400>;
@@ -455,8 +464,8 @@
 &hhi {
 	clkc: clock-controller {
 		compatible = "amlogic,meson8-clkc";
-		clocks = <&xtal>;
-		clock-names = "xtal";
+		clocks = <&xtal>, <&ddr_clkc DDR_CLKID_DDR_PLL>;
+		clock-names = "xtal", "ddr_pll";
 		#clock-cells = <1>;
 		#reset-cells = <1>;
 	};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
