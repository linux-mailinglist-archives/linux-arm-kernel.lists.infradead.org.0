Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC82184E35
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 18:57:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pMwoyY9NabJPx3QcWfWy4EjUTTRGlt1f+cCCrLvtvTs=; b=asjtdeKqi7UWAS
	NgvdBYz4xlVRy1cCpaBrKID+mvotU9PrT4Wynw/zkep1W/53VjHwkX9x/60xL/6lg3O+ZISHwUoLD
	RGtnzAP961F2RKnJqvSdoxNQaXPbjX+oOtl/q1t9CZlJ9LxkalebupxhUdfJSU+h2kxP3521DkRTK
	7m0+yZ8g7/PRjKAtBCtKq7IslZFb4b9ruiLPFHdpfvmpLChke/VlKjB983xD/dH6F3LCJBIbutt18
	4UEtvSe51zAPD76Pwdyoyh5wh4Dt8/1Be+eAqwfjDzhigOOYUaX1IVEtSIjAw8FlSoLnHyW+f8vQ7
	IX/ch7T57zHjTLZYiAPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCoYV-0001HJ-GO; Fri, 13 Mar 2020 17:57:07 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCoXb-0000VT-8G
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 17:56:12 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02DHu8ZO001000;
 Fri, 13 Mar 2020 12:56:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584122168;
 bh=HVHKkDaWEjb8uGXSqOrK8yyo/QsEo/4K0WPdPJl9YeM=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=wvOFX4BXTYPOqZfFmuAX7VE0RzGIj9teBWDLYGQUyrzB6PImTxIOxv03yHU58bEzY
 AJep5vf7dQiI9u/VAVINWsukvQDm855mDmeJLd26aufu9eYZkxm9dE4ohD82IGNeVS
 25iZRi1FE5iVR4nmFIDIevwCG0VK6MqDWXEDg1b8=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02DHu8V0010605
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 13 Mar 2020 12:56:08 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 13
 Mar 2020 12:56:08 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 13 Mar 2020 12:56:08 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02DHu6Mh048395;
 Fri, 13 Mar 2020 12:56:07 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Rob Herring <robh+dt@kernel.org>, Tero Kristo <t-kristo@ti.com>, "David S
 . Miller" <davem@davemloft.net>, netdev <netdev@vger.kernel.org>, Roger
 Quadros <rogerq@ti.com>, <devicetree@vger.kernel.org>, Jakub Kicinski
 <kuba@kernel.org>
Subject: [PATCH net-next v3 06/10] arm64: dts: ti: k3-am65-mcu: add cpsw nuss
 node
Date: Fri, 13 Mar 2020 19:55:07 +0200
Message-ID: <20200313175511.2155-7-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200313175511.2155-1-grygorii.strashko@ti.com>
References: <20200313175511.2155-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_105611_402376_61834EC1 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Grygorii Strashko <grygorii.strashko@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Murali Karicheri <m-karicheri2@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DT node for the TI AM65x SoC Gigabit Ethernet two ports Switch
subsystem (CPSW NUSS).

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi | 49 +++++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am65.dtsi     |  1 +
 2 files changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
index ad89f93f30e5..e645664f004e 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
@@ -193,4 +193,53 @@
 			#size-cells = <0>;
 		};
 	};
+
+	mcu_cpsw: ethernet@46000000 {
+		compatible = "ti,am654-cpsw-nuss";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		reg = <0x0 0x46000000 0x0 0x200000>;
+		reg-names = "cpsw_nuss";
+		ranges = <0x0 0x0 0x0 0x46000000 0x0 0x200000>;
+		dma-coherent;
+		clocks = <&k3_clks 5 10>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 5 TI_SCI_PD_EXCLUSIVE>;
+
+		dmas = <&mcu_udmap 0xf000>,
+		       <&mcu_udmap 0xf001>,
+		       <&mcu_udmap 0xf002>,
+		       <&mcu_udmap 0xf003>,
+		       <&mcu_udmap 0xf004>,
+		       <&mcu_udmap 0xf005>,
+		       <&mcu_udmap 0xf006>,
+		       <&mcu_udmap 0xf007>,
+		       <&mcu_udmap 0x7000>;
+		dma-names = "tx0", "tx1", "tx2", "tx3",
+			    "tx4", "tx5", "tx6", "tx7",
+			    "rx";
+
+		ethernet-ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			cpsw_port1: port@1 {
+				reg = <1>;
+				ti,mac-only;
+				label = "port1";
+				ti,syscon-efuse = <&mcu_conf 0x200>;
+				phys = <&phy_gmii_sel 1>;
+			};
+		};
+
+		davinci_mdio: mdio@f00 {
+			compatible = "ti,cpsw-mdio","ti,davinci_mdio";
+			reg = <0x0 0xf00 0x0 0x100>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			clocks = <&k3_clks 5 10>;
+			clock-names = "fck";
+			bus_freq = <1000000>;
+		};
+	};
 };
diff --git a/arch/arm64/boot/dts/ti/k3-am65.dtsi b/arch/arm64/boot/dts/ti/k3-am65.dtsi
index aea36e29dd32..5be75e430965 100644
--- a/arch/arm64/boot/dts/ti/k3-am65.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65.dtsi
@@ -30,6 +30,7 @@
 		i2c3 = &main_i2c1;
 		i2c4 = &main_i2c2;
 		i2c5 = &main_i2c3;
+		ethernet0 = &cpsw_port1;
 	};
 
 	chosen { };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
