Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C693310DFB4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 Nov 2019 23:52:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3k/EcBFc+cJQuju7nvIB+5IjBzHAvDSDHoTR98Zcw14=; b=AjqBkctHjfAWYr
	aLGij75w5NMVwnAerXqonfviXB6n50wcKWyUTOoIg2G6mEARVMYbRgA2pZNwsg+uypN1QEtj3/2w1
	P16+qaLZl6aIxGAyx6fa/nDzZJDErVPdnw41V3DwuWU8kIYDHG27G3LzWqPF/B3BXaErHYOnjJ2EN
	j5gpp9c+vWs4w3QmxP6PqIPB/vpxrwW1VBDMbE+DQRnMjbwhxKTXKkP7iLQX0TkyYPsc2qj6bmLcc
	Mau9ZxYnqdiFW9E21zxBL9BbfvgzSmvr1iOg0ahr4OOrJGSzcAXTZWQFTmOiknDdCuKqXiHvystZj
	ZCfSSx5p6nYnMhFsiAPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibBbM-0005IA-FN; Sat, 30 Nov 2019 22:52:32 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibBay-00058C-HH
 for linux-arm-kernel@lists.infradead.org; Sat, 30 Nov 2019 22:52:09 +0000
Received: by mail-yw1-xc41.google.com with SMTP id r131so12386445ywh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 30 Nov 2019 14:52:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w0VTjeAbtSqemOM43UsO8Hem8cE/aNSTS/UBVqjVywc=;
 b=YiL4AirMTqr6aGYwyZ/Lh+rb4JR2HtOA76xqsjBh8p9VTZB4W1DziDewVMuiAdJkjJ
 OkKzSzIx8F3HkzmEmJYvl2eIeguK0Z28QHhdjUlB4/ko7cASISyWnqSPn2PRjM4wUiVU
 bZhKc33ydp+uW+wz4pNucl/F8ZuhVVGEhjUkpugcy0hOiFL4mahvEYfpU9ORvevutFpF
 nOVNslyAnLBqF4YrSu5k5/Ye0bz/LSDnG0tDZhNc3+ldghQGwgs0vPnOONowz8uAGkfh
 71xCP/NHJ/aB6UP27pGXaCSZZpgOUlGIcmvSJefbCI6hVG8JpAJ9Cukhkbds5TeVFzQG
 QNDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w0VTjeAbtSqemOM43UsO8Hem8cE/aNSTS/UBVqjVywc=;
 b=GsQuWeU3Cf1nvLl7cUPh7LWW/nVqNFmnGdAqU8OGSDxttehCRedNPzxT/iP416nUDB
 cStmwDtGnybs6u+2H6Z3BCb/LVU1zDT6kpCYEmQV2crBJZnwqYAijToy2pF+yc7ZFtDu
 zqi2I3ikL5Wcfqn1NYMO+c3Gnbza/n5BesNVfRfKTbV1MoPvZXGMBmpvWSkri/PwcDHN
 xDU6HTe/bKQemkwysrVUB2DCOJfhEpeTyz4294muWidnN6xUmO4eqzdIEGE7GoRIpmco
 yIwFtpoxN2VTH6Ja52GuJDvnhY3YLIjYGtSKoL9k9XRvZs24QcX6enidl0Z6lnOGgeo0
 2ErA==
X-Gm-Message-State: APjAAAX+syQyzeAzdvqShXAaYJ7sodLc17d1tirDGrI2CqBvmJsc6g2P
 rCirdcJHT5epBd3YtQmxCoKdfhw6Xdo=
X-Google-Smtp-Source: APXvYqwOR+XG0CXmcrTJVDU+HgRLkfmiEtFTdynP+cuDkyMBswz+hQZfRPCieMZsYMBTfVB3g06P8Q==
X-Received: by 2002:a81:53c2:: with SMTP id
 h185mr16235156ywb.113.1575154327481; 
 Sat, 30 Nov 2019 14:52:07 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id y9sm2028163ywc.19.2019.11.30.14.52.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Nov 2019 14:52:06 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: imx8mm: Add Crypto CAAM support
Date: Sat, 30 Nov 2019 16:51:52 -0600
Message-Id: <20191130225153.30111-2-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191130225153.30111-1-aford173@gmail.com>
References: <20191130225153.30111-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_145208_568697_AC8C5A99 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>,
 devicetree@vger.kernel.org, Adam Ford <aford173@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The i.MX8M Mini supports the same crypto engine as what is in
the i.MX8MQ, but it is not currently present in the device tree,
because it may be resricted by security features.

This patch places in into the device tree and marks it as disabled,
but anyone not restricting the CAAM with secure mode functions
can mark it as enabled.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 2ed1a3537f05..68c7c1adeb60 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -723,6 +723,37 @@
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
+				status = "disabled";
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
