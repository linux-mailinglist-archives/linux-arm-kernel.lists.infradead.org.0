Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BBD149AF9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Jan 2020 15:10:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DqrZmmpM8RGpzRyRNWRB66f/GKBqRuu/h9Gv7Nd/yn8=; b=sOWl6NSnd9FJbX
	D0FMA4J9HsfkoebSWjVjqZfz9aVnlHGIqVPY+SY7AYLDOvih7cZjDQ91+l+JiywYS82/cm5PtG7xn
	8/xoWC/l39OuOgBCdmsCzRamQ3U00bL+/yEWT7TMUACCiVi0hHsKJFV+TuLXZYSE656qrPlMxA+hV
	PppnkkVuZlgF60LEO/qfQpnJc0grhSVUVJBYPZYKh4+VIZPj2UVRpAMQdluJeAWjYDhcw04tJwkiu
	ku/h/ng5DJNAFPD2oaDKV+chL3c93/EA6O77TPqtKh8YwXJvVx5CRVV4plNraSQsxUDe3LrCUD1cN
	Ue/qTycCOdnRkC/NgSNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivicN-0002pp-Mc; Sun, 26 Jan 2020 14:10:27 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivibb-0001A5-U5
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Jan 2020 14:09:41 +0000
Received: by mail-yb1-xb42.google.com with SMTP id p129so3611060ybc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Jan 2020 06:09:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0waTrM+p0MNxst8w9Z5JQMayoehG4IUq+pQpCkmEaO8=;
 b=Y/whYoNP5vb88jRBSS1HcGmlCT6z7yURB0WKKZu9ViIR1Ye/BPkoagOfjw6OfNzaL3
 KhDtMjA0we0C62kLbl1CANuDAOtxC0LVFs2YF3I7W37x6F9kH8nID3XO6uy3MyBKepyS
 cuXXX4qPn9UXTvCW5NoalPXUv+8DMHnDaH8Gg8/WyEnaLJJYbVf7yfqZEiJXsR1J+Np5
 d0Vht7U4UMe5Sku2R58lebhMMFygcxKzke537fW7C3GrfWnhgxGpk1tARgl9vty8d/gn
 SGbEwJ8jx1lodEuq07i//FH9+0vdgpLG6s/Cc3CNs2TQr7nIS5edeOo8FIVf0QZz6o6D
 Pqwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0waTrM+p0MNxst8w9Z5JQMayoehG4IUq+pQpCkmEaO8=;
 b=SAvln6QEgloG5PQKk1Ip1tUqrElnlTbIb1hkeeJmDq1j4Pvz5SWd5ORBP3JQUZNL/d
 jJhjFAv7Axx3mqVBvtSMi8J99hjgwzqpjNddZrCtAqsqZptDVMSQ1RBMjzJDUo9+OPtU
 EAsGBfq8idvQrM7L1287zvNIzIl3VbljQqpzVfSfhfAFccL9ANUayuWsdXVlWK2rlI2l
 y8eCnRzMvIWGTwtm2u5YmjcWRtTO14Y/DJDAacu+E2GKcq29zXOpn88Myp/RWp4vFzTe
 sNi5z2sHZ6kfwwgiOgA/eCDfXNlbXxnxDkKJIvocSJISNyQnmsy2C7I8ZGfFQOb0nyGZ
 OeHA==
X-Gm-Message-State: APjAAAXS+WR+lK40LDKX7fHdkmqimX+EzAdmuKARskd8IjVmTMM/FZWp
 Ae7M+hd/vLOSZr1Oi8PqetI=
X-Google-Smtp-Source: APXvYqzlMdUSQYdwJJeaz15msbfWK+Z3P5aEgzbxzTYJ+IDLEk+5tn/w/276UKI8pyR+W6+/cki/aQ==
X-Received: by 2002:a25:d1c9:: with SMTP id i192mr9426559ybg.493.1580047778366; 
 Sun, 26 Jan 2020 06:09:38 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id a12sm5237214ywa.95.2020.01.26.06.09.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Jan 2020 06:09:37 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-spi@vger.kernel.org
Subject: [PATCH 5/5] arm64: dts: enable fspi in imx8mm dts
Date: Sun, 26 Jan 2020 08:09:12 -0600
Message-Id: <20200126140913.2139260-5-aford173@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200126140913.2139260-1-aford173@gmail.com>
References: <20200126140913.2139260-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_060939_993898_FB73C103 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ashish Kumar <ashish.kumar@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Yogesh Gaur <yogeshgaur.83@gmail.com>, Mark Brown <broonie@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, han.xu@nxp.com,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pull in upstream patch from NXP repo to:
enable fspi in imx8mm DT file

Signed-off-by: Adam Ford <aford173@gmail.com>
Signed-off-by: Han Xu <han.xu@nxp.com>

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 1e5e11592f7b..679769fe6cab 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -558,7 +558,21 @@ aips3: bus@30800000 {
 			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
-			ranges = <0x30800000 0x30800000 0x400000>;
+			ranges = <0x30800000 0x30800000 0x400000>,
+				 <0x8000000 0x8000000 0x10000000>;
+
+			flexspi: spi@30bb0000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "nxp,imx8mm-fspi";
+				reg = <0x30bb0000 0x10000>, <0x8000000 0x10000000>;
+				reg-names = "fspi_base", "fspi_mmap";
+				interrupts = <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_QSPI_ROOT>,
+					 <&clk IMX8MM_CLK_QSPI_ROOT>;
+				clock-names = "fspi", "fspi_en";
+				status = "disabled";
+			};
 
 			ecspi1: spi@30820000 {
 				compatible = "fsl,imx8mm-ecspi", "fsl,imx51-ecspi";
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
