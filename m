Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A993CFF8BA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 11:16:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BzXe2eyTiznmgy6TeoW8tdaXEqtS+3w7FUU+qTDo8rQ=; b=Snq
	il93ePgzS9w7+wRayM5RvC1kD/R6sGBIrsZyDCkGXjwPUWB6Hco9T63ingmITo0FKyxECKKTP8Fs1
	AWQP7OSwqKUNh+j24tEPU4Ti/yBHA4yRN9VI9wyqKCe5HqiGrhJBQEXs2juR1QnZI900HTxZ6YPR4
	zTlsO3poOA283U7Xl7gn3bi+ZHGhnEjcm0a6bNiY0QgwR81cJu0VqEhna7J2fGRIZfBq9ujRwRki8
	uBrM9/83sRSpdeJQVrjNKOUIqMdUJXSM75iRAIKAuE1/5VAllCkUdF4Kdeq41rLbbj9mfvSoX+O/V
	s3hOhhSRTYujgCmRN6VqmoIekkvKDHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWHbs-0001yQ-MY; Sun, 17 Nov 2019 10:16:48 +0000
Received: from lnfm1.sai.msu.ru ([93.180.26.255])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWHbb-0001xV-Il; Sun, 17 Nov 2019 10:16:33 +0000
Received: from dragon.sai.msu.ru (dragon.sai.msu.ru [93.180.26.172])
 by lnfm1.sai.msu.ru (8.14.1/8.12.8) with ESMTP id xAHAFqoA011611;
 Sun, 17 Nov 2019 13:15:57 +0300
Received: from oak.local (unknown [92.243.181.209])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate)
 by dragon.sai.msu.ru (Postfix) with ESMTPSA id 335C137923;
 Sun, 17 Nov 2019 13:15:53 +0300 (MSK)
From: "Matwey V. Kornilov" <matwey@sai.msu.ru>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Ezequiel Garcia <ezequiel@collabora.com>,
 Akash Gajjar <akash@openedev.com>,
 "Matwey V. Kornilov" <matwey@sai.msu.ru>,
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
 linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v2] arm64: dts: rockchip: Enable PCIe for Radxa Rock Pi 4 board
Date: Sun, 17 Nov 2019 13:15:37 +0300
Message-Id: <20191117101545.6406-1-matwey@sai.msu.ru>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_021631_982599_2FB11683 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.180.26.255 listed in list.dnswl.org]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, matwey.kornilov@gmail.com,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Radxa Rock Pi 4 is equipped with M.2 PCIe slot,
so enable PCIe for the board.

The changes has been tested with Intel SSD 660p series device.

    01:00.0 Class 0108: Device 8086:f1a8 (rev 03)

Signed-off-by: Matwey V. Kornilov <matwey@sai.msu.ru>
---

Changes since v1:
 - add vpcie3v3-supply

 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
index 1ae1ebd4efdd..01f8effd8206 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
@@ -463,6 +463,21 @@
 	pmu1830-supply = <&vcc_3v0>;
 };
 
+&pcie_phy {
+	status = "okay";
+};
+
+&pcie0 {
+	status = "okay";
+
+	ep-gpios = <&gpio4 RK_PD3 GPIO_ACTIVE_HIGH>;
+	max-link-speed = <2>;
+	num-lanes = <4>;
+	pinctrl-0 = <&pcie_clkreqnb_cpm>;
+	pinctrl-names = "default";
+	vpcie3v3-supply = <&vcc3v3_pcie>;
+};
+
 &pinctrl {
 	bt {
 		bt_enable_h: bt-enable-h {
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
