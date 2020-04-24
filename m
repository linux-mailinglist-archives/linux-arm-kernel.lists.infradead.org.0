Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C281B7939
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:16:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bZaEF3c6Tu+tfk9zgVLyPH8a932uBOO/SoRa4/bekUw=; b=jmOAGCBrI+wuHX
	0iJl+emdss8IeNWv88Rcl5a0FRifeSiQNmrsEm80Ozgpzb4C1+ftumC2KLWgSHbi5jgZmI+x8KG4N
	6jt8VeBNzdUPDIzcCJZWPwateOyWd/PziPSP2sXiDPYEmGTv11KRNrD8Ty5wLaZPbxkR1F3RFqIgw
	MTP8l1jA5S2KP+KyPQ3c5xQD0CWwVIaSFaSmI9dvj3c/8LQUdXiE36swwtHMbF3ITz26uJjcT6IQx
	7J7CysCkpJjryVB/BlV2Ut/btuEUSv4ZmSaXb02uEsyK2jNQSAnU7D8w3COARsGCxsgycVRL9B0e7
	exQIwqCmOY7G8sAyxnsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS04B-0000EX-VG; Fri, 24 Apr 2020 15:16:35 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS00y-0003oD-Jg
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 15:13:19 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03OFDEEi051952;
 Fri, 24 Apr 2020 10:13:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587741194;
 bh=MVYUKywY9ySS1cFJR3cItqHS8fTfRy7NAHQhQoF8Vqc=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=MKiLxflx6zy6eHq3UscDlM1IJae5XgVBIhkHAwcB5bkYeMjL/FE9K0cc0iWUgI3A0
 cFvfZHfWgJO013uC8ipjFjg0uDtm83fBKWxy7WxE6MGlDYcvi+eE+K5vRdemPQ2HHw
 riWyCdlVIz6I9qBrSpk21z8GZQxPaMOKT6VHljKg=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03OFDEmr043418;
 Fri, 24 Apr 2020 10:13:14 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 24
 Apr 2020 10:13:14 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 24 Apr 2020 10:13:14 -0500
Received: from sokoban.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03OFCu7J122378;
 Fri, 24 Apr 2020 10:13:13 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 11/17] ARM: dts: dra72-evm-revc: Add CMA pools and enable IPUs
 & DSP1 rprocs
Date: Fri, 24 Apr 2020 18:12:38 +0300
Message-ID: <20200424151244.3225-12-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200424151244.3225-1-t-kristo@ti.com>
References: <20200424151244.3225-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_081317_810036_BB8DA487 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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
Cc: s-anna@ti.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suman Anna <s-anna@ti.com>

The CMA reserved memory nodes have been added for both the IPUs and
the DSP1 remoteproc devices on the DRA72 EVM rev C board, and assigned
to the respective rproc device nodes. These match the configuration
used on the DRA72 EVM board. Both the CMA nodes and the corresponding
rproc nodes are also enabled to enable these processors on the
DRA72 EVM rev C board.

Signed-off-by: Suman Anna <s-anna@ti.com>
Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/boot/dts/dra72-evm-revc.dts | 42 ++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm/boot/dts/dra72-evm-revc.dts b/arch/arm/boot/dts/dra72-evm-revc.dts
index 2bb2e8be6276..6e70858f6313 100644
--- a/arch/arm/boot/dts/dra72-evm-revc.dts
+++ b/arch/arm/boot/dts/dra72-evm-revc.dts
@@ -14,6 +14,33 @@
 		reg = <0x0 0x80000000 0x0 0x80000000>; /* 2GB */
 	};
 
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		ipu2_cma_pool: ipu2_cma@95800000 {
+			compatible = "shared-dma-pool";
+			reg = <0x0 0x95800000 0x0 0x3800000>;
+			reusable;
+			status = "okay";
+		};
+
+		dsp1_cma_pool: dsp1_cma@99000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x0 0x99000000 0x0 0x4000000>;
+			reusable;
+			status = "okay";
+		};
+
+		ipu1_cma_pool: ipu1_cma@9d000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x0 0x9d000000 0x0 0x2000000>;
+			reusable;
+			status = "okay";
+		};
+	};
+
 	evm_1v8_sw: fixedregulator-evm_1v8 {
 		compatible = "regulator-fixed";
 		regulator-name = "evm_1v8";
@@ -113,3 +140,18 @@
 	pinctrl-3 = <&mmc2_pins_hs200 &mmc2_iodelay_hs200_rev20_conf>;
 	vmmc-supply = <&evm_1v8_sw>;
 };
+
+&ipu2 {
+	status = "okay";
+	memory-region = <&ipu2_cma_pool>;
+};
+
+&ipu1 {
+	status = "okay";
+	memory-region = <&ipu1_cma_pool>;
+};
+
+&dsp1 {
+	status = "okay";
+	memory-region = <&dsp1_cma_pool>;
+};
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
