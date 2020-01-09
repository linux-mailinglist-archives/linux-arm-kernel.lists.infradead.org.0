Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A2B13597D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 13:52:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RzqsqWuHDKBIImULQcupSxS0ja1vlNRaMfPIer7jYmw=; b=Cxg50uz2thOc9zSD2uzeQZQEhB
	PRKkF6RylAfJ1DxaNzFL5WVmRalXQZUXthlpSZllrrZPB1G5/vd03pQYdSw9tpoKcR8sqeF5GsA7h
	etYTvDqzSmDEpPq74eQ7yshPoUbn07/IVh4aUOkhdYfmKK6frthk+l8qFv3XhfDL12KXHWv7DZXet
	x93fpn9bPTeChegVB3W58AewvH6AO2P7eMTBnhS7Py3gH7i4oU1MkJCfphVWkgXT27wJx9tleyqtx
	7VPmR4QjxPOiF77yhu2vBDTG4nL57ViNs7+sHHP9Ll9ypfH9IRPU4MxgR52SutFsNg+I7YwCY4Wp5
	hndkrvUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipXIN-0001Hw-CO; Thu, 09 Jan 2020 12:52:15 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipXIF-0001HU-H7
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 12:52:09 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 009Clmji011363; Thu, 9 Jan 2020 13:52:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=to : from : subject : cc
 : message-id : date : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=kpD+j0Ij3ld3pEQPALfUULAbPrFEwLtdiM7uHDouYdk=;
 b=T1hYvJO16OLCGuR47H7HqDPB5OiU6K78tQ2IeB8NgJYja6F19yva7OSAhuOVE1dKWmT0
 IxPCC9DtbxgEYHNxEIW+/6nywVwr96kpBs81gjAmXq9TP9GPoI2CA7WTq7V8cHG5B4+S
 PFTuM3MDH+yKT61JO2ugHESs5Roc6dvhdk4lkTr0rwDXt/TdECpx7AoOaVrbEL3sAGXF
 Xd4Ag+Usd+H5qKKCR1ob01GWtrweu6UcgLD8zvu04DLGRLSlWQ06cwjlE1b06YaOX++1
 qSlymxCUj1fKIrgCst5n61e5NQmuKLzMeYLQO3WOqV1ij03xlNZpBzPs+uaf00W63KLN Xg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakur1p5p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 09 Jan 2020 13:52:01 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BC85510003D;
 Thu,  9 Jan 2020 13:51:54 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4BE1D2B3821;
 Thu,  9 Jan 2020 13:51:54 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.45) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 9 Jan
 2020 13:51:53 +0100
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, Kevin
 Hilman <khilman@baylibre.com>, SoC Team <soc@kernel.org>, arm-soc
 <arm@kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
From: Alexandre Torgue <alexandre.torgue@st.com>
Subject: [GIT PULL] STM32 DT changes for v5.6 #1
Message-ID: <39df1dee-3c9f-cd35-bc55-a71223e07100@st.com>
Date: Thu, 9 Jan 2020 13:51:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG3NODE1.st.com (10.75.127.7) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-09_02:2020-01-09,
 2020-01-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_045207_937939_E656CFA3 
X-CRM114-Status: GOOD (  18.87  )
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Olof and Kevin,

Please consider this first round of STM32 DT updates for v5.6.
Main changes concern stm32mp15 MPU soc including new devicetree files 
split, SDMMC2&3 support, DKX USB support.

Regards
Alex

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

   git://git.kernel.org/pub/scm/linux/kernel/git/atorgue/stm32.git 
tags/stm32-dt-for-v5.6-1

for you to fetch changes up to f8849332aeda1c3a28a0d1bfcaff90e089d0ebcf:

   ARM: dts: stm32: Add power-supply for RGB panel on stm32429i-eval 
(2020-01-09 12:29:28 +0100)

----------------------------------------------------------------
STM32 DT updates for v5.6, round 1

Highlights:
----------

MPU part:
  -Add PWM support on DK2 board.
  -Add counter support to STM32 timers.
  -Add support of SDMMC 2&3 instances based on "arm,pl18x". SDMMC2 is
   connected to eMMC on ED1 board. SDMMC3 is connected to the GPIO
   extension connector on EV1 & DKx boards.
  -Add ADC support on ED1 board.
  -Update devicetree files split to better fit to STM32MP15 SOC & boards
   diversity.
  -Fix issues seen during YAML validation.
  -Enable Ethernet (MAC) TX clock gating during low-power mode.
  -Enable USB OTG HS support on DKx boards.
  -Enable USB Host EHCI on DKx boards.

MCU part:
  -Fix issues seen during YAML validation.

----------------------------------------------------------------
Alexandre Torgue (6):
       ARM: dts: stm32: Adapt stm32mp157 pinctrl to manage STM32MP15xx 
SOCs family
       ARM: dts: stm32: Update stm32mp157 pinctrl files
       ARM: dts: stm32: Introduce new STM32MP15 SOCs: STM32MP151 and 
STM32MP153
       ARM: dts: stm32: Manage security diversity for STM32M15x SOCs
       ARM: dts: stm32: Adapt STM32MP157 DK boards to stm32 DT diversity
       ARM: dts: stm32: Adapt STM32MP157C ED1 board to STM32 DT diversity

Amelie Delaunay (4):
       ARM: dts: stm32: enable USBPHYC on stm32mp15 DKx boards
       ARM: dts: stm32: enable USB Host (USBH) EHCI controller on 
stm32mp15 DKx
       ARM: dts: stm32: enable USB OTG HS on stm32mp15 DKx boards
       ARM: dts: stm32: add phy-names to usbotg_hs on stm32mp157c-ev1

Arnaud Pouliquen (1):
       ARM: dts: stm32: update mlahb node according to the bindings on 
stm32mp15

Benjamin Gaignard (12):
       ARM: dts: stm32: remove unused rng interrupt on stm32f429
       ARM: dts: stm32: remove "@" and "_" from stm32f4 pinmux groups
       ARM: dts: stm32: remove "@" and "_" from stm32f7 pinmux groups
       ARM: dts: stm32: remove useless clock-names from RTC node on 
stm32f429
       ARM: dts: stm32: remove useless clock-names from RTC node on 
stm32f746
       ARM: dts: stm32: fix dma controller node name on stm32f746
       ARM: dts: stm32: fix dma controller node name on stm32f743
       ARM: dts: stm32: fix dma controller node name on stm32mp157c
       ARM: dts: stm32: change nvmem node name on stm32f429
       ARM: dts: stm32: change nvmem node name on stm32mp1
       ARM: dts: stm32: Add power-supply for DSI panel on stm32f469-disco
       ARM: dts: stm32: Add power-supply for RGB panel on stm32429i-eval

Christophe Roullier (3):
       ARM: dts: stm32: remove syscfg clock on stm32mp15 ethernet
       ARM: dts: stm32: adjust slew rate for Ethernet on stm32mp15
       ARM: dts: stm32: Enable MAC TX clock gating during TX low-power 
mode on stm32mp15

Fabrice Gasnier (7):
       ARM: dts: stm32: add pwm sleep pin muxing for stm32mp157c-ev1
       ARM: dts: stm32: add pwm pin muxing for stm32mp157a-dk1
       ARM: dts: stm32: add pwm sleep pins to stm32mp157c-ev1
       ARM: dts: stm32: add support for PWM on stm32mp157a-dk1
       ARM: dts: stm32: add timers counter support on stm32mp157c
       ARM: dts: stm32: add ADC pins used for stm32mp157c-ed1
       ARM: dts: stm32: add ADC support to stm32mp157c-ed1

Yann Gautier (4):
       ARM: dts: stm32: update slew-rate properties for sdmmc1 on stm32mp157
       ARM: dts: stm32: add sdmmc2 & 3 nodes for STM32MP157 SoC
       ARM: dts: stm32: enable sdmmc2 node for stm32mp157c-ed1 board
       ARM: dts: stm32: add sdmmc3 node for STM32MP1 boards

  arch/arm/boot/dts/stm32429i-eval.dts               |    8 +
  arch/arm/boot/dts/stm32f4-pinctrl.dtsi             |   28 +-
  arch/arm/boot/dts/stm32f429.dtsi                   |    4 +-
  arch/arm/boot/dts/stm32f469-disco.dts              |    8 +
  arch/arm/boot/dts/stm32f7-pinctrl.dtsi             |   22 +-
  arch/arm/boot/dts/stm32f746.dtsi                   |    5 +-
  arch/arm/boot/dts/stm32h743.dtsi                   |    6 +-
  arch/arm/boot/dts/stm32mp15-pinctrl.dtsi           | 1092 
++++++++++++++++++++
  .../boot/dts/{stm32mp157c.dtsi => stm32mp151.dtsi} |  301 ++++--
  arch/arm/boot/dts/stm32mp153.dtsi                  |   45 +
  arch/arm/boot/dts/stm32mp157-pinctrl.dtsi          |  953 
-----------------
  arch/arm/boot/dts/stm32mp157.dtsi                  |   31 +
  arch/arm/boot/dts/stm32mp157a-avenger96.dts        |    5 +-
  arch/arm/boot/dts/stm32mp157a-dk1.dts              |  498 +--------
  arch/arm/boot/dts/stm32mp157c-dk2.dts              |   15 +-
  arch/arm/boot/dts/stm32mp157c-ed1.dts              |   38 +-
  arch/arm/boot/dts/stm32mp157c-ev1.dts              |   22 +-
  arch/arm/boot/dts/stm32mp157xaa-pinctrl.dtsi       |   90 --
  arch/arm/boot/dts/stm32mp157xab-pinctrl.dtsi       |   62 --
  arch/arm/boot/dts/stm32mp157xac-pinctrl.dtsi       |   78 --
  arch/arm/boot/dts/stm32mp157xad-pinctrl.dtsi       |   62 --
  arch/arm/boot/dts/stm32mp15xc.dtsi                 |   18 +
  arch/arm/boot/dts/stm32mp15xx-dkx.dtsi             |  625 +++++++++++
  arch/arm/boot/dts/stm32mp15xxaa-pinctrl.dtsi       |   85 ++
  arch/arm/boot/dts/stm32mp15xxab-pinctrl.dtsi       |   57 +
  arch/arm/boot/dts/stm32mp15xxac-pinctrl.dtsi       |   73 ++
  arch/arm/boot/dts/stm32mp15xxad-pinctrl.dtsi       |   57 +
  27 files changed, 2435 insertions(+), 1853 deletions(-)
  create mode 100644 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
  rename arch/arm/boot/dts/{stm32mp157c.dtsi => stm32mp151.dtsi} (87%)
  create mode 100644 arch/arm/boot/dts/stm32mp153.dtsi
  delete mode 100644 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
  create mode 100644 arch/arm/boot/dts/stm32mp157.dtsi
  delete mode 100644 arch/arm/boot/dts/stm32mp157xaa-pinctrl.dtsi
  delete mode 100644 arch/arm/boot/dts/stm32mp157xab-pinctrl.dtsi
  delete mode 100644 arch/arm/boot/dts/stm32mp157xac-pinctrl.dtsi
  delete mode 100644 arch/arm/boot/dts/stm32mp157xad-pinctrl.dtsi
  create mode 100644 arch/arm/boot/dts/stm32mp15xc.dtsi
  create mode 100644 arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
  create mode 100644 arch/arm/boot/dts/stm32mp15xxaa-pinctrl.dtsi
  create mode 100644 arch/arm/boot/dts/stm32mp15xxab-pinctrl.dtsi
  create mode 100644 arch/arm/boot/dts/stm32mp15xxac-pinctrl.dtsi
  create mode 100644 arch/arm/boot/dts/stm32mp15xxad-pinctrl.dtsi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
