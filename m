Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C16A31B66
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 12:47:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3p62JEGDFnK3I8/51YBDc3n2OkFlk97p4O3qMc1srig=; b=JrcOtI3CV40uTC
	GrNZa8pYfKKhFXR4AxoJtPXKVVk78BrD7+J5exxS5D1GS/JNKwrVr35d0GRnd99wDR28rK11b0w77
	XUp3JCRXMR8OpD3xtmSTkqb+w3ckpfvZlXqt3Pzpmje7fKwhEUjsFJA0Btuiwxky/deuyIVMUtrHU
	JXZ0J4SfT7CN4cEaSbvPifpC2NyFNo/5RNU3A9mQLUuxsFlwz15XNRX84kYXfspnhqG6fYYEZzXK3
	faRN7Jtl5QlZLTulcx/kVK/+jhQCB8v5qH9jfA6DeJSGiv4dLIQ//YLR7iD34jsSYt/4wNySjYWSP
	oPIQFEKqKbc2uHVTiUlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX1XO-0006r0-6q; Sat, 01 Jun 2019 10:46:58 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX1X1-0006X2-Ah
 for linux-arm-kernel@bombadil.infradead.org; Sat, 01 Jun 2019 10:46:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z3348jTxSQPyURwc46vrJOUi9hMLdEHin3sWtU/Y7iY=; b=EtmS8qfWxLCiJ98NG3LKh+8xh
 QpJc74lgA6unTu0cqxgFWwF+HfbLkVXcXLrLxREpYQmnx4z+AGNhl+sKCxbBIIXi5pF80AFE6ietr
 kn3Gec/oFq8y0Q3+xkPlgLUhKWKhhtYO/6O9NwTczfAuRK3m0MWl2eu8tTeVw/iNeh1eRO51VsBdK
 UqWv4yRfEX3cSioJCmrt2MtwmVN+oAKEk3IFFIqFoMIxX2Th/y71E7aNkZIblKYaLwA2hSPZUyxns
 SwtMYbgqrR5SB/Ykf+3rX0aqcwEdzLHTfs9a7M8V6gF9WlwsWhulU/3OStOb8wZolhSbMufiZxbyD
 kG8v6IWpQ==;
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX1Ww-00012W-20
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 10:46:33 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x51AkLOd092075;
 Sat, 1 Jun 2019 05:46:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559385981;
 bh=Z3348jTxSQPyURwc46vrJOUi9hMLdEHin3sWtU/Y7iY=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=c5zXDeuWj1HgCV3eSHncr2UCDRotKVZJPwmkjAbv6KppEe3wmUWZAmARuSzy1ME05
 uJFEtAfikKZN4uvhphZXeVziN6Ic2ffrzbxaaMCJitSIXZhCa8GWzhFotEZIxpJyZl
 xhEEMJ1J+0msgPmVGT2jsSfGrAb8u0e7k9+wSfAI=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x51AkKfb023307
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sat, 1 Jun 2019 05:46:20 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Sat, 1 Jun
 2019 05:46:20 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Sat, 1 Jun 2019 05:46:20 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x51AkJN7077632;
 Sat, 1 Jun 2019 05:46:20 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: "David S. Miller" <davem@davemloft.net>, Santosh Shilimkar
 <ssantosh@kernel.org>, Richard Cochran <richardcochran@gmail.com>, Rob
 Herring <robh+dt@kernel.org>
Subject: [PATCH net-next 05/10] ARM: dts: keystone-clocks: add input fixed
 clocks
Date: Sat, 1 Jun 2019 13:45:29 +0300
Message-ID: <20190601104534.25790-6-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190601104534.25790-1-grygorii.strashko@ti.com>
References: <20190601104534.25790-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_114630_368032_9D10408E 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 Wingman Kwok <w-kwok2@ti.com>, netdev@vger.kernel.org,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Murali Karicheri <m-karicheri2@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add set of fixed, external input clocks definitions for TIMI0, TIMI1,
TSREFCLK clocks. Such clocks can be used as reference clocks for some HW
modules (as cpts, for example) by configuring corresponding clock muxes.
For these clocks real frequencies have to be defined in board files.

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 arch/arm/boot/dts/keystone-clocks.dtsi | 27 ++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm/boot/dts/keystone-clocks.dtsi b/arch/arm/boot/dts/keystone-clocks.dtsi
index 457515b0736a..0397c3423d2d 100644
--- a/arch/arm/boot/dts/keystone-clocks.dtsi
+++ b/arch/arm/boot/dts/keystone-clocks.dtsi
@@ -408,4 +408,31 @@ clocks {
 		reg-names = "control", "domain";
 		domain-id = <0>;
 	};
+
+	/*
+	 * Below are set of fixed, input clocks definitions,
+	 * for which real frequencies have to be defined in board files.
+	 * Those clocks can be used as reference clocks for some HW modules
+	 * (as cpts, for example) by configuring corresponding clock muxes.
+	 */
+	timi0: timi0 {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <0>;
+		clock-output-names = "timi0";
+	};
+
+	timi1: timi1 {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <0>;
+		clock-output-names = "timi1";
+	};
+
+	tsrefclk: tsrefclk {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <0>;
+		clock-output-names = "tsrefclk";
+	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
