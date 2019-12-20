Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1780127459
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 04:56:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ftKrlaOxEzXpdy0Cp4tL9qATFGBWpmZg+VqrpMgtDdc=; b=SxuxccDjE1ayWLPJd0JnMHWRDr
	ND8E/YqoUxR/DcK2846mcP1+5FgKl0ehrGHOBhiazQFGdI+6D3LUZPElFXpLNt4f7lYmG6ZNvBpNC
	Ms29qeOCiXlXihFpX5dgw7ofKQTokMuzOZ5lmQ/M0bb7HKITG4aWpbvheyWhGYpjVgYGQ8ktLnHQp
	L1K1LfOpx0goWpZgjHMp5mN/ykD9xMBw44w/qfwkJBJw+GI5/rvYD97q98retGL73boT8uUeYRmly
	8O7/sTRxfMJfv846wRuAMdPkVufbnMWvmVUp3yeTxwkWwARKC/f3zTvSZARFaHfGU174IQfbWm+uA
	T19V9i6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii9Oe-0002wd-Fh; Fri, 20 Dec 2019 03:56:12 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii9NQ-0000vH-AE
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 03:55:03 +0000
Received: by mail-pg1-x542.google.com with SMTP id k197so4242863pga.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 19:54:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HjO9w3K+DhLv6DGPP4CnPl74iRTy3HmYOjIjOtLnJCY=;
 b=NLVU8mmMh0OuZFo5FioB+xL49a7TXbGb0l0JnlM0+44ShP/xZdIwLQJROJbINm/JHX
 lZHzpUgMh6JPoUHS98DWiguUctdzmFIv0PQwccHe/I8qeAqQQQq7gyB2tHNkC0gNXtM8
 RC1p+dyU6TbsP3cVgnxT6m5ewlPOr4SzS/3wk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HjO9w3K+DhLv6DGPP4CnPl74iRTy3HmYOjIjOtLnJCY=;
 b=Jo9Yd53ALCAf2b6+3DFwEi/wNloYnIHI1UrKcJ2/KRBGp54Ys19E5ueHGk8Ixy7A9H
 sONGYYPCoFWgjLINorhgnA/p4BGcqq/Bs6WtFxnHH5pNF7xFQVGmqerzQR2oWqxN6POe
 VncOSPXgqnD9gH3T2a7eRYnf/TQwsLKmetNOJE+JImINRUwNUSUSTIA53/jZBqoIAZ51
 xZHiawBnpmVvdOudKrWUkH+Bmv1un93gvHpXS3Iic4mK0hY1HmSYKCHChZ/UtjniQJzK
 NBf5FldCnOE845LaBfFQyH0qzwqTbaVl/GYMbYfArnNFhmjnleqoN0u84iSCId8U0rcF
 8lBA==
X-Gm-Message-State: APjAAAWvFha3dqLrH465ncuggqEx2pi0/rR2SoSHEe4i3DMjK924/hRT
 ZIdPyeDwXgxr/PtH0lgWTX92NA==
X-Google-Smtp-Source: APXvYqzuOoyic8K2nHA/j78B4PNAtlCcRmLYgMDR9oD0rHduorOa5hz7OMRLWUc/enOsuSJhIO5Rzg==
X-Received: by 2002:a62:8602:: with SMTP id x2mr13760012pfd.39.1576814095155; 
 Thu, 19 Dec 2019 19:54:55 -0800 (PST)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id t65sm10522205pfd.178.2019.12.19.19.54.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 19 Dec 2019 19:54:54 -0800 (PST)
From: Srinath Mannam <srinath.mannam@broadcom.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Andrew Murray <andrew.murray@arm.com>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v4 4/6] arm: dts: Change PCIe INTx mapping for NSP
Date: Fri, 20 Dec 2019 09:24:16 +0530
Message-Id: <1576814058-30003-5-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576814058-30003-1-git-send-email-srinath.mannam@broadcom.com>
References: <1576814058-30003-1-git-send-email-srinath.mannam@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_195456_429269_A082581E 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 Srinath Mannam <srinath.mannam@broadcom.com>, linux-kernel@vger.kernel.org,
 Ray Jui <ray.jui@broadcom.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ray Jui <ray.jui@broadcom.com>

Change the PCIe INTx mapping to model the 4 INTx interrupts in the
IRQ domain of the iProc PCIe controller itself

Signed-off-by: Ray Jui <ray.jui@broadcom.com>
Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
---
 arch/arm/boot/dts/bcm-nsp.dtsi | 45 ++++++++++++++++++++++++++++++++++++------
 1 file changed, 39 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/bcm-nsp.dtsi b/arch/arm/boot/dts/bcm-nsp.dtsi
index da6d70f..6d73221 100644
--- a/arch/arm/boot/dts/bcm-nsp.dtsi
+++ b/arch/arm/boot/dts/bcm-nsp.dtsi
@@ -529,8 +529,11 @@
 		reg = <0x18012000 0x1000>;
 
 		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 0 0>;
-		interrupt-map = <0 0 0 0 &gic GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie0_intc 0>,
+				<0 0 0 2 &pcie0_intc 1>,
+				<0 0 0 3 &pcie0_intc 2>,
+				<0 0 0 4 &pcie0_intc 3>;
 
 		linux,pci-domain = <0>;
 
@@ -559,6 +562,14 @@
 				     <GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>;
 			brcm,pcie-msi-inten;
 		};
+
+		pcie0_intc: interrupt-controller {
+			compatible = "brcm,iproc-intc";
+			interrupt-controller;
+			#interrupt-cells = <1>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
+		};
 	};
 
 	pcie1: pcie@18013000 {
@@ -566,8 +577,11 @@
 		reg = <0x18013000 0x1000>;
 
 		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 0 0>;
-		interrupt-map = <0 0 0 0 &gic GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie1_intc 0>,
+				<0 0 0 2 &pcie1_intc 1>,
+				<0 0 0 3 &pcie1_intc 2>,
+				<0 0 0 4 &pcie1_intc 3>;
 
 		linux,pci-domain = <1>;
 
@@ -596,6 +610,14 @@
 				     <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>;
 			brcm,pcie-msi-inten;
 		};
+
+		pcie1_intc: interrupt-controller {
+			compatible = "brcm,iproc-intc";
+			interrupt-controller;
+			#interrupt-cells = <1>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>;
+		};
 	};
 
 	pcie2: pcie@18014000 {
@@ -603,8 +625,11 @@
 		reg = <0x18014000 0x1000>;
 
 		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 0 0>;
-		interrupt-map = <0 0 0 0 &gic GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie2_intc 0>,
+				<0 0 0 2 &pcie2_intc 1>,
+				<0 0 0 3 &pcie2_intc 2>,
+				<0 0 0 4 &pcie2_intc 3>;
 
 		linux,pci-domain = <2>;
 
@@ -633,6 +658,14 @@
 				     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>;
 			brcm,pcie-msi-inten;
 		};
+
+		pcie2_intc: interrupt-controller {
+			compatible = "brcm,iproc-intc";
+			interrupt-controller;
+			#interrupt-cells = <1>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>;
+		};
 	};
 
 	thermal-zones {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
