Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6151BE0FF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 16:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cKSyEvfLapCGvd4HWKfr9sabXQYe9FN98vfQ+fLvnNo=; b=LnX1vZs2YpARbT
	FkpUNG3ExjOhjlnii1AyB9BBhpJXojcGVmwaspA0Vex6w3stkD4fTJHJMQyeUcdBNHlE1q5vQ5r8y
	FW7ylUgIB1REyZ0nyARbW9zwMy10Iqwq5f9XvNxLqQd0mlWVQ66nhkZMwRNeNTwkh/7fxHOG4JHGf
	bxA0rrUhutDFgZ6zHJn9it9per9wPmgYqxJSPjCyz+86lCZUIz37FmJpFOPlFrOj37Wpz61MujKDG
	n6tbA6328B9VDztaJCSk+X+dyLAb+cxHZNzTKaLfVhTJdFya+FEfaB0hUXAH9JDFtmLRQ3WTL/WKE
	2AQ83S0zHA/BUc2E1ILg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTnlG-0006nE-BQ; Wed, 29 Apr 2020 14:32:30 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTnjB-0005CY-PS
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 14:30:25 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03TEUKOx098722;
 Wed, 29 Apr 2020 09:30:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588170620;
 bh=nVCV7GPPDR3vDlWCebMxkjIcsvNpW4Hi/TEQD5iWzEE=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=vTh3nJn3+idbSELh56lIzPb4ZkJ9OQzOV3q89DeCiRTS/SCnmtO9tvj5LfGQpDRoU
 Xntk5cHnAUJ+oP3XlbT1N/eJP/bAxYIU6quZ8wrbN7R2OpgXG04s+ZAFnBTAkS6QGT
 gVFoI9cfBpM56F8FIFOGBR9kFLhEs7+QmkT29Wn4=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03TEUHqX055015
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 29 Apr 2020 09:30:17 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 29
 Apr 2020 09:30:17 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 29 Apr 2020 09:30:17 -0500
Received: from sokoban.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03TEU54s010784;
 Wed, 29 Apr 2020 09:30:16 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 8/8] ARM: OMAP5: Make L4SEC clock domain SWSUP only
Date: Wed, 29 Apr 2020 17:30:02 +0300
Message-ID: <20200429143002.5050-9-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200429143002.5050-1-t-kristo@ti.com>
References: <20200429143002.5050-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_073022_570452_1387ACC0 
X-CRM114-Status: GOOD (  13.57  )
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
experimentation similar issue exists on OMAP5, so do the same change
for OMAP5 also.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/mach-omap2/clockdomains54xx_data.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap2/clockdomains54xx_data.c b/arch/arm/mach-omap2/clockdomains54xx_data.c
index 3ab41fc89dd3..5611e08018a2 100644
--- a/arch/arm/mach-omap2/clockdomains54xx_data.c
+++ b/arch/arm/mach-omap2/clockdomains54xx_data.c
@@ -170,7 +170,7 @@ static struct clockdomain l4sec_54xx_clkdm = {
 	.dep_bit	  = OMAP54XX_L4SEC_STATDEP_SHIFT,
 	.wkdep_srcs	  = l4sec_wkup_sleep_deps,
 	.sleepdep_srcs	  = l4sec_wkup_sleep_deps,
-	.flags		  = CLKDM_CAN_HWSUP_SWSUP,
+	.flags		  = CLKDM_CAN_SWSUP,
 };
 
 static struct clockdomain iva_54xx_clkdm = {
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
