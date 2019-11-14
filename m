Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C57A7FBF4A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 06:17:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V0gkevfwsIob/UaK755KOjQRmoXQi6S9cLluk38uznE=; b=Id9tDFT3qwXyVK
	5jDrK95LqkEGIFcgRQbMm9hAksO42kNVM/3lgHGuYDFl3bNVVdMWOoVxVx1BNBOl2Mg6AvcA/9u8p
	auCnStteWu9UPJkdp9hlW3WxAe4ExEJ/76D4vDnE3fExuAuLgtne+bPyx+BaW6VYK5yHoOEbu62gv
	SJcDrAdVFek6OegYcFX2BK+BICmQ8eHLbjPPZH68DOY+4AhA8S6tWZnHRBo6trJd0liJnfTxcvt8n
	CpveJ7UaM4H+RSnxBOfYcf7RQ3gpjd9vNapwe09NDGPE09ZLL2H0s8PPharvDIB5nR+eEFrWoUpw3
	/VNYDI0rarj/BiEZbg4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV7Vs-0003Gc-8y; Thu, 14 Nov 2019 05:17:48 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV7Sf-0007GJ-L0; Thu, 14 Nov 2019 05:14:32 +0000
Received: from floko.floko.floko (unknown
 [IPv6:2804:431:c7f0:da1c:a086:2727:e196:fd8a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 292DE290F0D;
 Thu, 14 Nov 2019 05:14:21 +0000 (GMT)
From: Helen Koike <helen.koike@collabora.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH v11 10/11] media: staging: dt-bindings: Document the Rockchip
 MIPI RX D-PHY bindings
Date: Thu, 14 Nov 2019 02:12:41 -0300
Message-Id: <20191114051242.14651-11-helen.koike@collabora.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191114051242.14651-1-helen.koike@collabora.com>
References: <20191114051242.14651-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_211430_003814_A359AD38 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, eddie.cai.linux@gmail.com, heiko@sntech.de,
 laurent.pinchart@ideasonboard.com, kernel@collabora.com,
 Rob Herring <robh@kernel.org>, zyc@rock-chips.com, jacob-chen@iotwrt.com,
 hans.verkuil@cisco.com, zhengsq@rock-chips.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, jeffy.chen@rock-chips.com,
 Helen Koike <helen.koike@collabora.com>, robh+dt@kernel.org,
 mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, tfiga@chromium.org, sakari.ailus@linux.intel.com,
 Jacob Chen <jacob2.chen@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jacob Chen <jacob2.chen@rock-chips.com>

Add DT bindings documentation for Rockchip MIPI D-PHY RX

Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
Reviewed-by: Rob Herring <robh@kernel.org>
[refactored for upstream]
Signed-off-by: Helen Koike <helen.koike@collabora.com>

---

Changes in v11: None
Changes in v10:
- unsquash

Changes in v9:
- fix title division style
- squash
- move to staging

Changes in v8: None
Changes in v7:
- updated doc with new design and tested example

 .../bindings/media/rockchip-mipi-dphy.txt     | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)
 create mode 100644 drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-mipi-dphy.txt

diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-mipi-dphy.txt b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-mipi-dphy.txt
new file mode 100644
index 000000000000..0a0be7b15a59
--- /dev/null
+++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-mipi-dphy.txt
@@ -0,0 +1,38 @@
+Rockchip SoC MIPI RX D-PHY
+--------------------------
+
+Required properties:
+- compatible: value should be one of the following
+	"rockchip,rk3288-mipi-dphy"
+	"rockchip,rk3399-mipi-dphy"
+- clocks : list of clock specifiers, corresponding to entries in
+	clock-names property;
+- clock-names: required clock name.
+- #phy-cells: Number of cells in a PHY specifier; Should be 0.
+
+MIPI RX D-PHY use registers in "general register files", it
+should be a child of the GRF.
+
+Optional properties:
+- reg: offset and length of the register set for the device.
+- rockchip,grf: MIPI TX1RX1 D-PHY not only has its own register but also
+		the GRF, so it is only necessary for MIPI TX1RX1 D-PHY.
+
+Device node example
+-------------------
+
+grf: syscon@ff770000 {
+	compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
+
+...
+
+	dphy: mipi-dphy {
+		compatible = "rockchip,rk3399-mipi-dphy";
+		clocks = <&cru SCLK_MIPIDPHY_REF>,
+			<&cru SCLK_DPHY_RX0_CFG>,
+			<&cru PCLK_VIO_GRF>;
+		clock-names = "dphy-ref", "dphy-cfg", "grf";
+		power-domains = <&power RK3399_PD_VIO>;
+		#phy-cells = <0>;
+	};
+};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
