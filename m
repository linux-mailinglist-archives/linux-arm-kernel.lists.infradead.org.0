Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 882171139D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 03:21:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fxvH2drl6IP5xpQmnIoc9ezDhsGQNpC/yUQqWD8oWvc=; b=U7SixtI4yz/0JF
	F1ymu7pePnJfMX4NEoUbOBXHCIYkgdP8MDKp7zPU/xIip4raS8ASq0phOA6cuZiYeVqJEwte7nVLQ
	nxEwwM4Uoq3HL86RChdiYwloc/NhKh1xVvBlYfSesbrUnuPnJal3tgJJiDU1YGFgAP4C33/n1a3H+
	Ipv1dO6lWTyvch3nczjZ+9fo+lqK58wZZ8CIUDOTEy3nlO5LH56cz6ttgh8g86bX0PdvTN/phcY1f
	lACIYzZ/ebCwPedHD/ycquWZQV/ilYkjed0kq7kSh/ikUBkPaCm5wHvNZ5GeN7syNMh13u+dYhgpB
	JE+qrQZkrQhIfQa4sjdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icgm8-0002Nt-SU; Thu, 05 Dec 2019 02:21:52 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icgkE-0008Ar-Pz
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 02:19:56 +0000
Received: by mail-yb1-xb43.google.com with SMTP id i3so853689ybe.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 18:19:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NBUCQ3HXWtjqS7u+DV8bVMI4GRsmhHpuG+2/DBZke2U=;
 b=gZqvPktcf6I8/hfOocl3lqK6ZkGdntiy5ippuyOtLR1PsAvNFTzHaCL0peOfCUrZFN
 hZBA2YM5Zqiqf+TjBICsmwrRVJTbjb6UCIRkl3PM2kOboSJ+NqrO4svjirQ8QORXJdeg
 qv5mNTpM+DPfWLq7RjcJ8+JWYXqPvqqGzwh1uGn9P+tiLP8f96Dm4PNROjUBA83XIxcm
 VzmmovvA+bxcThlIUHj5FBlFqpB5HkSrnVphnsgF32EtIVTh+GecSxdiVbLBF+LP+fDs
 D1NwShFZ5ueZxyFaeac2pntK9BO4aLlmJDZ4d4CkUanv6sO2BcaDF5DwmuaVZY7SjIyG
 LTjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NBUCQ3HXWtjqS7u+DV8bVMI4GRsmhHpuG+2/DBZke2U=;
 b=sV4NSZePjH3c9deTv3j4bEw//sHyKbXk2LVBsq6dWufG1a0acV85gHa9ZX8759ELzy
 2XvpG4Y1Hysgv9hxw7IqcT890ySV+dOs1193IBWrlRAn4qdDMWQ9Rq66Nsy/OvnP4OIS
 LG3X/6cq9Fmv7FOllxuUgezsSJhv4uwhQCAl0hblYXXU2tOZp7Fma/SMIx1oeSG8tvex
 uhkWSDa9oAeo0zSjOoOxSGPO/NVBov2PbVbOFSRl+aFEgugItSi88WGo0TjDu7p1jHNu
 2HZippZlBkKMPbQk+rxz3gdqasjF6VRZP9xHOQcTKpcziC7YkPZwtb4j0LImlNnHOb/i
 lp7A==
X-Gm-Message-State: APjAAAUI7mU3pSeuq8RYc8Jgoc+jY1FCF7zVEAn6HxV60DNimlPDAHXW
 NBSoW5t4rK9qvGhAxLZ3s6waCWS3
X-Google-Smtp-Source: APXvYqwpnSW0TEm1sDRCzLBvTQE4cuFAOFTuoVVDJT3nfkg/Z0yJYgcHWfa00gQ6AC1z7piMSl0Ffg==
X-Received: by 2002:a25:860b:: with SMTP id y11mr4655565ybk.485.1575512392989; 
 Wed, 04 Dec 2019 18:19:52 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id l6sm4188449ywa.39.2019.12.04.18.19.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 18:19:52 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 6/7] ARM64: dts: imx8mm: Fix clocks and power domain for USB
 OTG
Date: Wed,  4 Dec 2019 20:19:22 -0600
Message-Id: <20191205021924.25188-7-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191205021924.25188-1-aford173@gmail.com>
References: <20191205021924.25188-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_181954_853130_899CB92D 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Fabio Estevam <festevam@gmail.com>, Adam Ford <aford173@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are two USB OTG controllers on the i.MX8M Mini, but currently
neither are functional.

According to the device tree entries published on the NXP kernel
for the imx8m mini, these both need to be assigned to the proper
clocks and power domain in order to function.

This patch configures both USB OTG controllers to enable a missing
clock and define the power domain so boards wishing to enable
the USB OTG can do so.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index d05c5b617a4d..5036d713558f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -14,7 +14,7 @@
 
 / {
 	compatible = "fsl,imx8mm";
-	interrupt-parent = <&gpc>;
+	interrupt-parent = <&gic>;
 	#address-cells = <2>;
 	#size-cells = <2>;
 
@@ -867,8 +867,11 @@
 				interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MM_CLK_USB1_CTRL_ROOT>;
 				clock-names = "usb1_ctrl_root_clk";
-				assigned-clocks = <&clk IMX8MM_CLK_USB_BUS>;
-				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>;
+				assigned-clocks = <&clk IMX8MM_CLK_USB_BUS>,
+						  <&clk IMX8MM_CLK_USB_CORE_REF>;
+				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>,
+							 <&clk IMX8MM_SYS_PLL1_100M>;
+				power-domains = <&pgc_otg1>;
 				fsl,usbphy = <&usbphynop1>;
 				fsl,usbmisc = <&usbmisc1 0>;
 				status = "disabled";
@@ -886,8 +889,11 @@
 				interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MM_CLK_USB1_CTRL_ROOT>;
 				clock-names = "usb1_ctrl_root_clk";
-				assigned-clocks = <&clk IMX8MM_CLK_USB_BUS>;
-				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>;
+				assigned-clocks = <&clk IMX8MM_CLK_USB_BUS>,
+						  <&clk IMX8MM_CLK_USB_CORE_REF>;
+				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>,
+							 <&clk IMX8MM_SYS_PLL1_100M>;
+				power-domains = <&pgc_otg2>;
 				fsl,usbphy = <&usbphynop2>;
 				fsl,usbmisc = <&usbmisc2 0>;
 				status = "disabled";
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
