Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 501C03A1C6
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 21:55:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uYt7emLVul3AKIwr3oF4VCgWXPqNmZFGSbiR4a0r/RU=; b=tmg1rUNJgTmHeE8mafTBu12djw
	inoAN9MbnGyp7B2h3CtQihABENGSB7mr9XHeyWLVT8TETDGTdD7DBwFgJEmUR/kyiKh9MKAty+pkC
	dgcmNR6+4KYkJqijnn5SLJ6//oE25YxCGXwphAu5vck+eW0gSi36Wzm5jcxk9MbCO+r4JGLxtTuUR
	WykRc3R0YqQ4RX3wHtPWFvN3r18GY8J4NXgTbDtc7yGQobkapwWh93TTSdRlVt4RtWTWoAZ6ljvxV
	BJwxG9Iu+hJLji12PZh4ItzXosNGtjGhiWS1v0Ztr9TfwK856AAuGaF4dGvAZ//QGAx+QZcLgiJVe
	a0jlupHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZhQm-0008Qv-OA; Sat, 08 Jun 2019 19:55:12 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZhPk-0007oR-JE
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 19:54:11 +0000
Received: by mail-pf1-x444.google.com with SMTP id u17so3027405pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Jun 2019 12:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XpMZFRZzyjrvKa6MiNS3nj5D2wr/GZuHVNnpChhgBew=;
 b=tnwLNtQSWIcN1GWkYya6TEicR1plRzZSpEhodiIXgdFONkHoZSMV6CN56vul1iLXg6
 aatOECCTQ6kM4mlLc+7OpK023jqNzPi02mnXhH4qTeMHyVQdNGnMcFCEBwxmZS5l9EMN
 Z5ccLf/J2Y8D7jBYEdhO4HUXAVpkdxkXgH9qBCfRwSMqTbwt8JfQeWBKNqZZudc94g/L
 nSm7oMQL/qqR5gWYXJ7ePsO98hxehnFpGvWiNobjsuruf082YMIlNnwas+njWmBf+u3C
 scAEpJvz9Lg00u7aIk5PxfhqN+uzXL+ARfOR3MRotfO0Ouc+s96M/XJp1Vf1dMO58A0G
 u3dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XpMZFRZzyjrvKa6MiNS3nj5D2wr/GZuHVNnpChhgBew=;
 b=GGjgU9zjFhuVW5B8ZUMUiOwVAVIIWXIz9EEhWWvAsHV9zVBCkkQOozoAOS7YEztoUO
 J/Eomd/Q3+G4vqZBaz4UL4CsufW0jvpi70mhBF0Z5wfbpZ9T1uEujtoQg8jLkefEV5Fi
 jg44YHx51n5Ffqxqb/TYCTRYlEPbHQZlHdomIH9Kun216/OOUlojGbokmE+0jjQPSp7k
 CjmGt5RETeMwS5cwTZ4oU/xQByMTtvPmtPToBkB2L9Tj3o83Ge4V1emi1ORn4W9LhYqo
 Wy7zDSpl4LWaq73JlwN2lm/0sdunu7wBiciOE0Xi240L0h4CS9N/phxpyVhEkLD89fj1
 BYrw==
X-Gm-Message-State: APjAAAXeLp2UOZqegzezFIiQzkTrJTmdOYhVl/Cww2hMTylpcwsATF0D
 Wy7nUtq8yzSIg4Fth7HHpU0v
X-Google-Smtp-Source: APXvYqzv6fejPrj7wJ/aQHxyLJUur6M3xTxJLG3IDcac6YVSTdsseFEOFSZ14VVA2do49rHCjgbMag==
X-Received: by 2002:a63:84c1:: with SMTP id k184mr6683151pgd.7.1560023647269; 
 Sat, 08 Jun 2019 12:54:07 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7185:fba9:ec1e:ad07:23ac:d3ee])
 by smtp.gmail.com with ESMTPSA id b35sm6034377pjc.15.2019.06.08.12.53.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Jun 2019 12:54:06 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH 4/7] arm64: dts: actions: Add uSD and eMMC support for
 Bubblegum96
Date: Sun,  9 Jun 2019 01:23:14 +0530
Message-Id: <20190608195317.6336-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190608195317.6336-1-manivannan.sadhasivam@linaro.org>
References: <20190608195317.6336-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_125408_737123_6FF55D46 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linus.walleij@linaro.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, thomas.liau@actions-semi.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add uSD and eMMC support for Bubblegum96 board based on Actions Semi
Owl SoC. SD0 is connected to uSD slot and SD2 is connected to eMMC.
Since there is no PMIC support added yet, fixed regulator has been
used as a regulator node.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../boot/dts/actions/s900-bubblegum-96.dts    | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts b/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts
index 732daaa6e9d3..3b596d72de25 100644
--- a/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts
+++ b/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts
@@ -13,6 +13,9 @@
 
 	aliases {
 		serial5 = &uart5;
+		mmc0 = &mmc0;
+		mmc1 = &mmc1;
+		mmc2 = &mmc2;
 	};
 
 	chosen {
@@ -23,6 +26,14 @@
 		device_type = "memory";
 		reg = <0x0 0x0 0x0 0x80000000>;
 	};
+
+	reg_3p1v: regulator-3p1v {
+		compatible = "regulator-fixed";
+		regulator-name = "fixed-3.1V";
+		regulator-min-microvolt = <3100000>;
+		regulator-max-microvolt = <3100000>;
+		regulator-always-on;
+	};
 };
 
 &i2c0 {
@@ -241,6 +252,45 @@
 			bias-pull-up;
 		};
 	};
+
+	mmc0_default: mmc0_default {
+		pinmux {
+			groups = "sd0_d0_mfp", "sd0_d1_mfp", "sd0_d2_d3_mfp",
+				 "sd0_cmd_mfp", "sd0_clk_mfp";
+			function = "sd0";
+		};
+	};
+
+	mmc2_default: mmc2_default {
+		pinmux {
+			groups = "nand0_d0_ceb3_mfp";
+			function = "sd2";
+		};
+	};
+};
+
+&mmc0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc0_default>;
+	no-sdio;
+	no-mmc;
+	no-1-8-v;
+	cd-gpios = <&pinctrl 120 GPIO_ACTIVE_LOW>;
+	bus-width = <4>;
+	vmmc-supply = <&reg_3p1v>;
+	vqmmc-supply = <&reg_3p1v>;
+};
+
+&mmc2 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc2_default>;
+	no-sdio;
+	no-sd;
+	non-removable;
+	bus-width = <8>;
+	vmmc-supply = <&reg_3p1v>;
 };
 
 &timer {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
