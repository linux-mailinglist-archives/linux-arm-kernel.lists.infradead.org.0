Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A696135BDC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:55:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8kT1Nf+JmblpusCyPCC9rBVbxWeSbuKYu+ag+9Rq5Lw=; b=mKMTmN6YEd9SDl
	lB8fW0eGhu1jh8qU3vGswqcKgs+ee89oZxgw/7DxwyLOP/m68cmmuOvQ+VOe4Up0pBGKdku+c402t
	WHzAlGSR3eeTS2Cyb96FNPvhA7oSawaZRigYrg/asa5PLQ5v4jmvzBQQ8YOLby3T9wGXBJJjobLv6
	s91O2clCcIoZtySx+yF0iVlySSWUKJX+OlvsOevIiJp6DiZCBfybFN3L3uDT3fp/rsNYX5bS93ZL1
	5O6d2A20Pm/cAsYXI4BnsWh8Px7xI9nEghfl2EPCwneJbHfbhEadDenO8M4IwE6/FyRJR4si5Yqag
	Oaa47s/7ivaqwwz14WSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipZDB-0004qc-1K; Thu, 09 Jan 2020 14:55:01 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipZCG-0004Cq-6f
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 14:54:05 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 009ErjOJ030398; Thu, 9 Jan 2020 15:53:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=Vma0FoXKhWdu98Z5moyIXlRymnoKl2wYw6wrKgMOTkc=;
 b=y51l/cNEUrwxmezhr9XKY0zhgOB2qV4ihNmz2u0K9G0fNPI52jfNlyIpDAqCbw/V91Xk
 CUnimfDVcf7KJMKlC69IqeF25QzDDuxngkzoy5Hcib0KrIT+fipJ6rp/9hSYF3f+xWOg
 6GhU5XCs1rvuhHOdpurYh61mYc1TZq0bgfH3OvRoAq87p8TgFx+/eOMFzwvYZywN88L1
 D4k/RTxRvZ5oGdMHtO0nbu8IvVaURCxUDutrcztaAJ380kzVIvNTa87miFWeulBLpUJo
 hFaASPPxQxjeHXW0mHDlmfGgfO19Zyw8t93i6ROyITOBBp3jfDHKngLsw8ib17AK9WMp iQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakur2966-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 09 Jan 2020 15:53:45 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 194F0100034;
 Thu,  9 Jan 2020 15:53:39 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 00B7A2BD410;
 Thu,  9 Jan 2020 15:53:38 +0100 (CET)
Received: from localhost (10.75.127.49) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 9 Jan 2020 15:53:38
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <daniel.lezcano@linaro.org>, <tglx@linutronix.de>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <linux@armlinux.org.uk>, <p.paillet@st.com>
Subject: [PATCH 0/3] clockevent: add low power STM32 timer
Date: Thu, 9 Jan 2020 15:53:30 +0100
Message-ID: <20200109145333.12260-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-09_02:2020-01-09,
 2020-01-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_065404_584387_51070B38 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series add low power timer as boadcast clockevent device.
Low power timer could runs even when CPUs are in idle mode and 
could wakeup them.

Benjamin Gaignard (3):
  dt-bindings: timer: Add STM32 Low Power Timer bindings
  clocksource: Add Low Power STM32 timers driver
  ARM: stm32: select STM32 low power timer clock event driver

 .../bindings/timer/st,stm32-lp-timer.yaml          |  44 +++++
 arch/arm/mach-stm32/Kconfig                        |   1 +
 drivers/clocksource/Kconfig                        |   5 +
 drivers/clocksource/Makefile                       |   1 +
 drivers/clocksource/timer-stm32-lp.c               | 186 +++++++++++++++++++++
 5 files changed, 237 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/st,stm32-lp-timer.yaml
 create mode 100644 drivers/clocksource/timer-stm32-lp.c

-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
