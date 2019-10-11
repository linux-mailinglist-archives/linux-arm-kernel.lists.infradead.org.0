Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3A0D47F1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 20:49:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c124Y+Ita6WsWD3GR75ATFXHcnkxGy28pUNZCNv8ivA=; b=dQwQNm558Fs8Qr
	NrrikCDBJDsiw4HwwRkHJJz9ZtjJxtTF7ydeCuJPlSXqS5yVvg+Ui9pgaCJh/UBMk5JYeKTcl1uy1
	4I8NW1Q/wITGUBu+VnMCZxjbUguYKOiTzJKSYimXKfsyeetwqK/fQ6Hc7gUjYN429aLY5OLp4nT0z
	K2PkxbdS6PvGnXVDfKbilkjAZONjopAz7xeTR0IeEBbwlHzR0NyKTptiZlx3H6itPW04qY2SZF0/S
	OHZprBzKSgEHfvUcOS0RQNgnC+CF3cAKO3drAZnjuLguaqLL0ThE4jZTtejQxu9DoG/QPEl8QC8wK
	OqgimYZGRf860zlYMCVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIzyk-0002Rq-5W; Fri, 11 Oct 2019 18:49:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIzxv-0001sy-RX; Fri, 11 Oct 2019 18:48:41 +0000
Received: from ziggy.de (unknown [37.223.145.112])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EEBEF2190F;
 Fri, 11 Oct 2019 18:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570819718;
 bh=m+vq97srCtSAkMQJp5pj1AGqRJNlXFC1HTKheGMdwMw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ofrxxdcFTleX+rEmnybr+Wk0kFjoyRBSwGegV1iuF09a25k2yfXoc5pbf1bQIZ13c
 ChWvNAKUYUcR2u3ObdEcRq+Eup0U4zyDQ2W75C4CdpPYZ970ouTaUxRHs0qePr3L4V
 2DhSaDBf9wRXVW1llOyPf9iIGVX5Emq1/oDFnh4c=
From: matthias.bgg@kernel.org
To: Florian Fainelli <f.fainelli@gmail.com>,
 "David S . Miller" <davem@davemloft.net>
Subject: [PATCH v1 3/3] ARM: dts: bcm2711: Enable GENET support for the RPi4
Date: Fri, 11 Oct 2019 20:48:21 +0200
Message-Id: <20191011184822.866-4-matthias.bgg@kernel.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191011184822.866-1-matthias.bgg@kernel.org>
References: <20191011184822.866-1-matthias.bgg@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_114840_008776_58759B32 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Matthias Brugger <mbrugger@suse.com>, Eric Anholt <eric@anholt.net>,
 linux-kernel@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Matthias Brugger <matthias.bgg@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Matthias Brugger <mbrugger@suse.com>

Enable Gigabit Ethernet support on the Raspberry Pi 4
Model B.

Signed-off-by: Matthias Brugger <mbrugger@suse.com>

---

 arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 22 ++++++++++++++++++++++
 arch/arm/boot/dts/bcm2711.dtsi        | 18 ++++++++++++++++++
 2 files changed, 40 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
index cccc1ccd19be..958553d62670 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
@@ -97,6 +97,28 @@
 	status = "okay";
 };
 
+&genet {
+	phy-handle = <&phy1>;
+	phy-mode = "rgmii";
+	status = "okay";
+	dma-burst-sz = <0x08>;
+
+	mdio@e14 {
+		compatible = "brcm,genet-mdio-v5";
+		reg = <0xe14 0x8>;
+		reg-names = "mdio";
+		#address-cells = <0x0>;
+		#size-cells = <0x1>;
+
+		phy1: ethernet-phy@1 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			/* No PHY interrupt */
+			max-speed = <1000>;
+			reg = <0x1>;
+		};
+	};
+};
+
 /* uart0 communicates with the BT module */
 &uart0 {
 	pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index ac83dac2e6ba..e2e837fcad59 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -305,6 +305,24 @@
 			cpu-release-addr = <0x0 0x000000f0>;
 		};
 	};
+
+	scb {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <1>;
+
+		ranges = <0x0 0x7c000000  0x0 0xfc000000  0x03800000>;
+
+		genet: ethernet@7d580000 {
+			compatible = "brcm,genet-v5";
+			reg = <0x0 0x7d580000 0x10000>;
+			#address-cells = <0x1>;
+			#size-cells = <0x1>;
+			interrupts = <GIC_SPI 157 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 158 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+	};
 };
 
 &clk_osc {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
