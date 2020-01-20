Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45188142A41
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 13:12:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tjSOUKcVigrM2pqIikg9e2QUdxDnCtmtOe6VD3PT9q0=; b=iyB7hfjoeDxJ+E
	KIubWw1GBY5HYGPklneMBe1Sa74N9HHg2yjhIBWzIHqAy5/5TOMvZvvfcQn/0hsIrgBoeDilmqQKM
	ZGoI240GASpiXJWqKG/6AYZVou9xt5RjblufLEPgV4wwI/B4ZpPgZ/JflU5VXVXRE/9/ySNPdRIbR
	1H9WWS/d3S2rgsT/q4XUaL2p7boBM5gf3MQTDvzMGFqKCct8AWpfSV1f8j+yN5coxkY3y12ahtmbQ
	1bIJLjZ8G9h7kGapZ2gXjbfVdHGGLJahTCmMzZT4Ml5ndDCH0xuT9MslyWBSuGjQFrnripgeN1KXb
	19oqZYG4IAdhJop08jng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itVut-0005td-NS; Mon, 20 Jan 2020 12:12:27 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itVtC-0004S7-1s
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 12:10:47 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: l81/Mn1cpFjKXFxkU3yHwuF5NF+JSi6V59dBzXwwZ4tUJLNhgSgmSuXOU6UAsEJn3pCKJuTJyY
 lAarqa/2ZxUE7xdXZciYSLzqjHeDFmQ41BclimBOxtb2GUnFeVYzm/yC6VnMzNkH6HG2eFAEOy
 +RItWAYlewamNH27UYp4ZH18C1/I1I21adt3bs9kOzByByTsAHvbjbS0525S4RLb4PHJHGcRDn
 I1vNv5irL8hq7VS1BpNz4ZagZpnNxblTmOpobMsCTPFV5IJFx/wvC19OKx60CViHlR3q09m1xc
 Yss=
X-IronPort-AV: E=Sophos;i="5.70,341,1574146800"; d="scan'208";a="65305804"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Jan 2020 05:10:39 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 20 Jan 2020 05:10:37 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 20 Jan 2020 05:10:36 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <linux@armlinux.org.uk>,
 <mturquette@baylibre.com>, <sboyd@kernel.org>
Subject: [PATCH 8/8] ARM: at91: pm: add quirk for sam9x60's ulp1
Date: Mon, 20 Jan 2020 14:10:08 +0200
Message-ID: <1579522208-19523-9-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579522208-19523-1-git-send-email-claudiu.beznea@microchip.com>
References: <1579522208-19523-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_041042_103506_2C2F55A7 
X-CRM114-Status: UNSURE (   6.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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

On SAM9X60 2 nop operations has to be introduced after setting
WAITMODE bit in CKGR_MOR.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 arch/arm/mach-at91/pm_suspend.S | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-at91/pm_suspend.S b/arch/arm/mach-at91/pm_suspend.S
index 4e9eb4f57f16..be9764e8d3fa 100644
--- a/arch/arm/mach-at91/pm_suspend.S
+++ b/arch/arm/mach-at91/pm_suspend.S
@@ -275,6 +275,10 @@ ENDPROC(at91_backup_mode)
 	orr	tmp1, tmp1, #AT91_PMC_KEY
 	str	tmp1, [pmc, #AT91_CKGR_MOR]
 
+	/* Quirk for SAM9X60's PMC */
+	nop
+	nop
+
 	wait_mckrdy
 
 	/* Enable the crystal oscillator */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
