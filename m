Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F07D31D1884
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 17:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lX4Ij7aCvHoASb4rOHt4xE//NkpV87pxgK7/p+ZoTMs=; b=gKGZwH46Oyyd+u
	jfaoB0DxYJQHJzpS6wyW6Z+SbYXIO3D50wY1jpO3SCZjj8vIIEyzO7vADWX+lqmRWopWJN7VoH/VC
	1zbKZIw1HZBl9yVPeKi62dP9VW5cx5Bhsiz1aisPC9WbV9akRaBKBiwkyGSQow5lZQaZ9wEilkR+r
	ZJPGYT/FAiX5tKW6UyNLzVTfhA1HOUahhtDF++QtI5gXFhp7KzhdQXqsQOai7kORVKJfyphJkggYv
	ePJFbxvB0T3jZQItFu8YeJV26rA3PZkb2rli29XQsdTkKR1DT8G0tdY92pmwlxbtacBpMD6E8rzEY
	ZvxZt85yl3cEL1qpzF7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYstG-0007Xg-Ep; Wed, 13 May 2020 15:01:46 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYsrU-0003s6-Ed
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:59:58 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04DEv03a016527; Wed, 13 May 2020 16:59:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=ZgpAUyUBhezUtCmK/K3PuawVI1AJV9N0ktEyTGWGChE=;
 b=FCEurBkqNDjhkxHwJgxnJZlZ+ky03QXvODmzl5OqMiNV8vu1MwZcc5EAHSqgftOwlnpt
 cYS9N5oKrLTT/b3plyMtMKqsnRWr0SmP+E5pLQZqf665qsSJ57C8z7V1qv47mJK6In/3
 nIDZoRk1HxCmWKddNbn0TIgz9ofQQKVHldNMaLMMH8dM+VbfJiNXA4oCt6+GJKBfKja1
 ngMpB2LFEyPDjhVdWVMen2ZmdircFUhnXbXBY6dOrFEzGupCwnQyYFsr8vZt0udxjl+/
 rWrb52J1lhP2iUpmQV+Bqp928hFlqcTi7AyJthG/pXzCapxpF5X0w1ZF922L7GpZfFXh xQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3100vydgkn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 13 May 2020 16:59:43 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 92BD010002A;
 Wed, 13 May 2020 16:59:41 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7D0852D3004;
 Wed, 13 May 2020 16:59:41 +0200 (CEST)
Received: from localhost (10.75.127.51) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 13 May 2020 16:59:40
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <linus.walleij@linaro.org>, <robh+dt@kernel.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <gregkh@linuxfoundation.org>
Subject: [PATCH 00/15] Fix STM32 DT issues on v5.7-rc4
Date: Wed, 13 May 2020 16:59:20 +0200
Message-ID: <20200513145935.22493-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG8NODE1.st.com (10.75.127.22) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-13_06:2020-05-13,
 2020-05-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_075956_792936_945FFD57 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series fixes issues hight lighted by dtbs_check on STM32 devicetrees.
The patches has been developped on top of v5.7-rc4 tag.

Benjamin Gaignard (15):
  ARM: dts: stm32: remove useless interrupt-names property on stm32f429
  ARM: dts: stm32: update pwm pinctrl node names for stm32f4
  ARM: dts: stm32: update led nodes names for stm32f249-disco
  ARM: dts: stm32: update led nodes names for stm32f469-disco
  ARM: dts: stm32: remove useless interrupt-names property on stm32f746
  ARM: dts: stm32: update led nodes names for stm32f429-eval
  ARM: dts: stm32: update led nodes names for stm32f769-disco
  ARM: dts: stm32: update led nodes names for stm32f746-eval
  ARM: dts: stm32: remove useless interrupt-names property on stm32f743
  ARM: dts: stm32: Update nodes names for stm32h743 pinctrl
  ARM: dts: stm32: Update nodes names for stm32mp15 pinctrl
  ARM: dts: stm32: Add missing #address and #size cells on spi node for
    stm32mp151
  ARM: dts: stm32: update led nodes names for stm32f746-eval
  dt-bindings: pinctrl: stm32: Add missing interrupts property
  dt-bindings: usb: dwc2: Fix issues for stm32mp15x SoC

 .../devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml          |  3 +++
 Documentation/devicetree/bindings/usb/dwc2.yaml                |  6 ++++--
 arch/arm/boot/dts/stm32429i-eval.dts                           |  8 ++++----
 arch/arm/boot/dts/stm32746g-eval.dts                           |  8 ++++----
 arch/arm/boot/dts/stm32f4-pinctrl.dtsi                         |  4 ++--
 arch/arm/boot/dts/stm32f429-disco.dts                          |  4 ++--
 arch/arm/boot/dts/stm32f429.dtsi                               |  1 -
 arch/arm/boot/dts/stm32f469-disco.dts                          |  8 ++++----
 arch/arm/boot/dts/stm32f746.dtsi                               |  1 -
 arch/arm/boot/dts/stm32f769-disco.dts                          |  4 ++--
 arch/arm/boot/dts/stm32h743-pinctrl.dtsi                       | 10 +++++-----
 arch/arm/boot/dts/stm32h743.dtsi                               |  1 -
 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi                       |  6 +++---
 arch/arm/boot/dts/stm32mp151.dtsi                              |  2 ++
 arch/arm/boot/dts/stm32mp15xx-dkx.dtsi                         |  2 +-
 15 files changed, 36 insertions(+), 32 deletions(-)

-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
