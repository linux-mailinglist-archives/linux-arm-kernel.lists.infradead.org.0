Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 547DB142A31
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 13:10:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GP4y0puQ4btiQ4hh1pzgqFKmGA03wJpqtPWdSSLIlrU=; b=QaxenSPeTXwNqi
	hiAFeb7TwhNDCvXiMZUObc+ekphIw07EYdFAR/4lj4e3wGWfnNfY7eNe518TLHGOGuagqDbpM1H8j
	0win9Y/YMxVNUjldajyAGzi8R1+KBk8oLyevDvAV+trFqgmGXnQbAlHFA7sp+eKedBsw8RNV1+wtn
	dn6vJrj1Sex0XU6Dr+iWT9O1qEvsZySvkyvyCC0n+M8zMqgfG10s1mJF7WSd567Pe8IIi/LaQLnpm
	KQMz6ezMKlDAHM1c7AsmnWNaXSn3lxZRQwKJtqbXjOuSBG/t4yRK5XjbtgsM01sYJrq0p6ZmOHJ/I
	HAgy6Z9w2DQLVyUqE7vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itVt9-0004Di-6U; Mon, 20 Jan 2020 12:10:39 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itVsn-0004BO-67
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 12:10:24 +0000
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
IronPort-SDR: XEy717sxOr71dn09PLikfej5708fGKlOQUL4mTn2B5K88s3962nMAUIWEZSTEpshtT/PAp/Fdj
 pziXUOmrO/lKSGbPkGv9lTAP+rJtmx2z57XH+1aLpgxloj4d4r/gZ7k5Z9P89/aIBhxEeEw/3j
 NiQvTci7gCsm4tfhhWzEx5onLERQFlv8P+ak5Fvpk3iU0nwQ6A4/E/vuTztuWxVTBT0oHooamO
 3AFG+OX2X4UQ88HLrAAEkC6quoyC11TivTefNwgmnCG9vQOVieGqOvFA+dWanrjXja2ebJMgSZ
 tN0=
X-IronPort-AV: E=Sophos;i="5.70,341,1574146800"; d="scan'208";a="63869209"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Jan 2020 05:10:13 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 20 Jan 2020 05:10:12 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 20 Jan 2020 05:10:10 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <linux@armlinux.org.uk>,
 <mturquette@baylibre.com>, <sboyd@kernel.org>
Subject: [PATCH 0/8] PM fixes and improvements for SAM9X60
Date: Mon, 20 Jan 2020 14:10:00 +0200
Message-ID: <1579522208-19523-1-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_041018_554558_904900F8 
X-CRM114-Status: UNSURE (   6.39  )
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

Hi,

This series adds fixes and improvements for SAM9X60 as follows:
- fix master clock register offset in pm_suspend.S
- add support for disable/enable PLL for SAM9X60
- minor fix in pm_suspend.S: s/sfr/sfrbu
- move SAM9X60's macros for PLL in include/linux/clk/at91_pmc.h

Thank you,
Claudiu Beznea

Claudiu Beznea (8):
  ARM: at91: pm: use proper master clock register offset
  Revert "ARM: at91: pm: do not disable/enable PLLA for ULP modes"
  ARM: at91: pm: add macros for plla disable/enable
  ARM: at91: pm: add pmc_version member to at91_pm_data
  ARM: at91: pm: s/sfr/sfrbu in pm_suspend.S
  clk: at91: move sam9x60's PLL register offsets to PMC header
  ARM: at91: pm: add plla disable/enable support for sam9x60
  ARM: at91: pm: add quirk for sam9x60's ulp1

 arch/arm/mach-at91/pm.c              |  35 ++++++-
 arch/arm/mach-at91/pm.h              |   2 +
 arch/arm/mach-at91/pm_data-offsets.c |   4 +
 arch/arm/mach-at91/pm_suspend.S      | 189 ++++++++++++++++++++++++++++++++---
 drivers/clk/at91/clk-sam9x60-pll.c   |  91 +++++++----------
 include/linux/clk/at91_pmc.h         |  23 +++++
 6 files changed, 270 insertions(+), 74 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
