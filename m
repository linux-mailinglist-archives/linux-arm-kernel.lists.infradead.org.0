Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C387C0EE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:15:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iS/Yo1AKoMdjZliBofMg2r/kZV8AVVKd8qiacZQrS8g=; b=mhueuiixfwd8pEa6bEX2InQDFt
	N9nXcU2xROLgOIGAfARh5u8cmKWHQoeNrMVPlO+QDKEZA3JtRTD3X4eKJ0BhByO+sK4boOKaTnOdu
	l4yqj3pYTn+ka+JuCU5E+p0hq5MfSCz3x6bT7x90jXfOgXVr4w5esBhDxTeUVsuPii6WntfI9J5JM
	XAlh++phpqAP7BQHVX6OmGvtZyPbuvlS+tKK1bL4D7Z2Caf6lhNXWu0PoYhBb8rw+6mmDnx7DxBBa
	+jkTQ5WSstjzrrLzr7uwSHf0u+aTurcvQqqHY60+WLu4V5l0Aw9BicY9zHFhcGt6c7dfc4OLmTPy+
	79ayySQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnVo-0007U6-CI; Wed, 31 Jul 2019 12:15:20 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnUn-0005Pb-Je
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:14:21 +0000
Received: by mail-wr1-x442.google.com with SMTP id 31so69456596wrm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 05:14:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3CCOCjh2x1iQPGlZN3jIo89XnZKXDURAKwx788VT6WA=;
 b=konqN/tSWn5MnRNaHXWCAuACoPQk79+SeUDGVfuNUSYGAy6R13WPzZcwC/9viSy9ZC
 uiBR0TN5rc3akffhBkgRd7o78J2XiETILJxUH1Ctr4biflUhUKSphigwbyX08uSaQAKN
 SpV+/OeKHwEm119YhMP4Wrlmn6ueB2rRj0/JZ04ZBuuu7X92DNKTlFqO/o4/Y2F8MKJ/
 u5u1P/QG/2a8RNDnEBPFP9wLkR+hhRpLdM2IRvrQ1JhifwRh7xz4wt+ByVgkKH+VwDFL
 O6SdN9yX46kRY0aZ3UCVxKwh1pe+TDeIVmJ2/qQfDPfT35db9g4qTrHr4OKmx+4Owqn7
 wi8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3CCOCjh2x1iQPGlZN3jIo89XnZKXDURAKwx788VT6WA=;
 b=OsUbZsNCfr6+5rF40mZozfCLOUjV5FDrGdrQrTI87+KizILdEYCXRD8/yNW0KrgVfp
 LRMXbzxRmTyCZFcw/WXP2ET9bcOQ0ibgGwI4mWpXEaSOtBrw2IzDq5mc+ESa2qO2PZ8R
 3Txr7IiQ8SxslTY/2p34O8RDrBScfjwH/+aXDNtInXc22gNbLdWMnootK9Lc5fDIPDMB
 y82TVw14Lxup35xwCRVY3MjK6arsGyGyVDCTRN7Joi27NJgtssMiRr5X2umw2CU2jfpQ
 HuFbniNF7dtp+vQ34ucZxv8sBtGpnPgUZRSz7JMA6h9d9iILPYDwDNwY42pszEIG+KCE
 UDaQ==
X-Gm-Message-State: APjAAAXmPv2mAqwRaQc0fKc3dxcLe4TSYPqt/ypwjiJdH4xsmT378XYi
 SmCf+cObSdavJTSglenuQI3Yxg==
X-Google-Smtp-Source: APXvYqwrOzBQ/vplwh9sXRThCJ+igArUJU9XiT1VUFIdwNGAU5J1RHqwjHxq4gdna2QH4jynKhdhPw==
X-Received: by 2002:adf:f812:: with SMTP id s18mr5128298wrp.32.1564575256188; 
 Wed, 31 Jul 2019 05:14:16 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a64sm3613713wmf.1.2019.07.31.05.14.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 05:14:15 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: daniel.lezcano@linaro.org,
	khilman@baylibre.com
Subject: [PATCH 3/6] arm64: dts: amlogic: g12: add temperature sensor
Date: Wed, 31 Jul 2019 14:14:06 +0200
Message-Id: <20190731121409.17285-4-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190731121409.17285-1-glaroque@baylibre.com>
References: <20190731121409.17285-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_051417_651133_7BCB60DE 
X-CRM114-Status: UNSURE (   8.83  )
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
index 06e186ca41e3..e10aba5c9270 100644
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
+				#thermal-sensor-cells = <1>;
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
+				#thermal-sensor-cells = <1>;
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
