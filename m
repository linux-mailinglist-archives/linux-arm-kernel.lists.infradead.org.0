Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5161C5A62
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:03:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XDBwiCe3cptQZmijsIoE/8OYO87YjHHFTZIk6gZxL6Q=; b=FexuSckNPwe17+
	5fqtT2dzRamHFzFOicWHKtdZybk3CXVEPJHULfOuPpbiUiaKckJjvD7tbmhs3OSp84yRqRQ7YFRHc
	REPbWOXQDS5QcM+PsyZ8nkcXXi0q2wFzG8M9O0m0Id9e1blv70fq3FTYt2GfI7ieCx5VJOT0bjf39
	KakWxXYAPVsYtlDl4eIBy24bPVLsyRD32aKGIZUrTPwJq6Wa8RU/17wJ8QRMu8gHKFENQTw9SdMqc
	vwsgbBhuBGHawJKsOGD8VCcHrgLgpMp4ABAkZHbOhzFYtXa6pQIUkjZgkELVGsqeS/reQFGqhM3Ri
	IQSQ8dJ02F2EW1oF+cGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVz6A-0002lZ-RL; Tue, 05 May 2020 15:03:06 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVz4H-0002GS-09
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:01:11 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 045El9ne016435; Tue, 5 May 2020 17:00:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=IbLvmIr+VxgtqpaSuIKBL6LNWk+1yxMvrL3mHUlR5/g=;
 b=VtSgjuMRko+aYlOPzneie7sscr9XnTQSkMWmK01QoI3OZ7EaHWKpRlTrqXhFV7gSu/T4
 vNQuihrzJhVBbM68FXy4lx67khWj5M6vd9LFVbofc3IZ12ai1LQ7olLSMYQ9SN4g7FQV
 N2Oj1qUJZjBdq1WmaDv5bDdc4fERIKmGJRBggimnaaV2xPJqSGAIAOWdMfxbg3Et0ouD
 D+TYgsMld7vlAE2VLNBFn9Sqs+EIiBRb+1KxiMmVCBNpfXvvcGgZgBiQ5LlARKRkCxDu
 d3+AKcqG0xgyWmZus6dQNY85nOS2FCOpcvL26nsQnaV0uJMqPdN0+XEnCNtvXgElyfZI TQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30rxb20sdm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 May 2020 17:00:55 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5F05210002A;
 Tue,  5 May 2020 17:00:54 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag7node2.st.com [10.75.127.20])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4BC382B0E9F;
 Tue,  5 May 2020 17:00:54 +0200 (CEST)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG7NODE2.st.com
 (10.75.127.20) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 5 May
 2020 17:00:53 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Tue, 5 May 2020 17:00:53 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v3 2/5] bus: stm32: Introduce firewall controller helpers
Thread-Topic: [PATCH v3 2/5] bus: stm32: Introduce firewall controller helpers
Thread-Index: AQHWIq93zmKMzoYdMEeJzuj6lP5gO6iZb0WAgAAFxQA=
Date: Tue, 5 May 2020 15:00:53 +0000
Message-ID: <3f15fefa-b70f-5d20-c19b-3c42140a104c@st.com>
References: <20200505073308.22914-1-benjamin.gaignard@st.com>
 <20200505073308.22914-3-benjamin.gaignard@st.com>
 <20200505144013.GB838641@kroah.com>
In-Reply-To: <20200505144013.GB838641@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <57CCBC245F8373439B28D87A7A5EB0EF@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-05-05_08:2020-05-04,
 2020-05-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_080109_491675_15253ABF 
X-CRM114-Status: GOOD (  23.30  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 Loic PALLARDY <loic.pallardy@st.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/5/20 4:40 PM, Greg KH wrote:
> On Tue, May 05, 2020 at 09:33:05AM +0200, Benjamin Gaignard wrote:
>> The goal of these helpers are to offer an interface for the
>> hardware blocks controlling bus accesses rights.
>>
>> Bus firewall controllers are typically used to control if a
>> hardware block can perform read or write operations on bus.
>>
>> Smarter firewall controllers could be able to define accesses
>> rights per hardware blocks to control where they can read
>> or write.
>>
>> Firewall controller configurations are provided in device node,
>> parsed by the helpers and send to the driver to apply them.
>> Each controller may need different number and type of inputs
>> to configure the firewall so device-tree properties size have to
>> be define by using "#firewall-cells".
>> Firewall configurations properties have to be named "firewall-X"
>> on device node.
>> "firewall-names" keyword can also be used to give a name to
>> a specific configuration.
>>
>> Example of device-tree:
>> ctrl0: firewall@0 {
>> 	#firewall-cells = <2>;
>>        };
>>
>> foo: foo@0 {
>> 	firewall-names = "default", "setting1";
>> 	firewall-0 = <&ctrl0 1 2>;
>> 	firewall-1 = <&ctrl0 3 4>;
>> };
>>
>> Configurations could be applied with functions like
>> firewall_set_config_by_index() or firewall_set_config_by_name().
>>
>> firewall_set_default_config() function will apply the
>> configuration named "default" (if existing) or the configuration
>> with index 0 (i.e. firewall-0).
>>
>> Drivers could register/unregister themselves be calling
>> firewall_register/firewall_unregister functions.
>>
>> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
>> ---
>>   drivers/bus/Kconfig          |   2 +
>>   drivers/bus/Makefile         |   2 +
>>   drivers/bus/stm32/Kconfig    |   3 +
>>   drivers/bus/stm32/Makefile   |   1 +
>>   drivers/bus/stm32/firewall.c | 266 +++++++++++++++++++++++++++++++++++++++++++
>>   drivers/bus/stm32/firewall.h |  75 ++++++++++++
>>   6 files changed, 349 insertions(+)
>>   create mode 100644 drivers/bus/stm32/Kconfig
>>   create mode 100644 drivers/bus/stm32/Makefile
>>   create mode 100644 drivers/bus/stm32/firewall.c
>>   create mode 100644 drivers/bus/stm32/firewall.h
>>
>> diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
>> index 6d4e4497b59b..843b356322d9 100644
>> --- a/drivers/bus/Kconfig
>> +++ b/drivers/bus/Kconfig
>> @@ -203,4 +203,6 @@ config DA8XX_MSTPRI
>>   source "drivers/bus/fsl-mc/Kconfig"
>>   source "drivers/bus/mhi/Kconfig"
>>   
>> +source "drivers/bus/stm32/Kconfig"
>> +
>>   endmenu
>> diff --git a/drivers/bus/Makefile b/drivers/bus/Makefile
>> index 05f32cd694a4..5e0e34b10235 100644
>> --- a/drivers/bus/Makefile
>> +++ b/drivers/bus/Makefile
>> @@ -37,3 +37,5 @@ obj-$(CONFIG_DA8XX_MSTPRI)	+= da8xx-mstpri.o
>>   
>>   # MHI
>>   obj-$(CONFIG_MHI_BUS)		+= mhi/
>> +
>> +obj-$(CONFIG_MACH_STM32MP157) 	+= stm32/
>> \ No newline at end of file
>> diff --git a/drivers/bus/stm32/Kconfig b/drivers/bus/stm32/Kconfig
>> new file mode 100644
>> index 000000000000..57221e833e2d
>> --- /dev/null
>> +++ b/drivers/bus/stm32/Kconfig
>> @@ -0,0 +1,3 @@
>> +config FIREWALL_CONTROLLERS
>> +	bool "Support of bus firewall controllers"
>> +	depends on OF
>> diff --git a/drivers/bus/stm32/Makefile b/drivers/bus/stm32/Makefile
>> new file mode 100644
>> index 000000000000..eb6b978d6450
>> --- /dev/null
>> +++ b/drivers/bus/stm32/Makefile
>> @@ -0,0 +1 @@
>> +obj-$(CONFIG_FIREWALL_CONTROLLERS) += firewall.o
>> diff --git a/drivers/bus/stm32/firewall.c b/drivers/bus/stm32/firewall.c
>> new file mode 100644
>> index 000000000000..95f716cf926f
>> --- /dev/null
>> +++ b/drivers/bus/stm32/firewall.c
>> @@ -0,0 +1,266 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Copyright (C) STMicroelectronics 2020 - All Rights Reserved
>> + * Author: Benjamin Gaignard <benjamin.gaignard@st.com> for STMicroelectronics.
>> + */
>> +
>> +#include <linux/device.h>
>> +#include <linux/err.h>
>> +#include <linux/init.h>
>> +#include <linux/kernel.h>
>> +#include <linux/list.h>
>> +#include <linux/of.h>
>> +#include <linux/slab.h>
>> +
>> +#include "firewall.h"
>> +
>> +/* Mutex taken to protect firewall_list */
>> +static DEFINE_MUTEX(firewall_list_mutex);
>> +
>> +/* Global list of firewall control devices */
>> +static LIST_HEAD(firewall_list);
> Why is that needed?  Why can't you just walk the list of devices on this
> "bus/class" if you really wanted to?
>
> Along those lines, why is this going around the driver model and
> ignoring it?  Shouldn't this be a bus and you have devices attached to
> it of the specific type?
This part of the series is only a a set of common functions and bindings
that I plan to reuse for futur STM32 SoCs.
The 'real' bus implementation is in patch 4.

Benjamin
>
>
> greg k-h
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
