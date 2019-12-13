Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B50911E6D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 16:39:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QjAz4V6RfYzOTUprK6fxTFYN41y9CBlBvvDXwjmzNu8=; b=Dg14+vKtt+TGXA
	e/oO2RQFnOgNS1GJbu0bO9mHBrJfb78vWOM1MTTAWofnKFxUoxCdq026UnceIRvy91XY2uPqDklXf
	FYyQUwnF73Y7q9JmisvVlfC4pzm+JMgl30tv82fO5olqyFrkVY6WOUmuQh94f/EhwRXLYTfN/P6Cg
	B94RLeNrvuGjHHhdWDgoilIYs+kD4HbnbCGMzuA/C9Qk2ZdNyKty1PTG4ywTnPgFjNbiaYyf0p8+T
	0GMHkuCgr46R2ws6jsmNtFYtK3fxVt/Yo+w82yDcycb+f41a8CprAJ0zFxCA56P+TerfdwO67almx
	vF045C8HaYi8Z7nZRbOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifn2d-0004SI-4Z; Fri, 13 Dec 2019 15:39:43 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifn2J-0004I2-Tv
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 15:39:25 +0000
Received: by mail-yw1-xc44.google.com with SMTP id b186so17781ywc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 07:39:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zAVLyHI55RYFQfABy0CQiTV5qxIf3ilADCMSzbRJCnM=;
 b=bw41ej1m7qXmEL/RA/Zpn70Z9LvnYU1XkNBiR8nDGpD9rGdBw5AaKbgRzT+4WIoXnx
 GgOFePNa7to/03NkjusJ3b+dsq/CUeKC9Nk+6Qn3Csyg+UXiq642pzTAYcdLcEvXOMYB
 70itpJPQWDiPW3x7i+0jGNg4wmLrBAJPd017LZpkmaOyUQDVuRBmsEJzd91QPzUXy9i/
 WtCSjAo5M+DGkRTXhsMPiD6BaYWy5UV47OXokef+D9oL1LigiMVSgsdbNOc5qXM+RJbE
 KrcVNtljQDVPV8X7iFA+TG+0I21dE7/06p+KigtJRQn1TPCMfOaYnjUJnQJzP+qYligO
 9kVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zAVLyHI55RYFQfABy0CQiTV5qxIf3ilADCMSzbRJCnM=;
 b=Dt+eprDgA8NZiEBOTkdUh7jn2lTH+ow9oC1DKRxELW8SsXF5KVOmUPC6APTZ61Fzkf
 jfz9QuKLoopan1908tOgRxBmuOWpitcIMZHRu7fkLVIVUjQ9nZHUAQ2fXiTLYTuldpfB
 umaGduoR9raSp0Hchs7mjQdCgoz6iOhKVowyUoRNTwsrxJsO9i6IrFZRWF0e+nNIbrR9
 uwzyvGQ79VluTKFhwOo2HE5sGSMzD9ssp7QaRN/fxILhkt3K6vZTmPen0PgWG8j1RQWz
 NAeSu7JMlpSvMN0Fm53zh13xLUE8TTiv8+FuL1LVZh4M4BUAyic7C3AkfefBSwf2Gsvf
 O4uQ==
X-Gm-Message-State: APjAAAXfHrd8rboVK2u/MHjMtEGxRRSB5wwdGlBeKuTaSFo8SVZuRraw
 1XNslaXMIOXOTyanEqxH12ynW/HRkZQ=
X-Google-Smtp-Source: APXvYqxEJIIyofm5M0Sh4DQ1LyuKviJI7SgF5u+5c4dQaIsYOJppbZ+0Ko1f0dmxBRWmYpBnkZ+uLQ==
X-Received: by 2002:a25:c242:: with SMTP id s63mr9067337ybf.19.1576251562471; 
 Fri, 13 Dec 2019 07:39:22 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id i17sm4300474ywg.66.2019.12.13.07.39.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 07:39:21 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 2/3] arm64: dts: imx8mm: Add Crypto CAAM support
Date: Fri, 13 Dec 2019 09:39:09 -0600
Message-Id: <20191213153910.11235-2-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213153910.11235-1-aford173@gmail.com>
References: <20191213153910.11235-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_073923_980105_E8721AD7 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aymen Sghaier <aymen.sghaier@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 horia.geanta@nxp.com, devicetree@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Will Deacon <will@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The i.MX8M Mini supports the same crypto engine as what is in
the i.MX8MQ, but it is not currently present in the device tree.

This patch places in into the device tree.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
V2:  Don't disable it by default

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 860cddec9632..1f0178078572 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -726,6 +726,36 @@
 				status = "disabled";
 			};
 
+			crypto: crypto@30900000 {
+				compatible = "fsl,sec-v4.0";
+				#address-cells = <1>;
+				#size-cells = <1>;
+				reg = <0x30900000 0x40000>;
+				ranges = <0 0x30900000 0x40000>;
+				interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_AHB>,
+					 <&clk IMX8MM_CLK_IPG_ROOT>;
+				clock-names = "aclk", "ipg";
+
+				sec_jr0: jr@1000 {
+					compatible = "fsl,sec-v4.0-job-ring";
+					reg = <0x1000 0x1000>;
+					interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
+				};
+
+				sec_jr1: jr@2000 {
+					compatible = "fsl,sec-v4.0-job-ring";
+					reg = <0x2000 0x1000>;
+					interrupts = <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
+				};
+
+				sec_jr2: jr@3000 {
+					compatible = "fsl,sec-v4.0-job-ring";
+					reg = <0x3000 0x1000>;
+					interrupts = <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>;
+				};
+			};
+
 			i2c1: i2c@30a20000 {
 				compatible = "fsl,imx8mm-i2c", "fsl,imx21-i2c";
 				#address-cells = <1>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
