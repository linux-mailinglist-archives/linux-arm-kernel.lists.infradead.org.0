Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3EA116AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 11:42:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8SFAiwBWAtUXLnAVyUcAYIYstdQxL9H3YXQ5TyeNus=; b=pyr8hXhqbk0eK2
	ey2hk4/VUgxlUI/QovtWAGTv5xNfSNtBV/Hcq4M+W28usbyZ98tU9Ob2v1RSOuFjvlUAZr2fddHUL
	Dt3PoWl0lv+9GnNphJx8rlTDP2vtzUGXfVSg8LW1P/xlbMq9Gdc8/2CBfAV1VzipsIqIGqn3Men+J
	TrYHHa58OOkudZuy4vc7MrdyfZXNzoP7NWJ15oPyGNo2Sf/3SYrbm8dhSlhIGMHC5HqFUKPtQKESr
	A7jEDRsyiCEst6cjwMgp9fnWPfSgnmQA0AiQbq613OYiWJ0nN8XUNqDA04ARif8QO3tolGJcT7zG7
	yfcCp4yQk0wHgpKrHlQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM8EY-0004Td-0m; Thu, 02 May 2019 09:42:30 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM8E4-0003rc-Gj
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 09:42:02 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x429fvUl050693;
 Thu, 2 May 2019 04:41:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1556790117;
 bh=PD/MbWwa4koM1CAc+Dt+uBaXzKh3sZhruc/X7hicVB0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=eS0jRfiOTrtFx1cQYBC3Cz5Xw0EHhtQ0OHfzu0ZsfP8ifhqocw2QMihPbcXrHbnk2
 xSHjMIhOqfYqC8gzDtbt2pBOkh4w20sNhFIgjhX9oqFeFgrDIcaRN3KlctUiZAz34p
 M7rYRylXieQd+XtdpT9V0JtH8pK4GNrDCNmdEJ0w=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x429fvhh070676
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 2 May 2019 04:41:57 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 2 May
 2019 04:41:57 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 2 May 2019 04:41:57 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x429fkS2038664;
 Thu, 2 May 2019 04:41:54 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 3/3] arm64: dts: ti: k3-am654: Add interrupt controllers in
 wakeup domain
Date: Thu, 2 May 2019 15:11:19 +0530
Message-ID: <20190502094119.16350-4-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190502094119.16350-1-lokeshvutla@ti.com>
References: <20190502094119.16350-1-lokeshvutla@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_024200_606433_306F9B88 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Wakeup domain in AM654 SoC has an interrupt router connected to gpio
in wakeup domain. Add DT node for this interrupt router.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
index 75310bcfb94b..f1ca171abdf8 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
@@ -63,4 +63,15 @@
 		clocks = <&k3_clks 115 1>;
 		power-domains = <&k3_pds 115>;
 	};
+
+	intr_wkup_gpio: interrupt-controller2 {
+		compatible = "ti,sci-intr";
+		ti,intr-trigger-type = <1>;
+		interrupt-controller;
+		interrupt-parent = <&gic500>;
+		#interrupt-cells = <2>;
+		ti,sci = <&dmsc>;
+		ti,sci-dst-id = <56>;
+		ti,sci-rm-range-girq = <0x4>;
+	};
 };
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
