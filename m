Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1422D11E2B4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 12:20:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KThYNKqcAEhKoIXvHTMPhyTTh3z2AGY0VIiyHXoryl0=; b=TPk3Crc/VbqLRA
	khtLDxNcmZ+iMA6SRd9OJkt19RTnJq4zhtcjQgNNLUnQt7o3BjoerPTfYTze53uLwgTxLQKgKoBOj
	2hAq7EnJ6IuR1nMcGVYWOKuxL7V+UeozwUXLA9FGRQOPHDL3FF6NMzZWV5xMe+QFBc5s+WMsvBW+/
	s5ad7KcveKXkwKdPZdZ0Ja/ceUrBDGShXDV7RAfH/q3eYjWl2od11sAgUjEX2t3KWxJCLZtwDOQFD
	tKLe/SpTf4wh5oLrrLz/HRbfXAtYBULsqrYdnKsEWTpRXVsNKFnInN/an+HQOUn1cOH1MJ6ZhCrr9
	If64d8RSi9xLGo8JZ+xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifizh-000164-IZ; Fri, 13 Dec 2019 11:20:25 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifiz9-0000iF-UJ
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 11:19:53 +0000
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
IronPort-SDR: lH2DhvT7SomBYBQ6THB2MuQsdRsIoltRtdm4rT/nTa4FJ2tVfL9sP5vUJfnOcncuDcdnRijeuc
 /AeejhZTdeHw7Vd5ARF4aCvYgk7QR6gOF6cVOEiUoSRQqMjGPCTWhisgRzvGi9d/FdzT+M6B2Z
 uqpSFFy9xzs+upmpKiayq4zeZ7qVdc/+1oIh4DmFyElqHjYAOwd8JaWJgn4t3EPgrx8UetdvP1
 IBLjSHz+ebTgIcY98M67ack8sT1wkQ4GYfJxkWNs0pZN77ZOUN5cGagLT+I298ZNDM+mophJ+p
 0ec=
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="57662245"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Dec 2019 04:19:49 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Dec 2019 04:19:36 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 13 Dec 2019 04:19:33 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <daniel.lezcano@linaro.org>,
 <tglx@linutronix.de>
Subject: [PATCH v4 0/2] add Microchip PIT64B timer
Date: Fri, 13 Dec 2019 13:19:20 +0200
Message-ID: <1576235962-30123-1-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_031952_031641_5385FA27 
X-CRM114-Status: GOOD (  17.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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

Changes in v4:
- use clocksource_mmio_init() to register timer for clocksource
  functionality; with this, struct mchp_pit64b_clksrc was removed and replaced
  with mchp_pit64b_cs_base variable to keep the timer base address
- removed clksrc_to_mchp_pit64b_timer() macro 
- introduce mchp_pit64b_dt_init_timer() and add there the content of
  mchp_pit64b_timer_init() which was removed
- s/mchp_pit64b_dt_init_clksrc()/mchp_pit64b_init_clksrc(),
  s/mchp_pit64b_dt_init_clkevt()/mchp_pit64b_init_clkevt() and minimize
  their content
- remove cycles member from mchp_pit64b_timer and add it as a local
  variable (to be used only for clockevent timer in periodic mode)
- add mode member to struct mchp_pit64b_timer keeping a precomputed value
  (at probe) of the mode register to remove some of the logic inside
  mchp_pit64b_reset() function
- remove irq member from struct mchp_pit64b_timer; add it instead as
  argument for mchp_pit64b_reset() function to be able to use the same
  function also for programming of clocksource timer
- remove mchp_pit64b_clkevt_set_oneshot() function; timer programming
  while in one shot mode should be done by mchp_pit64b_clkevt_set_next_event()
- in mchp_pit64b_clkevt_suspend()/mchp_pit64b_clkevt_resume() remove the
  timer reconfiguration (via mchp_pit64b_reset()); it should be done
  while programming next delta (if one shot mode) or in
  mchp_pit64b_clkevt_set_periodic() if periodic mode
- s/mchp_pit64b_get_period()/mchp_pit64b_cnt_read()
- in mchp_pit64b_init_clksrc() stop timer if clocksource registration fails
- remove MCHP_PIT64B_ISR_PERIOD macro
- s/to_mchp_pit64b_clkevt()/to_mchp_pit64b_timer() and cast the result
  to struct mchp_pit64b_timer *
- s/mchp_pit64b_pres_prepare()/mchp_pit64b_init_mode() since the function
  will be in charge of precomputing the mode registe value to be used at
  runtime

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
 drivers/clocksource/Kconfig                        |   7 +
 drivers/clocksource/Makefile                       |   1 +
 drivers/clocksource/timer-microchip-pit64b.c       | 449 +++++++++++++++++++++
 4 files changed, 463 insertions(+)
 create mode 100644 drivers/clocksource/timer-microchip-pit64b.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
