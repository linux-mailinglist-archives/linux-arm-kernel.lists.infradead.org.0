Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC91D10D966
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 19:07:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eQbFZPVZeZVOT14z7wq+HeD4xKAG0hlwr+mn7Ka03kQ=; b=hysQ6brhTlgHON
	+lg9WkJTPY/B1Tvxu4orc6qJtP20w9AIVi1WArMifFDbM6czN9gAL5XimCK3YYLK3N7gHZI5++f6t
	JimqtM0CebqI30tGOwTiHFd4ub9Vr6beKvv4D3EVxPTZ7GIaU0+aPjNNsDgPTLRpvfBK6FwE5b8f0
	89SpDOE665bYe5YUvkTpjoDOJsGg8SPbfBWuaeeIhHEK4Fc59ljHFn1TSRxUkhsmldV0hFCH7Av5r
	1CNforbBxJ/AYCUbpLXJ0k4KF1RatT5cy4mSY4hR2NXr8Kkx/YJEzBYCgqG93FLyqryNMu1VRtP1/
	I8iFv6hGumcQRbk/J3Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iakfq-0002gx-Q7; Fri, 29 Nov 2019 18:07:22 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iakem-0001xs-6R
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 18:06:20 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xATHxatc023646; Fri, 29 Nov 2019 19:06:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=hMddIkaPL2KUpivYYgNbUzef0pFCb7AakiEoifdSJ68=;
 b=DcgwRA3z9YoMvhw2gqZNj0Y7mAaH374pcKv/oaJZyR3Y+0NWyIXDU1vZvoUJsiSf9MKc
 n7pYWYhvdWnvzjlRAEqvBXQm6eejxQtiuIEicDZIHbbHq5fwpIyIKC3ad32Mpk+t5vjU
 6N3YR2vQY0oa4bVXMKOK0MHu2N5i/8KKg/w9L3VTgkuBf5Fl8rizKXsUk9arSWoo6Ms5
 U6sf1jy49IvKecHrsEX6iA2Oejugoog7LzKiFD2QIptknvtjeYYX9uG7FNa7WhE0Ug3w
 o56dswfbI/Its2M5j2rrCqB1OtQVhXkdlIiSwXV2R3LgDCufUQfErC7ogTbSontFkAdO 5g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2whcxss0my-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 29 Nov 2019 19:06:06 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8BB7610002A;
 Fri, 29 Nov 2019 19:06:04 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 749D3222D1F;
 Fri, 29 Nov 2019 19:06:04 +0100 (CET)
Received: from localhost (10.75.127.51) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 29 Nov 2019 19:06:04
 +0100
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, <arnd@arndb.de>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH v2 0/6] STM32 DT: Updates for SOC diversity
Date: Fri, 29 Nov 2019 19:05:56 +0100
Message-ID: <20191129180602.28470-1-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG4NODE1.st.com (10.75.127.10) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-29_06:2019-11-29,2019-11-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_100616_538894_C521C775 
X-CRM114-Status: GOOD (  13.40  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-kernel@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes since v1:
 -According to Arnd comment, move chosen and aliases nodes to dts board file.


This series updates stm32mp device tree files in order to handle the STM32MP15
part numbers diversity. STM32MP15 part numbers are built in this way:

-STM32MP15X: X = [1, 3, 7] for IPs diversity:
 -STM32MP151 = basic part
 -STM32MP153 = STM32MP151  + a second CPU A7 + MCAN(x2)
 -STM32MP157 = STM32MP153 + DSI + GPU

-STMM32MP15xY: Y = [a, c] for security diversity:
 -STM32MP15xA: basic part.
 -STM32MP15xC: adds crypto IP.

-STM32MP15xxZZ: ZZ = [aa, ab, ac, ad] for packages (IO) diversity:
 -STM32MP15xxAA: TFBGA448 18x18
 -STM32MP15xxAB: LFBGA354 16x16
 -STM32MP15xxAC: TFBGA361 12x12
 -STM32MP15xxAD: TFBGA257 10x10

New device tree files are created and some existing are renamed to match with
this split.

In this way it is easy to assemble (by inclusion) those files to match with the
SOC partnumber used on board, and then it's simpler for users to create their
own device tree board file using the correct SOC.

For more details:

See STM32MP151 [1], STM32MP153 [2], STM32MP157 [3] reference manuals:
 [1] https://www.st.com/resource/en/reference_manual/dm00366349.pdf
 [2] https://www.st.com/resource/en/reference_manual/dm00366355.pdf
 [3] https://www.st.com/resource/en/reference_manual/dm00327659.pdf

Product family:
 https://www.st.com/en/microcontrollers-microprocessors/stm32-arm-cortex-mpus.html#products

regards
Alex

Alexandre Torgue (6):
  ARM: dts: stm32: Adapt stm32mp157 pinctrl to manage STM32MP15xx SOCs
    family
  ARM: dts: stm32: Update stm32mp157 pinctrl files
  ARM: dts: stm32: Introduce new STM32MP15 SOCs: STM32MP151 and
    STM32MP153
  ARM: dts: stm32: Manage security diversity for STM32M15x SOCs
  ARM: dts: stm32: Adapt STM32MP157 DK boards to stm32 DT diversity
  ARM: dts: stm32: Adapt STM32MP157C ED1 board to STM32 DT diversity

 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi      | 1087 +++++++++++++++
 .../dts/{stm32mp157c.dtsi => stm32mp151.dtsi} |  218 ++-
 arch/arm/boot/dts/stm32mp153.dtsi             |   45 +
 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi     | 1240 -----------------
 arch/arm/boot/dts/stm32mp157.dtsi             |   31 +
 arch/arm/boot/dts/stm32mp157a-avenger96.dts   |    5 +-
 arch/arm/boot/dts/stm32mp157a-dk1.dts         |  595 +-------
 arch/arm/boot/dts/stm32mp157c-dk2.dts         |   15 +-
 arch/arm/boot/dts/stm32mp157c-ed1.dts         |    6 +-
 arch/arm/boot/dts/stm32mp157xaa-pinctrl.dtsi  |   90 --
 arch/arm/boot/dts/stm32mp157xab-pinctrl.dtsi  |   62 -
 arch/arm/boot/dts/stm32mp157xac-pinctrl.dtsi  |   78 --
 arch/arm/boot/dts/stm32mp157xad-pinctrl.dtsi  |   62 -
 arch/arm/boot/dts/stm32mp15xc.dtsi            |   18 +
 arch/arm/boot/dts/stm32mp15xx-dkx.dtsi        |  597 ++++++++
 arch/arm/boot/dts/stm32mp15xxaa-pinctrl.dtsi  |   85 ++
 arch/arm/boot/dts/stm32mp15xxab-pinctrl.dtsi  |   57 +
 arch/arm/boot/dts/stm32mp15xxac-pinctrl.dtsi  |   73 +
 arch/arm/boot/dts/stm32mp15xxad-pinctrl.dtsi  |   57 +
 19 files changed, 2232 insertions(+), 2189 deletions(-)
 create mode 100644 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
 rename arch/arm/boot/dts/{stm32mp157c.dtsi => stm32mp151.dtsi} (91%)
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

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
