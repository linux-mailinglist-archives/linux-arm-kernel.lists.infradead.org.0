Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B9A237F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 15:24:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YsQ4lRupnGBX9QE4dSqckeDOJqj9FM/bxkV6DYMD498=; b=OHO7z8NRC9WTFN2aZlQhKbfQMa
	a/NrdQgSrFisaj6kOji4nRmeOkm2gAKx/RyL3/tkJLfDMDfqGsd0ogkFl6LdglyGpGGqAge9tmssX
	Ka+zdaxQApy6Cb748dbo+/EG3ZD7EchrWW54xiCj0vODXjxxPTwPMn8Zvymmbm98R1VRTii8COZac
	7vRzvJRoGmxsEZkqNrkpWqoPPDgBKYjzod+3wG0101JuKpGvjktghRGzers96M1Ju8umZlbdPClDJ
	mAmyqRbmu0My6c9tg/JNfS+/iCac7CQz3i5AMTZUYbVO+KAnWiFLvg2aDMGM+4P9uAZSwr/9YBJDN
	xy4t15Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSiHO-0008B1-QU; Mon, 20 May 2019 13:24:38 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSiH9-00083L-Tb
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 13:24:25 +0000
Received: by mail-qt1-x842.google.com with SMTP id t1so16179613qtc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 06:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=o9zB0Qs07/bv3+0GBPMx1hgxeOL+RMp4AuO/RYWYPY0=;
 b=UHYFgGQObGRNUfVnSNi1CmHYdPGz10nTGKKUemXzcycv5YX1fvmEzrBcNUuFR6wK0E
 0ipr/AlPW9dFjQY5NLsK9SjUIz1x5A15KWPVUgThG34HxWWz4+cJxvvPkbIlUAbc9zKo
 1X4aABUX5cbgM29c4WfBjgpPXa8kpBE6Iwf7mAwBBPlHJKCxJXL9ITuF1OgXe010dyu9
 uA9u4oHNWbcZBm82vm31pSyUZPGEgZjtr+P+Twynjz4IVpiToOII3v/dO+LhEaWLnFTs
 LB8dXcLA/V/auJ1BwvAgHyQIUmqLT0LThJyj8kSKQBFaHEWqrBMWATSD1Q22EWSMGynv
 UGNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=o9zB0Qs07/bv3+0GBPMx1hgxeOL+RMp4AuO/RYWYPY0=;
 b=qxbXC/1oiZnv0YHoyHxdBNbcUeu/XCJo9DF9lXA+/QciN0qSV8tdpty4tXORRUFsw+
 zlID/0RGVZdmj9z6Csfjwpg2otn4tKe9Q4Ln0vnzzM1dwDxOLo80F6DdI8zaFrkk+5GV
 rOrVzBwp6hWOO1gADOT2v8Ze5OK1o1xkp+HHP3wqamP6Cq+EoPqVdmBKEbJuW1TBcHQJ
 rXNaYji9Tc/klWemUlbuSA69GMzbUT8z+NNukXWVQAiX8zdsMdOxhO+hZ/XvRucQNMc3
 1+EStwE7bHjfnLA0ylg6nNiMl4UHdowo88Y1kH+zCP5DjjplIS9WIKe56puSMlsjOvN0
 zSug==
X-Gm-Message-State: APjAAAXx4jk5INyAMFfhLJEgnNZm8/kiw5y1F0xstx51uzwR4nDgDzM2
 1QYwt4kxSV+4aoRV874rANA=
X-Google-Smtp-Source: APXvYqyVrT/pjQLEbpa+CEj0yjdN3U2EtT5+Sf9goJ9caxiPdhtTMk+TqKMehFCr/5FRArZI56CY+w==
X-Received: by 2002:a0c:b621:: with SMTP id f33mr30723685qve.199.1558358662632; 
 Mon, 20 May 2019 06:24:22 -0700 (PDT)
Received: from fabio-Latitude-E5450.am.freescale.net ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id q24sm2080269qtq.58.2019.05.20.06.24.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 06:24:21 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH RESEND 2/2] ARM: dts: imx53-smd: Add OV5642 video capture
 support
Date: Mon, 20 May 2019 10:24:11 -0300
Message-Id: <20190520132411.8540-2-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190520132411.8540-1-festevam@gmail.com>
References: <20190520132411.8540-1-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_062423_953224_251C8611 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, slongerbeam@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Steve Longerbeam <slongerbeam@gmail.com>

Add video capture support from the OV5642 to IPU CSI0 on
the i.MX53 SMD.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
[fabio: remove unnecessary 'regulator-always-on' from camera regulators]
Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/imx53-smd.dts | 73 +++++++++++++++++++++++++++++++++
 1 file changed, 73 insertions(+)

diff --git a/arch/arm/boot/dts/imx53-smd.dts b/arch/arm/boot/dts/imx53-smd.dts
index 09071ca11c6c..ffdc6d990795 100644
--- a/arch/arm/boot/dts/imx53-smd.dts
+++ b/arch/arm/boot/dts/imx53-smd.dts
@@ -185,6 +185,31 @@
 			>;
 		};
 
+		pinctrl_ipu_csi0: ipucsi0grp {
+			fsl,pins = <
+				MX53_PAD_CSI0_DAT12__IPU_CSI0_D_12    0x1c4
+				MX53_PAD_CSI0_DAT13__IPU_CSI0_D_13    0x1c4
+				MX53_PAD_CSI0_DAT14__IPU_CSI0_D_14    0x1c4
+				MX53_PAD_CSI0_DAT15__IPU_CSI0_D_15    0x1c4
+				MX53_PAD_CSI0_DAT16__IPU_CSI0_D_16    0x1c4
+				MX53_PAD_CSI0_DAT17__IPU_CSI0_D_17    0x1c4
+				MX53_PAD_CSI0_DAT18__IPU_CSI0_D_18    0x1c4
+				MX53_PAD_CSI0_DAT19__IPU_CSI0_D_19    0x1c4
+				MX53_PAD_CSI0_PIXCLK__IPU_CSI0_PIXCLK 0x1e4
+				MX53_PAD_CSI0_VSYNC__IPU_CSI0_VSYNC   0x1e4
+				MX53_PAD_CSI0_MCLK__IPU_CSI0_HSYNC    0x1e4
+				MX53_PAD_CSI0_DATA_EN__IPU_CSI0_DATA_EN 0x1e4
+			>;
+		};
+
+		pinctrl_ov5642: ov5642grp {
+			fsl,pins = <
+				MX53_PAD_NANDF_WP_B__GPIO6_9   0x1e4
+				MX53_PAD_NANDF_RB0__GPIO6_10   0x1e4
+				MX53_PAD_GPIO_0__CCM_SSI_EXT1_CLK 0x1c4
+			>;
+		};
+
 		pinctrl_uart1: uart1grp {
 			fsl,pins = <
 				MX53_PAD_CSI0_DAT10__UART1_TXD_MUX	0x1e4
@@ -256,11 +281,47 @@
 	camera: ov5642@3c {
 		compatible = "ovti,ov5642";
 		reg = <0x3c>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_ov5642>;
+		assigned-clocks = <&clks IMX5_CLK_SSI_EXT1_SEL>,
+				  <&clks IMX5_CLK_SSI_EXT1_COM_SEL>;
+		assigned-clock-parents = <&clks IMX5_CLK_PLL2_SW>,
+					 <&clks IMX5_CLK_SSI_EXT1_PODF>;
+		assigned-clock-rates = <0>, <24000000>;
+		clocks = <&clks IMX5_CLK_SSI_EXT1_GATE>;
+		clock-names = "xclk";
+		DVDD-supply = <&ldo9_reg>;
+		AVDD-supply = <&ldo7_reg>;
+		reset-gpios = <&gpio6 9 GPIO_ACTIVE_LOW>;
+		powerdown-gpios = <&gpio6 10 GPIO_ACTIVE_HIGH>;
+
+		port {
+			ov5642_to_ipu_csi0: endpoint {
+				remote-endpoint = <&ipu_csi0_from_parallel_sensor>;
+				bus-width = <8>;
+				hsync-active = <1>;
+				vsync-active = <1>;
+			};
+		};
 	};
 
 	pmic: dialog@48 {
 		compatible = "dlg,da9053", "dlg,da9052";
 		reg = <0x48>;
+		interrupt-parent = <&gpio7>;
+		interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
+
+		regulators {
+			ldo7_reg: ldo7 {
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3600000>;
+			};
+
+			ldo9_reg: ldo9 {
+				regulator-min-microvolt = <1250000>;
+				regulator-max-microvolt = <3650000>;
+			};
+		};
 	};
 };
 
@@ -271,3 +332,15 @@
 	phy-reset-gpios = <&gpio7 6 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
+
+&ipu_csi0_from_parallel_sensor {
+	remote-endpoint = <&ov5642_to_ipu_csi0>;
+	data-shift = <12>; /* Lines 19:12 used */
+	hsync-active = <1>;
+	vsync-active = <1>;
+};
+
+&ipu_csi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ipu_csi0>;
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
