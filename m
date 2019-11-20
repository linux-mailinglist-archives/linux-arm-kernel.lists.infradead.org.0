Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10BFB104071
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 17:14:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xW+/QasQR5nOEoH2xyPqxm5X4sIPElG9riAmaq3RMTI=; b=uV1Uu4CP2TCncXpUqlWLMf0RjI
	fJVLHNVgtkH2Ak8YoGPcSa1U6S9YXN3cT3qy5GLfdb7betww4/gsEer66bRgLtqjKkeGDM4ag7jI4
	LmVesui8XY6I4523EbtJ6qLi+78XIrH7l1DUumY3nc8xmj4DFe3EDnQHZv4FO2hzk3iayuhqZbuVg
	ig+BvwGk5Mt5sKhLRg0O4pbrD5ukJ8ss4tUEJXGukoTNpQYLoXq4/03OvKJRdPWu+xm37bBiviNck
	y+pydrrxQ6VMoCB0sURUK1SOv2F2QQpLfm251A7qe+ed4pPiAmEu/sYR/RhNo9zqy+Otbqm3Ij1RN
	KZeHZWHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXScE-0006vw-Ul; Wed, 20 Nov 2019 16:14:02 +0000
Received: from lnfm1.sai.msu.ru ([93.180.26.255])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXSc2-0006tq-Gp; Wed, 20 Nov 2019 16:13:52 +0000
Received: from dragon.sai.msu.ru (dragon.sai.msu.ru [93.180.26.172])
 by lnfm1.sai.msu.ru (8.14.1/8.12.8) with ESMTP id xAKGDCJ3002142;
 Wed, 20 Nov 2019 19:13:17 +0300
Received: from oak.local (unknown [92.243.181.209])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate)
 by dragon.sai.msu.ru (Postfix) with ESMTPSA id 293C67A53;
 Wed, 20 Nov 2019 19:13:13 +0300 (MSK)
From: "Matwey V. Kornilov" <matwey@sai.msu.ru>
To: tom@radxa.com, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Akash Gajjar <akash@openedev.com>,
 "Matwey V. Kornilov" <matwey@sai.msu.ru>,
 Pragnesh Patel <Pragnesh_Patel@mentor.com>,
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
 linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] arm64: dts: rockchip: Add regulators for PCIe for Radxa Rock
 Pi 4 board
Date: Wed, 20 Nov 2019 19:12:54 +0300
Message-Id: <20191120161302.5157-1-matwey@sai.msu.ru>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <CAFjve-AT6c-yweF0mOPea-caG3n43nZzVPcwef-qp+n35JN9ig@mail.gmail.com>
References: <CAFjve-AT6c-yweF0mOPea-caG3n43nZzVPcwef-qp+n35JN9ig@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_081350_921405_1F08C1D7 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.180.26.255 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Add 0.9V and 1.8V voltage regulators for Radxa Rock Pi 4 board PCIe.

Signed-off-by: Matwey V. Kornilov <matwey@sai.msu.ru>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
index 01f8effd8206..215fb02b6bd0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
@@ -53,6 +53,16 @@
 		vin-supply = <&vcc12v_dcin>;
 	};
 
+	vcc_0v9: vcc-0v9 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_0v9";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
 	vcc3v3_pcie: vcc3v3-pcie-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -475,6 +485,8 @@
 	num-lanes = <4>;
 	pinctrl-0 = <&pcie_clkreqnb_cpm>;
 	pinctrl-names = "default";
+	vpcie0v9-supply = <&vcc_0v9>;
+	vpcie1v8-supply = <&vcc_1v8>;
 	vpcie3v3-supply = <&vcc3v3_pcie>;
 };
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
