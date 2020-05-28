Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC2F1E6CD5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 22:49:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dL862Jw5kh/8ww/r7eCMXm+zNew2HyLK7UqdbowwaGg=; b=rPFWWW6qEoirMz
	LnTOXXlRDbcLA2R13AP738paaUeaQVLilPUQUWftiME30WaI/d6rEiP/Vynpnh3d2BSNfLwA8NmBw
	wC3vJ0/Vs0oDOXQygCbnBfsIP1U9ZG4HHeuzkk/7ZQy1NcWbmJwW0BmTFBhZWHyMvjA7GJEZ4ElAx
	i7619rdtVgBjAIAFxHADR/YGcOHZEJyUF30vEwWcOys3blCjk2aw3UNNtsRaHjbQ/vGxze1leq8Zv
	PEpNEAYIPoT8ysBpOrmBsae0iLhQVDHVbMHnWZamqS1lqLgSUeCdtmo8gy37DdGPYrx7VAu7mNi2D
	RaRajMki2TeED9ZXEZqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jePT0-0006vt-QM; Thu, 28 May 2020 20:49:30 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jePSY-0006jq-04
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 20:49:03 +0000
Received: by mail-wr1-x42d.google.com with SMTP id y17so701950wrn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 13:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kynetics-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9NI5oITF3sur5up7exzC9ZwtSgcG5SfGWcxVBeWbrEk=;
 b=YIYCtIqHdfGvz+bp/GYBuOno2ziXPiDMbn/A2C6efWe0GlUnF3/yB6gC75n4H+TEJH
 axNE8iiu3suwzy791TcLkaM4wUDEz1LOGM7dmc+v/zsdWR4YPaRQdPYdidQ14Q0cdOxP
 fXRBtTCDtBGuK4Hz7vv1O2xtn3SbCUSZfJcLtNobdcb5vlK8fsK582Glx9sw1PjrSXTR
 YDYGjlBK0VSYqTIIsOM3qTh0NIJloBX0drnL2sMfJiDfa5HaxmaZk099HsR5ykIuDl3t
 3r/xBUa6SkAi9773WuXIXGpr3oja8O5oAoZrkzgZ5PLRP563+zeipN3A+Dzb4T3LCOPO
 V3gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9NI5oITF3sur5up7exzC9ZwtSgcG5SfGWcxVBeWbrEk=;
 b=ENav1Z3I9OKckJkW9LaodpT4GmEO3/RyyaS5YsnMPqYQKAk3YpBXJu4nQ49ibiTFg1
 rq0viyQtapbSCdzQ8YDWahckjGxMe0DlCNJ2Ef0C8+FB6skjphfxFRMS/yzUfK/GKoZr
 Cp1qV64Ebv6H7ch0mXBimWt+9XjArgnQzXfgCb6EZo3K445R5u1alWkPCZ+s7ixeSHIz
 ZnNN0BmpUCm3GntDTs6kJIUw1G8M1FZp//1kUmxecSO2QRdGOMvF+Io3fSvOIVjQ1rZn
 ibsbQZtQCzrdKjSEvP0/AVOYveJJWt9PX30bsCPy7axxQd8Vi8AK3ObQuzfil/fC1Dg/
 y2jg==
X-Gm-Message-State: AOAM533ACSooDEn3mmB9SXW8wf3mbK0/L1naMeMyVW5gCYY6RRPhXe5r
 za1qNCjf0WfYpv8ih2D5nt1L1w==
X-Google-Smtp-Source: ABdhPJz/iGMq6FoO6oFdT/+8B+caaHgzgf4nNbD2c5b9TxzV8Ex09SkSVsjO3fDnHZCj/9mURqHdFA==
X-Received: by 2002:adf:f790:: with SMTP id q16mr5260464wrp.399.1590698939287; 
 Thu, 28 May 2020 13:48:59 -0700 (PDT)
Received: from localhost.lan (mob-2-41-210-190.net.vodafone.it. [2.41.210.190])
 by smtp.gmail.com with ESMTPSA id a15sm7632782wra.86.2020.05.28.13.48.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 13:48:58 -0700 (PDT)
From: Diego Rondini <diego.rondini@kynetics.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: [PATCH 2/2] ARM: dts: orange-pi-zero-plus2: add leds configuration
Date: Thu, 28 May 2020 22:47:12 +0200
Message-Id: <20200528204712.552964-2-diego.rondini@kynetics.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200528204712.552964-1-diego.rondini@kynetics.com>
References: <20200528204712.552964-1-diego.rondini@kynetics.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_134902_035053_D06FC764 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, Diego Rondini <diego.rondini@kynetics.com>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add pwr and status leds configuration and turn on pwr led by default for Orange
Pi Zero Plus 2 (both H3 and H5 variants).

Signed-off-by: Diego Rondini <diego.rondini@kynetics.com>
---
 .../boot/dts/sun8i-h3-orangepi-zero-plus2.dts    | 16 ++++++++++++++++
 .../allwinner/sun50i-h5-orangepi-zero-plus2.dts  | 16 ++++++++++++++++
 2 files changed, 32 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts b/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts
index 4376767699a47..4cd0ac706bd2c 100644
--- a/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts
+++ b/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts
@@ -82,6 +82,22 @@ wifi_pwrseq: wifi_pwrseq {
 		reset-gpios = <&pio 0 9 GPIO_ACTIVE_LOW>; /* PA9 */
 		post-power-on-delay-ms = <200>;
 	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		pwr_led {
+			label = "orangepi:green:pwr";
+			gpios = <&r_pio 0 10 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
+
+		status_led {
+			label = "orangepi:red:status";
+			gpios = <&pio 0 17 GPIO_ACTIVE_HIGH>;
+		};
+
+	};
 };
 
 &de {
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts
index d8192a7483e9e..517d53e1b0ff1 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts
@@ -42,6 +42,22 @@ wifi_pwrseq: wifi_pwrseq {
 		reset-gpios = <&pio 0 9 GPIO_ACTIVE_LOW>; /* PA9 */
 		post-power-on-delay-ms = <200>;
 	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		pwr_led {
+			label = "orangepi:green:pwr";
+			gpios = <&r_pio 0 10 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
+
+		status_led {
+			label = "orangepi:red:status";
+			gpios = <&pio 0 17 GPIO_ACTIVE_HIGH>;
+		};
+
+	};
 };
 
 &de {
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
