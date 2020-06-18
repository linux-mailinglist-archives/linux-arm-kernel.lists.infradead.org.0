Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AED821FDF46
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:41:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X7G4ca5p2xi5apbO2biVPxNn5m11eG8akX/Qui0p9Oc=; b=ouuwVS6x5JIoJm
	TCWyQTYRcAxipKjnCB1pNbJr8PojTuYfV0MZlTdxt4QyhyMcWKxXJIUgLksjiwcH/qUL/aou9M5nS
	5kA/tgWGj7wFMiMALWp68ZLW/XUxoHKdwIB3Yf5h7K+CjzlH9yPGYy8ovUyqWtqsuGkajBn7I0SKK
	OXX90FcwnuBp0H7Ows+TwKuOY+IXXFv11xmVOPMQ+WdNenDirXwIsUhkT8p3F38wKRRoaUGmP3BDx
	NOD6wFMHVkz38oYmy5Sq9ON+1+BBjgI44Y2Dgov1usCp5xGnMkGzRcgxDR4f+Kk0W8yu3TXMe+cX7
	QPZl9N1Zndxgv0vIAE6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljYF-0005PT-83; Thu, 18 Jun 2020 01:41:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jljBD-00088f-AW
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:17:26 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2916A206F1;
 Thu, 18 Jun 2020 01:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592443042;
 bh=tD5j7ovHVvM5Vak2kqUggUsaJKoLuVpTaLLj35dC8Yo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=stsXElKcIxLe2UDTLK8CusR+meW2brBzj2wUXlndL5GQ/qKzpLfIL0TKIr1+xLxcG
 3IUrWokn8nt/Y2w02ZXeka6bf+8lX0YJkXuOzsVNmq/QER0W3IQyKMrc/qlDa+rOWW
 9TnxGnp6uEOqiW4LzvXvf7deUqP4MZe/olxvHQDY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 038/266] arm64: dts: juno: Fix GIC child nodes
Date: Wed, 17 Jun 2020 21:12:43 -0400
Message-Id: <20200618011631.604574-38-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618011631.604574-1-sashal@kernel.org>
References: <20200618011631.604574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181723_414828_6C588ED6 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Andre Przywara <andre.przywara@arm.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andre Przywara <andre.przywara@arm.com>

[ Upstream commit a78aee9e434932a500db36cc6d88daeff3745e9f ]

The GIC DT nodes for the Juno boards were not fully compliant with
the DT binding, which has certain expectations about child nodes and
their size and address cells values.

Use smaller #address-cells and #size-cells values, as the binding
requests, and adjust the reg properties accordingly.
This requires adjusting the interrupt nexus nodes as well, as one
field of the interrupt-map property depends on the GIC's address-size.

Link: https://lore.kernel.org/r/20200513103016.130417-10-andre.przywara@arm.com
Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/arm/juno-base.dtsi | 50 +++++++++++++-------------
 1 file changed, 25 insertions(+), 25 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index 8c11660bbe40..c47f76b01c4b 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -62,35 +62,35 @@ gic: interrupt-controller@2c010000 {
 		      <0x0 0x2c02f000 0 0x2000>,
 		      <0x0 0x2c04f000 0 0x2000>,
 		      <0x0 0x2c06f000 0 0x2000>;
-		#address-cells = <2>;
+		#address-cells = <1>;
 		#interrupt-cells = <3>;
-		#size-cells = <2>;
+		#size-cells = <1>;
 		interrupt-controller;
 		interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_HIGH)>;
-		ranges = <0 0 0 0x2c1c0000 0 0x40000>;
+		ranges = <0 0 0x2c1c0000 0x40000>;
 
 		v2m_0: v2m@0 {
 			compatible = "arm,gic-v2m-frame";
 			msi-controller;
-			reg = <0 0 0 0x10000>;
+			reg = <0 0x10000>;
 		};
 
 		v2m@10000 {
 			compatible = "arm,gic-v2m-frame";
 			msi-controller;
-			reg = <0 0x10000 0 0x10000>;
+			reg = <0x10000 0x10000>;
 		};
 
 		v2m@20000 {
 			compatible = "arm,gic-v2m-frame";
 			msi-controller;
-			reg = <0 0x20000 0 0x10000>;
+			reg = <0x20000 0x10000>;
 		};
 
 		v2m@30000 {
 			compatible = "arm,gic-v2m-frame";
 			msi-controller;
-			reg = <0 0x30000 0 0x10000>;
+			reg = <0x30000 0x10000>;
 		};
 	};
 
@@ -519,10 +519,10 @@ pcie_ctlr: pcie@40000000 {
 			 <0x42000000 0x40 0x00000000 0x40 0x00000000 0x1 0x00000000>;
 		#interrupt-cells = <1>;
 		interrupt-map-mask = <0 0 0 7>;
-		interrupt-map = <0 0 0 1 &gic 0 0 GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 0 2 &gic 0 0 GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 0 3 &gic 0 0 GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 0 4 &gic 0 0 GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map = <0 0 0 1 &gic 0 GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 2 &gic 0 GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 3 &gic 0 GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 4 &gic 0 GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
 		msi-parent = <&v2m_0>;
 		status = "disabled";
 		iommu-map-mask = <0x0>;	/* RC has no means to output PCI RID */
@@ -786,19 +786,19 @@ smb@8000000 {
 
 		#interrupt-cells = <1>;
 		interrupt-map-mask = <0 0 15>;
-		interrupt-map = <0 0  0 &gic 0 0 GIC_SPI  68 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  1 &gic 0 0 GIC_SPI  69 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  2 &gic 0 0 GIC_SPI  70 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  3 &gic 0 0 GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  4 &gic 0 0 GIC_SPI 161 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  5 &gic 0 0 GIC_SPI 162 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  6 &gic 0 0 GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  7 &gic 0 0 GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  8 &gic 0 0 GIC_SPI 165 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  9 &gic 0 0 GIC_SPI 166 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 10 &gic 0 0 GIC_SPI 167 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 11 &gic 0 0 GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 12 &gic 0 0 GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map = <0 0  0 &gic 0 GIC_SPI  68 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  1 &gic 0 GIC_SPI  69 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  2 &gic 0 GIC_SPI  70 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  3 &gic 0 GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  4 &gic 0 GIC_SPI 161 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  5 &gic 0 GIC_SPI 162 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  6 &gic 0 GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  7 &gic 0 GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  8 &gic 0 GIC_SPI 165 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  9 &gic 0 GIC_SPI 166 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 10 &gic 0 GIC_SPI 167 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 11 &gic 0 GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 12 &gic 0 GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
 	site2: tlx@60000000 {
@@ -808,6 +808,6 @@ site2: tlx@60000000 {
 		ranges = <0 0 0x60000000 0x10000000>;
 		#interrupt-cells = <1>;
 		interrupt-map-mask = <0 0>;
-		interrupt-map = <0 0 &gic 0 0 GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map = <0 0 &gic 0 GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>;
 	};
 };
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
