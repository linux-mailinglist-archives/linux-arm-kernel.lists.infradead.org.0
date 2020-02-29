Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A85E0174646
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 11:44:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mQdWA2IL19lsvl4gjeRa8Wy0RTggjNv6zOpzxrAZWJ0=; b=BWoug0DvotW2lK
	Xw5N62JZD0O2LKYe7nkunELs27DtiAsY+3Ns1o0eZ59QkpQ+jI6W6dkc8hkZLzGnDmZ5mMQMWmcjM
	wNwQaZumg+naNpwyWkBss3fbCgDA1siMqXmBGAMUQ6qF2Epa41i06FRTdkkAJvBTTPasVyzr9i+5s
	xyUcqQdISr5Gifi3YNuBqJmIixZNfWgBU0LLnuwq5yEOafzp4LY8yJdH8naduiva2Il8p52Jb68QP
	fTB8zwpaD4VA8FTmVqs3wpsC4/7/GpVEVLg3438Wi7ofthmhSertm7XHwVNrrNvIXqb0BRzVIJJF7
	S7LuvaMeeRHKV2dDnfgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7zbJ-0007is-0U; Sat, 29 Feb 2020 10:44:05 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7zb7-0007iW-Ot
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 10:43:55 +0000
Received: by mail-qk1-x743.google.com with SMTP id 11so5594468qkd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Feb 2020 02:43:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=massaru-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cWLh3cGNIdtmam3OU5Dca7rYeIjQy825G41ll9rpNfc=;
 b=1EMgyUrZE/3eoHr19mlRudElQgXg3GyTeFmnUg2jKH/9lOE8A2LdAQFKDLQSULVbp8
 i32HSDCeXR27luc1aSM27riRvQvW9J7cFC3/LBQeONwnuyo/1iZtgA1rkF/oINU/L/SN
 ZBYth62kfJUwYsyOYMEMb84l36Ya8H2sw830g8Y58qM2U427A/8XhzdcPIAP1sYx4dWK
 QlvWDCfmRjYIXkCX9FU62uH7EF4Z/QCQSn+HtT324B42EpzQn1DwGuuq6WS8UpZeixE3
 Sz/CSMeJG7IS5Ys7v801rrhea6xGiQutfawP3um4149+cAG/BfBlR7lQ5eFXhxiP+2Po
 xNuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cWLh3cGNIdtmam3OU5Dca7rYeIjQy825G41ll9rpNfc=;
 b=KRyxK0VWBvYieXrvvoaT0jDinIcmfYA7RhelN1qc0nk594jSmZxgnQ+7TWfFztSH0c
 O0cRxQlgXkld67Ij83kh23ZsYRRPPZ1OkXvGH7NxuIr8mxW9Rj9qEVBVxAWD5GH4S34i
 1Ciy+/VnxYmILaApG50sVVeUjvoTtJiDg/uepDj3pyJLEWnCP9Pz66laUBcdAJUFDBKO
 h7/gApSfs0yWh8zRPdEREgiqBQcRTnZTeBV/PU7hSk3WXzK74mOaUDr3cP9ADTuE5b1D
 PtGkvCdJ2pM8Vamwrq3ZAWp7BdZ4ZRb/4f5F/TZjsjOsBQDaE3Ou4vh1SkBvyBGTK7Sn
 PfaA==
X-Gm-Message-State: APjAAAXMSNbRTWxP7Te0C+EPu/btwAc970iUltcFeCqbVpUeKOyrpME4
 j8Ro6s6LgKxfQMOWGt/WbvO7Xg==
X-Google-Smtp-Source: APXvYqzKSpOtCuGl13wtVyIl+A2uueLeUiyltEAJsnTd8/rg0gyfETvajHr+CRxRePNxGXOCXGTTHQ==
X-Received: by 2002:a37:9181:: with SMTP id t123mr8094431qkd.230.1582973031766; 
 Sat, 29 Feb 2020 02:43:51 -0800 (PST)
Received: from bbking.lan ([2804:14c:4a5:36c::cd2])
 by smtp.gmail.com with ESMTPSA id t6sm6737843qke.57.2020.02.29.02.43.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Feb 2020 02:43:51 -0800 (PST)
From: Vitor Massaru Iha <vitor@massaru.org>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: freescale: add gpio-fan/thermal support for
 Google i.MX 8MQ Phanbell
Date: Sat, 29 Feb 2020 07:43:47 -0300
Message-Id: <20200229104347.11126-1-vitor@massaru.org>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_024353_836795_B1536976 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, lkcamp@lists.libreplanetbr.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, robh+dt@kernel.org, linux-imx@nxp.com,
 marco.franchi@nxp.com, festevam@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It was based on Google Source Code for Coral Edge TPU Mendel release:
https://coral.googlesource.com/linux-imx/

It was tested on Coral Dev Board using this command:
  sudo stress --cpu 4 --timeout 3600

Signed-off-by: Vitor Massaru Iha <vitor@massaru.org>
---
 .../boot/dts/freescale/imx8mq-phanbell.dts    | 78 +++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  2 +-
 2 files changed, 79 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts b/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
index 3f2a489a4ad8..fb9f208d1e41 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
@@ -35,6 +35,14 @@
 		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 	};
+
+	fan: gpio_fan {
+		compatible = "gpio-fan";
+		gpio-fan,speed-map = <0 0 8600 1>;
+		gpios = <&gpio3 5 GPIO_ACTIVE_HIGH>;
+		#cooling-cells = <2>;
+		status = "okay";
+	};
 };
 
 &A53_0 {
@@ -374,3 +382,73 @@
 		>;
 	};
 };
+
+&tmu {
+	throttle-cfgs {
+		throttle_devfreq: devfreq {
+			throttle,max_state = <2>;
+			#cooling-cells = <2>;
+		};
+	};
+};
+
+&cpu_thermal {
+	trips {
+		cpu_alert0: trip0 {
+			temperature = <75000>;
+			hysteresis = <2000>;
+			type = "passive";
+		};
+
+		cpu_alert1: trip1 {
+			temperature = <80000>;
+			hysteresis = <2000>;
+			type = "passive";
+		};
+
+		cpu_alert2: trip2 {
+			temperature = <85000>;
+			hysteresis = <2000>;
+			type = "passive";
+		};
+
+		cpu_crit0: trip3 {
+			temperature = <90000>;
+			hysteresis = <2000>;
+			type = "critical";
+		};
+
+		fan_toggle0: trip4 {
+			temperature = <65000>;
+			hysteresis = <10000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map0 {
+			trip = <&cpu_alert0>;
+			cooling-device =
+			<&throttle_devfreq 0 1>, /* 1/2 GPU Clock */
+			<&A53_0 0 1>; /* Exclude highest OPP */
+		};
+
+		map1 {
+			trip = <&cpu_alert1>;
+			cooling-device =
+			<&A53_0 0 2>; /* Exclude two highest OPPs */
+		};
+
+		map2 {
+			trip = <&cpu_alert2>;
+			cooling-device =
+			<&throttle_devfreq 0 2>; /* Min GPU Clock, disable CPU2/3 */
+		};
+
+		map4 {
+			trip = <&fan_toggle0>;
+			cooling-device = <&fan 0 1>;
+		};
+	};
+};
+
diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 6a1e83922c71..a3bb17a6b9df 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -198,7 +198,7 @@
 	};
 
 	thermal-zones {
-		cpu-thermal {
+		cpu_thermal: cpu-thermal {
 			polling-delay-passive = <250>;
 			polling-delay = <2000>;
 			thermal-sensors = <&tmu 0>;
-- 
2.21.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
