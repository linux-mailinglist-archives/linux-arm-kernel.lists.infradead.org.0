Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2772CFE497
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 19:09:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mUWNkyedOhZsenyQZHGnt7mgqmV3U/m7PA4E1pXoFLU=; b=Ssw
	kuDy3d3jGbMcrKjM4rKLsbTleQfGqYP+IVmJdTvLgS9m5OgJMbupki34ekWppW4SS2vBoJepsdvSE
	0gCZpTrqEhjVXTwZOrNRWgTGSyE6a2AC9j78wRUbz5iEcznaN8G7Rz2/b/PmDL77bTIxigfLlodzv
	H/umVDe3J779OfgD7J2PWzXEreRPCxS+Pt6LOUUgvfDJY+Gi2E4bS6kQoIvlKtU1aOXOkRcHAxCo7
	yxRycrsVzjSOij8GuO/6chvHFEiUSPc9QzzTF/XsXH5pli2wdaMP2zbTpTRGkSB1l/Is7EkSNAWcl
	VtZ1J/AQF8di9RpGkvZhjwxbBj7RqAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVg2C-0007jJ-2M; Fri, 15 Nov 2019 18:09:28 +0000
Received: from lnfm1.sai.msu.ru ([93.180.26.255])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVg20-0007hx-NI; Fri, 15 Nov 2019 18:09:18 +0000
Received: from dragon.sai.msu.ru (dragon.sai.msu.ru [93.180.26.172])
 by lnfm1.sai.msu.ru (8.14.1/8.12.8) with ESMTP id xAFI8deG030971;
 Fri, 15 Nov 2019 21:08:44 +0300
Received: from oak.local (unknown [92.243.181.209])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate)
 by dragon.sai.msu.ru (Postfix) with ESMTPSA id 40A977B2D;
 Fri, 15 Nov 2019 21:08:40 +0300 (MSK)
From: "Matwey V. Kornilov" <matwey@sai.msu.ru>
To: 
Subject: [PATCH] arm64: dts: rockchip: Enable PCIe for Radxa Rock Pi 4 board
Date: Fri, 15 Nov 2019 21:08:21 +0300
Message-Id: <20191115180825.10526-1-matwey@sai.msu.ru>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_100917_126920_970C9934 
X-CRM114-Status: UNSURE (   8.57  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "Matwey V. Kornilov" <matwey@sai.msu.ru>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 matwey.kornilov@gmail.com, Akash Gajjar <akash@openedev.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>
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
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
index 1ae1ebd4efdd..9c2927faba41 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
@@ -463,6 +463,20 @@
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
+	num-lanes = <4>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_clkreqnb_cpm>;
+	max-link-speed = <2>;
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
