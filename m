Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 143BA1B7944
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:17:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=au5KrEBVYqryKJbwz3nNFJNQqKIePUN4ZALyoJmlTpU=; b=fcH8R3u8A0E7Es
	QdbAi1HAtXg3nkWYARw9zLsotrVfFpoMYgBrTKWM3F4yR1JKPflHMd5AZDeANwK2UoU79HBERaD+e
	61ovTMHTKkqfwQG/Dz6p8yzcvCCfjmk6Dg/ftqcUdZDKBdWEyBVC4ch5M7G1Z7ofa05mvSyh33/SO
	rhonRijpgRGT0Ne1+OZaLvRv+GQi7y7C91empY91mwPNn/H9wntGElEZMDVLTdCLxey1xej+y86eo
	sOYmrXW7oiUzquOp1FBAukWYN/PaFRicL2Nnl9FrZy03HL9Nx9+JzRo6rzGeVoIL+Ksd8wmHcbkhb
	2GmaK4oHwD3tQmpAAVQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS057-000158-Bz; Fri, 24 Apr 2020 15:17:33 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS011-0003qL-PH
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 15:13:21 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03OFDHYr044807;
 Fri, 24 Apr 2020 10:13:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587741197;
 bh=cOgcfNckbUvPCDfNoXRZYWFzLhXc2ONpGN/G6G7Fmek=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=s2GU4N6Q5euuUPqG5CX0+apEEoVuc95NJNTbgzqY3V/adeS/W139Xyw2GicuWxfYM
 4slsOc17cBXYaMCeSJXyw6wuL5FwH3iP/vNJoPJGAGPQCcD8fh/lU0Z3ffHT2ICcdT
 XqNR2vyUXMQ8CKs8krmmK+vYvCYrA1i+8z//Rifg=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03OFDHL9043505;
 Fri, 24 Apr 2020 10:13:17 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 24
 Apr 2020 10:13:17 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 24 Apr 2020 10:13:17 -0500
Received: from sokoban.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03OFCu7L122378;
 Fri, 24 Apr 2020 10:13:16 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 13/17] ARM: dts: dra76-evm: Add CMA pools and enable IPU & DSP
 rprocs
Date: Fri, 24 Apr 2020 18:12:40 +0300
Message-ID: <20200424151244.3225-14-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200424151244.3225-1-t-kristo@ti.com>
References: <20200424151244.3225-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_081319_996257_6DE28C71 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: s-anna@ti.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suman Anna <s-anna@ti.com>

The CMA reserved memory nodes have been added for all the IPU and
the DSP remoteproc devices on the DRA76 EVM board, and assigned to
the respective rproc device nodes. These match the configuration
used on the DRA7 EVM board. Both the CMA nodes and the corresponding
rproc nodes are also enabled to enable these processors on the
DRA76 EVM board.

Signed-off-by: Suman Anna <s-anna@ti.com>
Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/boot/dts/dra76-evm.dts | 54 +++++++++++++++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/arch/arm/boot/dts/dra76-evm.dts b/arch/arm/boot/dts/dra76-evm.dts
index e958cb3d1b31..820a0ece20d4 100644
--- a/arch/arm/boot/dts/dra76-evm.dts
+++ b/arch/arm/boot/dts/dra76-evm.dts
@@ -25,6 +25,40 @@
 		reg = <0x0 0x80000000 0x0 0x80000000>;
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
+
+		dsp2_cma_pool: dsp2_cma@9f000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x0 0x9f000000 0x0 0x800000>;
+			reusable;
+			status = "okay";
+		};
+	};
+
 	vsys_12v0: fixedregulator-vsys12v0 {
 		/* main supply */
 		compatible = "regulator-fixed";
@@ -548,3 +582,23 @@
 		data-lanes = <1 2>;
 	};
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
+
+&dsp2 {
+	status = "okay";
+	memory-region = <&dsp2_cma_pool>;
+};
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
