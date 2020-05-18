Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3520E1D9257
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 10:46:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Resent-To:Resent-Message-ID:Resent-Date:
	Resent-From:Reply-To:Cc:Content-ID:Content-Description:Resent-Sender:
	Resent-Cc:List-Owner; bh=HKN9zzTyfPVvSF7m8FgI+sYu+49GBFy4BhwAW4AAv0I=; b=XWzR
	AZ7wPRStNISvPXRs7u2DDGUh1NOyixqXlENmetAsJgWSCjTm04dg9gcFWFgaadQx96Bf+6NXhVTwG
	HatMqfn/GyAMnSlrapOpNfzuYjh2AbWXJUI3W2GGTPPTUCt1TSzObCa5cZTGJhkBZ6B3LMB9+v/o2
	LKBp/WZX/5C65pjGSeizZw/8f27zbPB5TnWfQpneXs9ZKtu5IY/kslOMLWDnVHc6tKh0ebivTDNkW
	/xkioH5zsam/BL7WH+dmCZgfeF/tho+jTvsTk1KdyD5QbcFiHnvT0/kFyqRFDWLGV4I682o+7suWP
	VRb72lECI3zG0dOWHoh1QeLVhqIqlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaxtC-0008Me-3C; Tue, 19 May 2020 08:46:18 +0000
Received: from the.earth.li ([2a00:1098:86:4d:c0ff:ee:15:900d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaxsX-0007xj-7G
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 08:45:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=earth.li;
 s=the; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject
 :To:From:Date:Resent-To:Resent-Message-ID:Resent-Date:Resent-From:Sender:
 Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Sender:Resent-Cc:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NOEATbHih4e6QP8ruGj44dsqQNDb0OKT1gy3kLZ+YnY=; b=pEtxcrWywTYucamKTZpJsY0e0L
 wE9uE9gpi2lUySI8CpVT/zSRPvp6UAbWRmJopyQr1SeWUA4xFOuDHHDBSHpl/G4jR+DQyBSXd60al
 dD4ztkRSOeI7gn3Oh6/mULPV3fbSuOWGtYKKfTkZijR3nbwGgLP/alrMn7O1n5vYMF2FnphUQF365
 cvRMWcQ0O/Xr2anCLhpCEW34hzqRh/WuMyCKXf3FH9F8P6vaQ4lzTbvX1+NRR+QtktpFj/6fbQ3qk
 tFu7hWnl1QRUFO9fcCCaByBR0yFJi1x018FQLUuuXKIl8AVc5Ie8IJjScGDnKczvfRSUXit9BPo5j
 okS6gc6A==;
Received: from noodles by the.earth.li with local (Exim 4.92)
 (envelope-from <noodles@earth.li>) id 1jaxsW-0002px-7I
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 09:45:36 +0100
Resent-From: Jonathan McDowell <noodles@earth.li>
Resent-Date: Tue, 19 May 2020 09:45:36 +0100
Resent-Message-ID: <20200519084536.GT311@earth.li>
Resent-To: linux-arm-kernel@lists.infradead.org
Date: Mon, 18 May 2020 19:09:49 +0100
From: Jonathan McDowell <noodles@earth.li>
To: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] ARM: dts: qcom: add ethernet definitions to ipq8064
Message-ID: <723344332357b5eed957443ec4a705a080fcc2da.1589824955.git.noodles@earth.li>
References: <cover.1589824955.git.noodles@earth.li>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1589824955.git.noodles@earth.li>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-UID: 2046
X-Keywords: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_014537_256811_E78AB323 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Plumb in the 4 IPQ8064 stmmac based ethernet interfaces.

Signed-off-by: Jonathan McDowell <noodles@earth.li>
---
 arch/arm/boot/dts/qcom-ipq8064.dtsi | 108 ++++++++++++++++++++++++++++
 1 file changed, 108 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-ipq8064.dtsi b/arch/arm/boot/dts/qcom-ipq8064.dtsi
index b912da9a3ff3..9c0d5510c805 100644
--- a/arch/arm/boot/dts/qcom-ipq8064.dtsi
+++ b/arch/arm/boot/dts/qcom-ipq8064.dtsi
@@ -597,6 +597,114 @@
 			perst-gpio = <&qcom_pinmux 63 GPIO_ACTIVE_LOW>;
 		};
 
+		nss_common: syscon@03000000 {
+			compatible = "syscon";
+			reg = <0x03000000 0x0000FFFF>;
+		};
+
+		qsgmii_csr: syscon@1bb00000 {
+			compatible = "syscon";
+			reg = <0x1bb00000 0x000001FF>;
+		};
+
+		stmmac_axi_setup: stmmac-axi-config {
+			snps,wr_osr_lmt = <7>;
+			snps,rd_osr_lmt = <7>;
+			snps,blen = <16 0 0 0 0 0 0>;
+		};
+
+		gmac0: ethernet@37000000 {
+			device_type = "network";
+			compatible = "qcom,ipq806x-gmac";
+			reg = <0x37000000 0x200000>;
+			interrupts = <GIC_SPI 220 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq";
+
+			snps,axi-config = <&stmmac_axi_setup>;
+			snps,pbl = <32>;
+			snps,aal = <1>;
+
+			qcom,nss-common = <&nss_common>;
+			qcom,qsgmii-csr = <&qsgmii_csr>;
+
+			clocks = <&gcc GMAC_CORE1_CLK>;
+			clock-names = "stmmaceth";
+
+			resets = <&gcc GMAC_CORE1_RESET>;
+			reset-names = "stmmaceth";
+
+			status = "disabled";
+		};
+
+		gmac1: ethernet@37200000 {
+			device_type = "network";
+			compatible = "qcom,ipq806x-gmac";
+			reg = <0x37200000 0x200000>;
+			interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq";
+
+			snps,axi-config = <&stmmac_axi_setup>;
+			snps,pbl = <32>;
+			snps,aal = <1>;
+
+			qcom,nss-common = <&nss_common>;
+			qcom,qsgmii-csr = <&qsgmii_csr>;
+
+			clocks = <&gcc GMAC_CORE2_CLK>;
+			clock-names = "stmmaceth";
+
+			resets = <&gcc GMAC_CORE2_RESET>;
+			reset-names = "stmmaceth";
+
+			status = "disabled";
+		};
+
+		gmac2: ethernet@37400000 {
+			device_type = "network";
+			compatible = "qcom,ipq806x-gmac";
+			reg = <0x37400000 0x200000>;
+			interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq";
+
+			snps,axi-config = <&stmmac_axi_setup>;
+			snps,pbl = <32>;
+			snps,aal = <1>;
+
+			qcom,nss-common = <&nss_common>;
+			qcom,qsgmii-csr = <&qsgmii_csr>;
+
+			clocks = <&gcc GMAC_CORE3_CLK>;
+			clock-names = "stmmaceth";
+
+			resets = <&gcc GMAC_CORE3_RESET>;
+			reset-names = "stmmaceth";
+
+			status = "disabled";
+		};
+
+		gmac3: ethernet@37600000 {
+			device_type = "network";
+			compatible = "qcom,ipq806x-gmac";
+			reg = <0x37600000 0x200000>;
+			interrupts = <GIC_SPI 229 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq";
+
+			snps,axi-config = <&stmmac_axi_setup>;
+			snps,pbl = <32>;
+			snps,aal = <1>;
+
+			qcom,nss-common = <&nss_common>;
+			qcom,qsgmii-csr = <&qsgmii_csr>;
+
+			clocks = <&gcc GMAC_CORE4_CLK>;
+			clock-names = "stmmaceth";
+
+			resets = <&gcc GMAC_CORE4_RESET>;
+			reset-names = "stmmaceth";
+
+			status = "disabled";
+		};
+
 		vsdcc_fixed: vsdcc-regulator {
 			compatible = "regulator-fixed";
 			regulator-name = "SDCC Power";
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
