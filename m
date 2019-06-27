Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CD1584C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 16:48:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VycU+Z0pg5lu+pAg+gB3hcOHao+6RD23eHBt/p+PwLs=; b=sOjql1JqUywzWk
	o81cx1L6N0cW0ZAOdpWwgjMf/LQtUdIXQmNaX2Dc0JcoqMTP/0wJ1jwW/1evIPO55tjbHwvECAO0A
	e7xqx1pW55Q7SkqnTJAXcFW0Sr2+9DaUHn68G6paJa1VJmSXVKmwgzc29UkCLlmNgG3E2yZ6JoQTt
	MuV6+u6tXmtSsNbt1a1zsJtJy3GBCpnN4wGw82jqgw12ts8iLltPncNlLNaCuN1iPh4tddy0EPNph
	2wjvMRCtYNuEJCpUYXUvc89+O/fYgkpQjVULsNQ/L1aPJhTJK1NxB1TXDh0Wa0Eh1ENeSg6zIbUGp
	JbX+OFRGeBaiI/k9g5ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgVh9-0002fc-Ue; Thu, 27 Jun 2019 14:48:15 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgVgt-0002eO-Kb
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 14:48:03 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,424,1557212400"; d="scan'208";a="37606820"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 Jun 2019 07:47:57 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex04.mchp-main.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 27 Jun 2019 07:47:56 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 27 Jun 2019 07:47:52 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <nicolas.ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <ludovic.desroches@microchip.com>
Subject: [PATCH v5 0/4] add slow clock support for SAM9X60
Date: Thu, 27 Jun 2019 17:47:17 +0300
Message-ID: <1561646841-7663-1-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_074759_790253_03B5245D 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This series add slow clock support for SAM9X60. Apart from previous IPs, this
one uses different offsets in control register for different functionalities.
The series adapt current driver to work for all IPs using per IP
configurations initialized at probe.

Stephen,

I send a new version of this since I'm not seeing the patches on clk-next
and I though you may had issues with the previous version of this series.

Thank you,
Claudiu Beznea

Changes in v5:
- get rid of Content-Transfer-Encoding: base64
- collect Ack-by tag

Changes in v4:
- remove macros which were used to access IP specific bits for control
  register
- collect Acked-by, Reviewed-by tags

Changes in v3:
- add patch 1/1 that remove bypass code in the code specific to SAMA5D4
  (there is no bypass support on SAMA5D4)
- adapt review comments
- register clock with of_clk_hw_onecell_get to emphasize that this IP has
  2 output clocks MD_SLKC and TD_SLCK (I considered not necessary to
  introduce new constants to be shared b/w driver and DT bindings; if
  you consider otherwise, let me know)
- adapt dt-binding patch with clock-cells changes (thus didn't introduced
  Reviewed-by tag)
- renamed struct clk_slow_offsets to struct clk_slow_bits and the
  corresponding instances of it

Changes in v2:
- split patch 1/1 from v1 in 2 patches: one adding register bit offsets
  support (patch 1/3 from this series), one adding support for SAM9X60
  (patch 2/3 from this series)
- fix compatible string from "microchip,at91sam9x60-sckc" to
  "microchip,sam9x60-sckc"

Claudiu Beznea (4):
  clk: at91: sckc: sama5d4 has no bypass support
  clk: at91: sckc: add support to specify registers bit offsets
  dt-bindings: clk: at91: add bindings for SAM9X60's slow clock
    controller
  clk: at91: sckc: add support for SAM9X60

 .../devicetree/bindings/clock/at91-clock.txt       |   7 +-
 drivers/clk/at91/sckc.c                            | 173 ++++++++++++++++-----
 2 files changed, 139 insertions(+), 41 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
