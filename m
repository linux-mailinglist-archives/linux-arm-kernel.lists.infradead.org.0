Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE501B20E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:04:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eWf1soy55UqTZsnYiX7wypq3BlyNBZ9UCBQcN7FLoNI=; b=oaQE2Ii5D2Sg6w
	nlfMlN2Z42d72g3sofQGABLq/DJQ1yhtb+wdUXjACASuCgclxfjsps6Yu4Gjw2qk3DglNqaiZ17lq
	ud9PKO4wtru4Mx6CeMVtaTgfu/rduNZ59u3kpOcv817a57Tllp650D3Bql7k9XdRUC8PdytoDUcxy
	EAX7dowDx8MChhhy5x+D7QgWdgSThCqs9LbdpPFab8yJ7VEWp0O6Uv9c6LlZl/H5f2CkYi8s7FxSa
	g5NMUJkMWaeuuaKQ1B5UgMJzpGKObkw9qZCtIZ/H2m6fHoZEpt9dl/6t9Uw+2+4iWzkvsWa2DhOX0
	awmDGXOhytnuN13kFkUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQnsl-0003YQ-SR; Tue, 21 Apr 2020 08:03:51 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQnqK-0001HO-IG
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 08:01:22 +0000
Received: by mail-wr1-x441.google.com with SMTP id b11so15315459wrs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 01:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=itZ8nYpO9rVwAB+XOSiZ1Zaz+WlUMeN8KYJbRrgai8w=;
 b=2P4upNIcIwgvXsINcNwMKuLoNxfbr7DA+Jnu8ANYIWyy5/smGGvO2txOPebp357SyM
 9xtX+ZfPGfwrIPzvc5j36V2tN3+T1D+q3dwpBGFE7VWJMfZzVUcqeB+umjUadUUjSCq4
 dATQNiLI4T751oM+fcu4U/Y5XgsSygl4fgAYRVtuCQrFEXrvrVqsI9pgHO4pzjVa1d2T
 x/g46FT49QfIbn30BHst4ECbSzYAcH8x1/3QHciYWeaJJLSUi9kpiF14nf+kIFgFYPdr
 z7RlPTlHlYTEHzsbmqAs+tXOYt5s2M3tLDtDiyBpBUbkaQQNjDkzXMclSxyyLuFi0kbu
 iiBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=itZ8nYpO9rVwAB+XOSiZ1Zaz+WlUMeN8KYJbRrgai8w=;
 b=KLNvCUYXbkYDpTicLKjFfHZtDdgM6TMe+IQLXGQkBBE+FDwK4l9lWypYBACu3BKptb
 TMeV9md79W3uYiw6wr+/qCxNWAzXKwRLqTsDS2qbIwmd1vKM1JZm8Obged8Ez+wq1X7M
 HWWeslmA+zzgpu/54MghMJylskj0R5xn7fo/2ZDqFpXTbzXy+X10wdZhGbnCJo7tCG1B
 r13ppCwAuHyuU1Xmbdvsb2p1Y6itPa9daG7nwoDJhb3Sr+lXNJb7HWBSMsfYhKaeQ5jU
 +81ftdveUOiloPEpgHefodNYkxjEgdi8XUzOoA3JTiSFMsFH7VQqIXjJmtDMgfU7beMQ
 1ulQ==
X-Gm-Message-State: AGi0PuZYxai1BKEjGDtSmsTkurEhejjsIT4fvFqhqnbE/ZkFYrs/EXhf
 BFKaxhjNUIl+lPq4xtJgCypg2Q==
X-Google-Smtp-Source: APiQypJ7I94NWf5qVdER06WU1+s/LCyUTU03msM+BLEEdT8t06/AWQHMkHiC71sCWlgXL4pKvRiNdw==
X-Received: by 2002:adf:db41:: with SMTP id f1mr21790458wrj.13.1587456078705; 
 Tue, 21 Apr 2020 01:01:18 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56])
 by smtp.gmail.com with ESMTPSA id
 x132sm2561552wmg.33.2020.04.21.01.01.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 01:01:18 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [RFC 8/8] arm64: dts: meson-khadas-vim3: add Khadas MCU nodes
Date: Tue, 21 Apr 2020 10:01:02 +0200
Message-Id: <20200421080102.22796-9-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200421080102.22796-1-narmstrong@baylibre.com>
References: <20200421080102.22796-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_010120_679732_75E918BC 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: linux-hwmon@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, nick@khadas.com,
 linux-amlogic@lists.infradead.org, art@khadas.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the Khadas MCU node with active FAN thermal nodes for all the
Khadas VIM3 variants.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-khadas-vim3.dtsi   | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
index 094ecf2222bb..3325e54ea690 100644
--- a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
@@ -183,6 +183,23 @@
 	hdmi-phandle = <&hdmi_tx>;
 };
 
+&cpu_thermal {
+	trips {
+		cpu_active: cpu-active {
+			temperature = <80000>; /* millicelsius */
+			hysteresis = <2000>; /* millicelsius */
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map {
+			trip = <&cpu_active>;
+			cooling-device = <&khadas_mcu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
 &ext_mdio {
 	external_phy: ethernet-phy@0 {
 		/* Realtek RTL8211F (0x001cc916) */
@@ -222,6 +239,12 @@
 	pinctrl-0 = <&i2c_ao_sck_pins>, <&i2c_ao_sda_pins>;
 	pinctrl-names = "default";
 
+	khadas_mcu: system-controller@18 {
+		compatible = "khadas,mcu";
+		reg = <0x18>;
+		#cooling-cells = <2>;
+	};
+
 	gpio_expander: gpio-controller@20 {
 		compatible = "ti,tca6408";
 		reg = <0x20>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
