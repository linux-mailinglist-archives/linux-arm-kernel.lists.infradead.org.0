Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A08BC12DFCB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Jan 2020 18:50:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CtuQ/NNMEt4HO1vHSqSGCR8ld4rDMRkbq16sKwRKgow=; b=XJl
	QCYxU2iwL+nxbfvqJYhhAw18Cf4oz1nnTa+jbd7JGorEbGJHeMqu16CK2axysr6RJuxxgkMnGARld
	sHfFJlVaf41Hb8lfEhzj8pLCb2SdC2CwRo3mewDInvG1P6d8NMltYtXiPPMYhKthHvkm1JnbAjYMK
	auNUpYX4IYo/8N7qx1DvVzF2Zublk/H1XpNNAIAP6VHU4Ryq03HuhcE8NmIcvUOLBoBUx781AkzFy
	yuUJIpp4BY1MxmeksC2vNZSHwNtZxA5BdDLIIU3yfYk21pnD0DU4RqJVFDwCXvI21GQy6BOClQvfF
	XmxQmui5oWfGkX/MkbZw/cP1wSHb2xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imi8X-0003Gr-Mh; Wed, 01 Jan 2020 17:50:25 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imi8Q-0003FN-V2
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Jan 2020 17:50:20 +0000
Received: by mail-wm1-x344.google.com with SMTP id d73so3908064wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Jan 2020 09:50:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=12nPZoYm5B9O7/gN39AnPaKov7Kvb+XDvIXAHahnWys=;
 b=H3sNLMfJYn4R9zMIiXkpZ3A7/6KfGkNQ70mnqEN648stOCgYDViADXf0NZu+KNUsIG
 qXNFEm8YZ1TL8C2VIdUsljDE//Fudcw63RR1r4UDapnpeHwRLUIlG519IueS5L1GOUtk
 lpxxIBJN8eQL+NigCBLgtSumUzQEpipSX9UuI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=12nPZoYm5B9O7/gN39AnPaKov7Kvb+XDvIXAHahnWys=;
 b=uhfzaEBosSVyXT2F+00nOpIBU1pFP6ddoghexwcEgNzutkRfrdjWJqVdOgSpnCMC3F
 b0DsIvbh13tKiljfrU3VkRvwq56wdN9ayzyKR3D5juQJy3+i0AyGMo7EiTDQuyWCUK0U
 Jai8nrUo4tMf7QUxTh+vzjADopMLJSQwrlNkz6ay/biZiH7LtSsLnbQIbKLrOZRj7QEB
 K9B6Ar3AvqyHQnHTFNClZJvrYSx2LV5FwwLwSF5c7MS9atSjz06BWsFqc4bKs8bQN1ad
 5Tr37ZGXeZVdUt1bx2Iyt/CGP5tb6Njibmw716L/9oloSgMAYIShP8mFpCZtsvfk2HYP
 ASbQ==
X-Gm-Message-State: APjAAAXIFonHA2iIFPMGfpxmsK2LpwG9QZXRbVkGax0JoTVZakX0mr9d
 ETt5IDqduerRIrshdbQHooDEQQ==
X-Google-Smtp-Source: APXvYqwcPN+/qIwHkLsDYh4D9zpy2hKTq1vCs5L7oZr5hU2Vk65Fa/hXgcdbiqJcMmVYFV4CyHk7OA==
X-Received: by 2002:a05:600c:248:: with SMTP id
 8mr10708929wmj.175.1577901012933; 
 Wed, 01 Jan 2020 09:50:12 -0800 (PST)
Received: from panicking.lan (93-46-124-24.ip107.fastwebnet.it. [93.46.124.24])
 by smtp.gmail.com with ESMTPSA id r15sm6025085wmh.21.2020.01.01.09.50.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jan 2020 09:50:12 -0800 (PST)
From: Michael Trimarchi <michael@amarulasolutions.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 1/2] arm64: dts: imx8mm: Add CAAM node
Date: Wed,  1 Jan 2020 18:50:10 +0100
Message-Id: <20200101175011.1875-1-michael@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_095019_314994_BCABB5B9 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-amarula@amarulasolutions.com,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add node for CAAM - Cryptographic Acceleration and Assurance Module.

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 31 +++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 7360dc0685eb..428a8b43086e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -667,6 +667,37 @@
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
+				sec_jr0: jr0@1000 {
+					 compatible = "fsl,sec-v4.0-job-ring";
+					 reg = <0x1000 0x1000>;
+					 interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
+				};
+
+				sec_jr1: jr1@2000 {
+					 compatible = "fsl,sec-v4.0-job-ring";
+					 reg = <0x2000 0x1000>;
+					 interrupts = <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
+				};
+
+				sec_jr2: jr2@3000 {
+					 compatible = "fsl,sec-v4.0-job-ring";
+					 reg = <0x3000 0x1000>;
+					 interrupts = <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>;
+				};
+			};
+
 			i2c1: i2c@30a20000 {
 				compatible = "fsl,imx8mm-i2c", "fsl,imx21-i2c";
 				#address-cells = <1>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
