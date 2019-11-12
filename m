Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C64E9F9208
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 15:24:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VzVY9IMxPR16QUc23hxaRMFvtqSwUJD/TAfJg2tQ8K4=; b=i+Z3w3KQAjS6GT
	M2oD2UrKMqf4zq1HgqJ/8Y9hvHwlVSNhx9fYgJuvdZ6A3pBu6byZRWlJgkwoO9/hqAwLS/yGbt3h+
	CFMNxybA5+RUdaj/oMmSie/1x+hvkUrdsUg4br4PZCiibNUolw437YzlJJZU+5EIbcwBcXFxrlWTn
	q0XFKQO4AS2STcXp1E0j3neCMLqYEcMNfJOtSy1pBRCwebRxMFjDnD6KcZJYQfms7KeCGD1tEOXFK
	4gc7VubEBH4kwu/KM8v2fJgk/vRwfnE9VsLXmn1ylEmHwiKNhnHhHJA9411c0JMTgPCvRv0UNr1AW
	9gu+6LPCWWce0kyjMCYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUX6A-00078o-MD; Tue, 12 Nov 2019 14:24:50 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUX5R-0006eV-U4
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 14:24:07 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xACEO3pB097817;
 Tue, 12 Nov 2019 08:24:03 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573568643;
 bh=NNNJ0BRTjwHZiUV7fQUT519sy594Hbn5jTWgRKu/2Cg=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=ZjEK2kNmdgtV1TJNnyARrirhq7d26l85vNFxtfsA3qTPkAPfoHXH6U6XJHts6L/de
 uZqAKlTvuRRX0sCAMXC77G6BejApOm3H6Y5lu2XGfk++E/+2Rq8Z49GMfkPZgHOgwS
 itjWFI9J4LO/FEqhoxnAm2WFXAfWVhU6ThakZUqs=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xACEO3QE009601
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 12 Nov 2019 08:24:03 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 12
 Nov 2019 08:23:44 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 12 Nov 2019 08:23:44 -0600
Received: from uda0869644b.dal.design.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xACENwTj099408;
 Tue, 12 Nov 2019 08:24:01 -0600
From: Benoit Parrot <bparrot@ti.com>
To: Tony Lindgren <tony@atomide.com>, Tero Kristo <t-kristo@ti.com>
Subject: [Patch v4 2/3] ARM: dts: dra7: add vpe clkctrl node
Date: Tue, 12 Nov 2019 08:26:56 -0600
Message-ID: <20191112142657.22898-3-bparrot@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191112142657.22898-1-bparrot@ti.com>
References: <20191112142657.22898-1-bparrot@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_062406_060070_9F61408E 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Benoit Parrot <bparrot@ti.com>, linux-omap@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add clkctrl nodes for VPE module.

Note that because of the current dts node name dependency for mapping to
clock domain, we must still use "vpe-clkctrl@" naming instead of generic
"clock@" naming for the node. And because of this, it's probably best to
apply the dts node addition together along with the other clock changes.

Signed-off-by: Benoit Parrot <bparrot@ti.com>
---
 arch/arm/boot/dts/dra7xx-clocks.dtsi | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/dra7xx-clocks.dtsi b/arch/arm/boot/dts/dra7xx-clocks.dtsi
index 93e1eb83bed9..d1c2406ec71c 100644
--- a/arch/arm/boot/dts/dra7xx-clocks.dtsi
+++ b/arch/arm/boot/dts/dra7xx-clocks.dtsi
@@ -1591,10 +1591,10 @@
 
 	rtc_cm: rtc-cm@700 {
 		compatible = "ti,omap4-cm";
-		reg = <0x700 0x100>;
+		reg = <0x700 0x60>;
 		#address-cells = <1>;
 		#size-cells = <1>;
-		ranges = <0 0x700 0x100>;
+		ranges = <0 0x700 0x60>;
 
 		rtc_clkctrl: rtc-clkctrl@20 {
 			compatible = "ti,clkctrl";
@@ -1603,6 +1603,20 @@
 		};
 	};
 
+	vpe_cm: vpe-cm@760 {
+		compatible = "ti,omap4-cm";
+		reg = <0x760 0xc>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0 0x760 0xc>;
+
+		vpe_clkctrl: vpe-clkctrl@0 {
+			compatible = "ti,clkctrl";
+			reg = <0x0 0xc>;
+			#clock-cells = <2>;
+		};
+	};
+
 };
 
 &cm_core {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
