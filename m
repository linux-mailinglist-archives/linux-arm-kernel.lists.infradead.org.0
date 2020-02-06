Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C310C154736
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 16:11:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TW8cLMyo+IqRixOmkg/09a19akw8k2JNSnkU/lQiQM4=; b=lFDG3ieK9hrdfo
	FJ7Bas78srdx7KliPZmAOFSgD/nB617QprJpc7+L78aVoXp29w94V5ZWSBG0viLM9pmAodoYxDAP+
	gZ1L80pY3Vosys1f2dhml2jLupZtjdx97O41Zz0cuut+jBRbS2KZi0jzGDYDGoBanR6JKM2b3YQEZ
	Ny8YfqrWtu0jnZus+u6AfFEWEikpEjw+JF1hriz6W2056oDvrQphKA6hKBVb0s+RWEniTyKxXQmdB
	5GYRKPcTsawGL8RGvD1mXJlMzpfzr9C15gbG24hiJxIvuOBirwE4opSwPRNTOyyuMDiZDdPY6JN7j
	GLxJfCIZ/yj8jETtZVVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izio0-0003fU-5J; Thu, 06 Feb 2020 15:11:00 +0000
Received: from smtp.gentoo.org ([140.211.166.183])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izino-0003cv-Mu; Thu, 06 Feb 2020 15:10:50 +0000
Received: from alexis.zapto.org (85-171-52-99.rev.numericable.fr
 [85.171.52.99])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: aballier)
 by smtp.gentoo.org (Postfix) with ESMTPSA id 94BEE34E821;
 Thu,  6 Feb 2020 15:10:39 +0000 (UTC)
From: Alexis Ballier <aballier@gentoo.org>
To: 
Subject: [PATCH 2/2] arm64: dts: rockchip: rk3399-orangepi: Explicitly pinmix
 the regulator configuration GPIOs
Date: Thu,  6 Feb 2020 16:10:25 +0100
Message-Id: <20200206151025.3813-2-aballier@gentoo.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200206151025.3813-1-aballier@gentoo.org>
References: <20200206151025.3813-1-aballier@gentoo.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_071048_800661_FB682843 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [140.211.166.183 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [140.211.166.183 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Alexis Ballier <aballier@gentoo.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Those GPIOs define which register is used by the GPU & CPUB regulators
for sleep mode. The register is defined here, so better have the GPIOs
explicitly set too.

Signed-off-by: Alexis Ballier <aballier@gentoo.org>
Cc: devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
index 1767015e684c..f9f7246d4d2f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
@@ -432,6 +432,8 @@ vdd_cpu_b: regulator@40 {
 		compatible = "silergy,syr827";
 		reg = <0x40>;
 		fcs,suspend-voltage-selector = <1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&cpu_b_sleep>;
 		regulator-name = "vdd_cpu_b";
 		regulator-min-microvolt = <712500>;
 		regulator-max-microvolt = <1500000>;
@@ -449,6 +451,8 @@ vdd_gpu: regulator@41 {
 		compatible = "silergy,syr828";
 		reg = <0x41>;
 		fcs,suspend-voltage-selector = <1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&gpu_sleep>;
 		regulator-name = "vdd_gpu";
 		regulator-min-microvolt = <712500>;
 		regulator-max-microvolt = <1500000>;
@@ -561,6 +565,14 @@ phy_rstb: phy-rstb {
 	};
 
 	pmic {
+		cpu_b_sleep: cpu-b-sleep {
+			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		gpu_sleep: gpu-sleep {
+			rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
 		pmic_int_l: pmic-int-l {
 			rockchip,pins =
 				<1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
