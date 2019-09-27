Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 984A1C0B9C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 20:45:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QdsJfTQjM7JepgTVLzgiRXFbaLrQ7P7dgHyPlGbBsFg=; b=AcQUoPimvbih0WjChMaDW+T+70
	zYTBddvlJTBxfnvrNLhLprqVgBURh0NMUJ9Vtb4ZlkpwAywTae32UiK4FTVRyBP6wAzQkvOjjzKry
	WGnlVQ/pMTB2ZLJZ67RWlX0QXGEKWssXDVSCAKgGLxW2FUOG7osi4Wa8XRP0AEx8iEaTC/JwiqUBF
	jr8ESwi0sFWtBupoQW1vu3lqLEST43vc1p0GWL1FQ+QYD2bL3pEeSVyxqC7iTGT2UTu1Fh4XB9lOT
	tqDiUtxsJR+MI/zk54W/keYqUJ1ZDzbv94l/Wk9eAj7qHSaZAOLhTYZveppe+2+1yb408Jt83fl+U
	sIpgQNYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDvF1-0003Gl-KM; Fri, 27 Sep 2019 18:45:19 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDvDk-0000Pi-7O
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 18:44:04 +0000
Received: by mail-wr1-x442.google.com with SMTP id b9so4350108wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 11:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=uFRkuroOBs+uKwTPCimySu+UhJ9t5OAbbzvyFqNj3Aw=;
 b=MikSGlZe0uqOkaubiy1RQV05Ryu/fAimSnGuIod6zI/bkIxwYw871JO1JwE51iYQm+
 4uj9azF9xbXtpyJHchneV3CO3wKJhdY0T9rqVgqLqpeMXKIj/L//AjglSvJtOTd5vEL4
 JeAGn/m7kMiX5bLtvKI3izvMAcPnpQFpuwUZIJZnK7YRsxmwaQ5NMDxjXC2xuXlZNh8u
 hON3DP8hubHBv9LVkP07y1Zg5PE6j6IIGKm0nh/Skxb6DcL0YHKdpbG3GcF1pPNEhUBQ
 IOetegYVw+Oldn5XB6Y4Ve53PBYtSEpB7wU8CO8pmuGh/UZa+NKEh+fQ3t/1QSedFd7I
 dqJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=uFRkuroOBs+uKwTPCimySu+UhJ9t5OAbbzvyFqNj3Aw=;
 b=b7zcYUwi0Lk7qW7LzfSWdiOSJdmgPpzMD8l8JAkmbMqU1UynYAnkmdplg74R8UeAlx
 Rqhz8z+/ULh4fqysHKwdOj06LEM9z6xTbAJ1Ff75uW3/MQrDCIme4w7sqMizEbOytynb
 3ecEJRSSIdd4NObvoJYou7HLbCkyo9R/bnBSDK/Y3VU4pXOoqy4xH8YfrCaT96zGjCQ7
 NPP8ixgXSdyr1hIB/zJVms00ExlnvVTbH/T+S2XxjA+lN9aEIcO1OYlDD3/JYwX7LsjZ
 UqM8h3NpEIkJYXs3vlg4xFrmQBBU0sOilV/sE+7jzalEHpO1ltzwZVe5vcGJ9WTgdupr
 R5iQ==
X-Gm-Message-State: APjAAAW/M6lxi2pXRycEDy9jleU44EXNz0h63b9jMEaJitkVypCg+lK0
 fRy6RJU+cj9U0YixyJPd6+4u+w==
X-Google-Smtp-Source: APXvYqywejFLNmLubXQ+lIajg77P8IR0wPRSPIhJuiMQsC6g7ImkqPZHkFpB+MQ5Po1oPHBJeOnLsA==
X-Received: by 2002:adf:f081:: with SMTP id n1mr4402788wro.273.1569609838776; 
 Fri, 27 Sep 2019 11:43:58 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.home
 ([2a01:cb1d:6e7:d500:82a9:347a:43f3:d2ca])
 by smtp.gmail.com with ESMTPSA id r13sm6246272wrn.0.2019.09.27.11.43.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 11:43:58 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
 daniel.lezcano@linaro.org
Subject: [PATCH v6 3/7] arm64: dts: amlogic: g12: add temperature sensor
Date: Fri, 27 Sep 2019 20:43:48 +0200
Message-Id: <20190927184352.28759-4-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190927184352.28759-1-glaroque@baylibre.com>
References: <20190927184352.28759-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_114400_291234_D29DB91C 
X-CRM114-Status: UNSURE (   8.34  )
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

Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
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
