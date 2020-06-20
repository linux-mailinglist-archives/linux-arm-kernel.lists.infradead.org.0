Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99781202513
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 18:11:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQ7Va7J9D0OFNaqAY+CpM7HQC3r6zXH1lUqlWH9lQoM=; b=Dz5RjsTSOG0YTK
	O+VccwzUdOhDaEDobfPb042uhDEfACRxSMsBI87gJ2zSD9gXFr4DyOOG9X8SsvvMSTNNwhk5KHYVm
	yE+sP5b/7BorXaF61HsEzEm7Ol4DsSgun+5OzBtKsRU3ND/eaynOY45rUgIzG/BtaDyt8itH9WjGV
	UclTfAGFmq6Fe+UIzMMOZRmx+Go981F5ynWUbHA+zqbIxhTcA7inKeeiqB1YRbmbzc10ZSNOV+zTO
	+f63MQK+jOJHRbriaL1JMUGudtKNdlxzxFwPj/1F512Xds97hOGrVHa2afZ3Hq7lJs4oNUOEwolhL
	NbxiP2gLBL38nKch3Znw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmg54-00081j-5l; Sat, 20 Jun 2020 16:10:58 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmg4U-0007j3-F4; Sat, 20 Jun 2020 16:10:23 +0000
Received: by mail-ej1-x643.google.com with SMTP id l12so13539006ejn.10;
 Sat, 20 Jun 2020 09:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q5uydCkX5XMg6Vg2kQWobypgbsZstWsBiCC6Cgbk3+Q=;
 b=nhsvE+A3vifL+fnfwmTAJC8VIevzUqbZu6HqFjlME6kxed/Iun3chdMWSjKgmdfHmD
 YaVWeVYmQEHxkWTtD50a5JbmMKrhOf7SD9XuXi/0pswqSIzxbVwwWfOZGHpuryIAiI5x
 vgnuMO2okuU1aJaQ/dNKzTznQHtypz2QJOAppTJ2I0FRkMjzsv7v1xQcxnovdfxyIy0P
 1qRUGHZUHSYcTpBO1BU16WdrMlDxEOJs4hAqUaonlzP7CVwON+I/vbJOTRzYdW2are0L
 8pp7R/26C+hYCujzTTf5Ke0If01xhYYL057VUgmrA26vlhuUlnritGLVnMAItXZAyT3F
 wfMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q5uydCkX5XMg6Vg2kQWobypgbsZstWsBiCC6Cgbk3+Q=;
 b=g1cl4khncttTn/syA7j8RkrGkErNld+ivZxao5EkdgGGu7N1/I04sPNihZ9dwrx1ky
 WOKkUS0fOJd7eDgh4qxTjCjHbk4LEgxCxeYTi237A7VnV/psVWTIGKx62X6yctKl+VvP
 P4xddudctjo1jKMIjaW48zkCIyFv+6QjibzRqkAz+QNvH5WdowVzxbOYmdE4lXZr1mUa
 iPNwbqYx1/fC2FV82sbMiRJaoz88ablLiOc2YPT+MIHJa4+yLAVyOPmxdbHEgV2mYPIp
 vc8fBEZVHfGn1g3+7/RTcyKCJEJ4bx+MurSQtYwAIZnaO9ihvY5xG6KKniPkNhlXQui5
 LzPw==
X-Gm-Message-State: AOAM533rTcBBqEDd0vEd4sBAFbbG2gDiQkS4mrzJv731+BVUvkNhznvU
 Ef4D4f89i/8iVpNh4bwK+vsPAfvn
X-Google-Smtp-Source: ABdhPJw2c5P/OzzIL4pa9igoKMX0/q7FSISR355h6IRga3M61m7Z2yv00+t+VDMnuTdffGkN1LigFg==
X-Received: by 2002:a17:906:1d5b:: with SMTP id
 o27mr8371956ejh.344.1592669420020; 
 Sat, 20 Jun 2020 09:10:20 -0700 (PDT)
Received: from localhost.localdomain
 (p200300f1371df700428d5cfffeb99db8.dip0.t-ipconnect.de.
 [2003:f1:371d:f700:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id a62sm8033207edf.38.2020.06.20.09.10.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Jun 2020 09:10:19 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 1/3] ARM: dts: meson8: add power domain controller
Date: Sat, 20 Jun 2020 18:10:08 +0200
Message-Id: <20200620161010.23171-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200620161010.23171-1-martin.blumenstingl@googlemail.com>
References: <20200620161010.23171-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_091022_503261_15FFF6D8 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Meson8 SoCs have a power domain controller which can turn on/off
various register areas (such as: Ethernet, VPU, etc.).
Add the main "pwrc" controller and configure the Ethernet power domain.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/boot/dts/meson8.dtsi b/arch/arm/boot/dts/meson8.dtsi
index a4ab8b96d0eb..3d0ab2ac5332 100644
--- a/arch/arm/boot/dts/meson8.dtsi
+++ b/arch/arm/boot/dts/meson8.dtsi
@@ -6,6 +6,7 @@
 #include <dt-bindings/clock/meson8-ddr-clkc.h>
 #include <dt-bindings/clock/meson8b-clkc.h>
 #include <dt-bindings/gpio/meson8-gpio.h>
+#include <dt-bindings/power/meson8-power.h>
 #include <dt-bindings/reset/amlogic,meson8b-clkc-reset.h>
 #include <dt-bindings/reset/amlogic,meson8b-reset.h>
 #include "meson.dtsi"
@@ -452,6 +453,8 @@ temperature_calib: calib@1f4 {
 &ethmac {
 	clocks = <&clkc CLKID_ETH>;
 	clock-names = "stmmaceth";
+
+	power-domains = <&pwrc PWRC_MESON8_ETHERNET_MEM_ID>;
 };
 
 &gpio_intc {
@@ -467,6 +470,16 @@ clkc: clock-controller {
 		#clock-cells = <1>;
 		#reset-cells = <1>;
 	};
+
+	pwrc: power-controller {
+		compatible = "amlogic,meson8-pwrc";
+		#power-domain-cells = <1>;
+		amlogic,ao-sysctrl = <&pmu>;
+		clocks = <&clkc CLKID_VPU>;
+		clock-names = "vpu";
+		assigned-clocks = <&clkc CLKID_VPU>;
+		assigned-clock-rates = <364285714>;
+	};
 };
 
 &hwrng {
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
