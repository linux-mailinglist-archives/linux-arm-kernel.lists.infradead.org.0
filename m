Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8251BFF89
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 17:03:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HxqmvmnSII8BwupeYVU9WTgGuCsgr2JcAJ/OhWwilIA=; b=QjePeXbOBgFGyE
	i9f+ymXYYDSFXC+nJZd2ZmxDmdBlZwv8pYKXU3uGmOxzpN7PulJ7G8lPwKdRddeuLUAp8JTskzfoq
	pIQLywU3Q8u//FmFXew5V4GiXCJxaB3P4aJrz/ReBww0bFeLBboxqAjj+Bbef1SpdxqBV9hShCHr2
	OfDgeVi3kKdd49b8G6fj4nzkf2MrZarmNUyLBj8xvKSpyckgXglTQ8zASr81w/LJMyGf9pWaEw4w9
	YelLYB4AvJvp+7DGAdLruIEXqyRLyqROvbhht/qDbmfZBKPtBjg0+3Wg4ATxtrNEHIBzyXLxJjIYe
	JkdCTdMjL/KO7ZyPJtBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAig-0004C6-TZ; Thu, 30 Apr 2020 15:03:23 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAiI-0003yC-IQ
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 15:02:59 +0000
Received: by mail-lj1-x243.google.com with SMTP id f11so6881499ljp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 08:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8qj/RDHiu6i6xcKVHtA7buHXKDBF/vCldYMzMCaDv/o=;
 b=xeDBTIIObZzU9giOSJYlDWORVM2yftyzLknevhY56PC5b7RYsC/1OXiudcqN4SO+bv
 zUzPGrBZmIuWeI+bUw0bVFVsovKIKhCLqFnDBQzNZCkVX159bJp6yFki07+nFj4DXnnZ
 7v32ZbP1WrCzjIRk5xaFD7NPV4tf1y+n156+TiUiG8CigqE4VzpcYD+FIFA3kZFX6BBb
 0ThBWrbJTYv/pHS+ATsvPuBoktNMmjbS9pjgbLawFEvXRgDVJ2yVUOVIFz/oLJUgX7lE
 89jRCY5td/JJF6VQGmhrqA7tQ1Wf7kKK1QrNubpWHMo8YRiVK+dRXBfsrppn0ulrIGN0
 dq6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8qj/RDHiu6i6xcKVHtA7buHXKDBF/vCldYMzMCaDv/o=;
 b=GYw/Fro8GbR6w2itHtQA6T5AvCCtUyxO8DHVoVu2XI95M7HGsTsqFt94Y/5Hm/JyVE
 ein2y+nXKgqRJMVfJdGQKSwqRc4rTEdjf5L8tVxwCF5G6WBO2gPRMfW1sTwXfDmr7hOp
 RXhjrUt/LWJT4gVBZxLvyANgUQMnEqGmVBHx8wWRMv5noCI4D8D/3PsxkH0MvFL6086V
 +4n/GB6Nj0dDWbjKyXHeRzlAYHEsuJ1AvfM5595QBdKiW0wgWh+qz1yoVE5vWiKFa4Md
 hU6nWl4BE+ZV3KAYVlJKpSKNSud+OaoV5YX6Yz0cGyb8RmM490cOtIszIDM2on9XF8yg
 8BhA==
X-Gm-Message-State: AGi0PuZrYjQbZ3zAIkDnAGdYmkzHoBIibrG4VVWaJqnrxhkzvKVQ/e7y
 AT+XhD3VKROcPv+2GxoKC4e1zGBWHUE=
X-Google-Smtp-Source: APiQypI9axPJRMB7/1lVu6pHRguKi8SbKWCk6Cmf0ER5vZvrGmlhU4N1dVQuHARIuZjwyRI697YqkA==
X-Received: by 2002:a2e:9996:: with SMTP id w22mr2528291lji.59.1588258970340; 
 Thu, 30 Apr 2020 08:02:50 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-f3d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.243])
 by smtp.gmail.com with ESMTPSA id j22sm5305537lfg.96.2020.04.30.08.02.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 08:02:48 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] ARM: dts: ux500: samsung-golden: Add magnetometer
Date: Thu, 30 Apr 2020 17:02:44 +0200
Message-Id: <20200430150245.7935-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_080258_612113_5D046563 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Nick Reitemeyer <nick.reitemeyer@web.de>,
 Stephan Gerhold <stephan@gerhold.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nick Reitemeyer <nick.reitemeyer@web.de>

Add the ALPS magnetometer to the Golden phone.

Cc: Stephan Gerhold <stephan@gerhold.net>
Signed-off-by: Nick Reitemeyer <nick.reitemeyer@web.de>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../arm/boot/dts/ste-ux500-samsung-golden.dts | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm/boot/dts/ste-ux500-samsung-golden.dts b/arch/arm/boot/dts/ste-ux500-samsung-golden.dts
index b63d23b9cafa..0eed9e29875e 100644
--- a/arch/arm/boot/dts/ste-ux500-samsung-golden.dts
+++ b/arch/arm/boot/dts/ste-ux500-samsung-golden.dts
@@ -38,6 +38,26 @@ panel_reg: regulator-panel {
 		pinctrl-0 = <&panel_reg_default_mode>;
 	};
 
+	i2c-gpio-1 {
+		compatible = "i2c-gpio";
+		sda-gpios = <&gpio4 24 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
+		scl-gpios = <&gpio4 23 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c_gpio_1_default>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		magnetometer@c {
+			compatible = "alps,hscdtd008a";
+			reg = <0x0c>;
+
+			avdd-supply = <&ab8500_ldo_aux1_reg>;
+			dvdd-supply = <&ab8500_ldo_aux8_reg>;
+		};
+	};
+
 	soc {
 		/* External Micro SD card slot */
 		sdi0_per1@80126000 {
@@ -419,6 +439,16 @@ golden_cfg1 {
 		};
 	};
 
+	i2c-gpio-1 {
+		i2c_gpio_1_default: i2c_gpio_1 {
+			golden_cfg1 {
+				pins = "GPIO151",	/* COMP_SCL */
+				       "GPIO152";	/* COMP_SDA */
+				ste,config = <&gpio_in_nopull>;
+			};
+		};
+	};
+
 	sdi0 {
 		sd_level_translator_default: sd_level_translator_default {
 			golden_cfg1 {
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
