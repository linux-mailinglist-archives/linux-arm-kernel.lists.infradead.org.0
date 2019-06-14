Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8F1461A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 16:51:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6iK29iniy0ENzzpkTIcrOvZtOorNh7Xhzu/uyn6UJqU=; b=LFdB2pTh+wLmTU
	IpViRXSadgEVznOo5gyD/63UGZo3GCcDV32SUQR1lRcnpV24fGkS0YXlByNbB+C6VKmFCzTro3te7
	fZOCf2jyspJaVzoFX84YzLOdySeqoQ79AcI2VKhXEVrKdTCWuluJXRLibWZuAsFMuJU0YfJHChywj
	gsFjPutSJwnViADmiegtWMxjl5pP9LBIQ3REDafbN0vMHNgaZkprXJpp54ggJvhdqfJcK/nJvdXxk
	LTreABYPTXagy0DPUWjt+fRO7XeCb/OATZXntBTrgoTr9wyDi82VHTp0CVYQAfq5ng8+J+Av8dL9G
	EHMxyc4wY9mOFB3Sj6aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbnYQ-0005mu-JG; Fri, 14 Jun 2019 14:51:46 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnXS-00058H-O1
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 14:50:48 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5EEoiZj002144;
 Fri, 14 Jun 2019 09:50:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560523844;
 bh=HIcplb1e+QUtPQneVnIrH3pRLrqdkUWMj3EmxZmtwCI=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=qlKHPkqzFIiBS1FvnEmyLNalK3bbbWEAwLRpN3+E4vX4ZHrnAOk5UCnrrRBGml/gi
 w/4y3LPESM7A89fBnQPBT8o9jGyAOBSEJ8Kvv3RrFPmDqAZWaVRgs/2pXUtkw5K0CO
 ykGDGB/BswAm2qZJDaOVjpo0OVG7RYs7sVO1ktJI=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5EEoiHO100027
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 14 Jun 2019 09:50:44 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 14
 Jun 2019 09:50:44 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 14 Jun 2019 09:50:44 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5EEoYCx029549;
 Fri, 14 Jun 2019 09:50:41 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 2/2] arm64: dts: ti: k3-j721e: Add interrupt controllers in
 wakeup domain
Date: Fri, 14 Jun 2019 20:20:01 +0530
Message-ID: <20190614145001.9598-3-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190614145001.9598-1-lokeshvutla@ti.com>
References: <20190614145001.9598-1-lokeshvutla@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_075046_955376_F0466C2F 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Lokesh Vutla <lokeshvutla@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Wakeup domain in J721E SoC has an interrupt router connected to gpio
in wakeup domain. Add DT node for this interrupt router.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
index b72e033fa159..e79fd85112a9 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
@@ -69,4 +69,15 @@
 		clocks = <&k3_clks 149 0>;
 		clock-names = "fclk";
 	};
+
+	wkup_gpio_intr: interrupt-controller2 {
+		compatible = "ti,sci-intr";
+		ti,intr-trigger-type = <1>;
+		interrupt-controller;
+		interrupt-parent = <&gic500>;
+		#interrupt-cells = <2>;
+		ti,sci = <&dmsc>;
+		ti,sci-dst-id = <14>;
+		ti,sci-rm-range-girq = <0x5>;
+	};
 };
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
