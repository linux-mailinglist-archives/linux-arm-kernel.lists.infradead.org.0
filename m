Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 606D511BDCD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 21:24:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/whds2W9HksC1pwIhc92bu7ElhbaPjvwmJ436h9Qkcs=; b=GOTlJ0hSz0yNhX
	tr71eofOKmkOq03tads/mkAamWkw5gjVTGM5I/pXUsiQszmHHZehTCr0RO2+83yJiYIOA4LZF3cLU
	aAZedBOvni7j8cur4QC+GQGc9xyg+k3NU+DhP+ngNAysUT8M6godincnF7tFnR1Lr7iqAue+9BP5E
	+t47NbHhg0ZrTkxu/wXfq/nVVSxKXl7mfrk0LdAwIrdex8ONTD3ZLh5py2lqKXpsz5AH32EUWGlK7
	N2sSSJhzQEyJb8BYAkrE+AVOXgVcO6R24UfrmoKe1pAkmr9iMrDuATjsgFXYRc2wz/Mv6FKH63omp
	6VWvjdMS5vGvE2RVd8qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if8XU-00056V-9o; Wed, 11 Dec 2019 20:24:52 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if8XK-00055t-Np
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 20:24:44 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBBKOaU7106830;
 Wed, 11 Dec 2019 14:24:36 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576095876;
 bh=XOokrT+freFORqVJ8mOrjS85/EC9e13R8A2WaBBWr8o=;
 h=From:To:CC:Subject:Date;
 b=SSE5Z1gpd8cEZ+Yv2G4LqsDhfgfhTaufX81SZc19PLwM5rD255jkhBFtT2zYZ6RJD
 09npLkZxbY1L96PhL+Yadgt2rvAPvQGQmDGDKEpjZqE5CQq4kxF6PJ1DVRcNCOJFGE
 qMsuEOM9u+rQzMgV9Oeq7GZbl0A+YUzXMWGjijwM=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBBKOaZZ011827
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 11 Dec 2019 14:24:36 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 11
 Dec 2019 14:24:36 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 11 Dec 2019 14:24:36 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBBKOaew059579;
 Wed, 11 Dec 2019 14:24:36 -0600
From: Dave Gerlach <d-gerlach@ti.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>
Subject: [PATCH] ARM: OMAP2+: am43xx: Add lcdc clockdomain
Date: Wed, 11 Dec 2019 14:25:58 -0600
Message-ID: <20191211202558.5988-1-d-gerlach@ti.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_122442_875784_B1376A44 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tony Lindgren <tony@atomide.com>, Dave Gerlach <d-gerlach@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As described in AM437x TRM, spruhl7h, Revised January 2018, there is
an LCDC clockdomain present in the PER power domain. Although it is
entirely unused on AM437x, it should be defined along with the other
clockdomains so it can be shut off by Linux as there are no users.

Reported-by: Munan Xu <munan@ti.com>
Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
---
 arch/arm/mach-omap2/clockdomains43xx_data.c | 10 ++++++++++
 arch/arm/mach-omap2/prcm43xx.h              |  1 +
 2 files changed, 11 insertions(+)

diff --git a/arch/arm/mach-omap2/clockdomains43xx_data.c b/arch/arm/mach-omap2/clockdomains43xx_data.c
index 751708d727af..c96a2b1efbad 100644
--- a/arch/arm/mach-omap2/clockdomains43xx_data.c
+++ b/arch/arm/mach-omap2/clockdomains43xx_data.c
@@ -84,6 +84,15 @@ static struct clockdomain l3s_tsc_43xx_clkdm = {
 	.flags		  = CLKDM_CAN_SWSUP,
 };
 
+static struct clockdomain lcdc_43xx_clkdm = {
+	.name		  = "lcdc_clkdm",
+	.pwrdm		  = { .name = "per_pwrdm" },
+	.prcm_partition	  = AM43XX_CM_PARTITION,
+	.cm_inst	  = AM43XX_CM_PER_INST,
+	.clkdm_offs	  = AM43XX_CM_PER_LCDC_CDOFFS,
+	.flags		  = CLKDM_CAN_SWSUP,
+};
+
 static struct clockdomain dss_43xx_clkdm = {
 	.name		  = "dss_clkdm",
 	.pwrdm		  = { .name = "per_pwrdm" },
@@ -173,6 +182,7 @@ static struct clockdomain *clockdomains_am43xx[] __initdata = {
 	&pruss_ocp_43xx_clkdm,
 	&ocpwp_l3_43xx_clkdm,
 	&l3s_tsc_43xx_clkdm,
+	&lcdc_43xx_clkdm,
 	&dss_43xx_clkdm,
 	&l3_aon_43xx_clkdm,
 	&emif_43xx_clkdm,
diff --git a/arch/arm/mach-omap2/prcm43xx.h b/arch/arm/mach-omap2/prcm43xx.h
index e2ad14e77064..7078a61c1d3f 100644
--- a/arch/arm/mach-omap2/prcm43xx.h
+++ b/arch/arm/mach-omap2/prcm43xx.h
@@ -68,6 +68,7 @@
 #define AM43XX_CM_PER_ICSS_CDOFFS			0x0300
 #define AM43XX_CM_PER_L4LS_CDOFFS			0x0400
 #define AM43XX_CM_PER_EMIF_CDOFFS			0x0700
+#define AM43XX_CM_PER_LCDC_CDOFFS			0x0800
 #define AM43XX_CM_PER_DSS_CDOFFS			0x0a00
 #define AM43XX_CM_PER_CPSW_CDOFFS			0x0b00
 #define AM43XX_CM_PER_OCPWP_L3_CDOFFS			0x0c00
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
