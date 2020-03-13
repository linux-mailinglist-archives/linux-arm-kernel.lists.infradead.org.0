Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B01184C76
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 17:27:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=T10c2b1g3Lb+x0+BSYE3PZPVxqt/hWDEji+G86nCPFA=; b=gELUxtMT43JaDyIcZqUx8/TmBv
	JKR8/SpPbB8rT10Ghi9KgwLOldbrzoTSBNdzwGEjYQQ8Ol+F4xTwLfEAAr1cvA1PxgXqmcDBYXlPQ
	4nqrociU7n2cRDWPDACdZYwEQM5PiedqD12flX6tz3HEZ6Akyajfc8GrcDkuwdLtr4ovkLiD8UCM+
	suE+eL15qWH/DGp5w7ypxtfoPo8Kx199hU3UDyOwRuUl53sK31gVpqv2+32KlaDfpt7oTLmd1W6LO
	Sa9bIc1EoNhszv9vgLJMviASFE0muNNs7UVUcjAgRTr55inhNB/4NwXsYP5u4rG8HfoVb2y1HgIYI
	FsoA/bdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCn9j-0003lU-4c; Fri, 13 Mar 2020 16:27:27 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCn9b-0003l4-O3
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 16:27:21 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02DGJBgq022109; Fri, 13 Mar 2020 17:27:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=to : cc : from : subject
 : message-id : date : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=hd5fdHWaHZaG/MN29fpoKxJlbCbeFKoyejCCjBC8H60=;
 b=Z4OGDS57WKyM23/7EDpvbAd4MhEx0T7/NOtZHj+fEBD3MEboJATMNIhP0LtAwLY6fMqD
 y6I+B87Ii/rASe5F9qnY+ilOkl+R1GzWv+rURZ1f5wyF/KidG1MWz5XYv5lNTJr658q2
 8/Ca1rQk/nLurx4KvItW/viYgiW5rysFjdyfxboFaRipYty7D+Wt/7tP31GnkyPKS2kN
 imvV9JC3+JRbwRyh85Y6o64TToqieYTUJUyQLPOCjKOGyqE6WAWNnbBlpPgBP7dJBIIc
 MOattfHSYEfZHnsol+rYrOBpuHnM4P1NPIwOZ8/zTPzgM0IY2QgzX4hed0il5mJEJIwn rg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yqt81avk3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 13 Mar 2020 17:27:10 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id F354F10002A;
 Fri, 13 Mar 2020 17:27:09 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C611D2B034F;
 Fri, 13 Mar 2020 17:27:09 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.46) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 13 Mar
 2020 17:27:09 +0100
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, Kevin
 Hilman <khilman@baylibre.com>, SoC Team <soc@kernel.org>, arm-soc
 <arm@kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
From: Alexandre Torgue <alexandre.torgue@st.com>
Subject: [GIT PULL] STM32 DT changes for v5.7 #1
Message-ID: <ded09d01-df47-9572-4679-34669bff8916@st.com>
Date: Fri, 13 Mar 2020 17:27:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-13_06:2020-03-12,
 2020-03-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_092720_236590_6F7B3CAD 
X-CRM114-Status: GOOD (  17.61  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Olof and Kevin,

Please consider this first round of STM32 DT updates for v5.7.
Main changes concern stm32mp15 MPU soc including a new board support.

Regards
Alex

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

   Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

   git://git.kernel.org/pub/scm/linux/kernel/git/atorgue/stm32.git 
tags/stm32-dt-for-v5.7-1

for you to fetch changes up to 431c89e6f323e22e73f79fee0274de98aae19ddd:

   ARM: dts: stm32: use correct vqmmc regu for eMMC on stm32mp1 ED1/EV1 
boards (2020-03-13 17:03:06 +0100)

----------------------------------------------------------------
STM32 DT updates for v5.3, round 1

Highlights:
----------

  - Add support for DH Electronics DHCOM SoM and PDK2 rev. 400 carrier
    board. It is based on stm32mp157c SoC.
  - Add OTG full support on stm32mp15.
  - Fix issues seen during yaml validation on stpmic and stmfx.
  - Add i2c power/wakeup support on stm32mp15.
  - Add card detect on sdcard on stm32mp boards

----------------------------------------------------------------
Ahmad Fatoum (1):
       ARM: dts: stm32: add cpu clock-frequency property on stm32mp15x

Alain Volmat (6):
       ARM: dts: stm32: set i2c4 bus freq to 400KHz on stm32mp157c-ed1
       ARM: dts: stm32: set i2c4 bus freq to 400KHz on stm32mp15 DK boards
       ARM: dts: stm32: add i2c4 sleep pinctrl on stm32mp15xx-dkx
       ARM: dts: stm32: add i2c2/i2c5 sleep pinctrl on stm32mp157c-ev1
       ARM: dts: stm32: add i2c4 sleep pinctrl on stm32mp157c-ed1
       ARM: dts: stm32: add wakeup-source in all I2C nodes of stm32mp157c

Amelie Delaunay (4):
       ARM: dts: stm32: add USB OTG full support on stm32mp151
       ARM: dts: stm32: add USB OTG pinctrl to stm32mp15
       ARM: dts: stm32: enable USB OTG Dual Role on stm32mp157c-ev1
       ARM: dts: stm32: add resets property on all DMA nodes on stm32mp151

Benjamin Gaignard (5):
       ARM: dts: stm32: remove useless properties in 
stm32mp157a-avenger96 stmpic node
       ARM: dts: stm32: Correct stmfx node name on stm32746g-eval board
       ARM: dts: stm32: Correct stmfx node name on stm32mp157c-ev1 board
       ARM: dts: stm32: Rename stmfx joystick pins on stm32mp157c-ev1
       ARM: dts: stm32: Do clean up in stmpic nodes on stm32mp15 boards

Marek Vasut (6):
       ARM: dts: stm32: Add Ethernet0 RMII pins A pinmux entry on stm32mp1
       ARM: dts: stm32: Add SAI2A pins B pinmux entry on stm32mp1
       ARM: dts: stm32: Add USART3 pins A pinmux entry on stm32mp1
       ARM: dts: stm32: Add UART8 pins A pinmux entry on stm32mp1
       ARM: dts: stm32: Add missing ETHCK clock to ethernet node on stm32mp1
       ARM: dts: stm32: Add DH Electronics DHCOM STM32MP1 SoM and PDK2 board

Yann Gautier (3):
       ARM: dts: stm32: add cd-gpios properties for SD-cards on STM32MP1 
boards
       ARM: dts: stm32: add disable-wp property for SD-card on STM32MP1 
boards
       ARM: dts: stm32: use correct vqmmc regu for eMMC on stm32mp1 
ED1/EV1 boards

  arch/arm/boot/dts/Makefile                   |   1 +
  arch/arm/boot/dts/stm32746g-eval.dts         |   2 +-
  arch/arm/boot/dts/stm32mp15-pinctrl.dtsi     |  93 +++++++
  arch/arm/boot/dts/stm32mp151.dtsi            |  16 +-
  arch/arm/boot/dts/stm32mp153.dtsi            |   1 +
  arch/arm/boot/dts/stm32mp157a-avenger96.dts  |  11 +-
  arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts | 265 +++++++++++++++++++
  arch/arm/boot/dts/stm32mp157c-dhcom-som.dtsi | 368 
+++++++++++++++++++++++++++
  arch/arm/boot/dts/stm32mp157c-ed1.dts        |  16 +-
  arch/arm/boot/dts/stm32mp157c-ev1.dts        |  13 +-
  arch/arm/boot/dts/stm32mp15xx-dkx.dtsi       |  10 +-
  11 files changed, 769 insertions(+), 27 deletions(-)
  create mode 100644 arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts
  create mode 100644 arch/arm/boot/dts/stm32mp157c-dhcom-som.dtsi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
