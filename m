Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA601B7937
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:16:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+I2YF1A41xqScNVV1vbXirmuY9gy0DN7koUW/+GOYQA=; b=NeYRCxlNxFFSch
	ZSTVdJ/ytfcF5omrQFb5g+VQNkiIv1HgS91vixoNFIIUlm/qhE8xoprFduqbh11vhwZdYGiZyjGqP
	vSvxEbpVCPAfxW6czr/mzC3hiEHtxIW+o5nig3d0q5cm1EBYnmL1tjaAEARhQRSnvQCIypZ0yTWj8
	xJyzQ/5zChXykDMh2TPqjMDsDNEakG2jBVFNJFFfyf3DTD1N4x3pB976vOlHBEGBbWbbRALpaqoNv
	CxWpJDaoukDV0Kfpq18jWHZDMN676FKY5CiGgzBTG6UqLkygPM2Quyhm+e/BKnFRufPIYF9OxM3iX
	XtssAUkvsXx1KutLPzyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS03g-000867-OE; Fri, 24 Apr 2020 15:16:04 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS00u-0003km-Mh
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 15:13:17 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03OFDA9o102845;
 Fri, 24 Apr 2020 10:13:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587741190;
 bh=KAv/NOSEEid2PYdnpesj7PdvOx6Am2Ciq3f7sfekSKs=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=gGVeTpdWJnBxvrfwM/1smUY0ronzFNyp5ZwwERBXTYh/oMOrEMRzQ3xM9Rp6zDFT3
 1Ibayow1DUxV9wys/NthvVlnDaCfe1V6SXf2IkPcNY2F3mOGsdHGNaufeT8/Y0d/Op
 piS3AztBmhzK4xNy/GMcHScY5zeaUrtzdT+32SUY=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03OFD5iH100116
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 24 Apr 2020 10:13:05 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 24
 Apr 2020 10:13:05 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 24 Apr 2020 10:13:05 -0500
Received: from sokoban.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03OFCu7D122378;
 Fri, 24 Apr 2020 10:13:04 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 05/17] ARM: dts: DRA72x: Add aliases for rproc nodes
Date: Fri, 24 Apr 2020 18:12:32 +0300
Message-ID: <20200424151244.3225-6-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200424151244.3225-1-t-kristo@ti.com>
References: <20200424151244.3225-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_081312_795050_96F5672A 
X-CRM114-Status: GOOD (  12.33  )
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

Add aliases for all the 3 remote processor nodes common to
all DRA72x/DRA71x/AM571x/AM570x boards. The aliases uses the
stem "rproc", and are defined in the order of the most common
processors on the DRA72x family. The ids are same as DRA74x
except for the missing DSP2.

The aliases can be overridden, if needed, in the respective
derivative board dts files.

Signed-off-by: Suman Anna <s-anna@ti.com>
Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/boot/dts/dra72x.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/dra72x.dtsi b/arch/arm/boot/dts/dra72x.dtsi
index da334489b18f..ae23ec14e8fa 100644
--- a/arch/arm/boot/dts/dra72x.dtsi
+++ b/arch/arm/boot/dts/dra72x.dtsi
@@ -10,6 +10,12 @@
 / {
 	compatible = "ti,dra722", "ti,dra72", "ti,dra7";
 
+	aliases {
+		rproc0 = &ipu1;
+		rproc1 = &ipu2;
+		rproc2 = &dsp1;
+	};
+
 	pmu {
 		compatible = "arm,cortex-a15-pmu";
 		interrupt-parent = <&wakeupgen>;
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
