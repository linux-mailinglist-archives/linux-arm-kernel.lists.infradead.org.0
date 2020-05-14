Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9991D35FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 18:07:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lTjo6aeWaPSjO9ANzw0bLTtEVrpI7qDfnrbXUGu6hh8=; b=rJGeD3BHx5rLXiMMKX/LBCPp2t
	OugUiG2mz6DOK/OSsPizfBbisGTXgAQ4ZAbgdYSCo3Lo/uNMB9ybmkIEMxzJlc7P7QeE13gup9KVZ
	IzCZaraVH7535sxSX6W72isdUB/RjnQXBtx4wh6ABrDuvzGWr4N/lKMWqLvTiRBSXNSTabFnSXses
	NnElpx3lDMDE0Mp+x9MlEBFZUQ4KUlAgGTnCTQqcGCHEtY7atlk7R412a2VZvvo13utQkobtyf6DQ
	4yfyAj5ePiJ7CmLMcDMqfH5X5MTZo8tNsLnrtY0ZEM/hxHVfJS0F7O/IEcMGwX9vdsuCBSL3vkYi1
	uooQMQow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZGOg-00015M-Qa; Thu, 14 May 2020 16:07:46 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZGOV-00014c-ET
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 16:07:39 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04EG2Mio009499; Thu, 14 May 2020 18:07:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=to : cc : from : subject
 : message-id : date : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=hzxrdEsZ2beVOIwKhMlaxvyi5M7mxP8IKvSD0tpgcR4=;
 b=gZq7w/wmNC4M19H33mpc3IZQUAJzuQHaNUmz+cNhd4pUM3+436K8SPCrXyOuTsxlbH11
 R3R1bGHT4+4jyZcnihk08ACnUlCTg9BYjHvnv3/0UEGjd40G5ZdWEEj/r1vpdzOMJ9lI
 fl9bzeIB6/WI7AW9691+u1nWUX8gpZGFB7H9snHF3R/w2aZHCqqhc1A+ZJVn3kQQaQKB
 cO/tic1UdaTunIZtpWX+6tb9fZFB3Ul9Ex6csBh4OGQqX4dpIqVk6s6Zh7PBgFEQpV2W
 Vds2fO3uSi8Gj+O7m4NbSturtKrVKbGSPoG5Yh/qGtQsVHZT87AhTW8HcCchtp7lyez2 YA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3100vnc9xg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 14 May 2020 18:07:29 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8ACFC100038;
 Thu, 14 May 2020 18:07:28 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 721B52C4E16;
 Thu, 14 May 2020 18:07:28 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.47) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 14 May
 2020 18:07:22 +0200
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, Kevin
 Hilman <khilman@baylibre.com>, SoC Team <soc@kernel.org>, arm-soc
 <arm@kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
From: Alexandre Torgue <alexandre.torgue@st.com>
Subject: [GIT PULL] STM32 DT changes for v5.8 #1
Message-ID: <19160355-364d-170c-7ae2-5ba7f714103f@st.com>
Date: Thu, 14 May 2020 18:07:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-14_05:2020-05-14,
 2020-05-14 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_090735_959591_5EF2FB3A 
X-CRM114-Status: GOOD (  19.34  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Olof and Kevin,

Please consider this first round of STM32 DT updates for v5.8.
Main changes concern stm32mp15 MPU soc including 3 new boards: lxa-mc1, 
Stinger96 and IoT Box board and a major rework of Avenger96 board to 
support the new revision board based on DHCOR SOM.

Google doc has been updated.

Regards
Alex

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

   Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

   git://git.kernel.org/pub/scm/linux/kernel/git/atorgue/stm32.git 
tags/stm32-dt-for-v5.8-1

for you to fetch changes up to 7e76f82acd9e12fe7765d5d8c200b37787c994e4:

   ARM: dts: stm32: Split Avenger96 into DHCOR SoM and Avenger96 board 
(2020-05-14 16:24:54 +0200)

----------------------------------------------------------------
STM32 DT updates for v5.8, round 1

Highlights:
----------

MCU part:
  -fix a typo for DAC io-channel-cells on f429 and h743

MPU part:
  -Generic:
   -Bump tp PSCI 1.0
   -Fix a typo for DAC io-channel-cells
   -Add M4 pdds for deep sleep mode
   -Add I2C fatmode plus support

  -Add new Octavio lxa-mc1 board based on OSDMP15x SiP

  -Add new Stinger96 board support. It is a 96Boards IoT Extended board
   based on stm32mp157a SoC. Some figures: 256MB DDR, 125MB and flash,
   Onboard BG96 modem...

  -Add IoT Box board support based on stinger96 board + Wifi/BT, CCS811
   VOC sensor, 2 digitals microphones ...

  -DH:
   -Adapt dhcom-som and dhcom-pdk2 dts(i) files to STM32MP15 SoC diversity
   -Add GPIO led and GPIO keys support on PDK2 board

  -AV96:
   -Major rework to support official avenger96 board based on DHCOR SOM.
   -Prototype board is no more supported

----------------------------------------------------------------
Ahmad Fatoum (8):
       ARM: dts: stm32: enable stm32mp157's &gpu by default
       ARM: dts: stm32: preset stm32mp15x video #address- and #size-cells
       ARM: dts: stm32: remove now redundant STM32MP15x video cell sizes
       ARM: dts: stm32: use uniform label names for sleep pinctrl phandles
       ARM: dts: stm32: use uniform node names for sleep pinctrl groups
       dt-bindings: add vendor prefix for Linux Automation GmbH
       ARM: dts: stm32: add STM32MP1-based Linux Automation MC-1 board
       dt-bindings: arm: stm32: document lxa,stm32mp157c-mc1 compatible

Alain Volmat (2):
       ARM: dts: stm32: use st,stm32mp15-i2c compatible for stm32mp151
       ARM: dts: stm32: add Fast Mode Plus info in I2C nodes of stm32mp151

Arnaud Pouliquen (1):
       ARM: dts: stm32: add cortex-M4 pdds management in Cortex-M4 node

Etienne Carriere (1):
       ARM: dts: stm32: bump PSCI to version 1.0 on stm32mp15x

Fabrice Gasnier (3):
       ARM: dts: stm32: fix a typo for DAC io-channel-cells on stm32f429
       ARM: dts: stm32: fix a typo for DAC io-channel-cells on stm32h743
       ARM: dts: stm32: fix a typo for DAC io-channel-cells on stm32mp15

Manivannan Sadhasivam (6):
       dt-bindings: Add vendor prefix for Shiratech Solutions
       ARM: dts: stm32: Add missing pinctrl entries for STM32MP15
       dt-bindings: arm: stm32: Document Stinger96 compatible
       ARM: dts: stm32: Add Stinger96 board support
       dt-bindings: arm: stm32: Document IoT Box compatible
       ARM: dts: stm32: Add IoT Box board support

Marek Vasut (35):
       ARM: dts: stm32: Enable I2C2 on DHCOM PDK2 carrier board
       ARM: dts: stm32: Repair PMIC configuration on AV96
       ARM: dts: stm32: Repair PMIC interrupt on AV96
       ARM: dts: stm32: Add alternate pinmux for ethernet RGMII on stm32mp15
       ARM: dts: stm32: Repair ethernet operation on AV96
       ARM: dts: stm32: Add missing ethernet PHY reset on AV96
       ARM: dts: stm32: Add missing ethernet PHY skews on AV96
       ARM: dts: stm32: Add alternate pinmux for SDMMC pins on stm32mp15
       ARM: dts: stm32: Repair SDMMC1 operation on AV96
       ARM: dts: stm32: Add eMMC attached to SDMMC2 on AV96
       ARM: dts: stm32: Add QSPI NOR on AV96
       ARM: dts: stm32: Add configuration EEPROM on AV96
       ARM: dts: stm32: Enable WiFi on AV96
       ARM: dts: stm32: Add alternate pinmux for USART2 pins on stm32mp15
       ARM: dts: stm32: Enable Bluetooth on AV96
       ARM: dts: stm32: Add alternate pinmux for LTDC pins on stm32mp15
       ARM: dts: stm32: Add bindings for HDMI video on AV96
       ARM: dts: stm32: Add alternate pinmux for SAI2 pins on stm32mp15
       ARM: dts: stm32: Add bindings for audio on AV96
       ARM: dts: stm32: Add bindings for USB on AV96
       ARM: dts: stm32: Rename LEDs to match silkscreen on AV96
       ARM: dts: stm32: Add alternate pinmux for I2C2 pins
       ARM: dts: stm32: Repair I2C2 operation on AV96
       ARM: dts: stm32: Add alternate pinmux for FDCAN1 pins
       ARM: dts: stm32: Add bindings for FDCAN1 on AV96
       ARM: dts: stm32: Add alternate pinmux for FDCAN2 pins
       ARM: dts: stm32: Add bindings for FDCAN2 on AV96
       ARM: dts: stm32: Add alternate pinmux for ADC pins
       ARM: dts: stm32: Add bindings for ADC on AV96
       ARM: dts: stm32: Add alternate pinmux for SPI2 pins
       ARM: dts: stm32: Add bindings for SPI2 on AV96
       ARM: dts: stm32: Add GPIO keys for STM32MP1 DHCOM PDK2
       ARM: dts: stm32: Add GPIO LEDs for STM32MP1 DHCOM PDK2
       ARM: dts: stm32: Split SoC-independent parts of DHCOM SOM and PDK2
       ARM: dts: stm32: Split Avenger96 into DHCOR SoM and Avenger96 board

Pascal Paillet (1):
       ARM: dts: stm32: Enable thermal sensor support on stm32mp15xx-dkx

Yann Gautier (1):
       ARM: dts: stm32: add sd-uhs properties in SD-card node for 
stm32mp157c-ed1

  .../devicetree/bindings/arm/stm32/stm32.yaml       |   3 +
  .../devicetree/bindings/vendor-prefixes.yaml       |   4 +
  arch/arm/boot/dts/Makefile                         |   6 +-
  arch/arm/boot/dts/stm32f429.dtsi                   |   4 +-
  arch/arm/boot/dts/stm32h743.dtsi                   |   4 +-
  arch/arm/boot/dts/stm32mp15-pinctrl.dtsi           | 666 
++++++++++++++++++++-
  arch/arm/boot/dts/stm32mp151.dtsi                  |  37 +-
  arch/arm/boot/dts/stm32mp157.dtsi                  |   8 +-
  arch/arm/boot/dts/stm32mp157a-avenger96.dts        | 314 +---------
  arch/arm/boot/dts/stm32mp157a-dhcor-avenger96.dts  |  38 ++
  arch/arm/boot/dts/stm32mp157a-iot-box.dts          |  68 +++
  arch/arm/boot/dts/stm32mp157a-stinger96.dts        |  12 +
  arch/arm/boot/dts/stm32mp157a-stinger96.dtsi       | 342 +++++++++++
  arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts       | 265 +-------
  arch/arm/boot/dts/stm32mp157c-dk2.dts              |   8 -
  arch/arm/boot/dts/stm32mp157c-ed1.dts              |   7 +-
  arch/arm/boot/dts/stm32mp157c-ev1.dts              |  14 +-
  arch/arm/boot/dts/stm32mp157c-lxa-mc1.dts          | 252 ++++++++
  arch/arm/boot/dts/stm32mp15xx-dhcom-pdk2.dtsi      | 337 +++++++++++
  ...c-dhcom-som.dtsi => stm32mp15xx-dhcom-som.dtsi} |   9 +-
  arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi | 401 +++++++++++++
  arch/arm/boot/dts/stm32mp15xx-dhcor-io1v8.dtsi     |  23 +
  arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi       | 209 +++++++
  arch/arm/boot/dts/stm32mp15xx-dkx.dtsi             |  20 +-
  arch/arm/boot/dts/stm32mp15xx-osd32.dtsi           | 230 +++++++
  25 files changed, 2634 insertions(+), 647 deletions(-)
  create mode 100644 arch/arm/boot/dts/stm32mp157a-dhcor-avenger96.dts
  create mode 100644 arch/arm/boot/dts/stm32mp157a-iot-box.dts
  create mode 100644 arch/arm/boot/dts/stm32mp157a-stinger96.dts
  create mode 100644 arch/arm/boot/dts/stm32mp157a-stinger96.dtsi
  create mode 100644 arch/arm/boot/dts/stm32mp157c-lxa-mc1.dts
  create mode 100644 arch/arm/boot/dts/stm32mp15xx-dhcom-pdk2.dtsi
  rename arch/arm/boot/dts/{stm32mp157c-dhcom-som.dtsi => 
stm32mp15xx-dhcom-som.dtsi} (98%)
  create mode 100644 arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi
  create mode 100644 arch/arm/boot/dts/stm32mp15xx-dhcor-io1v8.dtsi
  create mode 100644 arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
  create mode 100644 arch/arm/boot/dts/stm32mp15xx-osd32.dtsi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
