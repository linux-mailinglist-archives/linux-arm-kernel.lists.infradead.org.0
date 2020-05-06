Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC721C6AD2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 10:06:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x3B7cXDIVJWY+T6NcHTjCJ4WDfy1vAwhwFsFbHj/nTM=; b=FVisQzw6lmC3I7
	4zKJceGmbN1DbVL3ghP1RzlXJRpVCNa1GJNzgDqvBtzIxcn8uOO/3Qi9A0vlUPJR2gDgMkk7aQ4se
	ze4qxJOuoYlm0gvsXPnrH88JscY2/Jozqh7KHJ2N+fJrKXfwPElkb81wUrrjGhsp95jiGsFydKWz8
	FokuJnIvBGfUGkw0kpHr6FScqnKYb5VSMEpPrlD3Q5Vmtg/Rx8cRtYNTrPQKbUXWZd6qwYTSh0aJb
	4tkU6LIrY4bB7gLUkxIpELO0ICTQf+vLnZyqh2rq6qQ1VmISVsOY0YVNZ2Fi/ykOBeQ0fbKoB8Nbp
	RqBTnwhnWh/XgWaaLWaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWF4Y-0002gq-Cf; Wed, 06 May 2020 08:06:30 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWF4H-0002Zo-Et
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 08:06:15 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id B644B20004;
 Wed,  6 May 2020 08:06:00 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v3 0/9] clocksource/drivers/timer-atmel-tcb: add sama5d2
 support
Date: Wed,  6 May 2020 10:05:45 +0200
Message-Id: <20200506080554.283177-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_010613_667260_3DEA2AAD 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [217.70.183.200 listed in bl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
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
Cc: kamel.bouhara@bootlin.com,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series mainly adds sama5d2 support where we need to avoid using
clock index 0 because that clock is never enabled by the driver.

There is also a rework of the 32khz clock handling so it is not used for
clockevents on 32 bit counter because the increased rate improves the
resolution and doesn't have any drawback with that counter width. This
replaces a patch that has been carried in the linux-rt tree for a while.

Changes in v3:
 - Moved the child node documentation to the parent documentation

Changes in v2:
 - Rebased on v5.7-rc1
 - Moved the binding documentation to its proper place
 - Added back the atmel,tcb-timer child node documentation

Alexandre Belloni (8):
  dt-bindings: atmel-tcb: convert bindings to json-schema
  dt-bindings: microchip: atmel,at91rm9200-tcb: add sama5d2 compatible
  ARM: dts: at91: sama5d2: add TCB GCLK
  clocksource/drivers/timer-atmel-tcb: rework 32khz clock selection
  clocksource/drivers/timer-atmel-tcb: fill tcb_config
  clocksource/drivers/timer-atmel-tcb: stop using the 32kHz for
    clockevents
  clocksource/drivers/timer-atmel-tcb: allow selecting first divider
  clocksource/drivers/timer-atmel-tcb: add sama5d2 support

Kamel Bouhara (1):
  ARM: at91: add atmel tcb capabilities

 .../devicetree/bindings/mfd/atmel-tcb.txt     |  56 -------
 .../soc/microchip/atmel,at91rm9200-tcb.yaml   | 150 ++++++++++++++++++
 arch/arm/boot/dts/sama5d2.dtsi                |  12 +-
 drivers/clocksource/timer-atmel-tcb.c         | 101 +++++++-----
 include/soc/at91/atmel_tcb.h                  |   5 +
 5 files changed, 219 insertions(+), 105 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/atmel-tcb.txt
 create mode 100644 Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
