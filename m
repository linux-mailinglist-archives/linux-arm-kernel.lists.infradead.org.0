Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4821BE0F5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 16:31:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rb4vbJ9twwl7x39NSM6avqzwzM5z5vD5JyVXdcEhOMI=; b=F/HPe1H1V448Td
	VpDZKx/op5eDGuL5fonUUw04uNDrokholnx/qDN+OHs8S6/hcEksMSGOrmi8pGtQ7gqwbUPH0aMOx
	+RdrQQLOh/xERCaoSJps2VcCamUuSfLaLZLXuQfWAWofj9DMqZikg6rshzWKxHzJnobdnbImiDi1e
	1raYbs0txaAN+igQldr/6vWlh7++HacGSfkYgufUZmSGh5mlmOVRUTw7fJbA9Z5gz91z6ufeSH7Y6
	r4wzGNQjF/Fe80HSTGWjy4mJavqjOskKYHLPvB88JjWgGf3Zk7UUlzXQAx/Kq27k4bK/UfmaPmsYk
	rQblDqKpsvQriCTvZsNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTnjg-0005MG-9g; Wed, 29 Apr 2020 14:30:53 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTnj4-00054R-B7
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 14:30:15 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03TEU8BB053731;
 Wed, 29 Apr 2020 09:30:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588170608;
 bh=ey//PmdKfeyz5b819jnip6em7a8suXsJVF1VwUhpTKM=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=ue8ZjUE74/gAShwFGtVblhBDMOjT9/ljMDbrjHiTVo5Saf5hSydzMZE7MRMOj5Dbc
 ZKKb8sCOoJmSF11gOXWa3KaQ0bnCS3qGOLx9evdJ82ZPmthu0KmljGo6FixgKX6jJB
 BwWZWVQOqSopR4Mwpchh65ULpnm6mUSw99uvghP0=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03TEU9MK054681
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 29 Apr 2020 09:30:09 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 29
 Apr 2020 09:30:08 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 29 Apr 2020 09:30:08 -0500
Received: from sokoban.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03TEU54l010784;
 Wed, 29 Apr 2020 09:30:07 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 1/8] ARM: dts: omap4: fix node names for the l4_cm clkctrl
 nodes
Date: Wed, 29 Apr 2020 17:29:55 +0300
Message-ID: <20200429143002.5050-2-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200429143002.5050-1-t-kristo@ti.com>
References: <20200429143002.5050-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_073014_431225_A2A65D13 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The node name for these should be clk instead of clock. Otherwise the
clock driver won't be able to map the parent/child relationships
properly, and large number of clocks end up in orphaned state.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/boot/dts/omap44xx-clocks.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/omap44xx-clocks.dtsi b/arch/arm/boot/dts/omap44xx-clocks.dtsi
index 532868591107..b82b1ca0e557 100644
--- a/arch/arm/boot/dts/omap44xx-clocks.dtsi
+++ b/arch/arm/boot/dts/omap44xx-clocks.dtsi
@@ -1279,13 +1279,13 @@
 		#size-cells = <1>;
 		ranges = <0 0x1400 0x200>;
 
-		l4_per_clkctrl: clock@20 {
+		l4_per_clkctrl: clk@20 {
 			compatible = "ti,clkctrl-l4-per", "ti,clkctrl";
 			reg = <0x20 0x144>;
 			#clock-cells = <2>;
 		};
 
-		l4_secure_clkctrl: clock@1a0 {
+		l4_secure_clkctrl: clk@1a0 {
 			compatible = "ti,clkctrl-l4-secure", "ti,clkctrl";
 			reg = <0x1a0 0x3c>;
 			#clock-cells = <2>;
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
