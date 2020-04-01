Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 821C819A782
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 10:39:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S1N3SHXEQYI9LqsnI3chtoY19W6+JAG+dCpaoCq8DAs=; b=tmCiFznHbkPadP
	kAFtQeJwjUo5UNT1Gz+LgK786M9SwOF0CVWRB1vjFCb19OUCPpu/JicVgkIEkmI1UPahgrz/IuGL7
	WxA8jmEV+8N+D3b0vuZoBCwmPWUnhKgnRn6fZeGLJNwXLrSvg2PHZz1TJeilnjTo4XDu3YkIEHuSc
	1ANy54gH4OauTU8WBA9eEH5CdbqTwoaoVBbEuIL33QFtj0Tv3wGHxC77k1VXFdH2VpJjVg360pWdV
	pAkxk/wD8g3KkxHDA4kW51trMx/z4/syS89rOR5N65GRWs+X1liqUjjd0nXzW4oQefQWeSkc6qnjh
	azuLqsM2c2AkIWwqfvNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJYuY-0005bW-Ol; Wed, 01 Apr 2020 08:39:46 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJYuQ-0005az-It
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 08:39:40 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0318buli010433; Wed, 1 Apr 2020 10:39:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=lzzw7FXM0MO9eFzpIxeWfpnrQEPQjgWmRDZU797bXb8=;
 b=xtrcxr1EAvv7HnNqNv9zC+wI60OE8e8OmAvMRjfnYxqkn8Xaphz9JIFc/mU1K1LkZmMh
 5ihsorr2LVId7ONlbCmT05Jy7DYRYYNWXmleCIqweN+XizU/EOr24WuxhBW6/36YBUay
 aN0hchzyNFAW92C7SjqCJR2a4Ke+gZUilqdwUIzYyUehmlkuJbOs7kBwJQqEM1tOT56x
 TrRaYgUEgRnc5aNGW3bXnqHK5JvJuaSvvfHFSU9/owDtNddT6nCzKhjV2It591+wbno5
 3ajHWBVZba9hszEmi6E6PIj6xN8s0Mf14b35GwxkfQMX7f0Q2lUuVT5NmULsYEiY3mdK Vg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 301w813w5g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 01 Apr 2020 10:39:22 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A386510002A;
 Wed,  1 Apr 2020 10:39:21 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8BADA21CA86;
 Wed,  1 Apr 2020 10:39:21 +0200 (CEST)
Received: from localhost (10.75.127.47) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 1 Apr 2020 10:39:21
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <fabrice.gasnier@st.com>, <lee.jones@linaro.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <daniel.lezcano@linaro.org>,
 <tglx@linutronix.de>
Subject: [PATCH v6 0/6] clockevent: add low power STM32 timer
Date: Wed, 1 Apr 2020 10:39:03 +0200
Message-ID: <20200401083909.18886-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-03-31_07:2020-03-31,
 2020-03-31 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_013938_978501_F454BF50 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

 .../devicetree/bindings/mfd/st,stm32-lptimer.yaml  |  21 ++
 arch/arm/boot/dts/stm32mp151.dtsi                  |  35 ++++
 arch/arm/mach-stm32/Kconfig                        |   1 +
 drivers/clocksource/Kconfig                        |   4 +
 drivers/clocksource/Makefile                       |   1 +
 drivers/clocksource/timer-stm32-lp.c               | 221 +++++++++++++++++++++
 drivers/mfd/stm32-lptimer.c                        |   1 +
 include/linux/mfd/stm32-lptimer.h                  |   5 +
 8 files changed, 289 insertions(+)
 create mode 100644 drivers/clocksource/timer-stm32-lp.c

-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
