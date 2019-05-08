Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEDB17BC8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 16:44:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U/k53zzPCkyykyfrYIQ4978hdwN1cRvspiyeUTH6aa8=; b=UA+MeaUxZmwsnN
	lb5tSR427ZK6TthOY3RvEhxSz1i4G/WJAxbGwHCG/at4JqKZr/CRRKioZ6nHdzi+uKerd7x2r+fbW
	x403oLd2IvURJurmOj8AoQxGdPLp8fIkZUEJyglGWRZ9lqmKo94XqZuSy5XhstWkM4bIAjIJNbWPx
	7l982mk2fQr7hX2B0NolKt4TzDIheHsipZWOnk6Xej/IpuyGHn8GueXOG055qqp3TUSdx2dXTONBs
	dqiT6PtWN0wFwCQdSzN5+391QQBBBvP4sp1e/NJEG4kqMnBf54koB2dFuLh4uqyu2uFuVqXzFDt2u
	pSWULRt9C4IboAEeokgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hONo6-0005Pr-CQ; Wed, 08 May 2019 14:44:30 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hONnz-0005PM-4D
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 14:44:25 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x48EfRWK016745; Wed, 8 May 2019 16:44:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=ujx99i/SdmhJJY/rTfyjZ25oaMJTjnJ2T2B83DEfQao=;
 b=NDBJhGUrF+5cuInlJHlGw+Wa11TeVKy9sCKxakUcQg4M/gC07uoIxkT24K1/ylLXCY5k
 Wqkzt57AQ4QQIWbdeDTm64k50D83HpQnavgmO3DPW3lFsa43MPtwtayz9mF9D0q6vOea
 Cv2pYd5EDB78dz4AIOFkcw3UEc1gqZcvm1DrQJfcuWPdA+G59vhtndIXoHLbKyIC9h2d
 0gjVQ+9DE8jS5lMkO35E8SA8A8VboazvOKB1Nl+eAUmASF8V5MofiqFSZz50jFA9fMOP
 Zfo6w4OdapO7LKAhrAa18JXran0E0YZ3FWsA3nNZK/0kg5Jqs6zDVyLeVp+csBDU6TcD Vw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2s94c3qnkd-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 08 May 2019 16:44:12 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0476338;
 Wed,  8 May 2019 14:44:10 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C010028CA;
 Wed,  8 May 2019 14:44:10 +0000 (GMT)
Received: from SFHDAG3NODE2.st.com (10.75.127.8) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 8 May
 2019 16:44:10 +0200
Received: from SFHDAG3NODE2.st.com ([fe80::b82f:1ce:8854:5b96]) by
 SFHDAG3NODE2.st.com ([fe80::b82f:1ce:8854:5b96%20]) with mapi id
 15.00.1347.000; Wed, 8 May 2019 16:44:10 +0200
From: Amelie DELAUNAY <amelie.delaunay@st.com>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v5 2/9] mfd: Add ST Multi-Function eXpander (STMFX) core
 driver
Thread-Topic: [PATCH v5 2/9] mfd: Add ST Multi-Function eXpander (STMFX) core
 driver
Thread-Index: AQHU7qVAy3Bds8UGv0OmxPFvTsiQh6Zg82kAgABmwoA=
Date: Wed, 8 May 2019 14:44:10 +0000
Message-ID: <697597b2-088d-9ffb-54bd-e50b3ca8c012@st.com>
References: <1554794651-6874-1-git-send-email-amelie.delaunay@st.com>
 <1554794651-6874-3-git-send-email-amelie.delaunay@st.com>
 <20190508083622.GE3995@dell>
In-Reply-To: <20190508083622.GE3995@dell>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <AA71AC5806FEE94686A2708FB6B887B8@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-08_08:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_074423_614077_B832E1B0 
X-CRM114-Status: GOOD (  26.55  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/8/19 10:36 AM, Lee Jones wrote:
> On Tue, 09 Apr 2019, Amelie Delaunay wrote:
> 
>> STMicroelectronics Multi-Function eXpander (STMFX) is a slave controller
>> using I2C for communication with the main MCU. Main features are:
>> - 16 fast GPIOs individually configurable in input/output
>> - 8 alternate GPIOs individually configurable in input/output when other
>> STMFX functions are not used
>> - Main MCU IDD measurement
>> - Resistive touchscreen controller
>>
>> Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
>> ---
>>   drivers/mfd/Kconfig       |  13 ++
>>   drivers/mfd/Makefile      |   2 +-
>>   drivers/mfd/stmfx.c       | 566 ++++++++++++++++++++++++++++++++++++++++++++++
>>   include/linux/mfd/stmfx.h | 123 ++++++++++
>>   4 files changed, 703 insertions(+), 1 deletion(-)
>>   create mode 100644 drivers/mfd/stmfx.c
>>   create mode 100644 include/linux/mfd/stmfx.h
>>
>> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
>> index 3443f1a..9783e18 100644
>> --- a/drivers/mfd/Kconfig
>> +++ b/drivers/mfd/Kconfig
>> @@ -1907,6 +1907,19 @@ config MFD_STPMIC1
>>   	  To compile this driver as a module, choose M here: the
>>   	  module will be called stpmic1.
>>   
>> +config MFD_STMFX
>> +	tristate "Support for STMicroelectronics Multi-Function eXpander (STMFX)"
>> +	depends on I2C
>> +	depends on OF || COMPILE_TEST
>> +	select MFD_CORE
>> +	select REGMAP_I2C
>> +	help
>> +	  Support for the STMicroelectronics Multi-Function eXpander.
>> +
>> +	  This driver provides common support for accessing the device,
>> +	  additional drivers must be enabled in order to use the functionality
>> +	  of the device.
>> +
>>   menu "Multimedia Capabilities Port drivers"
>>   	depends on ARCH_SA1100
>>   
>> diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
>> index b4569ed7..614eea8 100644
>> --- a/drivers/mfd/Makefile
>> +++ b/drivers/mfd/Makefile
>> @@ -246,4 +246,4 @@ obj-$(CONFIG_MFD_MXS_LRADC)     += mxs-lradc.o
>>   obj-$(CONFIG_MFD_SC27XX_PMIC)	+= sprd-sc27xx-spi.o
>>   obj-$(CONFIG_RAVE_SP_CORE)	+= rave-sp.o
>>   obj-$(CONFIG_MFD_ROHM_BD718XX)	+= rohm-bd718x7.o
>> -
>> +obj-$(CONFIG_MFD_STMFX) 	+= stmfx.o
>> diff --git a/drivers/mfd/stmfx.c b/drivers/mfd/stmfx.c
>> new file mode 100644
>> index 0000000..59f0a03
>> --- /dev/null
>> +++ b/drivers/mfd/stmfx.c
>> @@ -0,0 +1,566 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Driver for STMicroelectronics Multi-Function eXpander (STMFX) core
>> + *
>> + * Copyright (C) 2019 STMicroelectronics
>> + * Author(s): Amelie Delaunay <amelie.delaunay@st.com>.
>> + */
>> +#include <linux/bitfield.h>
>> +#include <linux/i2c.h>
>> +#include <linux/interrupt.h>
>> +#include <linux/irq.h>
>> +#include <linux/mfd/core.h>
>> +#include <linux/mfd/stmfx.h>
>> +#include <linux/module.h>
>> +#include <linux/regulator/consumer.h>
> 
> [...]
> 
>> +static int stmfx_chip_init(struct i2c_client *client)
>> +{
>> +	struct stmfx *stmfx = i2c_get_clientdata(client);
>> +	u32 id;
>> +	u8 version[2];
>> +	int ret;
>> +
>> +	stmfx->vdd = devm_regulator_get_optional(&client->dev, "vdd");
>> +	if (IS_ERR(stmfx->vdd)) {
>> +		ret = PTR_ERR(stmfx->vdd);
>> +		if (ret != -ENODEV) {
>> +			if (ret != -EPROBE_DEFER)
>> +				dev_err(&client->dev,
>> +					"Can't get VDD regulator:%d\n", ret);
>> +			return ret;
>> +		}
> 
> Any reason you've decided to stick with this 3-layer nested if instead
> of going with my suggestion?
> 

Sorry, I didn't see your suggestion. I'll go with it in v6.

>> +	} else {
>> +		ret = regulator_enable(stmfx->vdd);
>> +		if (ret) {
>> +			dev_err(&client->dev, "VDD enable failed: %d\n", ret);
>> +			return ret;
>> +		}
>> +	}
> 
> [...]
> 
>> +#ifdef CONFIG_PM_SLEEP
>> +static int stmfx_backup_regs(struct stmfx *stmfx)
>> +{
>> +	int ret;
>> +
>> +	ret = regmap_raw_read(stmfx->map, STMFX_REG_SYS_CTRL,
>> +			      &stmfx->bkp_sysctrl, sizeof(stmfx->bkp_sysctrl));
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = regmap_raw_read(stmfx->map, STMFX_REG_IRQ_OUT_PIN,
>> +			      &stmfx->bkp_irqoutpin,
>> +			      sizeof(stmfx->bkp_irqoutpin));
>> +	if (ret)
>> +		return ret;
>> +
>> +	return 0;
>> +}
>> +
>> +static int stmfx_restore_regs(struct stmfx *stmfx)
>> +{
>> +	int ret;
>> +
>> +	ret = regmap_raw_write(stmfx->map, STMFX_REG_SYS_CTRL,
>> +			       &stmfx->bkp_sysctrl, sizeof(stmfx->bkp_sysctrl));
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = regmap_raw_write(stmfx->map, STMFX_REG_IRQ_OUT_PIN,
>> +			       &stmfx->bkp_irqoutpin,
>> +			       sizeof(stmfx->bkp_irqoutpin));
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = regmap_raw_write(stmfx->map, STMFX_REG_IRQ_SRC_EN,
>> +			       &stmfx->irq_src, sizeof(stmfx->irq_src));
>> +	if (ret)
>> +		return ret;
>> +
>> +	return 0;
>> +}
>> +
>> +static int stmfx_suspend(struct device *dev)
>> +{
>> +	struct stmfx *stmfx = dev_get_drvdata(dev);
>> +	int ret;
>> +
>> +	ret = stmfx_backup_regs(stmfx);
>> +	if (ret) {
>> +		dev_err(stmfx->dev, "Registers backup failure\n");
>> +		return ret;
>> +	}
> 
> This doesn't need to be an extra function.  You're just adding more
> lines of code for no real gain in reusability/readability.
> 

I used a separate function to have only one dev_err in case of 
backup/restore failure.
But anyway, I'll drop backup/restore functions and put the code in 
suspend/resume.

>> +	if (!IS_ERR(stmfx->vdd)) {
>> +		ret = regulator_disable(stmfx->vdd);
>> +		if (ret)
>> +			return ret;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static int stmfx_resume(struct device *dev)
>> +{
>> +	struct stmfx *stmfx = dev_get_drvdata(dev);
>> +	int ret;
>> +
>> +	if (!IS_ERR(stmfx->vdd)) {
>> +		ret = regulator_enable(stmfx->vdd);
>> +		if (ret) {
>> +			dev_err(stmfx->dev,
>> +				"VDD enable failed: %d\n", ret);
>> +			return ret;
>> +		}
>> +	}
>> +
>> +	ret = stmfx_restore_regs(stmfx);
>> +	if (ret) {
>> +		dev_err(stmfx->dev, "Registers restoration failure\n");
>> +		return ret;
>> +	}
> 
> This doesn't need to be an extra function.  You're just adding more
> lines of code for no real gain in reusability/readability.
> 
>> +	return 0;
>> +}
>> +#endif
> 
> [...]
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
