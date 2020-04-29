Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9121BE0FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 16:31:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d2L8GwQo3VhJToLg2Xp8O6BJcZ5/+g9t9bSD7b0evOE=; b=i42zUfkcAyi0pb
	XkOwZRHd+FSpuA8vv3vGYlipi0fgbmqBIgyHOtHBcUUALLch/rlcspkyTFRg5TkHfQPgTOsmn1/Lj
	w9lXGeVBLT3VYcRSOrZ4+BIrYdIi60dHh+dKv2ufxhfJyEREa4ritTg8zUoPMWSRgtP7lwhp7WITK
	ZNJxWtfR5j8nFau5DzDLz04e+nM71R1t12QsnXHS9OOtvPELaWBtcwJWSxniZ7US5eYc4ZkZnjM+5
	2IXdeERzM4k+gnZ14qED6xe+UYu7aZ7e1bhyETHL4bNkg1HyQYjj+8o/7WPdyZQ//ICiLe9yQBAp3
	Xxc8qzcHinWfBaSQCumA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTnkd-0006FY-83; Wed, 29 Apr 2020 14:31:51 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTnj9-0005B4-22
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 14:30:24 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03TEUBet030618;
 Wed, 29 Apr 2020 09:30:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588170611;
 bh=fWC+Rp0M0z5eox70tIMoGNLsRSAUN8+UUzp2rgayua0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=RtGgy1LX2n1oiYMNve1Jiziud30huYw4QQP+49rGVxLVsQzSpup35VZiMZS9UTDLC
 ZB+pKCUgZUXTpij0x1vuUS9yHhb+yAuzMm86P6zXOsJ1BMBXOWvJgIvp7tvHrB5pO3
 OA9EvXRuMmAWNmWcYmGFiy5E4zIg2D+QRP/ED3Mk=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03TEUBBe062590
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 29 Apr 2020 09:30:11 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 29
 Apr 2020 09:30:11 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 29 Apr 2020 09:30:11 -0500
Received: from sokoban.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03TEU54n010784;
 Wed, 29 Apr 2020 09:30:10 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 3/8] ARM: dts: omap5: add aes1 entry
Date: Wed, 29 Apr 2020 17:29:57 +0300
Message-ID: <20200429143002.5050-4-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200429143002.5050-1-t-kristo@ti.com>
References: <20200429143002.5050-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_073021_101095_B59A774A 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

OMAP5 has AES hardware cryptographic accelerator, add AES1 instance for
it.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/boot/dts/omap5.dtsi | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm/boot/dts/omap5.dtsi b/arch/arm/boot/dts/omap5.dtsi
index 2ac7f021c284..30391dbc7f8f 100644
--- a/arch/arm/boot/dts/omap5.dtsi
+++ b/arch/arm/boot/dts/omap5.dtsi
@@ -247,6 +247,35 @@
 			hw-caps-temp-alert;
 		};
 
+		aes1_target: target-module@4b501000 {
+			compatible = "ti,sysc-omap2", "ti,sysc";
+			reg = <0x4b501080 0x4>,
+			      <0x4b501084 0x4>,
+			      <0x4b501088 0x4>;
+			reg-names = "rev", "sysc", "syss";
+			ti,sysc-mask = <(SYSC_OMAP2_SOFTRESET |
+					 SYSC_OMAP2_AUTOIDLE)>;
+			ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+					<SYSC_IDLE_NO>,
+					<SYSC_IDLE_SMART>,
+					<SYSC_IDLE_SMART_WKUP>;
+			ti,syss-mask = <1>;
+			/* Domains (P, C): l4per_pwrdm, l4sec_clkdm */
+			clocks = <&l4sec_clkctrl OMAP5_AES1_CLKCTRL 0>;
+			clock-names = "fck";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x0 0x4b501000 0x1000>;
+
+			aes1: aes@0 {
+				compatible = "ti,omap4-aes";
+				reg = <0 0xa0>;
+				interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
+				dmas = <&sdma 111>, <&sdma 110>;
+				dma-names = "tx", "rx";
+			};
+		};
+
 		bandgap: bandgap@4a0021e0 {
 			reg = <0x4a0021e0 0xc
 			       0x4a00232c 0xc
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
