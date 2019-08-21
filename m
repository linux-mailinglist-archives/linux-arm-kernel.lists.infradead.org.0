Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CE49875A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 00:25:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EDlckrYApqGXV7iAF7ANAb+nvYgONqtqqe0xQ4v6sHU=; b=lCOsXcxd/LHiv1Bqh0RILBqW9m
	l7hEqqwcB+giPw5FWnL5jnHhsoXCa6Icdd/aQPUuUSvu7gnKW4ZdIAH+auBRj/C8lcZ4kde6Qf5Y1
	bJ8kdUFNzHPfa2eyisxdgkQ0j0uNqZ0EfL3ibYP67tqpkpbcviNhYLmiUBDiIBIChSJLOuxaMiM96
	oZhUk0IFLg867j7nqcNlqRvb2V0VhqeQbjeIDJEfPxkqzZpx7xeoa2EOMpPaoVDivrXv3wGK1sEis
	Esnu7XXv1a6J/ms4DVGGCUAywoEQik3+t2FkovH/2stK4Tj0V2KclkIgyvuqrpB5s2x3eICOCRXhu
	bY0oM1Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Z2v-0004W9-47; Wed, 21 Aug 2019 22:25:37 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Z1o-0002Ao-TP
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 22:24:33 +0000
Received: by mail-wm1-x342.google.com with SMTP id k1so3678583wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 15:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VNEVJNmyyHrsV6A+ZpoAhZq6Wlxyq2Rn2IfeLizyW5M=;
 b=RmAQt0yrk4yeu8kHxu/ofDAzx+2cZEAdXYgfQpVRpzX8n+bKfVdHMRgTXXwQI5Vsp+
 z7/jDTXj1cY7aS1BFV3pDZPhCEB6zBkXuYpZXMq0P3/+WyAI6ypnOPtrOXb+1CvyLAz3
 6dyE7riK+GIKQijiJ3Rz+VM1K+xOhtwHY/xDnrMckeDGRbBLfWKZB2vR4ezsaxmNgKfo
 zM6I2ZzMRxgRGDbRcsquifk7qo/iHXbusGPEj2IcD0H8/+Hno7lVvO6koZCH/cE/bVj0
 BND/kPghyoQwXYDSp9XXs3BcfVeXnMUZb3hY2HW9SyC7tLmsItkw6pOLSLACjpOqq5mA
 qbvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VNEVJNmyyHrsV6A+ZpoAhZq6Wlxyq2Rn2IfeLizyW5M=;
 b=TkuSRvAf724UfaFQC2M+4Y9jD5SzMp4oUGho4dnCQQmevIZdh8m3LAXRscqFFljVVZ
 p4fjra16Ls6eLj936y+UqqyN+ApNLCXc1WlFAfv3tXKVYLGdQvEPFTehtW1UQTYOQv/E
 5TeInU6GR1IBYm4Niw9+x1ZFGkQ6OcvzSIwFy4jFwTozaQ5OdZ7oX3JwA7qy1BP3rZ+1
 Ce+/vqWWnibQKilw3RTlAhKh9VDAmWhrzCa9AHBVm7WNf8WS8R/jp4JOBi4RxtS5Rwnp
 jSPZO3bRA+pjy2+wLUG58I9swmpVjqtwlj+VkegUtR5fMNChdiEtxd4n/L8fg1v6kynx
 /HGg==
X-Gm-Message-State: APjAAAX9doCzUgFiFeiNuR3T55VwwA+lkwtOCm6BFVcvIb8nQvU2aZJ4
 nBxq41aXLs3qUQ6MIsV7bHMWMA==
X-Google-Smtp-Source: APXvYqzutcbJ1b6zo56rETKZr1zpTfUALmnpdpQJw6EUBhIgUTQ10movHoix6xnpijh+pYUNRfaXDw==
X-Received: by 2002:a1c:c747:: with SMTP id x68mr2507957wmf.14.1566426267351; 
 Wed, 21 Aug 2019 15:24:27 -0700 (PDT)
Received: from localhost.localdomain ([2a01:cb1d:6e7:d500:82a9:347a:43f3:d2ca])
 by smtp.gmail.com with ESMTPSA id f197sm3548549wme.22.2019.08.21.15.24.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 15:24:26 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: rui.zhang@intel.com,
	edubezval@gmail.com,
	daniel.lezcano@linaro.org
Subject: [PATCH v4 3/6] arm64: dts: amlogic: g12: add temperature sensor
Date: Thu, 22 Aug 2019 00:24:18 +0200
Message-Id: <20190821222421.30242-4-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190821222421.30242-1-glaroque@baylibre.com>
References: <20190821222421.30242-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_152428_944965_08C69577 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add cpu and ddr temperature sensors for G12 Socs

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../boot/dts/amlogic/meson-g12-common.dtsi    | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 06e186ca41e3..ce13c7c2e454 100644
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
