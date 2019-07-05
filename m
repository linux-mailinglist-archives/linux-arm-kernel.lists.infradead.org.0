Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B07160907
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:15:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ic/R52Ku0Uo3W8wAdH4NbdbkcnzDLYVEYOy8OLl3sMI=; b=rIqmfCzZXJc7sooUQTvyvIfrQV
	101xVtkk65HSRdrjndmBSs0VM7ivGT48ZhbvXPRNcGn9ldv+fsxju/j21ZFrSMi/gYqRWXGugl0cl
	QOq6d+vqH4Aag1d1B9A9D0ZjvQ9eQVL8GlYZN+pxnm8u+16lBm5bmzUbYnY2VvGv58J6Hgei9D2wJ
	AMaWmiTyr5Le2qQwxmragq8L9gzkjmy7ezmTwnPD8YgUWp6c2uMlgk+wkXczF4ZZvLWriBG18IYXf
	B5utqIUWGVJyxrysWLy0KQtaPkTwJF933HCM8kNQZ9Z9mJG1QwpYtfNloYxydifR23YblECE/58+b
	HjUySKfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPwC-0002VT-Ml; Fri, 05 Jul 2019 15:15:48 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPva-0001jm-00
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 15:15:12 +0000
Received: by mail-pf1-x443.google.com with SMTP id 19so4462352pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 08:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pnFKwgNsYpmubPKLkJXycKS9VYfFkpb2W871iieZZDk=;
 b=FsMlfk2ZU1BrvhnsQetLbWU/mxumz9RLpLIFkhi3D4wujKxRDkrRQIqZJdyxeCFYMj
 RzGyO7tG+3v1VY1p3FjAPLjLRWM7SyP/hI3Lq57e+JupfcKpTUihhyK6z8rCrkgQMyfH
 J8Ft8lVHesiX0u54DldtCczALimAENg83xEl2PHqLnmdezVUp1TpOf+WrVYdX1tM0h61
 Y0D+wcf4+x3jq6Y08eJ3ckDQm6352vn1sITAsrVWSVd5G232Ok4TLGNMX8JWdnycmbjf
 NeLGBwT7rzeCUjrwD3PwitOwuQnrrY00Spycn59BAFrBR0J4z/YtmG+L/4tGXIpb2xts
 TwsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pnFKwgNsYpmubPKLkJXycKS9VYfFkpb2W871iieZZDk=;
 b=sz1r0OhWRM4K3pYf/fkEn9qvyx4DUJEIMYPx2M4Fz9XehCIRbLMKQJo963lXD5KIj6
 SWn+fW1r/8bKrL9dJveR16Pg02Ht3iP5twaaPpTaxN0CNEqvBbchiXhpxEK+P+cITsY8
 5ciMFr5dzho7vPTuULwsklTmZm0LXGZOMNOJSZJmv5SR2tvex9aDr2NppY4A33c7FgWN
 kqa271dR6Z1xDTaBghgb+UNwjwZZJUidUcgMU3jBa/i0inkgYEIg1waZb6Hoxpfn4gRQ
 Q/VZs/QeJmXvKnjN0O7t8OWEMMLihGEuE+oj3KYyaretj/Y+5D/c3+KQHRVOAxJzz0b+
 d3Cg==
X-Gm-Message-State: APjAAAXo5HQhyUKWMh/CnBJQnqLARWl8NzZ3jLXl/OLAB9oD180+158m
 RHVIRHh+WqAaD+ytCTauS7mA
X-Google-Smtp-Source: APXvYqz3mPNH6Ybau1VTJ26KlOtoId3CcrfwCRjbTIhdJy1DoBb5E8LmAdQckUNquFrcjd6b5Isxfg==
X-Received: by 2002:a17:90a:b312:: with SMTP id
 d18mr6095115pjr.35.1562339708466; 
 Fri, 05 Jul 2019 08:15:08 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:916:7317:a59d:72b6:ef7f:a938])
 by smtp.gmail.com with ESMTPSA id w3sm8248778pgl.31.2019.07.05.08.15.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 05 Jul 2019 08:15:07 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH 2/5] arm64: dts: bitmain: Add clock controller support for
 BM1880 SoC
Date: Fri,  5 Jul 2019 20:44:37 +0530
Message-Id: <20190705151440.20844-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190705151440.20844-1-manivannan.sadhasivam@linaro.org>
References: <20190705151440.20844-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_081510_646653_4CA6469A 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 darren.tsao@bitmain.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk@vger.kernel.org, haitao.suo@bitmain.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add clock controller support for Bitmain BM1880 SoC.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/bitmain/bm1880.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/bitmain/bm1880.dtsi b/arch/arm64/boot/dts/bitmain/bm1880.dtsi
index 86e73af1629c..d2edb2e28bf2 100644
--- a/arch/arm64/boot/dts/bitmain/bm1880.dtsi
+++ b/arch/arm64/boot/dts/bitmain/bm1880.dtsi
@@ -4,6 +4,7 @@
  * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
  */
 
+#include <dt-bindings/clock/bm1880-clock.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 
 / {
@@ -65,6 +66,12 @@
 			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
 	};
 
+	osc: osc {
+		compatible = "fixed-clock";
+		clock-frequency = <25000000>;
+		#clock-cells = <0>;
+	};
+
 	soc {
 		compatible = "simple-bus";
 		#address-cells = <2>;
@@ -93,6 +100,14 @@
 				reg = <0x400 0x120>;
 			};
 
+			clk: clock-controller {
+				compatible = "bitmain,bm1880-clk";
+				reg = <0xe8 0x0c>,<0x800 0xb0>;
+				reg-names = "pll", "sys";
+				clocks = <&osc>;
+				#clock-cells = <1>;
+			};
+
 			rst: reset-controller@c00 {
 				compatible = "bitmain,bm1880-reset";
 				reg = <0xc00 0x8>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
