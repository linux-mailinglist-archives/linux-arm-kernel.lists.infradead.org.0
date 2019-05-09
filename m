Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 970B518733
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 10:59:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BaBkvOY8Frw4Us3w7cdRP3g1xrj9j+H5Z27FffyegX8=; b=uJus6fZmcggg2B
	nnIbT9rPdJJe2PVurF73fq4mGpVsijbEWQCd9HuHAzpAGB7+aKOJA0ZXUtz1rE6nTykVbI61ZaihW
	fE3edOvKWY6FlV2LpjJMIeiGl6jlb4jmcNrH4Fn9jPxeh2ughQt1KKXKDOpnal8pc1L/SsaykfE7p
	e2BgKmObB+lfRHKuUlEio4nx7bSSjM3cFC4oYcBoMsJpBObi2BPX9w4yDIvWNTJ02LWVq4C0E52jm
	vt1I1pyTNTo5B+scdjcOsHVDO77CwtA+Fr/isJstqRtRavhJSNsBJBfywTo+THiRABpsGPRedG8J2
	F511GFLGrHmyl4yhM7Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOetj-0007to-IY; Thu, 09 May 2019 08:59:27 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOetT-0007sn-1s
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 08:59:12 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x498wcEH026185; Thu, 9 May 2019 10:59:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=jUe2d3C91CwaYKqFGnAmdOypdhWz5JbvmAKgwZA/OlQ=;
 b=IXSVdGuovITH732k0nWd9IpIc83HnodlMz1kxeIO2z3CmXJ+HGzdPWvha29wt4d9mPtL
 eUj2iMcQRdWbnBN8WebuytEzZeRNuqnz9SndIwd6vCZ1uPkAQ6GcUIJujGCj9RVRQmB0
 PyNhigQGzoFbXntPtbN2yMXZ2/paULZRvdRPt3oJ0/qxssxBgPpyBuh8ZWojO5KOofku
 lFNA/HjLlClQCR5HhWwlfZ0A2/6WEsVd/1UgtlOUqAAnYaFvIg63DPw4crNtkpOqVyEP
 no3QdgoMNTGKdkyNQGejipGQrGCQKqA4phN/QMFZ8Xxu2yHkcwXrlTUsIrwAWw/j3e3Z Ug== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sc9s4a9k6-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 09 May 2019 10:59:05 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9D72831;
 Thu,  9 May 2019 08:59:04 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5D0B5153D;
 Thu,  9 May 2019 08:59:04 +0000 (GMT)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.361.1; Thu, 9 May 2019
 10:59:04 +0200
Received: from localhost (10.201.20.5) by webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Thu, 9 May 2019 10:59:03 +0200
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Lee Jones <lee.jones@linaro.org>, Linus Walleij <linus.walleij@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, "Maxime
 Coquelin" <mcoquelin.stm32@gmail.com>
Subject: [PATCH v6 0/9] Introduce STMFX I2C Multi-Function eXpander
Date: Thu, 9 May 2019 10:58:47 +0200
Message-ID: <1557392336-28239-1-git-send-email-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.20.5]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-09_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_015911_403350_C0261D68 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Amelie Delaunay <amelie.delaunay@st.com>,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for STMicroelectronics Multi-Function eXpander
(STMFX), used on some STM32 discovery and evaluation boards.

STMFX is an STM32L152 slave controller whose firmware embeds the following
features:
- I/O expander (16 GPIOs + 8 extra if the other features are not enabled),
- resistive touchscreen controller,
- IDD measurement.

I2C stuff and chip initialization is based on an MFD parent driver, which
registers STMFX features MFD children.

---
Changes in v6:
- mfd: go with Lee's suggestion about vdd regulator management (but
initialize ret with PTR_ERR_OR_ZERO to use it in if/else if and error log),
also remove backup/restore helpers and move the code in suspend/
resume
Changes in v5:
- mfd: fix Lee's comments (reorder struct declaration, drop mfd cells
  platform data initialization, typos)
- pinctrl: get stmfx struct through dev_get_drvdata(pdev->dev.parent)
  instead of dev_get_platdata(&pdev->dev);
Changes in v4:
- mfd: move registers #define into the header
- mfd: merge stmfx and stmfx_ddata structures into one stmfx structure
- mfd: change stmfx_chip_init/exit and stmfx_irq_init/exit args: use
  i2c_client struct and i2c_get_clientdata
- mfd: fix typos
- mfd: add MFD cells for IDD and TS features
- pinctrl: rework registers #define
- dts: add STMFX support on stm32mp157c-ev1
Changes in v3:
- fix MFD interrupt bindings
- fix drivers/mfd/stmfx.c:103:8: warning: 'mask' may be used uninitialized
  in this function
Changes in v2:
- move to MFD parent driver for i2c stuff and chip initialization
- improve regmap configuration
- take advantage of the use of gpio-ranges

Amelie Delaunay (9):
  dt-bindings: mfd: Add ST Multi-Function eXpander (STMFX) core bindings
  mfd: Add ST Multi-Function eXpander (STMFX) core driver
  dt-bindings: pinctrl: document the STMFX pinctrl bindings
  pinctrl: Add STMFX GPIO expander Pinctrl/GPIO driver
  ARM: dts: stm32: add STMFX support on stm32746g-eval
  ARM: dts: stm32: add joystick support on stm32746g-eval
  ARM: dts: stm32: add orange and blue leds on stm32746g-eval
  ARM: dts: stm32: add STMFX support on stm32mp157c-ev1
  ARM: dts: stm32: add joystick support on stm32mp157c-ev1

 Documentation/devicetree/bindings/mfd/stmfx.txt    |  28 +
 .../devicetree/bindings/pinctrl/pinctrl-stmfx.txt  | 116 +++
 arch/arm/boot/dts/stm32746g-eval.dts               |  66 ++
 arch/arm/boot/dts/stm32mp157c-ev1.dts              |  60 ++
 drivers/mfd/Kconfig                                |  13 +
 drivers/mfd/Makefile                               |   2 +-
 drivers/mfd/stmfx.c                                | 545 ++++++++++++++
 drivers/pinctrl/Kconfig                            |  12 +
 drivers/pinctrl/Makefile                           |   1 +
 drivers/pinctrl/pinctrl-stmfx.c                    | 820 +++++++++++++++++++++
 include/linux/mfd/stmfx.h                          | 123 ++++
 11 files changed, 1785 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/mfd/stmfx.txt
 create mode 100644 Documentation/devicetree/bindings/pinctrl/pinctrl-stmfx.txt
 create mode 100644 drivers/mfd/stmfx.c
 create mode 100644 drivers/pinctrl/pinctrl-stmfx.c
 create mode 100644 include/linux/mfd/stmfx.h

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
