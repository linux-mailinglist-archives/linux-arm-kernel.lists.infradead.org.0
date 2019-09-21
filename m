Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 979E4B9EA2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 17:21:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mXDIqgr3rcWWC6JjfZITCHpfp6ZS5i0+JVG6OrOv+JQ=; b=dTdqJGuK6EcN37
	fjpWo8zli0J/vn94RQW1hsh9oJk9MYngHt70k3lNCKxunHGazNk/bpl0B/Qwern4gogC/nyyuekEi
	eCdXl4hza7/N00f0uGHCrv/aTn9FVpnWD6KgAJwxNM37UNA9jrTevBUoyvGDseh5RJBZaIMT7fhXS
	bdJXgROhWG9JiBC9jBvEiZRV82S88ac4Ob3YY4Hs5CaZNORG7TIAc5GbDB6wUNXPPcYzstXS9FCLv
	iBrlK14m5WVeawfbaZN9vOWEXJNktH9/kQe9+JtrmPVmDvUricaXNUPS2t8YkSS9WEwmvBl/ZrvU8
	ZP7UwbbpJGRJbcFCLK8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBhCI-000560-99; Sat, 21 Sep 2019 15:21:18 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBhA0-00028x-6W; Sat, 21 Sep 2019 15:18:57 +0000
Received: by mail-wm1-x343.google.com with SMTP id i16so5390386wmd.3;
 Sat, 21 Sep 2019 08:18:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ryY1C6V/Fnndw45BEkZbgWqU1CO6K4z5Y17d3HMNBz4=;
 b=jbSHNaXEeYn6hTwnob4r0cFK1tawMR7cK74NLvuSDg9K1Q+i9UN9MDMzyPNum1rg3u
 3+Zlha3bTktCHxytNPYwWn53kVqaCHTgDo1L0cjl3wRSBAjIgHQkbY/BPedgCdfd+m9m
 JA6TQEeNuoNw7bN0LVMoBnGgKOo5DmAPmrUPyP62jHCdLV+yumcWomD7WbfFLICNTIMl
 wOB/n0k8in4sKU/Ftefui+uGHNdWEvAMHFdPXAUmYacmj0L6jE0PslD3GpFqk++rcNG6
 8ykti5lqNIIgp4jx0YLk0usYFU/nzwdGlTbqK72AnwmeBGV/FbdcGgiN58hjVeP3yfjM
 XSnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ryY1C6V/Fnndw45BEkZbgWqU1CO6K4z5Y17d3HMNBz4=;
 b=WeV0wzWlmV2BFryMx+NeAnaicgXagkWvGZRr0qICkHPZ3exoV+itlno+hSv9tBv3Ck
 N98FXBvA9K52hUGs+R+t/DnSzAp3lb7bAnJliQO3++pMWfu3po9Tah960xElKJzfHoFf
 JtnbXG31tu4V+0OuLUmd9dQ47N8f05sdg2A/iM0x3QtL9g80ZquQYOrBoTbfi2o46wv0
 qqMs+YO762+LgvfrMcS95Nzq0PuWHg50iTILUEK2TgWgS0T6Wq8ub5g6p+5i9qT7odOU
 Sl5Hmqe62c1neRwRfo2eR20h3r30ua8wZUNLblN0vKutTYcYbZkaI7Im0dYhgqrK0EED
 4ANg==
X-Gm-Message-State: APjAAAX59/MgA6w9J1Iyw6mmnWgMKTsfEw6J+UgkErHYAsqR2JuwJEes
 mzYROX+m63tOCXio0cetm+w=
X-Google-Smtp-Source: APXvYqzBWlO/a1o7buEzHL4fJp72XmAnFcohUCZlv806SiF/cVfQ3RUOZrNiEOVvXdyUtLEN+b6d2A==
X-Received: by 2002:a05:600c:217:: with SMTP id
 23mr7868145wmi.76.1569079134900; 
 Sat, 21 Sep 2019 08:18:54 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133CE0B0028BAA8C744A6F562.dip0.t-ipconnect.de.
 [2003:f1:33ce:b00:28ba:a8c7:44a6:f562])
 by smtp.googlemail.com with ESMTPSA id c6sm6003120wrb.60.2019.09.21.08.18.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Sep 2019 08:18:54 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com, robh+dt@kernel.org,
 mark.rutland@arm.com, linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org, khilman@baylibre.com
Subject: [PATCH 6/6] ARM: dts: meson8b: add the DDR clock controller
Date: Sat, 21 Sep 2019 17:18:35 +0200
Message-Id: <20190921151835.770263-7-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190921151835.770263-1-martin.blumenstingl@googlemail.com>
References: <20190921151835.770263-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_081856_317762_AE96A5F3 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
 arch/arm/boot/dts/meson8b.dtsi | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/meson8b.dtsi b/arch/arm/boot/dts/meson8b.dtsi
index 1934666ff60f..8ac8bdfaf58f 100644
--- a/arch/arm/boot/dts/meson8b.dtsi
+++ b/arch/arm/boot/dts/meson8b.dtsi
@@ -4,6 +4,7 @@
  * Author: Carlo Caione <carlo@endlessm.com>
  */
 
+#include <dt-bindings/clock/meson8-ddr-clkc.h>
 #include <dt-bindings/clock/meson8b-clkc.h>
 #include <dt-bindings/gpio/meson8b-gpio.h>
 #include <dt-bindings/reset/amlogic,meson8b-reset.h>
@@ -172,6 +173,14 @@
 		#size-cells = <1>;
 		ranges = <0x0 0xc8000000 0x8000>;
 
+		ddr_clkc: clock-controller@400 {
+			compatible = "amlogic,meson8b-ddr-clkc";
+			reg = <0x400 0x20>;
+			clocks = <&xtal>;
+			clock-names = "xtal";
+			#clock-cells = <1>;
+		};
+
 		dmcbus: bus@6000 {
 			compatible = "simple-bus";
 			reg = <0x6000 0x400>;
@@ -434,8 +443,8 @@
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
