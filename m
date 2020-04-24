Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D48ED1B794A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:18:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Doi/IroONNb679ra90krYu9M/rENBJqDQuOBxbhuyHY=; b=K47xNIgMAHZZma
	eudU0gp1zHRp3epxp/kPmeidPwy735VnoVyc/nxvMpTEioWlfClslP/w5SGPTl9I/z5+IPPaFyVpC
	ppkKBsxLwdVkJgCUFFHKElQkHBx3pgxZejVYFE3Jclevb/80Xtpx/w/+tcUBLvxcIZN/ST0UKZBY5
	LYG53564Gg6BB7R6qKkWPAoxCNnTfkbULkI2L/pDb2inXhaXnhDQ8Pu/phMBrhH2Oo2rZPqN2xdNH
	1hxh4hRExfY5/4rK638oW9oBEAm6zkHFDkjsgC+jZhtWf5t+vG+jp9CVuaWDDvEIVI9rCJSxoWzAO
	SnJnW3o5ezMQnSLOA6zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS05p-0001r5-19; Fri, 24 Apr 2020 15:18:17 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS015-0003tY-H6
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 15:13:25 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03OFDLIn102874;
 Fri, 24 Apr 2020 10:13:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587741201;
 bh=pRqmNUGyBPw4gYHrvhoqtHKP4Q74hDU2V/SRdI0u1qA=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=Ku8bwvrg+TAPEVlEsGkyTvjpH3YdYjZvSa3kSyoxWpm83dktkEeKjlApawLt32FmE
 xWoNtjINsxTVTA0F0i3NGGbB0EQEU6UbkKCGZlo7Z8FVmOKdxNFIE3G6ViIE6fSMfG
 3m7ThTHX1JUjWY+X66awk2gOKF8hPBpLem4RaCLM=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03OFDLkn092275
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 24 Apr 2020 10:13:21 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 24
 Apr 2020 10:13:21 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 24 Apr 2020 10:13:21 -0500
Received: from sokoban.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03OFCu7O122378;
 Fri, 24 Apr 2020 10:13:20 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 16/17] ARM: dts: am571x-idk: Add CMA pools and enable IPUs &
 DSP1 rprocs
Date: Fri, 24 Apr 2020 18:12:43 +0300
Message-ID: <20200424151244.3225-17-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200424151244.3225-1-t-kristo@ti.com>
References: <20200424151244.3225-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_081323_668308_3DB0F239 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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

The CMA reserved memory nodes have been added for both the IPUs and the
DSP1 remoteproc devices on the AM571x IDK board. These nodes are assigned
to the respective rproc device nodes, and both the IPUs and the DSP1
remote processors are enabled for this board.

The current CMA pools and sizes are defined statically for each device.
The addresses chosen are the same as the respective processors on the
DRA72 EVM board to maintain firmware compatibility between the two boards.
The CMA pools and sizes are defined using 64-bit values to support LPAE.
The starting addresses are fixed to meet current dependencies on the
remote processor firmwares, and this will go away when the remote-side
code has been improved to gather this information runtime during its
initialization.

An associated pair of the rproc node and its CMA node can be disabled
later on if there is no use-case defined to use that remote processor.

Signed-off-by: Suman Anna <s-anna@ti.com>
Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/boot/dts/am571x-idk.dts | 42 ++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm/boot/dts/am571x-idk.dts b/arch/arm/boot/dts/am571x-idk.dts
index 98f12231728a..62eb2b6ff10b 100644
--- a/arch/arm/boot/dts/am571x-idk.dts
+++ b/arch/arm/boot/dts/am571x-idk.dts
@@ -21,6 +21,33 @@
 		reg = <0x0 0x80000000 0x0 0x40000000>;
 	};
 
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		ipu2_memory_region: ipu2-memory@95800000 {
+			compatible = "shared-dma-pool";
+			reg = <0x0 0x95800000 0x0 0x3800000>;
+			reusable;
+			status = "okay";
+		};
+
+		dsp1_memory_region: dsp1-memory@99000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x0 0x99000000 0x0 0x4000000>;
+			reusable;
+			status = "okay";
+		};
+
+		ipu1_memory_region: ipu1-memory@9d000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x0 0x9d000000 0x0 0x2000000>;
+			reusable;
+			status = "okay";
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		cpu0-led {
@@ -149,6 +176,21 @@
 	load-gpios = <&gpio2 23 GPIO_ACTIVE_LOW>;
 };
 
+&ipu2 {
+	status = "okay";
+	memory-region = <&ipu2_memory_region>;
+};
+
+&ipu1 {
+	status = "okay";
+	memory-region = <&ipu1_memory_region>;
+};
+
+&dsp1 {
+	status = "okay";
+	memory-region = <&dsp1_memory_region>;
+};
+
 &pcie1_rc {
 	status = "okay";
 	gpios = <&gpio5 18 GPIO_ACTIVE_HIGH>;
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
