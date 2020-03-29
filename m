Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D38196CB1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 12:50:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oC877Ydq70fzo7L2GjbpUqjzKYgoEZcN+IkgU7TIGAY=; b=R7ou372ZdLvGbM
	CrxhxO9n+51OOUdQS0PEmGyAiXi906mdc3V3jPtn8WAigtYjHZ0QSiXCd3/GH/QKt3QXkCyNK21+y
	la9Aqa5WSkdSkxy4ynjNFqcjnDyNtFiwUEk49VeDxx3wfV0qYCqI9FSLUu5f4Xfz/TzJ3+e5V32W3
	wzR4jpEk2D+qhmF2yvYXKTp/kUH2u92sccFl0vJrorKiZc//hTXQmUpxiC6mpr6Vo1txQH9LKOHGR
	cfmezIQmzo5Hghs+cF4KTMvJDjDL9nELIccbshNcEQPH3BFXLgdG6F85iaf4lpZK5fl+wm3a1Iuu+
	ildggmwH9vCqe8D9TG+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIVWO-0007Cn-68; Sun, 29 Mar 2020 10:50:28 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIVVQ-0005Ae-Tw
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 10:49:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:To:From:References:In-Reply-To
 :Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x4H/muhRkVbWTkqwR7Y2GiaMhYMGh6GNnyeZHrDRLfw=; b=FHFux9GQtyLyzll5CvT1Qwq4PJ
 4vDnaCDQ1sYTZYPOpGrAiD9v57Jf/YiusrDG8tu5kay4Gg00yZtx6JDbmkwPCXkTv96v13hCtF64p
 r8SfCwmzv+6SUeKTTzIZAeNfRxcmpRrSmsigqmRW1yHJssFIeQLGiruAikYVhyD1zieKsGFWBmMgI
 Dyg3SfbIOdmBZ1ygQnEsn3KgQybd6J42ATbtnYpBlhM5R/CIxtG+xzqZxwoLkKzHLAtya7i+zzhKN
 7RmLLl37illC7awXe+BR81AEDMx4e9i1rBwBfoxYyIeXguXXgaQdVyIM+ENREslR9xHr+V/fBg90T
 LP1YRugQ==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:53426 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jIVUZ-0004WB-Bd; Sun, 29 Mar 2020 11:48:35 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jIVUU-0005hk-AO; Sun, 29 Mar 2020 11:48:30 +0100
In-Reply-To: <20200329104549.GX25745@shell.armlinux.org.uk>
References: <20200329104549.GX25745@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, devicetree@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-pwm@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 "Uwe Kleine-Konig" <u.kleine-koenig@pengutronix.de>
Subject: [PATCH RFC 6/6] arm64: dts: clearfog-gt-8k: add cooling maps
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1jIVUU-0005hk-AO@rmk-PC.armlinux.org.uk>
Date: Sun, 29 Mar 2020 11:48:30 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_034929_101714_F57B9ACC 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 .../marvell/armada-8040-clearfog-gt-8k.dts    | 122 +++++++++++++++++-
 1 file changed, 121 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
index a514ae51ccbf..1e7b47affe26 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
@@ -31,8 +31,11 @@
 		ethernet2 = &cp1_eth2;
 	};
 
-	pwm {
+	fan: pwm {
 		compatible = "pwm-fan";
+		/* 20% steps */
+		cooling-levels = <0 51 102 153 204 255>;
+		#cooling-cells = <2>;
 		pwms = <&cp0_gpio2 16 40000>;
 	};
 
@@ -107,6 +110,123 @@
 	};
 };
 
+&ap_thermal_ic {
+	polling-delay = <1000>; /* milliseconds */
+	trips {
+		ap_active: trip-active {
+			temperature = <40000>; /* millicelsius */
+			hysteresis = <4000>; /* millicelsius */
+			type = "active";
+		};
+	};
+	cooling-maps {
+		map0 {
+			trip = <&ap_active>;
+			cooling-device = <&fan THERMAL_NO_LIMIT 4>;
+		};
+		map1 {
+			trip = <&ap_crit>;
+			cooling-device = <&fan 4 5>;
+		};
+	};
+};
+
+&cp0_thermal_ic {
+	polling-delay = <1000>; /* milliseconds */
+	trips {
+		cp0_active0: trip-active0 {
+			temperature = <40000>; /* millicelsius */
+			hysteresis = <2500>; /* millicelsius */
+			type = "active";
+		};
+		cp0_active1: trip-active1 {
+			temperature = <45000>; /* millicelsius */
+			hysteresis = <2500>; /* millicelsius */
+			type = "active";
+		};
+		cp0_active2: trip-active2 {
+			temperature = <50000>; /* millicelsius */
+			hysteresis = <2500>; /* millicelsius */
+			type = "active";
+		};
+		cp0_active3: trip-active3 {
+			temperature = <60000>; /* millicelsius */
+			hysteresis = <2500>; /* millicelsius */
+			type = "active";
+		};
+	};
+	cooling-maps {
+		map0 {
+			trip = <&cp0_active0>;
+			cooling-device = <&fan 0 1>;
+		};
+		map1 {
+			trip = <&cp0_active1>;
+			cooling-device = <&fan 1 2>;
+		};
+		map2 {
+			trip = <&cp0_active2>;
+			cooling-device = <&fan 2 3>;
+		};
+		map3 {
+			trip = <&cp0_active3>;
+			cooling-device = <&fan 3 4>;
+		};
+		map4 {
+			trip = <&cp0_crit>;
+			cooling-device = <&fan 4 5>;
+		};
+	};
+};
+
+&cp1_thermal_ic {
+	polling-delay = <1000>; /* milliseconds */
+	trips {
+		cp1_active0: trip-active0 {
+			temperature = <40000>; /* millicelsius */
+			hysteresis = <2500>; /* millicelsius */
+			type = "active";
+		};
+		cp1_active1: trip-active1 {
+			temperature = <45000>; /* millicelsius */
+			hysteresis = <2500>; /* millicelsius */
+			type = "active";
+		};
+		cp1_active2: trip-active2 {
+			temperature = <50000>; /* millicelsius */
+			hysteresis = <2500>; /* millicelsius */
+			type = "active";
+		};
+		cp1_active3: trip-active3 {
+			temperature = <60000>; /* millicelsius */
+			hysteresis = <2500>; /* millicelsius */
+			type = "active";
+		};
+	};
+	cooling-maps {
+		map0 {
+			trip = <&cp1_active0>;
+			cooling-device = <&fan 0 1>;
+		};
+		map1 {
+			trip = <&cp1_active1>;
+			cooling-device = <&fan 1 2>;
+		};
+		map2 {
+			trip = <&cp1_active2>;
+			cooling-device = <&fan 2 3>;
+		};
+		map3 {
+			trip = <&cp1_active3>;
+			cooling-device = <&fan 3 4>;
+		};
+		map4 {
+			trip = <&cp1_crit>;
+			cooling-device = <&fan 4 5>;
+		};
+	};
+};
+
 &uart0 {
 	status = "okay";
 	pinctrl-0 = <&uart0_pins>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
