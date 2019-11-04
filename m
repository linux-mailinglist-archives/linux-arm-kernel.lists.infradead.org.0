Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD19BEEA3D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 21:50:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wacbqLrW/2LFMDTpOQJo5Q/pBLpEvRRWxg3L49FQYqU=; b=KPi2BwX3wlpCnR
	PtqsNYBT5IIzrr24GLztR6uNrowS3OPcwzBMjvGJoY355zdFGEiTpM1pTm+G22Zy/p9zP2tbhhiQu
	FHvVIKr/jmw9c2aDp0wEPg2MhP9qkFOasvVuGhFrRwbKsLU5jqqcAamNEvcVSFhmSWXqsD4Wvz/HX
	SmjdrRkc9Vqw9Spaa4XEZA4OM0mRbZYjswQf1CCJSuuboGYirq84ngmQMWQ4xolOrA7AHB9dnGiNQ
	fivRf7d1rYDB8kVe0+IyXspPzoeulEFEH94Zpd1vcGrH5X/CHWIAcQNBtA6l7fTe8CYvOcuwMSIUX
	csu6C+CRU9QAAzru21fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRjIk-0001S7-2s; Mon, 04 Nov 2019 20:50:14 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRjHh-0000iy-3f
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 20:49:10 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xA4Kn6sQ052942;
 Mon, 4 Nov 2019 14:49:06 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1572900546;
 bh=AhKW4zr3y6EnszWY1v1ZvsH1fjzX055dXtF+Ryq9cP0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=CHgnUphErEUWXaluu7j/r6suvrloY7StxAq0qq5DruKxE3QYkO2SwjwdqWhCkSSfk
 S+dSCUyq1Iohuw69OgTfDMF6tJtJjUh8BbZAR7Ci+m4kn98wTxSiHOEZq/FC2VxNsr
 0+5n0ClqV1bztLhOcxuycH/P1PD7tutLD5GFjcH4=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA4Kn6Ia005026;
 Mon, 4 Nov 2019 14:49:06 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 4 Nov
 2019 14:49:06 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 4 Nov 2019 14:48:51 -0600
Received: from ula0869644.dal.design.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA4Kmvxx038360;
 Mon, 4 Nov 2019 14:49:05 -0600
From: Benoit Parrot <bparrot@ti.com>
To: Tony Lindgren <tony@atomide.com>, Tero Kristo <t-kristo@ti.com>
Subject: [Patch v2 03/10] ARM: OMAP: DRA7xx: Make CAM clock domain SWSUP only
Date: Mon, 4 Nov 2019 14:48:46 -0600
Message-ID: <20191104204853.4355-4-bparrot@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104204853.4355-1-bparrot@ti.com>
References: <20191104204853.4355-1-bparrot@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_124909_242044_A6FE3740 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Benoit Parrot <bparrot@ti.com>, Rob Herring <robh+dt@kernel.org>,
 linux-omap@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Both CAL and VIP rely on this clock domain. But CAL DPHY require
LVDSRX_96M_GFCLK to be active. When this domain is set to HWSUP the
LVDSRX_96M_GFCLK is on;y active when VIP1 clock is also active.  If only
CAL on DRA72x (which uses the VIP2 clkctrl) probes the CAM domain is
enabled but the LVDSRX_96M_GFCLK is left gated. Since LVDSRX_96M_GFCLK
is sourcing the input clock to the DPHY then actual frame capture cannot
start as the phy are inactive.

So we either have to also enabled VIP1 even if we don't intend on using
it or we need to set the CAM domain to use SWSUP only.

This patch implements the latter.

Signed-off-by: Benoit Parrot <bparrot@ti.com>
---
 arch/arm/mach-omap2/clockdomains7xx_data.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap2/clockdomains7xx_data.c b/arch/arm/mach-omap2/clockdomains7xx_data.c
index 3068802824b7..27835c4d1aa9 100644
--- a/arch/arm/mach-omap2/clockdomains7xx_data.c
+++ b/arch/arm/mach-omap2/clockdomains7xx_data.c
@@ -606,7 +606,7 @@ static struct clockdomain cam_7xx_clkdm = {
 	.dep_bit	  = DRA7XX_CAM_STATDEP_SHIFT,
 	.wkdep_srcs	  = cam_wkup_sleep_deps,
 	.sleepdep_srcs	  = cam_wkup_sleep_deps,
-	.flags		  = CLKDM_CAN_HWSUP_SWSUP,
+	.flags		  = CLKDM_CAN_SWSUP,
 };
 
 static struct clockdomain l4per_7xx_clkdm = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
