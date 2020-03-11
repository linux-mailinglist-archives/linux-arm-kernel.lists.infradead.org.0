Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1DEC181828
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:35:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2gXsxxR3cWWD9XDbwem+X3kGDDzXP1XzZ+AwWPYqPtg=; b=KrBMJQ/wLILAl3
	gvp7YlDItL9+0EN+5ok2sqCRLh5nCVyt8TpTrb8Ms+Fgju6QJdK/HYNOViBc/36RjMmNU2Wj9nfVN
	uTfpAcixHYPRWniRjn+4yQLERBq42l9lu3db/w/rG/Wyfoct176kCwKFYEV3U44lCXNjGwXnQXO76
	r364M62OsKQwdIhRx5w4m8tbtAf9LjtBCn71gaHHK1yQMfZAcSCQkGmUV/bUP+oU+OhSATzvnZbEt
	1TviVup62ZL7Fl+uNI6rE0ZS1/1Cdok/Ccl2fRQbhmMYN7b/+WQXuo9ScXucgwLEh8zuOjBWc7/Fj
	N4veRG236uc0MuOuulTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0aL-00036F-Os; Wed, 11 Mar 2020 12:35:41 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0Zo-0002b1-Ia
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:35:10 +0000
Received: by mail-wm1-x344.google.com with SMTP id r7so3077537wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 05:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xBDvlQYuE7oNVEONMOO8X/XPChxn1w8gmsgCTidgsCw=;
 b=IuFRQGUwIPudbPryb66bcSA98/I2fxKUyrPgEpzM7Mb1lLK/P5FF7MyO9h4p4VuskT
 Yhj5pXVHXTjcli+/HkP3VCsvmL+0g7IDTKiR7iP8+19qQezBMpShkj0kc9XzgONY9raR
 3g/ISgcPg3tku4y6jDUrfUqWQ4PSlKmyYwjAhVUV/HQrAq588PH7mliHe1N9X2CsiJaS
 Vh7+v4NBPDpqXijwB5Q3YUjjz5RacSyPKqEoZ1sHQ1iQQF59sXVnvba0AZXushksIgxf
 +eWPmswyHwbr3v1abaV5i3iPcYkzE+S0pQ0L57aPZzswXFAsFlBiiXkt5SXrAqu5t2kd
 Im7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xBDvlQYuE7oNVEONMOO8X/XPChxn1w8gmsgCTidgsCw=;
 b=QBZUzeDMTPUaW/Ol+2iZW6r/lm4e7YFJcMagoYXN6sT+k1zpyAj2ctei6PqIHVnGiP
 zrzTaCX8rCUgOApK0RAWRJxynXdP1bHeGfD52J4kW57SaGKhJoGk7PwlkXoubHNoxmru
 Icv/cmUyPU+e7oDa29ga8kEGJCEHhTnRGE9tv1QPLc/7ghShdvC2vwA5lu0onZjWX7l3
 o6zUVVJRbZpgWjxfF7urnJTwNU/8jMVZzFkOnERNqf4UpvYdT0Cpvp+kXLTKVn8S+CD7
 YsyivdFoK9PpMR9khazvyZXcICIzpX/YMmGtNrzhXVPSvgujzRlnMjU/OWyOrkFUOsXJ
 9B7w==
X-Gm-Message-State: ANhLgQ0yZoeqW0wHgvE0/z1TJXpXrziRNz8gE694lejNPHma6AdlPS30
 2SIS5HakCFIVYZQgbwYumRsqBg==
X-Google-Smtp-Source: ADFU+vsQz6jYa7lO28kY389afQXTOf18x6yaQthL0HYfPi/AgNw2jQwmb4F0so/4szpPJCmFHz6GRg==
X-Received: by 2002:a1c:23d5:: with SMTP id j204mr3724311wmj.59.1583930107055; 
 Wed, 11 Mar 2020 05:35:07 -0700 (PDT)
Received: from xps7590.local ([2a02:2450:102f:13b8:9087:3e80:4ebc:ae7b])
 by smtp.gmail.com with ESMTPSA id m25sm7822732wml.35.2020.03.11.05.35.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 05:35:06 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 shawnguo@kernel.org, olof@lixom.net, Anson.Huang@nxp.com,
 maxime@cerno.tech, leonard.crestez@nxp.com, dinguyen@kernel.org,
 marcin.juszkiewicz@linaro.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>
Subject: [v1 1/6] arm64: dts: msm8916: Add i2c-qcom-cci node
Date: Wed, 11 Mar 2020 13:34:56 +0100
Message-Id: <20200311123501.18202-2-robert.foss@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200311123501.18202-1-robert.foss@linaro.org>
References: <20200311123501.18202-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_053508_631613_AD6C3CED 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Robert Foss <robert.foss@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Loic Poulain <loic.poulain@linaro.org>

The msm8916 CCI controller provides one CCI/I2C bus.

Signed-off-by: Loic Poulain <loic.poulain@linaro.org>
Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 9f31064f2374..afe1d73e5cd3 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -1503,6 +1503,33 @@
 			};
 		};
 
+		cci@1b0c000 {
+			compatible = "qcom,msm8916-cci";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0x1b0c000 0x1000>;
+			interrupts = <GIC_SPI 50 IRQ_TYPE_EDGE_RISING>;
+			clocks = <&gcc GCC_CAMSS_TOP_AHB_CLK>,
+				<&gcc GCC_CAMSS_CCI_AHB_CLK>,
+				<&gcc GCC_CAMSS_CCI_CLK>,
+				<&gcc GCC_CAMSS_AHB_CLK>;
+			clock-names = "camss_top_ahb", "cci_ahb",
+				      "cci", "camss_ahb";
+			assigned-clocks = <&gcc GCC_CAMSS_CCI_AHB_CLK>,
+					  <&gcc GCC_CAMSS_CCI_CLK>;
+			assigned-clock-rates = <80000000>, <19200000>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&cci0_default>;
+			status = "disabled";
+
+			cci0: i2c-bus@0 {
+				reg = <0>;
+				clock-frequency = <400000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
 		camss: camss@1b00000 {
 			compatible = "qcom,msm8916-camss";
 			reg = <0x1b0ac00 0x200>,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
