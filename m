Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E111613DE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 14:46:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QUXS0DQGST4o1TkdTgDsfblXfFmHy8BkBab+i+sSOHI=; b=lr9DH8mgzaWQpI
	7VSsjjwX1AlGCIpFZEw4xXaqZ4J3Ii0J6Oj0IQIbR+qB3n3xsmvM7NHxYouMDmoclvGycycg5UgnS
	p0X2ZaYSaTvlJELGvjJJlcloAZyH/ZwhqmlMqw4c2HWLgDkuHmuW50omRqh87wO3gON4F4KFyDW9/
	08EVor6XwncsEBMXlHczm6MaZ9wxtrpdQoBYdmrNhPq9A0bDynULP3sbB9EdXabiPLUz1dGwph9Oa
	hm3DqX9CEMQOdStKnFLtC4roKF4dbNHcvVkUNRLOX070bPHjHRdd6Ik8MVCtODx/X2Le49627clC1
	OE8VdXWIF9/Up6jT7rDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3gjV-0006iM-SH; Mon, 17 Feb 2020 13:46:45 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3gio-0006G7-Ll
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 13:46:04 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01HDhVxP007656; Mon, 17 Feb 2020 14:45:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=6krLsyTnJQGCuNqc99FBtGiT29OEuI/cKr9z9oLmia8=;
 b=F84Im76Z7/5isx65KidMfCyyaLPXGt2Y5cGz2X+0BlsHzESPQg4vgRpUp6J5rEQhhCOe
 emI2exVjxiGhhLWsO9coFpILiLMqcnTGanXsd8/dreBVmvJV9s+xVNDLvxpmtiKZnDBZ
 oOo10cDgPlSLoH/6mQTiQsblEhz6AYncmx41dwxyscm2KLYjp07f0i7LErZxMD9F1++X
 RepEMliZoXQWFD+zh64zpjOS3f4r+FEJc5b6wlExHGz3KG91Tkt+6QhI20r9vXqOl0Vy
 RQ97DpGzb4/dRxwF5kjC1sYgtkzMYJhAoIkLtSz+gxvnNWLR/VyGI4YLyihMutFA56Rt FA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y68dp3axk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 17 Feb 2020 14:45:50 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 93321100034;
 Mon, 17 Feb 2020 14:45:49 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7E01A2FF5C7;
 Mon, 17 Feb 2020 14:45:49 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 17 Feb 2020 14:45:49
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <lee.jones@linaro.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <daniel.lezcano@linaro.org>, <tglx@linutronix.de>, <fabrice.gasnier@st.com>
Subject: [PATCH v4 0/3] clockevent: add low power STM32 timer
Date: Mon, 17 Feb 2020 14:45:43 +0100
Message-ID: <20200217134546.14562-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-17_08:2020-02-17,
 2020-02-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_054603_076761_B10F9506 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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


Benjamin Gaignard (3):
  dt-bindings: mfd: Document STM32 low power timer bindings
  mfd: stm32: Add defines to be used for clkevent purpose
  clocksource: Add Low Power STM32 timers driver

 .../devicetree/bindings/mfd/st,stm32-lptimer.yaml  |  16 ++
 drivers/clocksource/Kconfig                        |   7 +
 drivers/clocksource/Makefile                       |   1 +
 drivers/clocksource/timer-stm32-lp.c               | 213 +++++++++++++++++++++
 include/linux/mfd/stm32-lptimer.h                  |   5 +
 5 files changed, 242 insertions(+)
 create mode 100644 drivers/clocksource/timer-stm32-lp.c

-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
