Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9283214BCFD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 16:39:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CBRkMpRfS4v5MewkacgorCU18Ki03K2PbXqDUV5NACU=; b=s5HyKQRZQngGki
	QFEp2PCIeiWmaX0KwAz0FK5DZLkwAsgLK2x0rK61cgKZGoOcdeYU51NZQxu+6rbuxXRylIOBkgEWe
	2G0+Y2vWgiut8QAcWTrHTikUQC7XVYXoc8fHh824nrP1pzv0q8yb1YNS2yE7GRxjGncnY37r1Z9ri
	2uGiB3RVFf2ug7fEiF8djaO1Xwf3EstuWhOlgnoOpjYSfzHHiDDJKmMYO3dj9LNm7bb0AVYqywVmZ
	7MiT6QUx1g2JAg1YGMKLrHjgpg5XSt8JgVK7NJ8UTvQvNo7CnMr+Xc+IWIAYWujWyVEb6EwmYIOK5
	/ktD9yrQFfH0Xpi2SIGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwSxF-00042T-OK; Tue, 28 Jan 2020 15:39:05 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwSwe-0003nv-ST
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 15:38:30 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00SFX6td021997; Tue, 28 Jan 2020 16:38:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=mizgnvruNb3pP6RjBqNnV58jqve6OZmR65T5OWriiZI=;
 b=dXSOaGJtRyoHa5muquJxJJeTJ+6Z3QybKURz6IzRIHfROdSwNRT85M0xTkzJWDr5xtUH
 LpPpvCPDfhxAk7nMZxy1Cl9HBS/3p7kf9vqOdqPONkK9nfHNuqIoM8Uri9FHPofsHImm
 1knkNG43iserOUngjyUNGGgKj7DTCssR6WJJ+rrOvqwNREbaHMySpF6jT/vUuxW3YHDr
 CxMeOx3tzn3okOAzfHurTMesa0/jsONnRykE05rrXWUR4XlT2z5+YD2aW9WAIk3fgQ2Q
 nlCVIpniqp6KXjM96/dVisVgCU/k1ZP+q/jtmgH0AF9HnzJFR2iM/NNpFdNyNXmRUI6h 9g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrcaxxmdb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Jan 2020 16:38:21 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5D10E10002A;
 Tue, 28 Jan 2020 16:38:19 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1F86B2BF9CF;
 Tue, 28 Jan 2020 16:38:19 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 28 Jan 2020 16:38:18
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <broonie@kernel.org>, <robh@kernel.org>, <arnd@arndb.de>,
 <shawnguo@kernel.org>, <s.hauer@pengutronix.de>,
 <fabio.estevam@nxp.com>, <sudeep.holla@arm.com>, <lkml@metux.net>
Subject: [PATCH v2 0/7] Introduce bus firewall controller framework
Date: Tue, 28 Jan 2020 16:37:59 +0100
Message-ID: <20200128153806.7780-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-28_05:2020-01-28,
 2020-01-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_073829_381513_F7DA53CA 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 loic.pallardy@st.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, stefano.stabellini@xilinx.com,
 system-dt@lists.openampproject.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Bus firewall framework aims to provide a kernel API to set the configuration
of the harware blocks in charge of busses access control.

Framework architecture is inspirated by pinctrl framework:
- a default configuration could be applied before bind the driver.
  If a configuration could not be applied the driver is not bind
  to avoid doing accesses on prohibited regions.
- configurations could be apllied dynamically by drivers.
- device node provides the bus firewall configurations.

An example of bus firewall controller is STM32 ETZPC hardware block
which got 3 possible configurations:
- trust: hardware blocks are only accessible by software running on trust
  zone (i.e op-tee firmware).
- non-secure: hardware blocks are accessible by non-secure software (i.e.
  linux kernel).
- coprocessor: hardware blocks are only accessible by the coprocessor.
Up to 94 hardware blocks of the soc could be managed by ETZPC.

At least two other hardware blocks can take benefits of this:
- ARM TZC-400: http://infocenter.arm.com/help/topic/com.arm.doc.100325_0001_02_en/arm_corelink_tzc400_trustzone_address_space_controller_trm_100325_0001_02_en.pdf
  which is able to manage up to 8 regions in address space.
- IMX Ressource Domain Controller (RDC): supports four domains and up to eight regions 

Version 2 has been rebased on top of v5.5
- Change framework name to "firewall" because the targeted hardware block
  are acting like firewall on the busses.
- Mark Brown had reviewed the previous version but it was on kernel 5.1 and I change
  the name framework so I have decided to remove it.
- Use yaml file to describe the bindings

Benjamin

Benjamin Gaignard (7):
  dt-bindings: bus: Add firewall bindings
  bus: Introduce firewall controller framework
  base: Add calls to firewall controller
  dt-bindings: bus: Add STM32 ETZPC firewall controller
  bus: firewall: Add driver for STM32 ETZPC controller
  ARM: dts: stm32: Add firewall node for stm32mp157 SoC
  ARM: dts: stm32: enable firewall controller node on stm32mp157c-ed1

 .../bindings/bus/firewall/firewall-consumer.yaml   |  25 ++
 .../bindings/bus/firewall/firewall-provider.yaml   |  18 ++
 .../bindings/bus/firewall/st,stm32-etzpc.yaml      |  41 ++++
 arch/arm/boot/dts/stm32mp157c-ev1.dts              |   2 +
 arch/arm/boot/dts/stm32mp157c.dtsi                 |   7 +
 drivers/base/dd.c                                  |   9 +
 drivers/bus/Kconfig                                |   2 +
 drivers/bus/Makefile                               |   2 +
 drivers/bus/firewall/Kconfig                       |  14 ++
 drivers/bus/firewall/Makefile                      |   2 +
 drivers/bus/firewall/firewall.c                    | 264 +++++++++++++++++++++
 drivers/bus/firewall/stm32-etzpc.c                 | 140 +++++++++++
 include/dt-bindings/bus/firewall/stm32-etzpc.h     |  90 +++++++
 include/linux/firewall.h                           |  70 ++++++
 14 files changed, 686 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/bus/firewall/firewall-consumer.yaml
 create mode 100644 Documentation/devicetree/bindings/bus/firewall/firewall-provider.yaml
 create mode 100644 Documentation/devicetree/bindings/bus/firewall/st,stm32-etzpc.yaml
 create mode 100644 drivers/bus/firewall/Kconfig
 create mode 100644 drivers/bus/firewall/Makefile
 create mode 100644 drivers/bus/firewall/firewall.c
 create mode 100644 drivers/bus/firewall/stm32-etzpc.c
 create mode 100644 include/dt-bindings/bus/firewall/stm32-etzpc.h
 create mode 100644 include/linux/firewall.h

-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
