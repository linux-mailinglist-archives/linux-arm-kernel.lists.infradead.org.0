Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 114DA142A42
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 13:12:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WKTA8Y8U4O73XDCCNvrk86+aXpaJA4dC+LwSOW/MEL8=; b=kzkvot/AaMSOPy
	yUKFL462WdLQdMSKmtX0WndMH4+Qi34B1FfNwnHE13qxm5HcjatVCahpu5BaR2byJTextRCIfm6kY
	KeZ0cYq2GsUKqpL6KG0gr53T099f1GHLXJhuKLDnbkhQBZTLBO4O0GwQZDLR0pQziKrWTbDiOAiUI
	BsDh/9LDXp4vaHNYstqSyVzNfeDi/pJ8WT+2OhZLPS+VjqtluS8q255+voF5PbRwhZ+YcexULp1g5
	RyJesdH8zmo3uj+9Il+k6K3SVUaozLtNs5m4aSyBIAOnSoWIRO3FyAH1WX+i7MpIF5MUqdkbbP5Ri
	wo8kBpKjpqA8ge10ZSHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itVvE-0006Br-5k; Mon, 20 Jan 2020 12:12:48 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itVtN-0004cg-GU
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 12:11:01 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 5AXjTAIqWelm8ELnJfPdMSS8MebuYPwOKw9UroUtbAsnbZSOICF1xNQebaw6UUrLDtjmhTwKPk
 8hQUKbTeAj3kZd3kYA/C8GXNr81Gs7nWncz7K0KZIZms501zffiqRFx83yJO7iAPMvJrY/1xqq
 n+9SfqhwDFlp2aYsmJ2hKxSK8ykF/DLK0WUEwN3fc8sp55i26zAMGcyC098Rc2Fu8kAPcJ6x95
 1xktUEzsXkeuYPwYvVbYhAu/y6DgA6BVWSIHYfJ8nmfhLI23VUAfU//9BqqnM64713JEgRtzxZ
 BuQ=
X-IronPort-AV: E=Sophos;i="5.70,342,1574146800"; d="scan'208";a="63869254"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Jan 2020 05:10:29 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 20 Jan 2020 05:10:28 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 20 Jan 2020 05:10:26 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <linux@armlinux.org.uk>,
 <mturquette@baylibre.com>, <sboyd@kernel.org>
Subject: [PATCH 5/8] ARM: at91: pm: s/sfr/sfrbu in pm_suspend.S
Date: Mon, 20 Jan 2020 14:10:05 +0200
Message-ID: <1579522208-19523-6-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579522208-19523-1-git-send-email-claudiu.beznea@microchip.com>
References: <1579522208-19523-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_041053_617354_2F65C395 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

s/sfr/sfrbu in pm_suspend.S.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 arch/arm/mach-at91/pm_suspend.S | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-at91/pm_suspend.S b/arch/arm/mach-at91/pm_suspend.S
index 5fa0c2aa10f7..c898071e0c0b 100644
--- a/arch/arm/mach-at91/pm_suspend.S
+++ b/arch/arm/mach-at91/pm_suspend.S
@@ -103,7 +103,7 @@ ENTRY(at91_pm_suspend_in_sram)
 	cmp	tmp1, #0
 	ldrne	tmp2, [tmp1, #0]
 	ldr	tmp1, [r0, #PM_DATA_SFRBU]
-	str	tmp1, .sfr
+	str	tmp1, .sfrbu
 	cmp	tmp1, #0
 	ldrne	tmp2, [tmp1, #0x10]
 
@@ -150,7 +150,7 @@ ENTRY(at91_backup_mode)
 	wait_mckrdy
 
 	/*BUMEN*/
-	ldr	r0, .sfr
+	ldr	r0, .sfrbu
 	mov	tmp1, #0x1
 	str	tmp1, [r0, #0x10]
 
@@ -536,7 +536,7 @@ ENDPROC(at91_sramc_self_refresh)
 	.word 0
 .shdwc:
 	.word 0
-.sfr:
+.sfrbu:
 	.word 0
 .memtype:
 	.word 0
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
