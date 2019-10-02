Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEEAEC8EE2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 18:45:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bKFCRz7sfvFyLa4EmSTaqsl+T8nlhUuFMA2YrOH0ROQ=; b=eDxk+j7wkZUdgT
	k9BwwlYGJj6dL00z8+yoF75YPCRvOUANsvdERHBoUlDDscKUA8xVFsAA7rXUxITAZhpNA6dXb8IfN
	UVz9PofOmavGQUBO3eZHaL6d7EFzLrHR1EiPjWyyMMyP/dI0LlASOdg+VzEffnsq/WUaWuSHWe2yL
	DgQtKUkkPslw2DcS/P3kb7igWNpgssinL5IAXXEoLuTcrSzKxxPcmoizRbAmzPuD/Re8cJd11aL8E
	yLdTexKNrzhRI35pBdNemgN6NhhJ/rQys5gWZzD017xyzVyMOtJBItahOchLRABXS8a4pi5ehgWts
	Q8OR2QUmYoqQN8+yCBow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFhkl-00054t-GJ; Wed, 02 Oct 2019 16:45:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFhjn-00038a-Rv
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 16:44:31 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9936421848;
 Wed,  2 Oct 2019 16:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570034666;
 bh=tLDlCYJhoCJIjUnWmnbaMmlqONN6eRhSs9VM1BeZFZg=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=baJrh2T2drgVNNXKQkkIu1Qgp0ejmwr0YdpXTTMRn4/yV1Hs+Lf+uOR/BupV69Ujo
 yf+ux+R2gun6spUF9DsRuzlTEOW/DXo+5WOSVsJMeMsmS/bb+YCJJQkz1A9I3OZ3mn
 koQAcklpfuwEExmDJOEF4LDQpvSIt2BtXLXNLivY=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Tony Lindgren <tony@atomide.com>, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-tegra@vger.kernel.org
Subject: [PATCH v3 06/10] ARM: dts: imx: Rename "iram" node to "sram"
Date: Wed,  2 Oct 2019 18:43:12 +0200
Message-Id: <20191002164316.14905-6-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191002164316.14905-1-krzk@kernel.org>
References: <20191002164316.14905-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_094428_094929_E6C22D79 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The device node name should reflect generic class of a device so rename
the "iram" node to "sram".  This will be also in sync with upcoming DT
schema.  No functional change.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm/boot/dts/imx27.dtsi | 2 +-
 arch/arm/boot/dts/imx31.dtsi | 2 +-
 arch/arm/boot/dts/imx51.dtsi | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx27.dtsi b/arch/arm/boot/dts/imx27.dtsi
index 3652f5556b29..f3464cf52e49 100644
--- a/arch/arm/boot/dts/imx27.dtsi
+++ b/arch/arm/boot/dts/imx27.dtsi
@@ -585,7 +585,7 @@
 			status = "disabled";
 		};
 
-		iram: iram@ffff4c00 {
+		iram: sram@ffff4c00 {
 			compatible = "mmio-sram";
 			reg = <0xffff4c00 0xb400>;
 		};
diff --git a/arch/arm/boot/dts/imx31.dtsi b/arch/arm/boot/dts/imx31.dtsi
index d7f6fb764997..6b62f0745b82 100644
--- a/arch/arm/boot/dts/imx31.dtsi
+++ b/arch/arm/boot/dts/imx31.dtsi
@@ -55,7 +55,7 @@
 		interrupt-parent = <&avic>;
 		ranges;
 
-		iram: iram@1fffc000 {
+		iram: sram@1fffc000 {
 			compatible = "mmio-sram";
 			reg = <0x1fffc000 0x4000>;
 			#address-cells = <1>;
diff --git a/arch/arm/boot/dts/imx51.dtsi b/arch/arm/boot/dts/imx51.dtsi
index 0a4b9a5d9a9c..dea86b98e9c3 100644
--- a/arch/arm/boot/dts/imx51.dtsi
+++ b/arch/arm/boot/dts/imx51.dtsi
@@ -116,7 +116,7 @@
 		interrupt-parent = <&tzic>;
 		ranges;
 
-		iram: iram@1ffe0000 {
+		iram: sram@1ffe0000 {
 			compatible = "mmio-sram";
 			reg = <0x1ffe0000 0x20000>;
 		};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
