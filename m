Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2425BCB6EE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 11:02:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cyypC8XVCgcs8/ZrS55Fgl8nrx+y80U4pBIzUzWjTTw=; b=X5Bc6QdYa0uXsBhsG4vIcXulDb
	z8y4gUmlkiryjAErZm38yDrPSAG73al045kiUWDV2B2TpVYU/BbzyeBqxzrEZbeX/bCndzSUSaAC2
	99a2uV3SueeDteCbv3Gs/mS9Ewi+zkTwp7qUpIXt0Go4z7B1BWgyAr8aqx7+Yn4pf1ChXglLPCFgf
	b+8OJUuiTY/d0OyLp+rCysT+kKQdTDAu8OfdMdHkM03p+L4gOWJmepuuuuhoszYVsJbvoz3cgdt9j
	9biTNwGiMLLO/0Mclz9FcA+ykRq+WMtZL6dq+Nimo5oKt/NZaLUV1j3B/bxCkGPChb61GWS8D04b3
	J+q50VwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGJTy-0001ih-NI; Fri, 04 Oct 2019 09:02:38 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGJSj-0000gT-PQ
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 09:01:25 +0000
Received: by mail-wm1-x342.google.com with SMTP id y135so9097050wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 02:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=U5+Cq6R9X8Ufmg5BHS6gLuKOFiO9TF8ekxmK0Vlflyo=;
 b=viPQ8tCIuO7ifXLvNehlr170Hq0zRhmeOFrDlSW18zUQ5/HH6olShlD6ANOlc4C/vY
 kU+qPChmbAcsbdcDid5YvQRbwpIQ/F253wo7GyfaTLtU2O99Y9XaN7359UKyFVHpU32q
 nKPuj81jP6TMBVySWqi34lgjfNKZaXCClyjw8xigwf3lDiSV4Fe4ww1QKXrR7eAqokMC
 BbwHnam7DBMqgwrDBBafgCPmGvY88qoJb4FsRw2N42Q5hEdkw9L0C95aV6jS6Q1D7Vq/
 1Iwh6bXTp2lhXvBFETZztO/oRRWDsvDXevuT+lZLzsZgA5PfkvfkHly2/hI34UG1NePl
 HScw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=U5+Cq6R9X8Ufmg5BHS6gLuKOFiO9TF8ekxmK0Vlflyo=;
 b=gHDYUN51xi1T9wWOr1WkpEZBJwve0K1CyPAuXr30XqhHRL8Xy/5FT2MCE8vwn9UrIy
 w+DAMKs1O5TlZ0OdxOQCnwiGMSlJgeGoEpPWw1H8CAkeQHakwI/yMaiit6qxJ811Wd1+
 qC5UKDbXlO3sHImGLqKIGLj2upUWt/2b7xQgIc054OZI6GVQgyXZHwVQkQQMoBSWT/EF
 KWQ0W1AjWW6FjnllZ6zO4rpdEkwamCBXLzdX/eryDbAjQqoO0lbz47k5ethRH2q61nPW
 /2SN+6pw/Am00ZfIyLljHAnnl0RD40NuLPG1VgUmoVuWrztcKRS3lKg44z/hm6Kjo6jI
 Vkmw==
X-Gm-Message-State: APjAAAUuTggtbXipWP4SjJtTZZozi8wdhoJMeCMp1j5O6YRRNVrYbH+h
 pyyulHlH+TjXqnuzPaHKTJCoSg==
X-Google-Smtp-Source: APXvYqx9RmbwsTK8Iq4RgR8Gbz/TiRWN/uUkE7o5hGA2Hoy7bdPG4yIVs2IxmPHUV9GF3MTE7XKdGw==
X-Received: by 2002:a1c:ed02:: with SMTP id l2mr9784178wmh.155.1570179680626; 
 Fri, 04 Oct 2019 02:01:20 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id v8sm7765170wra.79.2019.10.04.02.01.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 02:01:19 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
 daniel.lezcano@linaro.org
Subject: [PATCH v7 3/7] arm64: dts: amlogic: g12: add temperature sensor
Date: Fri,  4 Oct 2019 11:01:10 +0200
Message-Id: <20191004090114.30694-4-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191004090114.30694-1-glaroque@baylibre.com>
References: <20191004090114.30694-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_020121_844460_9F1A803E 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add cpu and ddr temperature sensors for G12 Socs

Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>
Tested-by: Christian Hewitt <christianshewitt@gmail.com>
Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12-common.dtsi    | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 38d70ce1cfc7..0660d9ef6a86 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -1353,6 +1353,26 @@
 				};
 			};
 
+			cpu_temp: temperature-sensor@34800 {
+				compatible = "amlogic,g12a-cpu-thermal",
+					     "amlogic,g12a-thermal";
+				reg = <0x0 0x34800 0x0 0x50>;
+				interrupts = <GIC_SPI 35 IRQ_TYPE_EDGE_RISING>;
+				clocks = <&clkc CLKID_TS>;
+				#thermal-sensor-cells = <0>;
+				amlogic,ao-secure = <&sec_AO>;
+			};
+
+			ddr_temp: temperature-sensor@34c00 {
+				compatible = "amlogic,g12a-ddr-thermal",
+					     "amlogic,g12a-thermal";
+				reg = <0x0 0x34c00 0x0 0x50>;
+				interrupts = <GIC_SPI 36 IRQ_TYPE_EDGE_RISING>;
+				clocks = <&clkc CLKID_TS>;
+				#thermal-sensor-cells = <0>;
+				amlogic,ao-secure = <&sec_AO>;
+			};
+
 			usb2_phy0: phy@36000 {
 				compatible = "amlogic,g12a-usb2-phy";
 				reg = <0x0 0x36000 0x0 0x2000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
