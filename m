Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FF8F925A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 15:28:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cm3/vjd1HcJQsZj+Rbgpb16UYgMFW/jZzAhYNfsHysY=; b=u+N8qE5GQ6hQsJ
	2cUDOh3I3g0wpiZX1eBbBbRoGcYqFY/S637XvZsh0x3wL0D2uhofLqaZjeeZdh97+ZGTFw8eyp092
	6ArkpYo2B/UONCrlXpQB+Yqd/vt0MzbpHvJ9BnwNeNqOoIzjHpPe2T7PF53khRNL7Adh5WlOZ7TZB
	4fvf8gb1EJZuKGhLrpVrwORRXrNvok1nOPEqWdN/qbp3V9zKgIJWBi+R2+RxAVf5kghFeQ3+SX79Q
	2tw+apAR/X/yuFaeCqxqudo2u4KjyKrLFBquNcew8tzTPUzixQGQPvG0z9ptFKXtNAdxP932PFAtx
	U8xXUqB5qMotvncCHKGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUX9f-00039S-OV; Tue, 12 Nov 2019 14:28:27 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUX6R-0007i3-Bu
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 14:25:10 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xACEP5tj098151;
 Tue, 12 Nov 2019 08:25:05 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573568705;
 bh=0fj8Qp2adqwqoFx0I0SajIf2oiXQh0fr56mPE6nrtIM=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=d0oU6FkrxBL75Nr91yvoLsW7+nlt3L2YpKxfJEUkWD8IdJk10IBjAl5wRCLj/+bv7
 gltsPs5sNqRARzQtWL4bgwn9atK1mKF+iF7fJahUcQkfq7ozfb7UoHnGPp6RaTyL15
 X8sQP6dL8iTF/k52rlOXUAKkMU8J2Dd0OQmFkDUA=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xACEP5hP020436
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 12 Nov 2019 08:25:05 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 12
 Nov 2019 08:25:04 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 12 Nov 2019 08:24:47 -0600
Received: from uda0869644b.dal.design.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xACEOrBo036029;
 Tue, 12 Nov 2019 08:25:04 -0600
From: Benoit Parrot <bparrot@ti.com>
To: Tony Lindgren <tony@atomide.com>, Tero Kristo <t-kristo@ti.com>
Subject: [Patch v3 09/10] arm64: dts: k3-am65-main Add CAL node
Date: Tue, 12 Nov 2019 08:27:52 -0600
Message-ID: <20191112142753.22976-10-bparrot@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191112142753.22976-1-bparrot@ti.com>
References: <20191112142753.22976-1-bparrot@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_062507_563490_A7D78239 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Benoit Parrot <bparrot@ti.com>, linux-omap@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add CAL dtsi node for AM654 device. Including proper power-domains and
clock properties.

Signed-off-by: Benoit Parrot <bparrot@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index 799c75fa7981..4c65ed445e8b 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -516,4 +516,27 @@
 		dma-coherent;
 		interrupts = <GIC_SPI 355 IRQ_TYPE_EDGE_RISING>;
 	};
+
+	cal: cal@6f03000 {
+		compatible = "ti,am654-cal";
+		reg = <0x0 0x06f03000 0x0 0x400>,
+		      <0x0 0x06f03800 0x0 0x40>;
+		reg-names = "cal_top",
+			    "cal_rx_core0";
+		interrupts = <GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>;
+		ti,camerrx-control = <&scm_conf 0x40c0>;
+		clock-names = "fck";
+		clocks = <&k3_clks 2 0>;
+		power-domains = <&k3_pds 2 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			csi2_0: port@0 {
+				reg = <0>;
+			};
+		};
+	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
