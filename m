Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D2C13DE77
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 16:20:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1X+iMqz5pQ1gtcPH0kDbAHYY6GFp0UBehYgiLggSC4M=; b=ujtVPsO0290toW
	cl17QIo/yg+UtEBYzvJlPssy7naBT7iDG6UzQQxcPVIchw7N9Ujb/+ujxH6WshNQVUaxbPlFesFN0
	sxmfo20ew33Vgwe6uPPmHUZsZDVame0CbVAoSwltkgK3S16xxuZGIFVI2bhQ3ax4FuihCnrZw9Ia2
	i5+ntNv3jMT3DlSlfU+Ug+8Vl/Gw1vwg5ooyM95h586W21908SfOuN6ouVfZhfYBAXsVFjngWJ2BB
	3N7Lr1vB1WwdNab2vGys/v9JUkEYQ46JmrvF4GsGiUHeBu/YGrO/1fqVlDZYPq1o576rUNGWl/9Ae
	WFhOgLKCF5VPOriyK6zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is6wY-0007Qb-1k; Thu, 16 Jan 2020 15:20:22 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is6vw-0006gw-A5
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 15:19:49 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00GFJ5oQ006188; Thu, 16 Jan 2020 16:19:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=tHouhTmPa+WOuN6Hi/JxajRoEjWvreOxg6hBYR89Brk=;
 b=Q/Ed+H+cnO7O0HtEkqe+gD4gWQnTcr5YsdNozgrPJpWPUx8O7hYrGtvHlefp1EXhh5AZ
 KA3FV+dpDQe3Pt8bfikDXmHDQNSmTRqjkWkxHL9b08p7cZh8+A5frqAbNeKElloZbKYV
 +vDwXKMj0x0NUFyuT3McWhyh6U+ekZZFpH2HsYu8trI+rnbScpPpyKOtSKLFPZKF80Ad
 hV5bYwikXTXB3exnLuvxbGy++U7jm56vUBDIRxSbtSki/aQmMy/bsmSTFiKMJqDdCOYt
 Gpx3D1xYv9KsIQekhwF1MOc+RPj2sBCYEcN+d6Qi7h/gexv/VXq2bHTSDo34UwSH71CB lQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xf7jpsy4n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 16 Jan 2020 16:19:23 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BDAD8100034;
 Thu, 16 Jan 2020 16:19:20 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A1F8E21BD3F;
 Thu, 16 Jan 2020 16:19:20 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 16 Jan 2020 16:19:20
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <daniel.lezcano@linaro.org>, <tglx@linutronix.de>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <linux@armlinux.org.uk>, <p.paillet@st.com>,
 <linus.walleij@linaro.org>
Subject: [PATCH v2 0/2] clockevent: add low power STM32 timer
Date: Thu, 16 Jan 2020 16:19:16 +0100
Message-ID: <20200116151918.20987-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG3NODE1.st.com (10.75.127.7) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-16_04:2020-01-16,
 2020-01-16 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_071944_676075_A57E1A58 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series add low power timer as boadcast clockevent device.
Low power timer could runs even when CPUs are in idle mode and 
could wakeup them.

version 2:
- stm32 clkevent driver is now a child of the stm32 lp timer node
- add a probe function and adpat the driver to use regmap provide
  by it parent
- stop using timer_of helpers
- document the bindings inside stm32 lptimer yaml

Benjamin Gaignard (2):
  dt-bindings: mfd: Document STM32 low power clkevent bindings
  clocksource: Add Low Power STM32 timers driver

 .../devicetree/bindings/mfd/st,stm32-lptimer.yaml  |  14 ++
 drivers/clocksource/Kconfig                        |   4 +
 drivers/clocksource/Makefile                       |   1 +
 drivers/clocksource/timer-stm32-lp.c               | 251 +++++++++++++++++++++
 4 files changed, 270 insertions(+)
 create mode 100644 drivers/clocksource/timer-stm32-lp.c

-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
