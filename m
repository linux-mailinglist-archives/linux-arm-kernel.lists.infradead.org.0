Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B297C6DC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 17:36:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2nMjMI3FAnufjg3GmPui3QIWT5yfWio2PAOiMW3seq8=; b=PwecfV9GrBp0AjByBHV/hu/rwl
	tPZDzeaF2zu/0ViXfUBl0ECcVN6iqnUt/F2JQkbwysrGRhHx+5kREKcfho5ifV85DevWvj9du7J3Q
	ySmOZoaIfDS4/ARtTkclOVAoknsCqgyn8ch4HKWayqr7iCxGQ7c0wUiduqWMj97yke9pKZU2LuuOW
	xVMFCiW2+dW5IesMSZWoB+lW6pjnFE5n93M2w/EmZQH58r0H2Ct/gawBQu7LiW/7NxxoS8eLk/xY0
	R1euYk7FTZj0urt2WhUFEm9AUW16EpgiU+TD/BlVisS/ibvJprDb4krCLheJTeFpTUGp2OlQPPTlm
	38VhVKKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsqeU-0006Kz-7R; Wed, 31 Jul 2019 15:36:30 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqdc-0005Op-Rc
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 15:35:38 +0000
Received: by mail-wr1-x442.google.com with SMTP id f9so70165896wre.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 08:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zwXMQFf4O72zRXvxhXDpjn4gC2DC6LZbFolWqJXYtrg=;
 b=KYF9hpGEUbp0s0D642XDycTGprN3nqCsZUHBJdEKiex/mFMiZiWZ5/jd45H50ptbNU
 gw8EOQxt0VEWOwPRO9cHC+8Ray13wzLmL2meqCrouR1exyscsJduepsVv0tVycyMKrAx
 og2pGcy/PFs9xB5pIxirKZzAjqQ0hmhI1FvPVk7wCeTN1b8iueOtfp9RDkH0HQq5AOqO
 BIsh5KY+3D+v4FETW04yDsEQrdHpBzqHuVwgLELR/iZMZZ12GTAcLO3jy8qP0z/lXN89
 pH+/vGjHdLe0f0U+b/34BBcYccDIKZpHm9TC2KQ8QAL/lNqMRJSWt0F//+Yg0kpY8hxP
 PrUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zwXMQFf4O72zRXvxhXDpjn4gC2DC6LZbFolWqJXYtrg=;
 b=DKGCjia35m1XqlLKn+Lai/Yr3axllI6p6QenW0gEWU3VhnQjc/IvDx6UvDV5AjYkFx
 YoIdVmoAP7F8pfhYGpCU2oHZvyhCr3VPk8CXX52Ci4j0iyFW0MnsHEfbUOagdXdx7mEk
 N4zCplNokiLLspGlvMgr9UCpOaeYR+yrsP+37d2+yve1PC9woX6gKa9yJBm65ZT33C1O
 UKPV/c9wkvyDW9a3Fj2dCYo5pks5XV5dk1lGNmU8AVUWFnoKZsFIphMWI2z3pkguvUKg
 TWyINNGGFXVbPt98gKZwilNz3g1wd+/cA9OQy6P+ZzyCziDs5PSokkFU7YXlPKqk4/+S
 nc+Q==
X-Gm-Message-State: APjAAAXb2EW7Jn2E1E3UM4jqG6AYQo2Hb06nE+q8b//I4wBB4YeJTSN7
 xhUWv3A/fT2dgWT/oxZNDHMMkg==
X-Google-Smtp-Source: APXvYqzoxnNYY2vWzgJ9XlUvY8Co2H5qYLxlbwUS/OxtwDXdbJ0v1wfkv4b07TjdDvzHYrdxfIXyZQ==
X-Received: by 2002:a5d:4087:: with SMTP id o7mr91580852wrp.277.1564587334955; 
 Wed, 31 Jul 2019 08:35:34 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id i13sm62834396wrr.73.2019.07.31.08.35.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 08:35:34 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: daniel.lezcano@linaro.org,
	khilman@baylibre.com
Subject: [PATCH v2 3/6] arm64: dts: amlogic: g12: add temperature sensor
Date: Wed, 31 Jul 2019 17:35:26 +0200
Message-Id: <20190731153529.30159-4-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190731153529.30159-1-glaroque@baylibre.com>
References: <20190731153529.30159-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_083536_929380_D27AA4A9 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12-common.dtsi    | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 06e186ca41e3..7f862a3490fb 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -1353,6 +1353,28 @@
 				};
 			};
 
+			cpu_temp: temperature-sensor@34800 {
+				compatible = "amlogic,g12-cpu-thermal",
+					     "amlogic,g12-thermal";
+				reg = <0x0 0x34800 0x0 0x50>;
+				interrupts = <GIC_SPI 35 IRQ_TYPE_EDGE_RISING>;
+				clocks = <&clkc CLKID_TS>;
+				status = "okay";
+				#thermal-sensor-cells = <0>;
+				amlogic,ao-secure = <&sec_AO>;
+			};
+
+			ddr_temp: temperature-sensor@34c00 {
+				compatible = "amlogic,g12-ddr-thermal",
+					     "amlogic,g12-thermal";
+				reg = <0x0 0x34c00 0x0 0x50>;
+				interrupts = <GIC_SPI 36 IRQ_TYPE_EDGE_RISING>;
+				clocks = <&clkc CLKID_TS>;
+				status = "okay";
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
