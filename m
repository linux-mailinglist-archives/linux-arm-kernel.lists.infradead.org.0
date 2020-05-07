Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBF01C951D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:33:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mxken6c/unzrK0Hxhigi25l2P0esrD9BpD3WGYC/HkA=; b=bkKCYAJTHACo/S
	X12qu1ebeohu/OexeD002v/fskpO/pUsnP7CH6k86PN7hVIarLvf69uApyTbQehq5hdaprIk1np2x
	PcZT6xWNknydoVKoH5Qo9itbohuPUTZu1u3xC9eL6X9pa7KfZVnYu41qB5LxUq9ENZvvjU1S8RhoR
	/fSblb85wh1uWyu+L01HlgyNRQEocMnk8LtxUlqY9t2CVbYG2rbyPmEFflVFXZpd1NdtqBiOAKlSf
	Iq6+izi9zG8rvknB2YOotuZYfjRKvl5TeK/AED81vP1UBvYSPalAkBHQ76SH5caPl02mxmXgFeM6o
	EShquU7DTu/UzK/gKRSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWiWV-0000Lm-Vo; Thu, 07 May 2020 15:33:19 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWiWO-0000GC-QV
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 15:33:14 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49HyCV1YJMz1rwDl;
 Thu,  7 May 2020 17:33:10 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49HyCV0RB2z1qqkV;
 Thu,  7 May 2020 17:33:10 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id cbrmrNHPcsmZ; Thu,  7 May 2020 17:33:08 +0200 (CEST)
X-Auth-Info: CCuPi2J0NVmY1Ov60Q8HkVbCDko6uHs1JRs2xSMfe84=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Thu,  7 May 2020 17:33:08 +0200 (CEST)
Subject: Re: [PATCH 12/12] ARM: dts: stm32: Add DTs for STM32MP15x variants of
 the DHCOR SOM and AV96
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <20200429163743.67854-1-marex@denx.de>
 <20200429163743.67854-12-marex@denx.de>
 <20200507152616.GB2019@Mani-XPS-13-9360>
From: Marek Vasut <marex@denx.de>
Message-ID: <687cdc32-7486-1090-154b-58e711dd6a2a@denx.de>
Date: Thu, 7 May 2020 17:33:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200507152616.GB2019@Mani-XPS-13-9360>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_083313_162340_E3C2A429 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/7/20 5:26 PM, Manivannan Sadhasivam wrote:

Hi,

[...]

>> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
>> index f43467b02bcd..b4a4d2b0f18e 100644
>> --- a/arch/arm/boot/dts/Makefile
>> +++ b/arch/arm/boot/dts/Makefile
>> @@ -1029,6 +1029,9 @@ dtb-$(CONFIG_ARCH_STM32) += \
>>  	stm32h743i-eval.dtb \
>>  	stm32h743i-disco.dtb \
>>  	stm32mp157a-avenger96.dtb \
>> +	stm32mp151a-dhcor-avenger96.dtb \
>> +	stm32mp153a-dhcor-avenger96.dtb \
>> +	stm32mp157a-dhcor-avenger96.dtb \
> 
> I'm not really sure if keeping SoM name is a good practice here. Since the
> board is sold as "Avenger96" alone, why do you want to prepend SoM name to it?
> When you say, "stm32mp157a-avenger96.dtb" it obviously means that Avenger96
> board uses the stm32mp157a SoC and that comes from SoM.

That's because if you look at the other side of the AV96, you will
notice there is this other piece of PCB on it, that's the DHCOR SoM. The
SoM is soldered on the AV96 carrier board. And only on that SoM is the
STM32MP15xx SoC.

>>  	stm32mp157a-dk1.dtb \
>>  	stm32mp157c-dhcom-pdk2.dtb \
>>  	stm32mp157c-dk2.dtb \
>> diff --git a/arch/arm/boot/dts/stm32mp151a-dhcor-avenger96.dts b/arch/arm/boot/dts/stm32mp151a-dhcor-avenger96.dts
>> new file mode 100644
>> index 000000000000..0f3875fbdd73
>> --- /dev/null
>> +++ b/arch/arm/boot/dts/stm32mp151a-dhcor-avenger96.dts
>> @@ -0,0 +1,9 @@
>> +// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
>> +/*
>> + * Copyright (C) 2020 Marek Vasut <marex@denx.de>
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include "stm32mp151a-dhcor-som.dtsi"
>> +#include "stm32mp15xa-dhcor-avenger96.dtsi"
> 
> [...]
> 
>> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
>> index 10f11ca53c7d..dc3bbd576756 100644
>> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
>> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
>> @@ -1,421 +1,9 @@
>>  // SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
>>  /*
>> - * Copyright (C) Linaro Ltd 2019 - All Rights Reserved
>> - * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

That's fixed in the other submission, sorry.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
