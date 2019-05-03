Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E9512BD7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 12:48:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OKp4NGhFnmX5YzFqWzfi8wkLsY7L9ENJo4lOOXZdnHo=; b=ZjA0DN3jcvy1Lm
	L/anAUbiRdmWI4h275LQlYNrYRKTrVQCjLPT2Xkvftjli+JNGb9NI6JSM+CllT2ZCeGewQWDuED3k
	3/xKxr4aQ1cVAVIx4Me/4B7aMlErg9edOhutymlsIz3j+ddj2aHZqfJAsLBEcZtceJWrSO9MEEmeE
	GQcq080TLHlGkY8lQ3D6oIS+jLim9dNAbnrxK7TMSOnMA6yXACWK0bZ+Bk5WSGIBycsTJUqKZVPw0
	naE+AZkBdwhdm2pAwz56agefm+Y3dJR/6yOr9O33sMg2d8djJBZuyoTzBHK+4y/Wak7arwShWuQUt
	FSGUfASZPVn8FRntbhXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMVjy-0001DX-6K; Fri, 03 May 2019 10:48:30 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMVjk-00015c-VH
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 10:48:19 +0000
Received: by mail-pl1-x641.google.com with SMTP id d9so2535238pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 03:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=flSGHj+m/Po54A3Jce083UtgM5nOT0MXPFx0OmO6SII=;
 b=mk7OvXbbGeUyH1WZq1/qThCy74/8Yv5d77I2f0XPsCx2ixEpJoQHgWdflcsIBWrL7x
 lBoYeWtcgGcN7Q1y5s9StOO688lTeBcW6zNlQRJI6DFbXfK7Qyp+IwHlCqp1BOgdrTar
 /sFRsnWDltDB8yucgBEb9DQYppUgV/D3205T8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=flSGHj+m/Po54A3Jce083UtgM5nOT0MXPFx0OmO6SII=;
 b=dqMaNRCrgdGgIUL9rSnEQ1Rl5Gy4lihLTdf4luNiDnYiZr+WMKn1cZmZGDMEV7OKVW
 ylRo/K1SoYvHhzClzDcWVn1IN8Oua1//NYV4Wru6KQz8Au1OY4ftpQgxwQFr2S5j68oq
 EoT5Pl52buPYQop5VTqnttVnXWFTBvPQVfKS0E/rSnS7jKeNS6BLb3Ypu7MfY6KWZU5B
 k6PKBvFPL1oqTleYeexHw/4PUB2x3euKBbm2GrPvWG8AHWu91V7Ru6Rc/SyfeTM3KCdQ
 mjQ1wHNu0SlyjQTNumU9mO2Qa08TbDnIgcu+NNpWrM7NWXPPLq4p1xzRw0u+9eczd+Yv
 btXA==
X-Gm-Message-State: APjAAAUCyN37u26pxRr7r0Dd0qOXIjXRk1e8xiJX1zvj1cC9ZxMB2l+s
 OjzRWsR1smGXFQjDCdGnXnTaCQ==
X-Google-Smtp-Source: APXvYqwsEO5di+FruExa3qzMpSy+Ts+JTNBFka/GPxR6G61ZTiT2ZDzTv73v6LBbLEX9l+AaHs/1ZA==
X-Received: by 2002:a17:902:22f:: with SMTP id
 44mr9254610plc.175.1556880496050; 
 Fri, 03 May 2019 03:48:16 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.165])
 by smtp.gmail.com with ESMTPSA id k9sm1965479pga.22.2019.05.03.03.48.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 03:48:15 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v5 2/3] arm64: dts: allwinner: a64-amarula-relic: Add GT5663
 CTP node
Date: Fri,  3 May 2019 16:17:52 +0530
Message-Id: <20190503104753.27562-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190503104753.27562-1-jagan@amarulasolutions.com>
References: <20190503104753.27562-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_034817_292430_0250E9D2 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Jagan Teki <jagan@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add Goodix GT5663 capacitive touch controller node on
Amarula A64-Relic board.

The CTP connected to board with,
- SDA, SCK from i2c1
- GPIO-LD0 as AVDD28 supply
- PH4 gpio as interrupt pin
- PH8 gpio as reset pin
- X axis is inverted
- Y axis is inverted

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v5:
- none
Changes for v4:
- drop i2c1 pinctrl
Changes for v3:
- Use 2.8v for reg_ldo_io0
Changes for v2:
- drop i2c1, bias-pull-up

 .../allwinner/sun50i-a64-amarula-relic.dts    | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts
index c41131c03231..5634245d11db 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts
@@ -97,6 +97,22 @@
 	bias-pull-up;
 };
 
+&i2c1 {
+	status = "okay";
+
+	touchscreen@5d {
+		compatible = "goodix,gt5663";
+		reg = <0x5d>;
+		AVDD28-supply = <&reg_ldo_io0>;			/* VCC-CTP: GPIO0-LDO */
+		interrupt-parent = <&pio>;
+		interrupts = <7 4 IRQ_TYPE_EDGE_FALLING>;
+		irq-gpios = <&pio 7 4 GPIO_ACTIVE_HIGH>;	/* CTP-INT: PH4 */
+		reset-gpios = <&pio 7 8 GPIO_ACTIVE_HIGH>;	/* CTP-RST: PH8 */
+		touchscreen-inverted-x;
+		touchscreen-inverted-y;
+	};
+};
+
 &mmc1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&mmc1_pins>;
@@ -260,6 +276,13 @@
 	regulator-name = "vdd-cpus";
 };
 
+&reg_ldo_io0 {
+	regulator-min-microvolt = <2800000>;
+	regulator-max-microvolt = <2800000>;
+	regulator-name = "vcc-ctp";
+	status = "okay";
+};
+
 &reg_rtc_ldo {
 	regulator-name = "vcc-rtc";
 };
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
