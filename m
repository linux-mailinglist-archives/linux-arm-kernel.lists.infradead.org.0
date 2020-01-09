Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C5D1354BB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 09:50:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HvuvnHsxqXYUBznMWla/nzeqqAz7AsdqwWllxkRgkjg=; b=iRGu9M9sfdStQW
	vYWQ1tNlnNr3Ipho+/yBJF524vwhgITKCbal/7YGY9FvElR5PQ5KX1681qhyl1K4EvNjCECl703oC
	nICjlxN4q8S6JCbdNtbrkZct32dIxkwPGmEhZtYcKtp86KL/calR5kNUL9DOhgiQ3e1YtP7MtNDqq
	GXBMuEreXais8V1a9F9dB+nr/Ac1C0YoazlNzJ+GZbWgAgWr9+AL/aIcxBunXRCmOvu5sh7JW1JD2
	qp/Mkk+0J2aANxV5Myp4vVi1faQhQSd/Tshj5bLBt7lF+ul/wX6ZryK70NLdi4hRIKU4Bbr6RiC8R
	qluqq1jjT6NqA/WF732w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipTWW-0004PN-HC; Thu, 09 Jan 2020 08:50:36 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipTWO-0004OB-PH
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 08:50:30 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0098oMEB107738;
 Thu, 9 Jan 2020 02:50:22 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578559822;
 bh=BmZz4GM008QcVUfmXOfqaIwBn3aJlcL0leg79D9LVbc=;
 h=From:To:CC:Subject:Date;
 b=PBJuGVD4APjXiqg5yVm2jm2kE686Ss/0yy8YL8/wnbe6WqursScxnydg6qEV+ISlL
 l7413nX2pi+v+PQu0TGngxBYQpgjWVqmTsSswrVCFY1PNOn6G7AFigVV37h/tNOGDz
 eSkyKr94s8rP/kSA+j08kQ4n3a2xU5k84fBgh4Fc=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0098oMhY073027
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 9 Jan 2020 02:50:22 -0600
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 9 Jan
 2020 02:50:22 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 9 Jan 2020 02:50:22 -0600
Received: from a0230074-OptiPlex-7010.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0098oJc7055573;
 Thu, 9 Jan 2020 02:50:20 -0600
From: Faiz Abbas <faiz_abbas@ti.com>
To: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] arm: dts: ti: k3-am654-main: Update otap-del-sel values
Date: Thu, 9 Jan 2020 14:21:52 +0530
Message-ID: <20200109085152.10573-1-faiz_abbas@ti.com>
X-Mailer: git-send-email 2.19.2
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_005028_909142_8EB37E24 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, nm@ti.com, robh+dt@kernel.org, t-kristo@ti.com,
 faiz_abbas@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to the latest AM65x Data Manual[1], a different output tap
delay value is optimum for a given speed mode. Update these values.

[1] http://www.ti.com/lit/gpn/am6526

Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
---

This patch depends on my two kernel series posted here:
https://patchwork.kernel.org/project/linux-mmc/list/?series=225425
https://patchwork.kernel.org/project/linux-mmc/list/?series=225459

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index efb24579922c..c8d812fdfa0a 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -253,7 +253,17 @@
 		interrupts = <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>;
 		mmc-ddr-1_8v;
 		mmc-hs200-1_8v;
-		ti,otap-del-sel = <0x2>;
+		ti,otap-del-sel-legacy = <0x0>;
+		ti,otap-del-sel-mmc-hs = <0x0>;
+		ti,otap-del-sel-sd-hs = <0x0>;
+		ti,otap-del-sel-sdr12 = <0x0>;
+		ti,otap-del-sel-sdr25 = <0x0>;
+		ti,otap-del-sel-sdr50 = <0x8>;
+		ti,otap-del-sel-sdr104 = <0x5>;
+		ti,otap-del-sel-ddr50 = <0x5>;
+		ti,otap-del-sel-ddr52 = <0x5>;
+		ti,otap-del-sel-hs200 = <0x5>;
+		ti,otap-del-sel-hs400 = <0x0>;
 		ti,trm-icp = <0x8>;
 		dma-coherent;
 	};
-- 
2.19.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
