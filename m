Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C655C1C2589
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 15:00:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YlX5dJ6QbO32v7fKBHYbJfs3bhlYgMjC+fxxeuv4LyI=; b=dC5phouQN2k0qt
	7gckSVGvlRp5OxPXqFSt1jiYrIbxK+ndxX0ZV5wwaPlmIyKaSqRLu64jj4dX++l/36BdkWSTTn0GJ
	JRDvnxXJ5uNyQa2iID7JuObJ6jyyBBJjQdZYlimKI0iy/iwzhTSiX+/iAXSBuWYssXStt3oHahyE3
	N7SdL7+P/GrbqUynlKNfzRip5eIobWVUk8VSfU8GfgcnBZpnRzA+lOHy+ADAnSUNBcVHqCJS2W80R
	1TGsUNI01/0tDhrhZlM+3Z0iBVzr6fAsS3h5+IigSeBw0fVBiyQHM61uJdBq3yygIvIfz3gs76ryV
	6p3CscFauJ8xFLf1gWGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUrl9-0006qc-5S; Sat, 02 May 2020 13:00:47 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUrkp-0006jP-JO
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 13:00:29 +0000
Received: by mail-qv1-xf41.google.com with SMTP id h6so6044893qvz.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 May 2020 06:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4kwbMlfQSR1Pqoy/79RUUNFt2eixa1c08qMSZ+873Tc=;
 b=DaInghGAsXiWWEbtudR3PREl/QYaGVlhziolqAO1iy/gQ6mSCCVWm4MJ9ScAojhPjd
 Yy7j3lphdH2oXJWz7aoSX107Ijs27xU/021K48++GJM83VWePR4ZcYIK1M/Z/YZaQQgG
 hLNhgUcIVTz/3BeT8v5Djfm3XBBJlASWAYbY1znowQWVvyroLJTR/F/pAmeRV7yOmPXT
 yydMj3JuOToRL5JqXM8o+wUCgoVUjPsleK2pTpgHxfnXDmAmuT22S7nwPtkUG9lpq5rD
 3XCYKtNtExYX0zp+AwfgKPV6zFp2dB5h+XP+fTiB/qPGdu1Qfpfuw6229c8+t44fcj8b
 osnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4kwbMlfQSR1Pqoy/79RUUNFt2eixa1c08qMSZ+873Tc=;
 b=NsprA4ul6BTQCap2GmzAl+MlxMG+G456UdwKuC3ehRMiequenkb/2wuTAveZ50AHU9
 D0gPdF7E3jkWvXHxu1ied2cEBUAv2jRZzqRvvYs8iaugsm3jVJbeiihaDo47k3lyanPq
 t1bP5BlwBzMEnkQBL6GaykvjkFQ4Ls2Ogmv+TTp/0/6/X0uvsa2ecL58f3IOWxC0Ov7G
 bIHi6z4iXtPBy3ll1669YrWMwxe55u/MJ+rxpljgaxpe4tY9BGT2GytIxHWG4jH+NyTt
 sBqkbAC0aa1J11UNYuzAMQKBpzULyjnroe6Dz7uSmykiC9OwjD1PAOdJfLnqKqdjDTSU
 lFYg==
X-Gm-Message-State: AGi0PuYNMtCNK+LAtmRs9YDscuiNfQxzrCNiU+PTbSWAyV9z4OkBuy47
 qHN+2RHsUdThFfKefyCn7djuXw/N5Mk=
X-Google-Smtp-Source: APiQypL4ud5AXEGsm2wV1m5m08s8m7db7FSm5j+s/gbf4l05ArLHzm0zLuQ6R/RKitsjmOrjCivCgg==
X-Received: by 2002:a0c:9002:: with SMTP id o2mr6012949qvo.3.1588424423450;
 Sat, 02 May 2020 06:00:23 -0700 (PDT)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id l24sm5067668qtp.8.2020.05.02.06.00.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 May 2020 06:00:22 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: imx8mm: Add support for micfil
Date: Sat,  2 May 2020 07:59:48 -0500
Message-Id: <20200502125949.194032-2-aford173@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200502125949.194032-1-aford173@gmail.com>
References: <20200502125949.194032-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_060027_639934_DFC3F066 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Will Deacon <will@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, aford@beaconemedded.com,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Adam Ford <aford173@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The i.MX8M Mini has supports the MICFIL digital interface.
It's a 16-bit audio signal from a PDM microphone bitstream.
The driver is already in the kernel, but the node is missing.

This patch adds the micfil node.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index c63685ae80ee..d46e727fc362 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -339,6 +339,25 @@ sai6: sai@30060000 {
 				status = "disabled";
 			};
 
+			micfil: micfil@30080000 {
+				compatible = "fsl,imx8mm-micfil";
+				reg = <0x30080000 0x10000>;
+				interrupts = <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_PDM_IPG>,
+					 <&clk IMX8MM_CLK_PDM_ROOT>,
+					 <&clk IMX8MM_AUDIO_PLL1_OUT>,
+					 <&clk IMX8MM_AUDIO_PLL2_OUT>,
+					 <&clk IMX8MM_CLK_EXT3>;
+				clock-names = "ipg_clk", "ipg_clk_app",
+					      "pll8k", "pll11k", "clkext3";
+				dmas = <&sdma2 24 25 0x80000000>;
+				dma-names = "rx";
+				status = "disabled";
+			};
+
 			gpio1: gpio@30200000 {
 				compatible = "fsl,imx8mm-gpio", "fsl,imx35-gpio";
 				reg = <0x30200000 0x10000>;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
