Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C88112DA5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 15:42:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hFyf7RsQOJdnFt3g1NtxXDp2R0fiS1YeodHI+B/Lbrg=; b=GDPaSCYBwFb4LV
	hpcbX/c6gpChIX9G9KjcJiwgWstxAnxGIHfB3/p8u0MBG1+BficJ/F+/dRYwIkVmMazW+kgYzdCax
	OApLrMUin1l/ghrDxUlp9MLQPOGKqbMH5sQcLDxQlkWeMw3nJ351v3+vC3OtEsEbWhIPD+PoPsB94
	hF9JEn6UNIgTQN3yFmS6nqMqoHIoxgtsg5XANt/7LnprxFHiARdeyQsyLnEznqWW/EAQamhzXZ4Hv
	vV4F20NzhfoAzY2MjHVE2pCxLvdK5QNo+upGq68jhqLsgaBr0zTNHDfT2wwYR8gKdAMdfkFQdcRh0
	kVq/CM4IzNynhZgQkr9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icVri-00025Y-5N; Wed, 04 Dec 2019 14:42:54 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icVrZ-00024Y-SS
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 14:42:47 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: +9RXOtXOFcqc0C2PEUn2bWakLYQg1Jwsi+X+/C2WP04OAGGUfbHMDMnlycCrtVULAXMDo/gjBW
 SpRrzKLB8HL0LLnbj+Rh6rRfkKl2BAMAR0M6bvp+AXblBClY1HdNXAJfGImjxa/1CvK0Wf4MNu
 PqrFkq2u5yZc/bB+ZVxyJL1RcqsKWW3dhBB+zKRrkoGwaYkeyqkAbtGBpqknN9v8mWOQqgZ0S9
 kith57QQe5XSFp3h5OJReHKiQ2notWZIgJpaQIzGEjPm0hh9HwsFxfuKavT4NKqio3svBaRniA
 rho=
X-IronPort-AV: E=Sophos;i="5.69,277,1571727600"; d="scan'208";a="56592278"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Dec 2019 07:42:42 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 4 Dec 2019 07:42:41 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 4 Dec 2019 07:42:38 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <daniel.lezcano@linaro.org>,
 <tglx@linutronix.de>
Subject: [PATCH v3 0/2] add Microchip PIT64B timer
Date: Wed, 4 Dec 2019 16:42:27 +0200
Message-ID: <1575470549-702-1-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_064245_952508_0EFA20D5 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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

Changes in v3:
- rework data structures:
	- timer related data structure is called now mchp_pit64b_timer embedding
	  base iomem, clocks, interrupt, prescaler value
	- introduced struct mchp_pit64b_clksrc and struct mchp_pit64b_clkevt
	  instead of mchp_pit64b_clksrc_data and mchp_pit64b_clkevt_data
	- use container_of() to retrieve mchp_pit64b_timer objects on
	  clocksource/clockevent specific APIs
	- document data structures
- use raw_local_irq_save()/raw_local_irq_restore() when reading
  MCHP_PIT64B_TLSBR and MCHP_PIT64B_TMSBR in mchp_pit64b_get_period()
- get rid of mchp_pit64b_read(), mchp_pit64b_write() and use instead
  readl_relaxed(), writel_relaxed()
- get rid of mchp_pit64b_set_period() and inlined its instructions in
  mchp_pit64b_reset()
- mchp_pit64b_reset() gets now as arguments an object of type
  struct mchp_pit64b_timer, cycles to program and mode
- remove static struct clocksource mchp_pit64b_clksrc and
  static struct clock_event_device mchp_pit64b_clkevt and instead allocate
  and fill them in mchp_pit64b_dt_init_clksrc() and
  mchp_pit64b_dt_init_clkevt()
- call mchp_pit64b_reset() in mchp_pit64b_clkevt_set_next_event() and
  program clockevent timer with SMOD=0; if SMOD=1 the timer's period could
  be reprogrammed also if writing TLSB, TMSB if it is running. In cases
  were its period expired START bit still has to be set in control register.
  In case the programming sequence is like in v2, with SMOD=1:
	- program MSB_PR
	- program LSB_PR
	- program START bit in control register
  for short programmed periods we may start the timer twice with this
  programming sequence, 1st time after LSB_PR is updated (and due to SMOD=1),
  2nd time after programming START bit in control register and in case
  programmed period already expire
- simplify mchp_pit64b_interrupt() by just reading ISR register, to clear the
  received interrupt, and just call irq_data->clkevt->event_handler(irq_data->clkevt);
- in mchp_pit64b_pres_compute() chose the bigest prescaler in case a good
  one not found
- document mchp_pit64b_pres_prepare() and simplified it a bit
- enforce gclk as mandatory
- introduce mchp_pit64b_timer_init() and mchp_pit64b_timer_cleanup()
- keep the clocksource timer base address in a mchp_pit64b_cs_base variable so
  that it could be used by mchp_pit64b_sched_read_clk()
- rework mchp_pit64b_dt_init() and return -EINVAL in case it was called
  more than two times: one for initialization of clockevent, one for
  initialization of clocksource
- introduce MCHP_PIT64B_MR_ONE_SHOT define
- move the new lines introduced in Makefile and Kconfig at the end of files
- collect Rob's Reviewed-by tag on patch 1/2
- review the commit message of patch 2/2

Changes in v2:
- remove clock-frequency DT binding and hardcoded it in the driver
- initialize best_pres variable in mchp_pit64b_pres_prepare()
- remove MCHP_PIT64B_DEF_FREQ 
- get rid of patches 3-5 from v1 [1] since there is no entry in MAINTAINERS file
  for this entry. It was removed in
  commit 44015a8181a5 ("MAINTAINERS: at91: remove the TC entry")

[1] https://lore.kernel.org/lkml/1552580772-8499-1-git-send-email-claudiu.beznea@microchip.com/

Claudiu Beznea (2):
  dt-bindings: arm: atmel: add bindings for PIT64B
  clocksource/drivers/timer-microchip-pit64b: add Microchip PIT64B
    support

 .../devicetree/bindings/arm/atmel-sysregs.txt      |   6 +
 drivers/clocksource/Kconfig                        |   6 +
 drivers/clocksource/Makefile                       |   1 +
 drivers/clocksource/timer-microchip-pit64b.c       | 501 +++++++++++++++++++++
 4 files changed, 514 insertions(+)
 create mode 100644 drivers/clocksource/timer-microchip-pit64b.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
