Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF103EE33D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 16:11:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lLZ+xZi/EVCpwhwK/QAnezjVJKvZp2q57X6hhv2atOM=; b=PSUws4N6NZrClk
	QymiP5D2uJ8kssTX5zBb5Yx65phR+KLhyuhPrmcy3IxUmiEVJTVO2t/TUWuPzmllhwJfRCcZAw/VY
	sof7AFHkYwwpHyaRwdgkgYws2h+r1VM4wmyfTqJtUmM7tZ1pLlVR01sSE2omA1G485CQ6LS0so2dN
	fKZeMOOUhLS2B7GDQeicOORhGEYgba8CfY3wNV8VuP0RhT6ZselzxaKCRXmLYP3T4ou2P5FQrW/8A
	VeD4JHAtxlN+MKT4ikIMRT8zJ2Z2ofAI4coXOLYQbErizGG7ewfH0bg7aS1NhEClfM/muY0Vu/MXU
	AumrYow7QasF07ZMWlNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRe0c-000254-B1; Mon, 04 Nov 2019 15:11:10 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRe09-0001m3-Ig
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 15:10:43 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
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
IronPort-SDR: D2HUH/WJuuYjGhJihYzCYYxMHpzl5Liz525GSPPeLttmySP6QiZgo92lYn0CvjufvtuuzSorTS
 3V7pEW+GilL97puxXRQzMOGcWg4e93ZCLmQarOqJ78O/u2rYPrx+URt6b1cO9AE9KgQGIqcPrc
 gJyxRQYe8xJEMT9usajxPeuxyle4K+tj3VKEkgrT3vPL0Nfa1/JhnP0IZFL2KFkpstgagvWkrs
 9BEBMg2181B2wQFNBIwrFobSasOXnVjfhxPoF3XFdfx7/aWpk1BCGpby5hMHGyXwuq3UBucmv8
 Opc=
X-IronPort-AV: E=Sophos;i="5.68,267,1569308400"; d="scan'208";a="55584277"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Nov 2019 08:10:20 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 4 Nov 2019 08:10:21 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 4 Nov 2019 08:10:18 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <daniel.lezcano@linaro.org>,
 <tglx@linutronix.de>
Subject: [PATCH v2 0/2] add Microchip PIT64B timer
Date: Mon, 4 Nov 2019 17:10:02 +0200
Message-ID: <1572880204-4514-1-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_071041_635709_6786FF0C 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This series adds driver for Microchip PIT64B timer.
Timer could be used in continuous or oneshot mode. It has 2x32 bit registers
to emulate a 64 bit timer. The timer's period could be configured via LSB_PR
and MSB_PR registers. The current timer's value could be checked via TLSB and
TMSB registers. When (TMSB << 32) | TLSB value reach the (MSB_PR << 32) | LSB_PR
interrupt is raised. If in contiuous mode the TLSB and TMSB resets and restart
counting.

This drivers uses PIT64B capabilities for clocksource and clockevent.
The first requested PIT64B timer is used for clockevent. The second one is used
for clocksource. Individual PIT64B hardware resources were used for clocksource
and clockevent to be able to support high resolution timers with this PIT64B
implementation.

Thank you,
Claudiu Beznea

Changes in v2:
- remove clock-frequency DT binding and hardcoded it in the driver
- initialize best_pres variable in mchp_pit64b_pres_prepare()
- remove MCHP_PIT64B_DEF_FREQ 
- get rid of patches 3-5 from v1 [1] since there is no entry in MAINTAINERS file
  for this entry. It was removed in commit
  44015a8181a5 ("MAINTAINERS: at91: remove the TC entry")

[1] https://lore.kernel.org/lkml/1552580772-8499-1-git-send-email-claudiu.beznea@microchip.com/

Claudiu Beznea (2):
  dt-bindings: arm: atmel: add bindings for PIT64B
  clocksource/drivers/timer-microchip-pit64b: add Microchip PIT64B
    support

 .../devicetree/bindings/arm/atmel-sysregs.txt      |   6 +
 drivers/clocksource/Kconfig                        |   6 +
 drivers/clocksource/Makefile                       |   1 +
 drivers/clocksource/timer-microchip-pit64b.c       | 462 +++++++++++++++++++++
 4 files changed, 475 insertions(+)
 create mode 100644 drivers/clocksource/timer-microchip-pit64b.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
