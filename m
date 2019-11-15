Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B671CFE2D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 17:30:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a8YD2T9AJBx7ZRSkSCHBSxP6Qmx0+x5wnisuLG+2OgU=; b=q2pqeev/MekRmGvI2D5MLKqo5F
	EAf7SsPwIewDW+/0lkB2J5wCCPn9EYzcld/qQBm2H5/qaZT9xLbUF63StphTicKQ9/T/a7VxBDUpt
	QmjgT7s1EXgF64zULbL5xGs5U2qykAleyDXZzX4FduTb2OVsZmBabKNqciOh98+CQU9oHD2A0tTjP
	iYfjvwbz+emEj/LVSxOOzBK92wRuNJLabkS1dZk8mHwqOnAgVzSihFUwITZLCW47X9wRCMH0kQh+N
	kSZCw2ZYhKHEXylCkoOGafJje/ggCM+CxbtmJNnJtjp9n+d54Z5Qjv1pKCMRKQqfELQbPKCSNFqdY
	VH3Xkpmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVeUf-0000Hw-16; Fri, 15 Nov 2019 16:30:45 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVeTc-0006jy-NF
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 16:29:42 +0000
Received: by mail-pg1-x543.google.com with SMTP id 15so6237951pgt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 08:29:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Y6Dgg0LHIAz3laO+y1ntUkl0I7eVRTHEz+QlpqCcJzM=;
 b=F+5f07YLpe5ouKmkTbFGbDdunX/KCt+dKybIeWw2uN5evbh0B2Mr32f1AUvREsXuZd
 6E6zV+NRXkT9IOcKo/StVi+ubHWxgRq0aKA1QVvfmhUIjn7Y+UrHouPMWcNfSnZHUBry
 1K+Fbtj/qFLphLnaT5CNC89x1uJ8AEPgZQPqzG+xjmlpJUMixmXCXvBJ/XPW0xharZQ5
 3e886sJBoYHcRyzfI6WNwY+P3TxKtI0TXSx4SOLGnb2RVr+gK6/g3omS8MYBxe9PlpG9
 om+syucI14CmPGDiUayqgNtOMu9H5CYyGtFl7Pbn7WREgCnbNGr3zpJELaucvUmNgs/W
 2yTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Y6Dgg0LHIAz3laO+y1ntUkl0I7eVRTHEz+QlpqCcJzM=;
 b=qMU2K53hApKzXq5dx0jdx7b3k4wY7o0GAaHsZSTk6kDQbnHyKCm5HNzqe4VS1cPIsI
 F21Gy0UXGwNov+dE33om3I2i42cqvXwjqdjaDQzgzOBFdmdKYw616HMmlSiCXmRH+Nea
 deLaCkt66VP3dTsAKUTXYChFzhSpgsi/EeJ0E0RCR+SWLozIR0Fc2m11dCXQLXdLcP4J
 Bgc1byYZ9NwokobOqtNGXtGBmlfGOWgRXFIBo5eXITkqDc5SdprGC/M7b897s+ged3C1
 Vkimy97jJaJlR4RZWwkm8oRhAxc2qMSMyNhjM6rItBATtmt30Ntq2UyT1WaIi7vPhTpC
 iKFw==
X-Gm-Message-State: APjAAAUxeej/VkaQp0wsv4xlyhSjYl2TJ3RQVd6TCBU5zEnAiP4CpERW
 TfanQFNqLeCf/HDd3g+RieVU
X-Google-Smtp-Source: APXvYqwDZwTI7WAkduLMSH+eqssbv8GB1QaGVtH8A8kWnBO9K2P2qfEHIyrK9Cb+ZIfueyohjNBsxg==
X-Received: by 2002:a62:e119:: with SMTP id q25mr18667948pfh.161.1573835378452; 
 Fri, 15 Nov 2019 08:29:38 -0800 (PST)
Received: from localhost.localdomain ([2409:4072:6183:6d55:8418:2bbc:e6d8:2b4])
 by smtp.gmail.com with ESMTPSA id y24sm12295288pfr.116.2019.11.15.08.29.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 08:29:37 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v7 4/7] arm64: dts: bitmain: Add clock controller support for
 BM1880 SoC
Date: Fri, 15 Nov 2019 21:58:58 +0530
Message-Id: <20191115162901.17456-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115162901.17456-1-manivannan.sadhasivam@linaro.org>
References: <20191115162901.17456-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_082940_864971_3FC2A4E4 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 arch/arm64/boot/dts/bitmain/bm1880.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/bitmain/bm1880.dtsi b/arch/arm64/boot/dts/bitmain/bm1880.dtsi
index d65453f99a99..8471662413da 100644
--- a/arch/arm64/boot/dts/bitmain/bm1880.dtsi
+++ b/arch/arm64/boot/dts/bitmain/bm1880.dtsi
@@ -4,6 +4,7 @@
  * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
  */
 
+#include <dt-bindings/clock/bm1880-clock.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/reset/bitmain,bm1880-reset.h>
 
@@ -66,6 +67,12 @@
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
@@ -94,6 +101,15 @@
 				reg = <0x400 0x120>;
 			};
 
+			clk: clock-controller@e8 {
+				compatible = "bitmain,bm1880-clk";
+				reg = <0xe8 0x0c>, <0x800 0xb0>;
+				reg-names = "pll", "sys";
+				clocks = <&osc>;
+				clock-names = "osc";
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
