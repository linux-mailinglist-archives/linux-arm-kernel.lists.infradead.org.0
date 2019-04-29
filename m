Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAAB5E748
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 18:07:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JRyTKzArerFqfbtadT8kY9Ifk2IrU5NjKvGp7vett7k=; b=OIb9YWiJool6Ur
	fstZCR7PQEnkKsRcSgtQlyLfgSg1UzVYCxEixhlGklBpYqMIfj2rdlpVf+vgs8eKraj2ktTjPQgC0
	Nk4307Xpq72Dx51b3AoGyOtUu5S9RmT7t+yyuoQzTzo9zntib4SkSRdLHWsAV3ce9BEYs50jx/jTG
	juKEAFB97zCloTJ6V9l4pwcIBxNsmHvzBDQ8qKBPvkZ8OXjiWkKNbktYsaLV6m3JoSefzUX4SAoGQ
	aHhjXZN93ggeTjFfHMK4im7+S3VmjJ1pmePMX9H7vZARKmKK2ElILpupYLI1M/ODAYnd8tCUL+cmk
	Mc2E66VuXJ3O22YfAqzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL8oO-0005ks-Ca; Mon, 29 Apr 2019 16:07:24 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL8oG-0005k6-9s
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 16:07:18 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 06ACC20C6D;
 Mon, 29 Apr 2019 18:07:14 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id E83E120A21;
 Mon, 29 Apr 2019 18:07:13 +0200 (CEST)
Subject: Re: espressobin device tree with kernel 5.1 RC
To: Timothy Krantz <tkrantz@stahurabrenner.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
References: <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAABB6J1kxOR7T73eMrM92Eq+AQAAAAA=@stahurabrenner.com>
 <20190429095727.48de0b7c@xps13>
 <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAABFrsjXmIg1Q6VJqGysUaK8AQAAAAA=@stahurabrenner.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <7a5c65b6-e83f-db0a-d8a4-e476e7618d92@free.fr>
Date: Mon, 29 Apr 2019 18:07:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAABFrsjXmIg1Q6VJqGysUaK8AQAAAAA=@stahurabrenner.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Mon Apr 29 18:07:14 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_090716_640960_49A07263 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Grzegorz Jaszczyk <jaz@semihalf.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/04/2019 17:03, Timothy Krantz wrote:

> I build my own kernels for my 3 espressobins.  Up through kernel 5.0 things work fine.
>
> In the 5.1 RC kernels I have been unable to boot using the 5.1 RC device tree.
>
> ahci-mvebu d00e0000.sata: couldn't get PHY in node sata: -517
>
> then the boot fails waiting for the rootfs on my sata device.
>
> If I use a kernel 5.0 device tree with a 5.1 RC kernel it boots fine.

$ git diff --stat=99 v5.0 v5.1-rc7 arch/arm64/boot/dts/marvell
 arch/arm64/boot/dts/marvell/Makefile                        |   1 +
 arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts     |  12 +++
 arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts            | 162 +++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/marvell/armada-372x.dtsi                |   2 +-
 arch/arm64/boot/dts/marvell/armada-37xx.dtsi                |  82 +++++++++++++++-
 arch/arm64/boot/dts/marvell/armada-7040-db.dts              |   4 -
 arch/arm64/boot/dts/marvell/armada-8040-db.dts              |   4 -
 arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi          |   4 +-
 arch/arm64/boot/dts/marvell/armada-ap806-quad.dtsi          |   8 +-
 arch/arm64/boot/dts/marvell/armada-ap806.dtsi               |  18 +++-
 arch/arm64/boot/dts/marvell/armada-ap810-ap0-octa-core.dtsi |  16 +--
 arch/arm64/boot/dts/marvell/armada-cp110.dtsi               |  15 ++-
 12 files changed, 296 insertions(+), 32 deletions(-)


https://lore.kernel.org/patchwork/project/lkml/list/?series=378682


d68def52498eb  arm64: dts: marvell: armada-37xx: fix SATA node scope
2ef303f0fe44f  arm64: dts: marvell: armada-37xx: declare the COMPHY node
8e18c8e58da64  arm64: dts: marvell: armada-3720-espressobin: declare SATA PHY property

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts
index 846003bb480c..6be019e1888e 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts
@@ -46,11 +46,16 @@
 /* J9 */
 &pcie0 {
 	status = "okay";
+	phys = <&comphy1 0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_reset_pins &pcie_clkreq_pins>;
 };
 
 /* J6 */
 &sata {
 	status = "okay";
+	phys = <&comphy2 0>;
+	phy-names = "sata-phy";
 };
 
 /* J1 */
diff --git a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi b/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
index e05594ea15fb..f43c43168b00 100644
--- a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
@@ -247,6 +247,35 @@
 				reg = <0x14000 0x60>;
 			};
 
+			comphy: phy@18300 {
+				compatible = "marvell,comphy-a3700";
+				reg = <0x18300 0x300>,
+				      <0x1F000 0x400>,
+				      <0x5C000 0x400>,
+				      <0xe0178 0x8>;
+				reg-names = "comphy",
+					    "lane1_pcie_gbe",
+					    "lane0_usb3_gbe",
+					    "lane2_sata_usb3";
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				comphy0: phy@0 {
+					reg = <0>;
+					#phy-cells = <1>;
+				};
+
+				comphy1: phy@1 {
+					reg = <1>;
+					#phy-cells = <1>;
+				};
+
+				comphy2: phy@2 {
+					reg = <2>;
+					#phy-cells = <1>;
+				};
+			};
+
 			pinctrl_sb: pinctrl@18800 {
 				compatible = "marvell,armada3710-sb-pinctrl",
 					     "syscon", "simple-mfd";
@@ -368,8 +443,9 @@
 
 			sata: sata@e0000 {
 				compatible = "marvell,armada-3700-ahci";
-				reg = <0xe0000 0x2000>;
+				reg = <0xe0000 0x178>;
 				interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&nb_periph_clk 1>;
 				status = "disabled";
 			};
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
