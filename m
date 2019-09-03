Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E73A62F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 09:43:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kSUpcizuMfAcBeoKFqcE/n2DgeAyzdey4dKx8c8JIFk=; b=eImmZSDV8st2v0xm4GGXlQrTK
	ddPAvcCVYQfTMTpH3vcwkZlaNo2uhKHjOPSGpO2eaKI2A4JhlTTBeL2N7F40cLm4BznldRIZX+ykA
	lF0+AaNpbnalGWQvQR/37LBJxavgTeMgGKB6jGru+hziAiEGsTpu8Ew3P4Os50EYJJ3Be+jaIZsd2
	M1Bl9H5NTo7geeVmpqdxh8Ty/zORTIJB/LCIj2plRqZA5ozFoRz2HXgiT5/DgxPvpDOMoTN7PFmM5
	d3UNTVK4WclE75vJA4a31oxkJK9QaJX8+TzTH5wtO7IQOq7BiFJCeHPCmxLZgSzuAGVwKYJ2vvQlq
	kKmgjkf+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i53Td-0004Ol-P7; Tue, 03 Sep 2019 07:43:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i53TO-0004OL-Hc
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 07:43:32 +0000
Received: from soja.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:13da])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <o.rempel@pengutronix.de>)
 id 1i53TL-00028A-NP; Tue, 03 Sep 2019 09:43:27 +0200
Subject: Re: [PATCH V2 2/5] input: keyboard: imx_sc: Add i.MX system
 controller power key support
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 Andy Duan <fugang.duan@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "mripard@kernel.org" <mripard@kernel.org>, "olof@lixom.net"
 <olof@lixom.net>, "arnd@arndb.de" <arnd@arndb.de>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "marcin.juszkiewicz@linaro.org" <marcin.juszkiewicz@linaro.org>,
 "stefan@agner.ch" <stefan@agner.ch>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "ronald@innovation.ch" <ronald@innovation.ch>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 Jacky Bai <ping.bai@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>
References: <1567519424-32271-1-git-send-email-Anson.Huang@nxp.com>
 <1567519424-32271-2-git-send-email-Anson.Huang@nxp.com>
 <6d8dd5df-02da-b4cd-e61d-a4a15d0bf0c8@pengutronix.de>
 <DB3PR0402MB391602C6B425DD7EBFB9AF1DF5B90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <dbe0ba0a-29bc-ee96-541d-244b3dbf0b81@pengutronix.de>
 <DB3PR0402MB3916FB4618F86DD891013FEEF5B90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <4f2aa5a1-d8db-0fa9-3104-5e4b2a036b36@pengutronix.de>
Date: Tue, 3 Sep 2019 09:43:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <DB3PR0402MB3916FB4618F86DD891013FEEF5B90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:13da
X-SA-Exim-Mail-From: o.rempel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_004330_748158_900020A1 
X-CRM114-Status: GOOD (  25.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 03.09.19 09:35, Anson Huang wrote:
> Hi, Oleksij
> 
>> On 03.09.19 08:48, Anson Huang wrote:
>>> Hi, Oleksij
>>>
>>>> On 03.09.19 16:03, Anson Huang wrote:
>>>>> i.MX8QXP is an ARMv8 SoC which has a Cortex-M4 system controller
>>>>> inside, the system controller is in charge of controlling power,
>>>>> clock and power key etc..
>>>>>
>>>>> Adds i.MX system controller power key driver support, Linux kernel
>>>>> has to communicate with system controller via MU (message unit) IPC
>>>>> to get power key's status.
>>>>>
>>>>> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
>>>>> ---
>>>>> Changes since V1:
>>>>> 	- remove "wakeup-source" property operation, scu power key uses
>>>> generic scu irq,
>>>>> 	  no need to have this property for device wakeup operation.
>>>>> ---
>>>>>     drivers/input/keyboard/Kconfig         |   7 ++
>>>>>     drivers/input/keyboard/Makefile        |   1 +
>>>>>     drivers/input/keyboard/imx_sc_pwrkey.c | 169
>>>> +++++++++++++++++++++++++++++++++
>>>>>     3 files changed, 177 insertions(+)
>>>>>     create mode 100644 drivers/input/keyboard/imx_sc_pwrkey.c
>>>>>
>>>>> diff --git a/drivers/input/keyboard/Kconfig
>>>>> b/drivers/input/keyboard/Kconfig index 2e6d288..3aaeb9c 100644
>>>>> --- a/drivers/input/keyboard/Kconfig
>>>>> +++ b/drivers/input/keyboard/Kconfig
>>>>> @@ -469,6 +469,13 @@ config KEYBOARD_IMX
>>>>>     	  To compile this driver as a module, choose M here: the
>>>>>     	  module will be called imx_keypad.
>>>>>
>>>>> +config KEYBOARD_IMX_SC_PWRKEY
>>>>> +	tristate "IMX SCU Power Key Driver"
>>>>> +	depends on IMX_SCU
>>>>> +	help
>>>>> +	  This is the system controller powerkey driver for NXP i.MX SoCs with
>>>>> +	  system controller inside.
>>>>
>>>> The KEY is configurable over devicetree, why is it called PWRKEY? It
>>>> looks for me as generic SCU key handler.
>>>
>>> We always use it as power key, NOT a generic key, as it has HW
>>> function designed for power key purpose.
>>
>> gpio-key driver is mostly used for power or reboot key. And it is still called
>> gpio-key driver. If it is used for power key only, why is it configurable? I can
>> configure it as KEY_ENTER or some thing different. This driver has not
>> KEY_POWER specific any thing.
> 
> Understood, I am making the V3 with all "power" removed, just using the "key".
> 
>>
>>>
>>>>
>>>>>     config KEYBOARD_NEWTON
>>>>>     	tristate "Newton keyboard"
>>>>>     	select SERIO
>>>>> diff --git a/drivers/input/keyboard/Makefile
>>>>> b/drivers/input/keyboard/Makefile index 9510325..9ea5585 100644
>>>>> --- a/drivers/input/keyboard/Makefile
>>>>> +++ b/drivers/input/keyboard/Makefile
>>>>> @@ -29,6 +29,7 @@ obj-$(CONFIG_KEYBOARD_HIL)		+=
>> hil_kbd.o
>>>>>     obj-$(CONFIG_KEYBOARD_HIL_OLD)		+= hilkbd.o
>>>>>     obj-$(CONFIG_KEYBOARD_IPAQ_MICRO)	+= ipaq-micro-keys.o
>>>>>     obj-$(CONFIG_KEYBOARD_IMX)		+= imx_keypad.o
>>>>> +obj-$(CONFIG_KEYBOARD_IMX_SC_PWRKEY)	+= imx_sc_pwrkey.o
>>>>>     obj-$(CONFIG_KEYBOARD_HP6XX)		+= jornada680_kbd.o
>>>>>     obj-$(CONFIG_KEYBOARD_HP7XX)		+= jornada720_kbd.o
>>>>>     obj-$(CONFIG_KEYBOARD_LKKBD)		+= lkkbd.o
>>>>> diff --git a/drivers/input/keyboard/imx_sc_pwrkey.c
>>>>> b/drivers/input/keyboard/imx_sc_pwrkey.c
>>>>> new file mode 100644
>>>>> index 0000000..53aa9a4
>>>>> --- /dev/null
>>>>> +++ b/drivers/input/keyboard/imx_sc_pwrkey.c
>>>>> @@ -0,0 +1,169 @@
>>>>> +// SPDX-License-Identifier: GPL-2.0
>>>>> +/*
>>>>> + * Copyright 2019 NXP.
>>>>> + */
>>>>> +
>>>>> +#include <linux/device.h>
>>>>> +#include <linux/err.h>
>>>>> +#include <linux/firmware/imx/sci.h> #include <linux/init.h>
>>>>> +#include <linux/input.h> #include <linux/interrupt.h> #include
>>>>> +<linux/jiffies.h> #include <linux/kernel.h> #include
>>>>> +<linux/module.h> #include <linux/of.h> #include
>>>>> +<linux/of_address.h> #include <linux/platform_device.h>
>>>>> +
>>>>> +#define DEBOUNCE_TIME	100
>>>>> +#define REPEAT_INTERVAL	60
>>>>> +
>>>>> +#define SC_IRQ_BUTTON		1
>>>>> +#define SC_IRQ_GROUP_WAKE	3
>>>>> +#define IMX_SC_MISC_FUNC_GET_BUTTON_STATUS	18
>>>>> +
>>>>> +struct imx_pwrkey_drv_data {
>>>>> +	int keycode;
>>>>> +	bool keystate;  /* 1: pressed, 0: release */
>>>>> +	bool delay_check;
>>>>> +	struct delayed_work check_work;
>>>>> +	struct input_dev *input;
>>>>> +};
>>>>> +
>>>>> +struct imx_sc_msg_pwrkey {
>>>>> +	struct imx_sc_rpc_msg hdr;
>>>>> +	u8 state;
>>>>> +};
>>>>> +static struct imx_pwrkey_drv_data *pdata;
>>>>
>>>> Why is it global struct? It seems to be flexible configurable over devicetree.
>>>> So I would assume it should be able to handle more then one button.
>>>> Please remove global variables, make it allocatable per OF node.
>>>
>>> There is ONLY one button available for SC key, but yes, I think I can
>>> make the structure private and get all necessary data from the structure
>> using container_of.
>>
>> And we will never need more then 640 kB RAM ;)
>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fen.wi
>> kiquote.org%2Fwiki%2FTalk%3ABill_Gates&amp;data=02%7C01%7Canson.hu
>> ang%40nxp.com%7C4d4d7458087747e0d8f008d7304057e9%7C686ea1d3bc2
>> b4c6fa92cd99c5c301635%7C0%7C0%7C637030925236150243&amp;sdata=w
>> %2FGXBaHfnBdLwjTxjbzWSPeIw3ExL%2Fs9IMOgF1onL6A%3D&amp;reserved
>> =0
>>
>>>
>>>>
>>>> Please use different name "pdata" is usually used as platform data.
>>>> Please, use "priv".
>>>
>>> OK.
>>>
>>>>
>>>>> +static struct imx_sc_ipc *pwrkey_ipc_handle;
>>>>
>>>> same as before, no global variables.
>>>
>>> Will move it into private platform data structure.
>>>
>>>>
>>>>> +
>>>>> +static int imx_sc_pwrkey_notify(struct notifier_block *nb,
>>>>> +				unsigned long event, void *group) {
>>>>> +	if ((event & SC_IRQ_BUTTON) && (*(u8 *)group ==
>>>> SC_IRQ_GROUP_WAKE)
>>>>> +	    && !pdata->delay_check) {
>>>>> +		pdata->delay_check = 1;
>>>>> +		schedule_delayed_work(&pdata->check_work,
>>>>> +				      msecs_to_jiffies(REPEAT_INTERVAL));
>>>>> +	}
>>>>> +
>>>>> +	return 0;
>>>>> +}
>>>>> +
>>>>> +static void imx_sc_check_for_events(struct work_struct *work) {
>>>>> +	struct input_dev *input = pdata->input;
>>>>> +	struct imx_sc_msg_pwrkey msg;
>>>>> +	struct imx_sc_rpc_msg *hdr = &msg.hdr;
>>>>> +	bool state;
>>>>> +
>>>>> +	hdr->ver = IMX_SC_RPC_VERSION;
>>>>> +	hdr->svc = IMX_SC_RPC_SVC_MISC;
>>>>> +	hdr->func = IMX_SC_MISC_FUNC_GET_BUTTON_STATUS;
>>>>> +	hdr->size = 1;
>>>>> +
>>>>> +	/*
>>>>> +	 * Current SCU firmware does NOT have return value for
>>>>> +	 * this API, that means it is always successful.
>>>>> +	 */
>>>>
>>>> It is not true for the kernel part:
>>>> https://elixir.
>>>>
>> bootlin.com%2Flinux%2Flatest%2Fsource%2Fdrivers%2Ffirmware%2Fimx%2F
>>>> imx-
>>>>
>> scu.c%23L157&amp;data=02%7C01%7Canson.huang%40nxp.com%7C7a5ed3
>>>>
>> ef3b2541e61be808d7303810a9%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C
>>>>
>> 0%7C0%7C637030889669489141&amp;sdata=d3uw6x6WCPeavJu3QYf9o9cxx
>>>> Rx4mJar04fQFLF9EhE%3D&amp;reserved=0
>>>>
>>>> imx_scu_call_rpc() may fail in different ways and provide proper error
>> value.
>>>> Please use it.
>>>
>>> There are about 3 APIs are special, this API is one of them, this API
>>> has no return value from SCU FW API, but it has response data from it,
>>> so that means if we set the response to false, the stack will be free
>>> and mailbox will have NULL pointer issue when response data passed
>>> from SCU FW. If we set the response to true, as the SCU FW has no
>>> return value, the return value will be the msg->func which will be
>>> already failed, that is why we have to skip the return value check. This is
>> one restriction/bug of SCU FW, we will notify SCU FW owner to fix/improve.
>>
>> Ok, I see. imx_scu_call_rpc() can return kernel side errors, for example from
>> imx-scu.c framework EINVAL or ETIMEDOUT or what ever error mbox
>> framework may also provide.
>> Aaaannnndd... it can extract an error from SCU package and return it over
>> same way as other errors.
>>
>> And current SCU version has some bugs, so it is providing wrong error value.
>> Soo... as usual the NXP has decided to make the linux kernel a bit more
>> worse to make the SCU firmware happy? Is it what you trying to describe?
>> Really ?! :D
>>
>> Please. Fix the SCU first. The provide fixed kernel patch.
> 
> Understood, I will notify SCU owner to fix it, meanwhile it does NOT block this driver,
> I will add return value check in this driver.

It is great! Thank you!

Kind regards,
Oleksij Rempel

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
