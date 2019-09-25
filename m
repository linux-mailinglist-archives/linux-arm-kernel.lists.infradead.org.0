Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AE0BE517
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 20:50:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s4Rt0i4mVkV7D6btBanQwRMEjEh1+UAsh/gRw0C7qE8=; b=avaqh+9Agi5w4M
	YKZSHPcYalGTuEHSaAmOHRCzOFSV1HKfKRUzpOjCyT17lLKQy1gRAw8gCKxU2PRzOXl2Z5GGB1Y+m
	1X4GYvBFxUvQBiPLVeeGSealt+sloqtGZXtO4rbq/XR/LGi8DQEOxC4y/9Ypk3T8bDvmLIZ5NQA8m
	u8+p4RjikXD+xC55Gk+gNHTPWcux1VZIB2Hk5yIHT5sJXykAGY+xxKhUf9RMFIHsYPZpnZmz0P3oi
	4oVH0v9ZS7Sb5TjPtehEkNN7naswPiwqgi5LfP7wTrogfPyN+4/exjPtktGNcVOL8/l0V8taWt+eW
	w/+hFdQbCe86IZSNuwyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDCMw-0002rb-6D; Wed, 25 Sep 2019 18:50:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDCMf-0002qp-HG; Wed, 25 Sep 2019 18:50:14 +0000
Received: from muedsl-82-207-238-254.citykom.de ([82.207.238.254]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iDCMb-0005K2-1f; Wed, 25 Sep 2019 20:50:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: srinivas.kandagatla@linaro.org
Subject: [PATCH 1/2] dt-bindings: nvmem: add binding for Rockchip OTP
 controller
Date: Wed, 25 Sep 2019 20:49:56 +0200
Message-Id: <20190925184957.14338-1-heiko@sntech.de>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_115013_717400_8F9D0FD9 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Newer Rockchip SoCs use a different IP for accessing special one-
time-programmable memory, so add a binding for these controllers.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../bindings/nvmem/rockchip-otp.txt           | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/nvmem/rockchip-otp.txt

diff --git a/Documentation/devicetree/bindings/nvmem/rockchip-otp.txt b/Documentation/devicetree/bindings/nvmem/rockchip-otp.txt
new file mode 100644
index 000000000000..40f649f7c2e5
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/rockchip-otp.txt
@@ -0,0 +1,25 @@
+Rockchip internal OTP (One Time Programmable) memory device tree bindings
+
+Required properties:
+- compatible: Should be one of the following.
+  - "rockchip,px30-otp" - for PX30 SoCs.
+  - "rockchip,rk3308-otp" - for RK3308 SoCs.
+- reg: Should contain the registers location and size
+- clocks: Must contain an entry for each entry in clock-names.
+- clock-names: Should be "otp", "apb_pclk" and "phy".
+- resets: Must contain an entry for each entry in reset-names.
+  See ../../reset/reset.txt for details.
+- reset-names: Should be "phy".
+
+See nvmem.txt for more information.
+
+Example:
+	otp: otp@ff290000 {
+		compatible = "rockchip,px30-otp";
+		reg = <0x0 0xff290000 0x0 0x4000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		clocks = <&cru SCLK_OTP_USR>, <&cru PCLK_OTP_NS>,
+			 <&cru PCLK_OTP_PHY>;
+		clock-names = "otp", "apb_pclk", "phy";
+	};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
