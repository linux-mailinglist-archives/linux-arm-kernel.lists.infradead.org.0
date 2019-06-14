Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2BF4619F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 16:51:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A/T06DOzTcMZpZ4cOFKbvNq4jTZ5xn695siXiFMKEok=; b=AUPGGDGUq1jPc5
	XAZ8Zrzqmn7WTp+omE8dHVNs5VxRjEhAADmneMp+DoDREroIT4NumWsiW9NXclARbnePywnmReofR
	cwxkWialkybh6lP6zcabtFHRI7d7nP6Rq6nJxd8fB5vIVgwJ/ILkA+HE+F+w5HZl74X755MHnQ2TA
	oI9gyd9pyOMgxAt56sGju6tIQW5AObV61YKvnIqgvi315mtJ/D4D9dXn1pGQru6NPwOExOf0n2xHx
	1UujAvqGhcfJ0Jat9ejp9pDC+G2TD7nxOSKBuQX10DJ2kosdKVyF3Zb1SUDma0c31/2gZ+WHSyfpQ
	LyMY11iC4wfbGtA51V0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbnYB-0005XP-UT; Fri, 14 Jun 2019 14:51:32 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnXP-00055D-Kr
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 14:50:45 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5EEofGh090288;
 Fri, 14 Jun 2019 09:50:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560523841;
 bh=rjGtB8HiTUZyJ3k3HblOFiQR+pVG5Y1GUtKfrNafjSE=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=nKy6OO5pGIzp/R3zuzOMa3o2VCli3DaL7tGjAfLzqqRyP91231swWubVM6pY3ByMw
 vMhp6uMhCmMdkJSkVhLDo4gTjGSBvgWtg5mmq6hSeSh3eDP36tiN37kBXacHfIarbD
 Ok9DGcgEo89HlekIONem6l18vTkMU+TL649BB3e8=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5EEofss016204
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 14 Jun 2019 09:50:41 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 14
 Jun 2019 09:50:40 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 14 Jun 2019 09:50:40 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5EEoYCw029549;
 Fri, 14 Jun 2019 09:50:38 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 1/2] arm64: dts: ti: k3-j721e: Add interrupt controllers in
 main domain
Date: Fri, 14 Jun 2019 20:20:00 +0530
Message-ID: <20190614145001.9598-2-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190614145001.9598-1-lokeshvutla@ti.com>
References: <20190614145001.9598-1-lokeshvutla@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_075043_783634_D22B6485 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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

Main domain in J721E has the following interrupt controller instances:
- Main Domain GPIO Interrupt router connected to gpio in main domain.
- Under the Main Domain Navigator Subsystem(NAVSS)
	- Main Navss Interrupt Router connected to main navss inta and mailboxes.
	- Main Navss Interrupt Aggregator connected to main domain UDMASS

Add DT nodes for the interrupt controllers available in main domain.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index 36c51ff9a898..a01308142f77 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -50,6 +50,17 @@
 		#iommu-cells = <1>;
 	};
 
+	main_gpio_intr: interrupt-controller0 {
+		compatible = "ti,sci-intr";
+		ti,intr-trigger-type = <1>;
+		interrupt-controller;
+		interrupt-parent = <&gic500>;
+		#interrupt-cells = <2>;
+		ti,sci = <&dmsc>;
+		ti,sci-dst-id = <14>;
+		ti,sci-rm-range-girq = <0x1>;
+	};
+
 	cbass_main_navss: interconnect0 {
 		compatible = "simple-bus";
 		#address-cells = <2>;
@@ -66,6 +77,18 @@
 			ti,sci-dst-id = <14>;
 			ti,sci-rm-range-girq = <0>, <2>;
 		};
+
+		main_udmass_inta: interrupt-controller@33d00000 {
+			compatible = "ti,sci-inta";
+			reg = <0x0 0x33d00000 0x0 0x100000>;
+			interrupt-controller;
+			interrupt-parent = <&main_navss_intr>;
+			msi-controller;
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <209>;
+			ti,sci-rm-range-vint = <0xa>;
+			ti,sci-rm-range-global-event = <0xd>;
+		};
 	};
 
 	secure_proxy_main: mailbox@32c00000 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
