Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CC61A487C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 18:29:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SefxekegwJ5Y1mpvgSdQjxN1NpKsgJyBdV3JCeuqaUE=; b=jahYb4JGWdmMob
	2bIFYy9KMdbkL/W+7FizFhYkpbjBS9jYbAnJxnPCcTwwdSArDiss7DMOzZw7JCRKwIvlWCdJg1CCU
	LD4zNqq8qOBtpDAl8GLF9WcDUIKWUGvGbzCiBF4SRK2Yz6wSTChTdb3+0nr06vt1rHlD1s1Bd+TUE
	V5EaLU4sTWd7MqowIt5cIwduHS1JZyvgskmn9zksuqz4xkulFIzlSfMIsQQ53X5rdngS2OhSIJvml
	4qyKIism+Prnh5LNEdqUg4OsJeE2fjVOrXDGToeBUg/6pDDOYSwlGADdXgYh/K2VEAcTXW6cJLnog
	VPtgYjnEpxk3OhPH/+MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMwWg-0005Cy-AZ; Fri, 10 Apr 2020 16:29:06 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMwVP-0003z0-Hj
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 16:27:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586536067; x=1618072067;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=js0FbCmxEhjJKEduX+K6uBUvUMXaYmimYj7qA6nb3f8=;
 b=VBY6t6bWebIuYzkb36RpDqayJeLixAiuKqWekHnQtjVC1pT8BtexbnQq
 kIoCtKI9xI82L6J2haAaH+UVyfBOR/ysXI3Le2WgJP+2fydy0wUkW5a4Z
 RGQKsEjvjgyQUWHOP3ycTsdJe0kzaqfwHP497UFz8z5wAIaqG7c8WwzZt
 1m83hyFqbHmDQfargXz9lv+9ZQMohjfVenVRk+BsMCdoIY7Qwri6Qim4/
 46L+5pw7QOeigRtEuFugk7X/9kPPOhkKz9Q39Tspnjy/S6sIqnGxjlgAl
 Jysj1ZY+uokAFMzSyuNaVJKrikQCP4U3Lx1YCgnFUQEUMCtxTDBBwu7kq w==;
IronPort-SDR: sVe3P91x0uf4YCbN8jYnZ34Zv2l0xLcA0W9UcwgbqYBPyJUEw3w51NmDWz/gP1MkjQKzq5o75L
 ZpCo+ifBM9mD7TsSIc11+x+prct/yUbBxuAMkL7rk5gzVlca5U/P3R54mZd3Tz5/E4IEnyVQ7M
 baW85UdaHo5JrevESOMwfaMiWFMNdHHMUY+TZmVm/3L/FrovjmBzqDThMmU9zXrDJymtTe3ryn
 x2XRyP4MQz9+xcZ9/+B7zrUGKM4abSHcx2kJNLT3bVOJa7vAsI0O/+6hDiljOdun6tJKDGbmwC
 M5g=
X-IronPort-AV: E=Sophos;i="5.72,367,1580799600"; d="scan'208";a="71870960"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Apr 2020 09:27:47 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 10 Apr 2020 09:27:46 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 10 Apr 2020 09:27:37 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <a.zummo@towertech.it>, <alexandre.belloni@bootlin.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <nicolas.ferre@microchip.com>,
 <ludovic.desroches@microchip.com>, <tglx@linutronix.de>,
 <jason@lakedaemon.net>, <maz@kernel.org>
Subject: [PATCH 4/5] ARM: dts: sam9x60: add rtt
Date: Fri, 10 Apr 2020 19:26:58 +0300
Message-ID: <1586536019-12348-5-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586536019-12348-1-git-send-email-claudiu.beznea@microchip.com>
References: <1586536019-12348-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_092747_689906_CA38D545 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add RTT.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 arch/arm/boot/dts/at91-sam9x60ek.dts | 5 +++++
 arch/arm/boot/dts/sam9x60.dtsi       | 7 +++++++
 2 files changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/at91-sam9x60ek.dts b/arch/arm/boot/dts/at91-sam9x60ek.dts
index ab3d2d9a420a..4020e79a958e 100644
--- a/arch/arm/boot/dts/at91-sam9x60ek.dts
+++ b/arch/arm/boot/dts/at91-sam9x60ek.dts
@@ -617,6 +617,11 @@
 	};
 };
 
+&rtt {
+	atmel,rtt-rtc-time-reg = <&gpbr 0x0>;
+	status = "okay";
+};
+
 &shutdown_controller {
 	atmel,shdwc-debouncer = <976>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/sam9x60.dtsi b/arch/arm/boot/dts/sam9x60.dtsi
index 326b39328b58..e1d8e3a4cb0b 100644
--- a/arch/arm/boot/dts/sam9x60.dtsi
+++ b/arch/arm/boot/dts/sam9x60.dtsi
@@ -661,6 +661,13 @@
 				status = "disabled";
 			};
 
+			rtt: rtt@fffffe20 {
+				compatible = "microchip,sam9x60-rtt";
+				reg = <0xfffffe20 0x20>;
+				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
+				clocks = <&clk32k 0>;
+			};
+
 			pit: timer@fffffe40 {
 				compatible = "atmel,at91sam9260-pit";
 				reg = <0xfffffe40 0x10>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
