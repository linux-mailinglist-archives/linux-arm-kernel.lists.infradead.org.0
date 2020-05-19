Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0CD1D91F3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 10:20:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LHdoaMM6jbjGQPrcwTOa4R49/DdytvLBBfsno0Qy9TA=; b=kQejsBk34x7Cbv
	UgCIvhuMjoTK3NWbJGBOBIA9T7CehE0Q6oDvQelmKU5qJJGRv0c2A6JNeI/TXLN126J2DfQE6gZPE
	C8bj+u7sdl2H1rYqJBisEihsvQ7gmHA/4bRe27qV1FwQGZOYLepUmOroOa7KZ554PFajM0S0jBPSH
	btxN+7m/oDh9j9ttFl6n6d5FZ/BJDtS1SphVSbihq2Mqt0W6ldVdgry71jhbXoG+h6k5HW1j+Jcxu
	nsJNXZyDVkOCFg6UhU3S6XM0oe33Dbqu/FXsV/X0RSNHjFKXIhHc/r+p8t2IH8YFU7hN8UEuRdfn3
	pLqSGCanwlzO7wDXMP2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaxUP-00072q-Lz; Tue, 19 May 2020 08:20:41 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaxUH-00072R-G1
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 08:20:35 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04J8KVUw104110;
 Tue, 19 May 2020 03:20:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589876431;
 bh=99xg+f+DsihApuSq8GEWJaX4IKZmwEVE27Km+1QV/ZQ=;
 h=From:To:CC:Subject:Date;
 b=qfwac1tRvCz+5L3MJ0XtyWmLq7zlTLebllBuBPNX+Z7fLGrphH/HrwZXdsT7se6Dk
 IwVuJQXIE1HDLPCVZcH7ODiW+uKMuw6gUy0uT+GKgI5Lm0QD4rSvqGfoFleNmKsGTC
 kQQPN2BLbmbjGnZ3P6VIQnsUKSJPCVExTGPbyqC8=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04J8KVAZ078580
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 19 May 2020 03:20:31 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 19
 May 2020 03:20:31 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 19 May 2020 03:20:31 -0500
Received: from a0230074-Latitude-E7470.ent.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04J8KSv3095476;
 Tue, 19 May 2020 03:20:28 -0500
From: Faiz Abbas <faiz_abbas@ti.com>
To: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v3] arm64: dts: ti: k3-am654-main: Update otap-del-sel values
Date: Tue, 19 May 2020 13:50:27 +0530
Message-ID: <20200519082027.5726-1-faiz_abbas@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_012033_574937_4DB30091 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: t-kristo@ti.com, nm@ti.com, robh+dt@kernel.org, faiz_abbas@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to the latest AM65x Data Manual[1], a different output tap
delay value is optimum for a given speed mode. Update these values.

[1] http://www.ti.com/lit/gpn/am6526

Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
---

v3: Updated values to the latest data manual revision

v2: Updated to the latest mainline kernel

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index 11887c72f23a..056130a126f9 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -244,7 +244,17 @@
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
+		ti,otap-del-sel-sdr104 = <0x7>;
+		ti,otap-del-sel-ddr50 = <0x5>;
+		ti,otap-del-sel-ddr52 = <0x5>;
+		ti,otap-del-sel-hs200 = <0x5>;
+		ti,otap-del-sel-hs400 = <0x0>;
 		ti,trm-icp = <0x8>;
 		dma-coherent;
 	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
