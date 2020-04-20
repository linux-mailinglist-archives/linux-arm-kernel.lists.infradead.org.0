Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD981B0923
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 14:17:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NLPIC7JcdHhe9DgM0fBtP8qt0wjMs2VbBomw0ID96KQ=; b=IJV/qySglWUpSi
	q47ubwf6O0YTHXSPOz3WvpC1CGMuLK+HbLqY1mL/vO85D1zwGnH4sORSTQLFDkOQehOirELmUep96
	GKFMc6yd4xbpxkEwBMnPLoHyb6KqKvCNrYNByvIry4W2NVVnDnKE8oDrl9NM+pHi26Esv9negZhy0
	LzbPWlKk3lboRozApH2ak+LDgEaIlkfdmcpv7dWTN3thg6ZmFH7TT1fQxHvwvD6n2qynabS4eDEeo
	4uP8MdIeBQdyW4YdB4aV5uUEnfXh8hn57uFjcVB6rRFsqmbpDYENNiq6135n4vg4n6wNIZd96D6qs
	eFUDXRUgQ/zpW+MTNCZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQVM1-00054Y-3Q; Mon, 20 Apr 2020 12:16:49 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQVLn-00053o-3l
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 12:16:36 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03KBrrvn025502; Mon, 20 Apr 2020 14:16:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=4Hco8eUbgLngU+46SDeLvb1sIqNNOjjSfMzszI1XO5o=;
 b=AQ+BNEevYsYsgUn6CBuo20UiAFcWlH0jqXedBULgcomSfszGAglUmuoncne2s7229+dY
 OP+NwM2LOtnYHJ4s3GI1JdtK2koSA97Q/Wg0vGjraaMpottCsp+jjcIQESU/01eF6d4E
 Q03vsaHNR0tChkteNNeTQ0kfGrjnDpmTTCxuIaqLrefpmo/xrLsHnFdhRH1fmiDYeSCg
 X5X7KIncLd2Xbn8yKrZyh4OksEayeONm1xsh7pUVz+6PTpp9j8eqWCRNZEQ0ffUg6UAf
 gUEO5OANcxiJr9gkuDCpQm3Y4yP8Oka7PlRAOFH6SMWDy3JZQBMGEn7/IXhh6qm5LhG/ Ng== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fq11a668-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 20 Apr 2020 14:16:26 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8AACB10002A;
 Mon, 20 Apr 2020 14:16:25 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5F6E320FA76;
 Mon, 20 Apr 2020 14:16:24 +0200 (CEST)
Received: from localhost (10.75.127.49) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 20 Apr 2020 14:16:23
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <fabrice.gasnier@st.com>, <lee.jones@linaro.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <daniel.lezcano@linaro.org>,
 <tglx@linutronix.de>
Subject: [PATCH v7 0/6] clockevent: add low power STM32 timer
Date: Mon, 20 Apr 2020 14:16:14 +0200
Message-ID: <20200420121620.2099-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG1NODE2.st.com (10.75.127.2) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-20_03:2020-04-20,
 2020-04-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_051635_451986_C97A3760 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series add low power timer as boadcast clockevent device.
Low power timer could runs even when CPUs are in idle mode and 
could wakeup them.

Lee has acked the MFD part.
Clocksource driver still need to be reviewed by maintainers.
Add missing part of the bindings to describe interrupt.

version 7:
- rebased on top of v5.7-rc2

version 6:
- simplify binding, DT and code to use only one interrupt

version 5:
- document interrupts and interrupt-names bindings
- use a different wake up interrupt
- add device-tree patch
- make STM32MP157 select low power timer configuration flag
- enable fast_io in regmap configuration

version 4:
- move defines in mfd/stm32-lptimer.h
- change compatible and subnode names
- document wakeup-source property
- reword commit message
- make driver Kconfig depends of MFD_STM32_LPTIMER
- remove useless include
- remove rate and clk fields from the private structure
- to add comments about the registers sequence in stm32_clkevent_lp_set_timer
- rework probe function and use devm_request_irq()
- do not allow module to be removed

version 3:
- fix timer set sequence
- don't forget to free irq on remove function
- use devm_kzalloc to simplify errors handling in probe function

version 2:
- stm32 clkevent driver is now a child of the stm32 lp timer node
- add a probe function and adpat the driver to use regmap provide
  by it parent
- stop using timer_of helpers


Benjamin Gaignard (6):
  dt-bindings: mfd: Document STM32 low power timer bindings
  ARM: dts: stm32: Add timer subnodes on stm32mp15 SoCs
  mfd: stm32: Add defines to be used for clkevent purpose
  mfd: stm32: enable regmap fast_io for stm32-lptimer
  clocksource: Add Low Power STM32 timers driver
  ARM: mach-stm32: select low power timer for STM32MP157

 .../devicetree/bindings/mfd/st,stm32-lptimer.yaml  |   5 +
 arch/arm/boot/dts/stm32mp151.dtsi                  |  35 ++++
 arch/arm/mach-stm32/Kconfig                        |   1 +
 drivers/clocksource/Kconfig                        |   4 +
 drivers/clocksource/Makefile                       |   1 +
 drivers/clocksource/timer-stm32-lp.c               | 221 +++++++++++++++++++++
 drivers/mfd/stm32-lptimer.c                        |   1 +
 include/linux/mfd/stm32-lptimer.h                  |   5 +
 8 files changed, 273 insertions(+)
 create mode 100644 drivers/clocksource/timer-stm32-lp.c

-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
