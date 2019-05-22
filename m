Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8206425E9F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 09:21:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n9wTFt6NCr3ekD5wh5Y15742l2rppUhblkAAa2v/xLo=; b=tft9qm0q8JsMpN
	NA3Z0D0Iqqo2AqqGGxFkJGxKMEuBxGraZsACoYh7cBTR/zUUE/UXrW5lepfN3tDrC7pE7vtg6rVnx
	A19ctmIqtNzu+OxjRduYqhOZZzA2BVX1rJ5yry+CIesJwWIOhmEZyBNCETgCR8fpbKkZR1BXHwSRL
	gPeQj5KFTKMOluUHNvaVroB78cNdd0bQTWrMV3P+etDtfw+RodHk4hey9FRUbqKb1k3fpN+2mB2Vx
	TiwXyS8bb8B0raNjBXCOk8wEWyzBcam39G3rtIyGx+4ee97AEBAXtlUAYt1DU53/sueS1oYx+Oh6k
	/CH8ZcsxGGDe0irrtyDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTLZ9-0006nM-8T; Wed, 22 May 2019 07:21:35 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLYo-0006b8-Rv
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 07:21:16 +0000
Received: by mail-pg1-x543.google.com with SMTP id o11so660406pgm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 00:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kHSgRkcaDJjRSdqELdkMhZEbAHoVQntlFI0IvZxHj3E=;
 b=k5tgs8yggvJF5OSHf7bQhIAln+SBF+Tg3xuz4GJO96CgvDj/1RGgOW1SGICp1U1leY
 1HUBAfYy3otMIAtn7gD9kuKxovYH1YP+Ej56K5w7v57kbmW7lQUeYiecQUwsvUQJhy+e
 vlHsaaHlgB1qW+xeCwctGWMp0Al27Oy6dUQsQxCkcOYWvZdqbf1C7LndUuwSbc3nGbss
 N5BAzrRoQ/kJMylK/VsARNBUqZovu01oHYx4sAahMyfEOoVOrvGD2EvvngsIXXj/Gper
 mr4sduB4o1fhwrFiDj23V7VZaUAMo1h9xDRuO+9Qf3MJB/YVgRjZhcl9xTpEfZYh56kF
 o7sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kHSgRkcaDJjRSdqELdkMhZEbAHoVQntlFI0IvZxHj3E=;
 b=rYAOZ6tqiznKJNXfKpRUtHlyH0H5POSk/+iPAftqj28ShH4wNQKnh4YzNiRPnfuXp1
 1Q4jHsET6KUjw2xLckQQfxC40iL4klteDTP1/cTTBshJ9fl5/+pwYMYaEx+VWIPiqwoz
 1603bWSJCjywhq+Q7VsQUuiCjno0NEDIeeA2C/8VkpaKRQDPTaKkkSWxd6Wv7H0c05tY
 4ssJ4yapHilgnkJvDnuD4GUCF5wOfXVJqDKiLnDojhi73LPSpQYB6L9CQYIHiRRDa6Qp
 F+AJfYxvrRLDNh/Vbtmc1e54HjJlH9pY2MxD5X8X6LZVShHHHhiyJRAt2X3uZRY1TpUU
 xuxw==
X-Gm-Message-State: APjAAAUdKJFNRJsXAI44N85BZFQHRVHw6dLpFO1NpuirkZvQpJzQ1hIN
 HwPwGx24bZLCbz3JwGLZ6suZRwMkUpM=
X-Google-Smtp-Source: APXvYqwY/1cQhdKm4eoDKJUfcXRp7vhDSoXaJFpJ1OsO2RNViu3fuL+yZi8dla0AvbG8t2ACUvyyrw==
X-Received: by 2002:a63:4a4f:: with SMTP id j15mr87678043pgl.338.1558509673946; 
 Wed, 22 May 2019 00:21:13 -0700 (PDT)
Received: from localhost.lan (c-24-22-235-96.hsd1.wa.comcast.net.
 [24.22.235.96])
 by smtp.gmail.com with ESMTPSA id t5sm25307204pgn.80.2019.05.22.00.21.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 22 May 2019 00:21:12 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/2] ARM: dts: vf610-zii-dev: Add QSPI node
Date: Wed, 22 May 2019 00:20:52 -0700
Message-Id: <20190522072052.2829-2-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190522072052.2829-1-andrew.smirnov@gmail.com>
References: <20190522072052.2829-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_002114_900469_E5DC9657 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FREEMAIL_REPLY         From and body contain different freemails
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
Cc: Andrew Lunn <andrew@lunn.ch>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Both rev C and rev B of the board come with two QSPI-NOR chips
attached to the SoC. Add DT code describing all of this.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---

Changes since [v1]:

  - Small spelling fixes in comment block
  
[v1] lore.kernel.org/r/20190513035909.30460-2-andrew.smirnov@gmail.com

 arch/arm/boot/dts/vf610-zii-dev.dtsi | 48 ++++++++++++++++++++++++----
 1 file changed, 42 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/vf610-zii-dev.dtsi b/arch/arm/boot/dts/vf610-zii-dev.dtsi
index 1f2e65ae2bd6..a1b4ccee2a10 100644
--- a/arch/arm/boot/dts/vf610-zii-dev.dtsi
+++ b/arch/arm/boot/dts/vf610-zii-dev.dtsi
@@ -177,6 +177,36 @@
 	status = "okay";
 };
 
+&qspi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_qspi0>;
+	status = "okay";
+
+	/*
+	 * Attached MT25QL02 can go up to 90Mhz in DTR and 166 in STR
+	 * modes, so, spi-max-frequency is limited to 90MHz
+	 */
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		spi-max-frequency = <90000000>;
+		spi-rx-bus-width = <4>;
+		reg = <0>;
+		m25p,fast-read;
+	};
+
+	flash@2 {
+		compatible = "jedec,spi-nor";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		spi-max-frequency = <90000000>;
+		spi-rx-bus-width = <4>;
+		reg = <2>;
+		m25p,fast-read;
+	};
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart0>;
@@ -360,12 +390,18 @@
 
 	pinctrl_qspi0: qspi0grp {
 		fsl,pins = <
-			VF610_PAD_PTD7__QSPI0_B_QSCK	0x31c3
-			VF610_PAD_PTD8__QSPI0_B_CS0	0x31ff
-			VF610_PAD_PTD9__QSPI0_B_DATA3	0x31c3
-			VF610_PAD_PTD10__QSPI0_B_DATA2	0x31c3
-			VF610_PAD_PTD11__QSPI0_B_DATA1	0x31c3
-			VF610_PAD_PTD12__QSPI0_B_DATA0	0x31c3
+			VF610_PAD_PTD0__QSPI0_A_QSCK	0x38c2
+			VF610_PAD_PTD1__QSPI0_A_CS0	0x38c2
+			VF610_PAD_PTD2__QSPI0_A_DATA3	0x38c3
+			VF610_PAD_PTD3__QSPI0_A_DATA2	0x38c3
+			VF610_PAD_PTD4__QSPI0_A_DATA1	0x38c3
+			VF610_PAD_PTD5__QSPI0_A_DATA0	0x38c3
+			VF610_PAD_PTD7__QSPI0_B_QSCK	0x38c2
+			VF610_PAD_PTD8__QSPI0_B_CS0	0x38c2
+			VF610_PAD_PTD9__QSPI0_B_DATA3	0x38c3
+			VF610_PAD_PTD10__QSPI0_B_DATA2	0x38c3
+			VF610_PAD_PTD11__QSPI0_B_DATA1	0x38c3
+			VF610_PAD_PTD12__QSPI0_B_DATA0	0x38c3
 		>;
 	};
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
