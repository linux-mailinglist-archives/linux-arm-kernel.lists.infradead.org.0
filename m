Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 884171AF763
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 07:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kVvUByojtLb4F1WRRYYAEiRJYUoFYGEgvioQih/mqNo=; b=lyyvvVFSUbl1afJ5iECqtSoHtT
	JxcPF0E69YLL6dGB1vivV2Ci0GhE0HFyuQyiWYJ2RkLtip2K6HGHveYoUWp2/cP1AJn+t9h7vdjKq
	vSoQZuH5nB/cuuOd1ze6jZa9u3U4JyRZabRUG5stmIxen5RQhbntMGTZGAQxElX4vp/VE7+zneX64
	KcAL1i7znjOQloyDlWHIgxcFPCCxmZ1TmSXYRBTLOuz8uJmgT5XdMh7+5ZB2O/+GMFf6Dhf0LOWSB
	YXT+QAAHTXg3eJUwRGytgJwSlOGfnyLPM7JwzCpwcHR4bpvnNpv6wpES+Ls3COQXybxfAEPO7Q94o
	AdDALtlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ2up-0001lN-9E; Sun, 19 Apr 2020 05:54:51 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ2te-0000hr-Nn; Sun, 19 Apr 2020 05:53:40 +0000
Received: by mail-lj1-x244.google.com with SMTP id y4so6354911ljn.7;
 Sat, 18 Apr 2020 22:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xN3miRWZzdsMsxxSHU7bXZvm24cCusdBgj9dMFbMgFE=;
 b=LLnuM0lokDj6WShWfzAm7IQ3C2Ry/rP7akF1AWqIr1yEymcuF4s/lrT+i9l7w5Og4N
 +dCqigzJ3ypQAXiJOYS+hpg63f926bI2Y9dxSo/zZmYSdDD9wmywtQw+Q7tsvag63jXb
 V+VhY3w0Qsb4/2MqNWJvYbcfe+Gkao2oPUtIZG5jrxuWGUzA/xZVh0a49eaQ+qAeA5EC
 0RxNFbVHQMAblEuTv+OLK8R3Ulr6MnGBj35OCOv8eB6ixelH8Li717QcTVYKY9q6nVl/
 qYT/x2jZA2eZ9rm4j1y1tK+nObSOinZt9mDUvL2GGoBO5NgGJRPM8kVcqM+DJTOoy4xG
 Ceqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xN3miRWZzdsMsxxSHU7bXZvm24cCusdBgj9dMFbMgFE=;
 b=j/M8b1rwnVleVyOhJKhre6HdXbcIfr+0Or38SJB4qo/6vKJWsUTHAXF0RHGD9d/75p
 abi/rPC7yy9+xy+J07/K4ORXcwpymEn98Ur8A9d1ZOCZXpyFDsCFr8KIq8XRqNrxPzwb
 niO69RUHbXK31phRB+hIKKwlBUP2WYHH+C9HuCGvq8aaCiS7rpj0OIgDeU0G7V4ES42R
 yZ3n8RNj3mPPcRrl5cJgCE6g3JKnzAuyJA4o6aVOyD4+OL/wo1q/+EFvafRfZkzsMbM9
 Ey8pekxzgtMtONRVSZBRfPwCa4C5cjCEkZizC282NRrYaBZ9ETBpWNizSSJRztw3xfem
 ypKw==
X-Gm-Message-State: AGi0PuYfdj+JdgFEJ5j6HmPFe8z2UVObiYHfSMfT58uUOWMbWMmufreX
 R3CQcGJAjMEqCgJF8dXlsW0=
X-Google-Smtp-Source: APiQypL9B78BpDHqzcdSxXcsbHU3s5I24MyU0cJ5Fjh+KgzcIB6iYgtHo9Bc5eUX8MkqBzw/Qqa6yA==
X-Received: by 2002:a2e:9456:: with SMTP id o22mr6510374ljh.94.1587275616923; 
 Sat, 18 Apr 2020 22:53:36 -0700 (PDT)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id h7sm3366247ljg.37.2020.04.18.22.53.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 22:53:36 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] arm64: dts: meson-g12b-gtking-pro: add initial device-tree
Date: Sun, 19 Apr 2020 05:53:22 +0000
Message-Id: <20200419055322.16138-5-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200419055322.16138-1-christianshewitt@gmail.com>
References: <20200419055322.16138-1-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_225338_779469_F09B0C44 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Shenzen AZW (Beelink) GT-King Pro is based on the Amlogic W400 reference
board with an S922X chip.

- 4GB LPDDR4 RAM
- 64GB eMMC storage
- 10/100/1000 Base-T Ethernet
- AP6356S Wireless (802.11 a/b/g/n/ac, BT 4.1)
- HDMI 2.1 video
- Analogue audio output
- 1x RS232 port
- 2x USB 2.0 port
- 2x USB 3.0 ports
- IR receiver
- 1x full-size (not micro) SD card slot
- 1x Power on/off button

The rear RS232 port is not currently supported in the device-tree.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/amlogic/Makefile          |  1 +
 .../dts/amlogic/meson-g12b-gtking-pro.dts     | 39 +++++++++++++++++++
 2 files changed, 40 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-gtking-pro.dts

diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
index 1fd28e84e808..0f377031cccb 100644
--- a/arch/arm64/boot/dts/amlogic/Makefile
+++ b/arch/arm64/boot/dts/amlogic/Makefile
@@ -4,6 +4,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-g12a-sei510.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12a-u200.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12a-x96-max.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-gtking.dtb
+dtb-$(CONFIG_ARCH_MESON) += meson-g12b-gtking-pro.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-a311d-khadas-vim3.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-s922x-khadas-vim3.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2.dtb
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-gtking-pro.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-gtking-pro.dts
new file mode 100644
index 000000000000..c2bc1ca5a136
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-gtking-pro.dts
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 BayLibre, SAS
+ * Author: Neil Armstrong <narmstrong@baylibre.com>
+ * Copyright (c) 2019 Christian Hewitt <christianshewitt@gmail.com>
+ */
+
+/dts-v1/;
+
+#include "meson-g12b-w400.dtsi"
+#include "meson-g12-audio-hdmi.dtsi"
+
+/ {
+	compatible = "azw,gtking", "amlogic,g12b";
+	model = "Beelink GT-King Pro";
+
+	gpio-keys-polled {
+		compatible = "gpio-keys-polled";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		poll-interval = <100>;
+
+		power-button {
+			label = "suspend";
+			linux,code = <KEY_POWER>;
+			gpios = <&gpio_ao GPIOAO_3 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		white {
+			label = "power:white";
+			gpios = <&gpio_ao GPIOAO_11 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
+	};
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
