Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 111961FDF4A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:41:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZGgpj41Rg+SSEzwqE8nc9QuDv3dBSmLaZ2QRsmijytQ=; b=Yu7tDXtjzrrbOR
	gNh8Ezlt6OiuiQGVk/87RZTDBLFzEEpAgjYqXvPGMXFKgig+k4we2XSYLbOi+1Cg/IsD1kR4snUQG
	nNZznqN+EEkntl/xGZOo1Gv8pMUW41WVtAW9jhRnUDvzocT2bYmAEgnz6tlGqLOWC4ueURX6BRVcd
	gwQzBZys6Mkr3e8WByum7t8BxaMFNDQWGuDrPB9UrWi1hJaxED370uDkWPl6Lm1XMzWJ/fMDFL4AF
	ehJgpVhHuhWlbtDDZSZvGb+hvvlvCQoqHnFbJJKyV1Hg2/sHDljuT8lNXjrB9L+zm/dh8l2N+fpGF
	xmTj7dqo7uFFt8J37SMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljYn-00060o-2I; Thu, 18 Jun 2020 01:41:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jljBI-0008CP-Li
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:17:31 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 68FC7206F1;
 Thu, 18 Jun 2020 01:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592443048;
 bh=KHiBjjQXyS2XbbFWRPkBxHYIWFZ7BXKEogmoM+xGfb0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=B7SJ7m+eI8UsHMRAUQRLD10fUM+ctRMzto0FjA6nMBPtRLSFrEuJTBaSUGYzepOL3
 dZT4HsxNwWzxanxUrtvfkL9+z3i4DZ9GtywteP9mZAUO0sLIjVKoAupkVzLjYaEs4c
 Wcf34f+4mWVr1u84NGESCh4nrlMZTHFFqLfppAjY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 042/266] arm64: dts: fvp: Fix GIC child nodes
Date: Wed, 17 Jun 2020 21:12:47 -0400
Message-Id: <20200618011631.604574-42-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618011631.604574-1-sashal@kernel.org>
References: <20200618011631.604574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181728_995821_DDE772ED 
X-CRM114-Status: GOOD (  11.21  )
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

[ Upstream commit 78631aecc52c4b2adcf611769df2ff9c67ac16d0 ]

The GIC DT nodes for the fastmodels were not fully compliant with the
DT binding, which has certain expectations about child nodes and their
size and address cells values.

Use smaller #address-cells and #size-cells values, as the binding
requests, and adjust the reg properties accordingly.
This requires adjusting the interrupt nexus nodes as well, as one
field of the interrupt-map property depends on the GIC's address-size.

Since the .dts files share interrupt nexus nodes across different
interrupt controllers (GICv2 vs. GICv3), we need to use the only
commonly allowed #address-size value of <1> for both.

Link: https://lore.kernel.org/r/20200513103016.130417-11-andre.przywara@arm.com
Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../boot/dts/arm/foundation-v8-gicv2.dtsi     |  2 +-
 .../boot/dts/arm/foundation-v8-gicv3.dtsi     |  8 +-
 arch/arm64/boot/dts/arm/foundation-v8.dtsi    | 86 +++++++++----------
 3 files changed, 48 insertions(+), 48 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi b/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi
index 15fe81738e94..dfb23dfc0b0f 100644
--- a/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi
+++ b/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi
@@ -8,7 +8,7 @@ / {
 	gic: interrupt-controller@2c001000 {
 		compatible = "arm,cortex-a15-gic", "arm,cortex-a9-gic";
 		#interrupt-cells = <3>;
-		#address-cells = <2>;
+		#address-cells = <1>;
 		interrupt-controller;
 		reg = <0x0 0x2c001000 0 0x1000>,
 		      <0x0 0x2c002000 0 0x2000>,
diff --git a/arch/arm64/boot/dts/arm/foundation-v8-gicv3.dtsi b/arch/arm64/boot/dts/arm/foundation-v8-gicv3.dtsi
index f2c75c756039..906f51935b36 100644
--- a/arch/arm64/boot/dts/arm/foundation-v8-gicv3.dtsi
+++ b/arch/arm64/boot/dts/arm/foundation-v8-gicv3.dtsi
@@ -8,9 +8,9 @@ / {
 	gic: interrupt-controller@2f000000 {
 		compatible = "arm,gic-v3";
 		#interrupt-cells = <3>;
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x0 0x0 0x2f000000 0x100000>;
 		interrupt-controller;
 		reg =	<0x0 0x2f000000 0x0 0x10000>,
 			<0x0 0x2f100000 0x0 0x200000>,
@@ -22,7 +22,7 @@ gic: interrupt-controller@2f000000 {
 		its: its@2f020000 {
 			compatible = "arm,gic-v3-its";
 			msi-controller;
-			reg = <0x0 0x2f020000 0x0 0x20000>;
+			reg = <0x20000 0x20000>;
 		};
 	};
 };
diff --git a/arch/arm64/boot/dts/arm/foundation-v8.dtsi b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
index 3f78373f708a..2a6aa43241b3 100644
--- a/arch/arm64/boot/dts/arm/foundation-v8.dtsi
+++ b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
@@ -107,49 +107,49 @@ smb@8000000 {
 
 		#interrupt-cells = <1>;
 		interrupt-map-mask = <0 0 63>;
-		interrupt-map = <0 0  0 &gic 0 0 GIC_SPI  0 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  1 &gic 0 0 GIC_SPI  1 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  2 &gic 0 0 GIC_SPI  2 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  3 &gic 0 0 GIC_SPI  3 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  4 &gic 0 0 GIC_SPI  4 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  5 &gic 0 0 GIC_SPI  5 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  6 &gic 0 0 GIC_SPI  6 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  7 &gic 0 0 GIC_SPI  7 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  8 &gic 0 0 GIC_SPI  8 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0  9 &gic 0 0 GIC_SPI  9 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 10 &gic 0 0 GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 11 &gic 0 0 GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 12 &gic 0 0 GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 13 &gic 0 0 GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 14 &gic 0 0 GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 15 &gic 0 0 GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 16 &gic 0 0 GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 17 &gic 0 0 GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 18 &gic 0 0 GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 19 &gic 0 0 GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 20 &gic 0 0 GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 21 &gic 0 0 GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 22 &gic 0 0 GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 23 &gic 0 0 GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 24 &gic 0 0 GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 25 &gic 0 0 GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 26 &gic 0 0 GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 27 &gic 0 0 GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 28 &gic 0 0 GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 29 &gic 0 0 GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 30 &gic 0 0 GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 31 &gic 0 0 GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 32 &gic 0 0 GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 33 &gic 0 0 GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 34 &gic 0 0 GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 35 &gic 0 0 GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 36 &gic 0 0 GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 37 &gic 0 0 GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 38 &gic 0 0 GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 39 &gic 0 0 GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 40 &gic 0 0 GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 41 &gic 0 0 GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 42 &gic 0 0 GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map = <0 0  0 &gic 0 GIC_SPI  0 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  1 &gic 0 GIC_SPI  1 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  2 &gic 0 GIC_SPI  2 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  3 &gic 0 GIC_SPI  3 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  4 &gic 0 GIC_SPI  4 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  5 &gic 0 GIC_SPI  5 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  6 &gic 0 GIC_SPI  6 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  7 &gic 0 GIC_SPI  7 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  8 &gic 0 GIC_SPI  8 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0  9 &gic 0 GIC_SPI  9 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 10 &gic 0 GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 11 &gic 0 GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 12 &gic 0 GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 13 &gic 0 GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 14 &gic 0 GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 15 &gic 0 GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 16 &gic 0 GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 17 &gic 0 GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 18 &gic 0 GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 19 &gic 0 GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 20 &gic 0 GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 21 &gic 0 GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 22 &gic 0 GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 23 &gic 0 GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 24 &gic 0 GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 25 &gic 0 GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 26 &gic 0 GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 27 &gic 0 GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 28 &gic 0 GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 29 &gic 0 GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 30 &gic 0 GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 31 &gic 0 GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 32 &gic 0 GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 33 &gic 0 GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 34 &gic 0 GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 35 &gic 0 GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 36 &gic 0 GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 37 &gic 0 GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 38 &gic 0 GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 39 &gic 0 GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 40 &gic 0 GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 41 &gic 0 GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 42 &gic 0 GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
 
 		ethernet@2,02000000 {
 			compatible = "smsc,lan91c111";
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
