Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8301BE107
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 16:32:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wu1RGrU/YHpb6SJVPOPHga8SfYBi8iE3dqoK08ounsQ=; b=h690jG+KXSSZ/o
	d+RuDi5fyXRd7ldpvU117cDhgVmz2ETx0EtslG8Q1brJ0nfol7gx2YCZjGqNO/rvPd73nFAWGCvha
	pITaXI0oO7f54+IZrqfR9QwlLrAAnsU9jmlmN9Exsf3QdaUEGx2yZjjHwa2r1vsXSFU01E7tRqRXS
	Exycmk4PsxS5qX/WicjJjupgVg2rvMr9iknH88f3O2a5STNR7rf1BfuhcuIKYUCEBdFD9qK2h+BRu
	YviqNYtgzP6so0EzSOgD+6e9PDq/7ZoLMOKHStlLa8lgmjeqqq+rFav5Il6l8mRmX7mFucpYknHb1
	fjl6AWXDHqJ01ECDVIMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTnlY-00075h-Kf; Wed, 29 Apr 2020 14:32:48 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTnjD-0005Di-Ig
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 14:30:25 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03TEUGjf098716;
 Wed, 29 Apr 2020 09:30:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588170616;
 bh=i4nxys67IrBGJmeZqHzLnjDvYm4CubsYfNKisa2LT9g=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=QmTfaj5aVGqy8JbeAXA0XcCX6iqqBL1PRqfnuwJKARW4PFyoELBC0iQLS8zOIzz6+
 Tk5auPe6q3/9ZFeZUiwRLuoiLRNEO5+vlR1D5xq8pzySzCjh3SPnDPJOw5TC+Qx7D5
 5omZZXY4JxNlF1oBX20BqG0V9VG3yq4ta5fH6T/A=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03TEUGww122297;
 Wed, 29 Apr 2020 09:30:16 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 29
 Apr 2020 09:30:16 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 29 Apr 2020 09:30:16 -0500
Received: from sokoban.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03TEU54r010784;
 Wed, 29 Apr 2020 09:30:15 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 7/8] ARM: OMAP4: Make L4SEC clock domain SWSUP only
Date: Wed, 29 Apr 2020 17:30:01 +0300
Message-ID: <20200429143002.5050-8-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200429143002.5050-1-t-kristo@ti.com>
References: <20200429143002.5050-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_073023_715700_A700B4D3 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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

Commit c2ce5fb3f3f5 ('ARM: OMAP: DRA7xx: Make L4SEC clock domain SWSUP
only') made DRA7 SoC L4SEC clock domain SWSUP only because of power
state transition issues detected with HWSUP mode. Based on
experimentation similar issue exists on OMAP4, so do the same change
for OMAP4 also.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/mach-omap2/clockdomains44xx_data.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap2/clockdomains44xx_data.c b/arch/arm/mach-omap2/clockdomains44xx_data.c
index 6005c4ed3bc6..8285be7c1eab 100644
--- a/arch/arm/mach-omap2/clockdomains44xx_data.c
+++ b/arch/arm/mach-omap2/clockdomains44xx_data.c
@@ -214,7 +214,7 @@ static struct clockdomain l4_secure_44xx_clkdm = {
 	.dep_bit	  = OMAP4430_L4SEC_STATDEP_SHIFT,
 	.wkdep_srcs	  = l4_secure_wkup_sleep_deps,
 	.sleepdep_srcs	  = l4_secure_wkup_sleep_deps,
-	.flags		  = CLKDM_CAN_HWSUP_SWSUP,
+	.flags		  = CLKDM_CAN_SWSUP,
 };
 
 static struct clockdomain l4_per_44xx_clkdm = {
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
