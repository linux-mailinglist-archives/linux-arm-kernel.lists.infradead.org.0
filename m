Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C8496FB1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 04:41:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VvS/AiJO3Y0Ot7XW44MsrSchMB41mg4UkXu98IGdPqw=; b=dN5Kt/Io1xZYNJ0MQk3ffNzBSU
	vbqMVMwYiAQQ4zCXd1f8LTbzFbT/THWbWwlT3h/nbRNOu4u0Yx6ZVI+VhYLnsFgF8Ud/l7kCymHcY
	5a8HCIJDNtD3355dAxnO2jXq38vsv6DSTsiybYXstWjgshhf73emH3fu80LR9KLayNTbtBw/OnQ1B
	Ow6bJamtCvIeEgx6bPGHuBxDUDDN2mPnmSuGkyGZqNvcKL2x2Pdnz4Cn+DzOZgVMHVAVkJaM6moHj
	p5Cn6FNyyKTqR5dQ2E7vdEQyOwHJ0ogvSyZH/23AQW99CeMshKc6vWyPz9OnaRI8BJAEcRuhujikb
	7H2mRkFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0GZE-0006OW-E5; Wed, 21 Aug 2019 02:41:44 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0GYY-0005lT-8m
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 02:41:03 +0000
Received: by mail-pg1-x541.google.com with SMTP id d1so420504pgp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 19:41:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FU66GPVfZN8JgKU8kNjxX9IZj5LqUswOfS/8LbvL0Pw=;
 b=A5rdT4HD9QdBv87+nLJGRh4qoZfwExZ7d7ZztQcf2ZKRaiRdyqXHHJXaSccAcAD+No
 CComHfHMT4HUQv3AcJiqrQ85WV3rGXu+3Ll8/R1S3TyF3IHeQu/zrqRwo9W8Gr492bY7
 my/BBiH61RBO6atxwkyMWJsmPK4VPRFnsF9M0sgF2b4XQgtu/XM4WU8VJai4OB2Bf9a/
 +Yczmd/6rqB9uqyUL4wh+JjVLlBtC6Z/5OI/QccUC2ifooLXO61fQAutVeEYCrG48F4B
 BpQb6cwj2XKw8C4FJloGFrENz9O4cTOCxD0hImHOh0vSeFHX81pxlVwRY5KaF7dBfk+8
 VKcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FU66GPVfZN8JgKU8kNjxX9IZj5LqUswOfS/8LbvL0Pw=;
 b=L8YFZT0W/IydNq8k4//jrL7ySZmboFMSYTHyA6mWkkGDKBJlA/93p7hutr91a9omTt
 mR7UYm+peKdT5xF3vfjQpPx5XsijB4nYZ/mhFLPbFheQ9UAl+Eb9zeSytC/2uLPW1zHN
 z9xZNChGy28WaCLMDzZTF0F+gaKOYB4CqjRmDpFgOxeZq6UuVCaLCmDACitYOFYO9MTF
 2ZA1RQRhI3/aNJ1wQciJXVXxUe6DFo1nX8Dp07kRx0RCNb1xzWLdO3i1RFVynVlwi7l6
 K4wzwXX1bOutpwMSRvIQ9uaFfebXzSTNtcZmViQnrK4Q7br0KfbvtwFdcPL5AaYsU6P3
 d+Iw==
X-Gm-Message-State: APjAAAXz93rKJZxG21hrOarOxCzKWz58xWHMR7f6AzxXdTneBep/0VEr
 betVq9Jrti/PYIIvfgKkMioU
X-Google-Smtp-Source: APXvYqxVzXlQu5kw0on7UvilHuuHCQPl50gHFxAu4BtsJa39ikcJ3wjnIh+noEXMSnVIabT3uW6Caw==
X-Received: by 2002:a63:10a:: with SMTP id 10mr27537012pgb.281.1566355261613; 
 Tue, 20 Aug 2019 19:41:01 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7101:175:ddd7:6c31:ebc7:37e8])
 by smtp.gmail.com with ESMTPSA id
 b126sm26091608pfa.177.2019.08.20.19.40.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 19:41:01 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH v2 4/7] arm64: dts: actions: Add uSD and eMMC support for
 Bubblegum96
Date: Wed, 21 Aug 2019 08:10:11 +0530
Message-Id: <20190821024014.14070-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190821024014.14070-1-manivannan.sadhasivam@linaro.org>
References: <20190821024014.14070-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_194102_365171_0ACFFC38 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 .../boot/dts/actions/s900-bubblegum-96.dts    | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts b/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts
index 732daaa6e9d3..92376b71cb8f 100644
--- a/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts
+++ b/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts
@@ -12,6 +12,9 @@
 	model = "Bubblegum-96";
 
 	aliases {
+		mmc0 = &mmc0;
+		mmc1 = &mmc1;
+		mmc2 = &mmc2;
 		serial5 = &uart5;
 	};
 
@@ -23,6 +26,22 @@
 		device_type = "memory";
 		reg = <0x0 0x0 0x0 0x80000000>;
 	};
+
+	vcc_3v1: vcc-3v1 {
+		compatible = "regulator-fixed";
+		regulator-name = "fixed-3.1V";
+		regulator-min-microvolt = <3100000>;
+		regulator-max-microvolt = <3100000>;
+		regulator-always-on;
+	};
+
+	sd_vcc: sd-vcc {
+		compatible = "regulator-fixed";
+		regulator-name = "fixed-3.1V";
+		regulator-min-microvolt = <3100000>;
+		regulator-max-microvolt = <3100000>;
+		regulator-always-on;
+	};
 };
 
 &i2c0 {
@@ -241,6 +260,47 @@
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
+/* uSD */
+&mmc0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc0_default>;
+	no-sdio;
+	no-mmc;
+	no-1-8-v;
+	cd-gpios = <&pinctrl 120 GPIO_ACTIVE_LOW>;
+	bus-width = <4>;
+	vmmc-supply = <&sd_vcc>;
+	vqmmc-supply = <&sd_vcc>;
+};
+
+/* eMMC */
+&mmc2 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc2_default>;
+	no-sdio;
+	no-sd;
+	non-removable;
+	bus-width = <8>;
+	vmmc-supply = <&vcc_3v1>;
 };
 
 &timer {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
