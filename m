Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F0EE643A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 17:25:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bfZLCN5Q3xwslAkNreB++4k//+c3rsAfLdSximeMrTk=; b=W9pQfgd/agGjuq
	e3qHzLoLeV/FWiUz3QJlsFCK1eLuEF+vGx5lfSE2DKS0Rbp2yc9rfryS4H5rMfX30bSDPzsNUH9UG
	ZbCtl8ituxLYZZyrjCr0d8FSlFTyqJ/Ix7XcObbT+zHH35tQouF+V7r4oxyG695Gj0Mu41gFiM88M
	Ju6P9FqD2RsEaE0zzUTbFzUIftV/bzfWmmQ0LYwlKFXyAvfYpZqYoZr7q9QpoIGbjGWnuSamJtqSI
	QTvA593vBpCqFapsOC0hXgcf+bhFVyXiluRiFcilyFyLf84DU0QyHPcB2ZiZo70vAiTkRGCiLn8yO
	78WJsp6wp9tDf3xUh2IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOlLw-0002Py-3m; Sun, 27 Oct 2019 16:25:16 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOlKU-0001F2-Kf; Sun, 27 Oct 2019 16:23:48 +0000
Received: by mail-wr1-x443.google.com with SMTP id c2so7362685wrr.10;
 Sun, 27 Oct 2019 09:23:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FR91Xkho7A58iCTl5ApNx6Gn9blyxo7jlHkr4Z2ufbE=;
 b=DJKRsi+4xUNfRqEYSANnCE2BCk4qocBMxIHxvNaFwMv+6reNOJ1yDYZzxawhOVKc+u
 uTJs8mvzJAJRnXdV3PBCK7J+OLejIm0UExJaXQogyWv2+BgWDBWfXTg3kZpu0Jmdk7lG
 /TyFplsRJQ2IpcuqsNqJKTxyHc9uJ2l/2CiD1tpl4bJ5csKhETxra1ZBvxjQGJGCtawL
 yOxoKoQ/Qczup8O23yRK//AG/vdy4hLOGN68aA6tPyya/7qZ+H27V1gYV5prUio4nJDb
 IQWqqg+8jrprGeXqbfvnrir+EWjX38frqDR51u3xD1yBKGVj/PN1HyM3z5ncT5s0Ameu
 /Thw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FR91Xkho7A58iCTl5ApNx6Gn9blyxo7jlHkr4Z2ufbE=;
 b=pjO9br1zuHHKGUIwOZyXOMfX4cHO1fVSUCbOf5EaWaYgiq8iXU5b5ddlxBi3YE2L1I
 RN1sj07KfYZ14dX/m+jvwwe5Y/V5Rm/oWrlGPgrohQ5i1SRfcFYyhxN7Xh5NwUHALUJv
 g0omjoG6TYaVk9HnVyk39lFroonqrK216Z2oO7EBzZLm98vuawFatXm2/zKIowJ9v5y4
 UYwRLMExAy5F3q6ckBe/VfX3K4OhX9T2oKcb9VUmTbfftfSLjJbIMSYyD9eIifg5W03a
 hLZH3X4caY+WU5i8NgldpX8acuJg/9gKgmxleSYCn+8aNLqB/x9sv8h4XGvq9bPrz0Gi
 YnIQ==
X-Gm-Message-State: APjAAAWaS/hmcQovt4QIgwy1G1Bv4wplxC5YsOL/89QE+tjgvCtn3AKH
 awk4E43N/F261Nn1vn/6TtA=
X-Google-Smtp-Source: APXvYqwYcUCsvwTfCVC8G8QhpTTpc/gHzJpzRKp5RQnLVauGHvqBTZj2iIoo9YjsXmaCQ/Mnq8Vf2g==
X-Received: by 2002:a5d:640e:: with SMTP id z14mr11475473wru.311.1572193425067; 
 Sun, 27 Oct 2019 09:23:45 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F133D01300428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:33d0:1300:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id 1sm8243299wrr.16.2019.10.27.09.23.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Oct 2019 09:23:44 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com,
 linux-amlogic@lists.infradead.org, khilman@baylibre.com
Subject: [PATCH v2 4/5] ARM: dts: meson8: add the DDR clock controller
Date: Sun, 27 Oct 2019 17:23:27 +0100
Message-Id: <20191027162328.1177402-5-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191027162328.1177402-1-martin.blumenstingl@googlemail.com>
References: <20191027162328.1177402-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_092346_730713_5A3DD6EB 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
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
