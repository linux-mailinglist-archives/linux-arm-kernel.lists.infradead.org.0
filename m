Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FDCC19B8A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 00:48:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EdsHB67QvujoR1JCYeqv+o129uT6n5NQE/YcEWzOWkA=; b=bHi/X+9+A0kjCm
	CZiiQ1sasSOmsBGj1X8Uvo6fZ7oeq8p0KVS8s7xCcuAJh4LEG0v4l/qS+/qDbuB5Kso96GLT0z8aB
	2UUJrkyAiiIx7ArQAIetxp62+enMY20j8SYE/6729csAyKthhCSIPP/UtGY8EncWaG0rQw5qMyXBp
	bo/9rmsrpmazqopTzUc7Nuzzpl+Js3n1WifUpR8i/zu/FR6LwWAzehLG043ddO2txzJtfXmV90p62
	6+tTeOyCtGH1z8cfDmYPMASA7zVYLNvjj04V3QLObTqoEoHm2IKqBglHNhE2HHhukWyEZnxi48Ch1
	02SBqjtHWWuW3yeWBZtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJmAF-0001AW-4D; Wed, 01 Apr 2020 22:48:51 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJmA7-00019p-Ds
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 22:48:45 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200401224831epoutp04472c6c0f5003ee02dbfe1668f477b51b~B07OAhw6V0405804058epoutp04B
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  1 Apr 2020 22:48:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200401224831epoutp04472c6c0f5003ee02dbfe1668f477b51b~B07OAhw6V0405804058epoutp04B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1585781311;
 bh=a01X/EBNQbyaWRDGL/5aRgWLMYfspEPtiGl//IoaHjE=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=u37ig++n2mru8fJrF0nlqLow9VZh0d+O8Rc2fUpz68Wifv3Ox0B5o9mCT3JxCQh2U
 gcfo24Vv8oiucH44Xt0m0vvbLbxbbxqndh9dNGkEOAhhJOFdH57cMhTlBZNyazor2e
 UVX0h29eHCUg5V+U7k6qe5sKzMB8HBFOnRpmaOBM=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20200401224831epcas1p4289760d51517dd89e9928f15c9f59956~B07NW-Tju2407924079epcas1p4m;
 Wed,  1 Apr 2020 22:48:31 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.158]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 48t1ZN5WJHzMqYlv; Wed,  1 Apr
 2020 22:48:28 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 64.05.04071.C3A158E5; Thu,  2 Apr 2020 07:48:28 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200401224827epcas1p2052a672ee7e475079fe644395b9606b5~B07Kdbvwd1057110571epcas1p2e;
 Wed,  1 Apr 2020 22:48:27 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200401224827epsmtrp2c9d073cb08fea6144bf8dbcdc664fae8~B07KcGgDo2480924809epsmtrp2o;
 Wed,  1 Apr 2020 22:48:27 +0000 (GMT)
X-AuditID: b6c32a37-7afff70000000fe7-90-5e851a3c49c7
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 1F.D1.04024.B3A158E5; Thu,  2 Apr 2020 07:48:27 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200401224827epsmtip1c5dd7adc8d016cb7a402ee93ce8f111e~B07J7RgA92535225352epsmtip1T;
 Wed,  1 Apr 2020 22:48:27 +0000 (GMT)
Subject: Re: [PATCH 2/8] PM / devfreq: Add generic imx bus scaling driver
To: Leonard Crestez <leonard.crestez@nxp.com>, Georgi Djakov
 <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>, Martin
 Kepplinger <martink@posteo.de>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <8b1623d9-fb71-836f-776e-2dffdbcc27b3@samsung.com>
Date: Thu, 2 Apr 2020 07:57:32 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB694183137034565F350E8587EEC90@VI1PR04MB6941.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02TfUxTVxjGd3pvby+G4rXCOMOI9bo4xwa21uJhAdkyZHebyTALy7JkdDdw
 Bx39Sm9LQP8YQxlSmBsxdbOg4JSlfJjQWhhuEBSqDtgqbLMQ0aAp0+oMygB1iG5tr1v63+95
 z/O+J897ckhM1iNJIrUGC2c2sDqaWIH3DL2YlpqZVF2gaHO+hKaPVgO0ODoC0He/ngNowf4D
 hgLTUwB9f7gQNXt9YuQ6NYWjr/vdBGq3n8bRxYtdEvRL1R0Jcl6dEyN3wC9GtqU2DM1/4QWo
 dWJchPzOBjGa7woAND6yA0195iRQh+8sgY4s2DFU3e+VINvgYwI98btwFPQkotbjfgy5FplX
 1zJ2mxMwnUc7AXN3slrCNFaO40yL28q422sJ5oq/j2BOnfiUcc32ipgvHyuYpaEE5oCnHTDz
 7uQ86QelmSUcW8SZ5Zyh0FikNRRn0W+/q3ldo05XKFOVGWgbLTewei6LztmZl5qr1YWWQsvL
 WJ01VMpjeZ7evD3TbLRaOHmJkbdk0ZypSGfKMKXxrJ63GorTCo36V5QKxRZ1yPhRacnA2J+Y
 6caO8u6x23gluI5sIIaE1FbY1LlXYgMrSBnVC+DfzbVAEH8B+M9MEyGI+wDe+nEuJMhIy88n
 M4R6P4D3bh7EBHEXwPs/VUnCc1dTb8KFA02RUfHUCQC9/gd4WGBUHwn/cH4bcRFUChwIThJh
 Xkmth5ceBkCYpdR26As+EoUZp56HD2uq8DAnUO/B4Z59Tz2r4PDhmUg9hvoQ1tUtReZgVBq8
 MeLABU6El2eaRQKvg3u7GzEhdS8JfWeyBc6BHa0HRQKvhrcveCQCJ8H52X5C4D2wbdgb2QWk
 9gPoGRgTCwcqOPB/83p4+tERIFwWB2cX68XCvqRw/+cywbIB/nbt6lP7c/B4TS3xFaAdUXEc
 UREcUREcURFaAN4OnuVMvL6Y45UmVfSDu0Hkz6Rs6wVdvp2DgCIBHSuVf7yvQCZmy/gK/SCA
 JEbHSxtzQiVpEVuxmzMbNWarjuMHgTq07gYsKaHQGPqBBotGqd6iUqnQVmW6WqmkE6X2CV2B
 jCpmLVwpx5k48399IjImqRLEfrK5VSWbPnZ96dqG5Kmb8cNPxpmaO9mq83uO1Xfnvp/f19BV
 kt/zzIO5lZviutfUDW0sTb/wzplzo/VZic7zE+uSJ5fLvzmZUK7adJYPwl3auY1Vyatc0rLl
 FxbJ3aOxmt+Dr916+VBFhyeQvevyskeeb1praXnrSu6aVO09+aU3MuNonC9hlSmYmWf/BZNw
 ii9JBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfyyUcRzH932e5557XG497siXhrr4o6v82Prja5X8ke1ha2xtiS26eHKW
 O7oH0T8uP/pxCtVofhTmNEmN85uk/GhRHZccSzKOCNXasURaztXmv9fe39drn3++FC4q5jlT
 scpEVqWUxUlIAdHULXE9cMg5K8I7+5MUTdzPAmj5dT9AD971ArSU34Yj08QYQM2FUai0R89D
 dfVjBLrboSNRdX4rgQYGavnobfoiH1WN/+AhncnIQ5rVhzgy3+wBqHLEgCFj1S0eMteaADL0
 B6Cxy1UkeqR/QaJ7S/k4yuro4SNN1zqJ/hjrCDTX4IgqK4w4qltm/F2YfE0VYGru1wDm+2gW
 nylWGwimTJfE6Kqvk8xH41OSqdemMXXfWjAmd92bWe12YHIaqgFj1rmGCMMFh6PZuNhkVuXl
 d0Yg7xxcwBM+B6Q0Ds4TajCJNICiIH0QvnnsqwECSkS3A1je+hNogM3G7gQLDL241RHD7m7O
 MovorwCa1T4WFtOBcCmnZFO3p7UAaieDLYzTzynYv8Sz+vMYvK0OszBJS2Hn3Chp4e30bji8
 YtpshbQf1M+tYRYmaHe4cjWdsLADfRK2ak2Y1bGDfYXTm7sNfRpmZ6+S1lv74RVzOWZlR/hh
 uvQfu8GMxmI8D4iLtuRFW5KiLUnRlqQMENXAiU3gFDEKzifBR8le9ORkCi5JGeMZFa/Qgc0v
 I93bAoa0kV2ApoDEVpgiz4wQ8WTJXKqiC0AKl9gLi49tTMJoWeolVhUfqUqKY7kusJMiJI7C
 GeXLMBEdI0tkz7NsAqv6/4pRNs5qIJhKa059let/LXSysaJ9IP0E5evdO6S/01GK8Uu+JBUs
 lvWJn2SeM7iHq0Jsz5KtbbHYBbndgsfvvDUy6PiNYG2U3ms2qKP8WejRU03Ds279PftK5jxX
 ojmPqV/bhkuEApf34j0RxCI1klE/FLHDsXD8yK7AoTBd6oxTrhSzM0sITi7zkeIqTvYXQ5YJ
 PC4DAAA=
X-CMS-MailID: 20200401224827epcas1p2052a672ee7e475079fe644395b9606b5
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200326021637epcas1p26d84c256cf05a97ae1c90bb16ea6fa5d
References: <cover.1585188174.git.leonard.crestez@nxp.com>
 <CGME20200326021637epcas1p26d84c256cf05a97ae1c90bb16ea6fa5d@epcas1p2.samsung.com>
 <e32290a36b31fbe922cc8ed48c33e89a5eb08804.1585188174.git.leonard.crestez@nxp.com>
 <781911a0-6139-8e41-cd96-da40fad685fc@samsung.com>
 <VI1PR04MB694183137034565F350E8587EEC90@VI1PR04MB6941.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_154843_893383_E41670B1 
X-CRM114-Status: GOOD (  34.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/1/20 11:20 PM, Leonard Crestez wrote:
> On 2020-04-01 1:55 AM, Chanwoo Choi wrote:
>> Hi,
>>
>> Looks good to me. I added the comments.
>> But, it need to add the dt binding documentation for this device.
> =

> DT bindings were included:
> =

> https://patchwork.kernel.org/patch/11458981/

The dt-binding document for this driver is required under
Documentation/devicetree/binding/devfreq.

It is difficult to catch where is the dt-binding document
for this driver for who don't know the detailed history
of this driver. I don't said that add the duplicate documentation
But, at least the some document have to point out the reference.

> =

>> The old email of Artur =A6wigo=F1 is not used. On next time,
>> use following the new email address Because when I reply the mail,
>> always show the fail message from thunderbird due to the Artur's old ema=
il.
>> <a.swigon@partnet.samsung.com> -> <a.swigon@samsung.com>
> =

> Yeah, I received multiple bounces because of this.
> =

>> On 3/26/20 11:16 AM, Leonard Crestez wrote:
>>> Add initial support for dynamic frequency switching on pieces of the imx
>>> interconnect fabric.
>>>
>>> All this driver does is set a clk rate based on an opp table, it does
>>> not map register areas.
>>>
>>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>>> ---
>>>   drivers/devfreq/Kconfig   |   9 +++
>>>   drivers/devfreq/Makefile  |   1 +
>>>   drivers/devfreq/imx-bus.c | 142 ++++++++++++++++++++++++++++++++++++++
>>>   3 files changed, 152 insertions(+)
>>>   create mode 100644 drivers/devfreq/imx-bus.c
>>>
>>> diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
>>> index 0b1df12e0f21..44d26192ddc4 100644
>>> --- a/drivers/devfreq/Kconfig
>>> +++ b/drivers/devfreq/Kconfig
>>> @@ -99,10 +99,19 @@ config ARM_IMX8M_DDRC_DEVFREQ
>>>   	select DEVFREQ_GOV_USERSPACE
>>>   	help
>>>   	  This adds the DEVFREQ driver for the i.MX8M DDR Controller. It all=
ows
>>>   	  adjusting DRAM frequency.
>>>   =

>>> +config ARM_IMX_BUS_DEVFREQ
>>> +	tristate "i.MX Generic Bus DEVFREQ Driver"
>>> +	depends on ARCH_MXC || COMPILE_TEST
>>> +	select DEVFREQ_GOV_PASSIVE
>>> +	select DEVFREQ_GOV_USERSPACE
>>
>> Maybe, you would update it by using passive governor?
>> But, in this version, it doesn't handle the any passive governor.
> =

> dropped
> =

>>> +	help
>>> +	  This adds the generic DEVFREQ driver for i.MX interconnects. It
>>> +	  allows adjusting NIC/NOC frequency.
>>> +
>>>   config ARM_TEGRA_DEVFREQ
>>>   	tristate "NVIDIA Tegra30/114/124/210 DEVFREQ Driver"
>>>   	depends on ARCH_TEGRA_3x_SOC || ARCH_TEGRA_114_SOC || \
>>>   		ARCH_TEGRA_132_SOC || ARCH_TEGRA_124_SOC || \
>>>   		ARCH_TEGRA_210_SOC || \
>>> diff --git a/drivers/devfreq/Makefile b/drivers/devfreq/Makefile
>>> index 3eb4d5e6635c..3ca1ad0ecb97 100644
>>> --- a/drivers/devfreq/Makefile
>>> +++ b/drivers/devfreq/Makefile
>>> @@ -7,10 +7,11 @@ obj-$(CONFIG_DEVFREQ_GOV_POWERSAVE)	+=3D governor_pow=
ersave.o
>>>   obj-$(CONFIG_DEVFREQ_GOV_USERSPACE)	+=3D governor_userspace.o
>>>   obj-$(CONFIG_DEVFREQ_GOV_PASSIVE)	+=3D governor_passive.o
>>>   =

>>>   # DEVFREQ Drivers
>>>   obj-$(CONFIG_ARM_EXYNOS_BUS_DEVFREQ)	+=3D exynos-bus.o
>>> +obj-$(CONFIG_ARM_IMX_BUS_DEVFREQ)	+=3D imx-bus.o
>>
>> The ARM_IMX_BUS_DEVFREQ config is under ARM_IMX8M_DDRC_DEVFREQ
>> and imx-bus.o is over imx8m-ddrc.o. Need to edit the sequence.
> =

> Reordered kconfig to match. 8M_DDRC sorts before _BUS alphabetically but =

> it's pettier this way, and matches tegra.
> =

>>>   obj-$(CONFIG_ARM_IMX8M_DDRC_DEVFREQ)	+=3D imx8m-ddrc.o
>>>   obj-$(CONFIG_ARM_RK3399_DMC_DEVFREQ)	+=3D rk3399_dmc.o
>>>   obj-$(CONFIG_ARM_TEGRA_DEVFREQ)		+=3D tegra30-devfreq.o
>>>   obj-$(CONFIG_ARM_TEGRA20_DEVFREQ)	+=3D tegra20-devfreq.o
>>>   =

>>> diff --git a/drivers/devfreq/imx-bus.c b/drivers/devfreq/imx-bus.c
>>> new file mode 100644
>>> index 000000000000..285e0f1ae6b1
>>> --- /dev/null
>>> +++ b/drivers/devfreq/imx-bus.c
>>> @@ -0,0 +1,142 @@
>>> +// SPDX-License-Identifier: GPL-2.0
>>> +/*
>>> + * Copyright 2019 NXP
>>> + */
>>> +
>>> +#include <linux/clk.h>
>>> +#include <linux/devfreq.h>
>>> +#include <linux/device.h>
>>> +#include <linux/module.h>
>>> +#include <linux/of_device.h>
>>> +#include <linux/pm_opp.h>
>>> +#include <linux/platform_device.h>
>>> +#include <linux/slab.h>
>>> +
>>> +struct imx_bus {
>>> +	struct devfreq_dev_profile profile;
>>> +	struct devfreq *devfreq;
>>> +	struct clk *clk;
>>> +	struct devfreq_passive_data passive_data;
>>
>> This patch doesn't touch the passive_data.
> =

> dropped
> =

>>> +};
>>> +
>>> +static int imx_bus_target(struct device *dev,
>>> +		unsigned long *freq, u32 flags)
>>> +{
>>> +	struct imx_bus *priv =3D dev_get_drvdata(dev);
>>> +	struct dev_pm_opp *new_opp;
>>> +	unsigned long new_freq;
>>> +	int ret;
>>> +
>>> +	new_opp =3D devfreq_recommended_opp(dev, freq, flags);
>>> +	if (IS_ERR(new_opp)) {
>>> +		ret =3D PTR_ERR(new_opp);
>>> +		dev_err(dev, "failed to get recommended opp: %d\n", ret);
>>> +		return ret;
>>> +	}
>>> +	new_freq =3D dev_pm_opp_get_freq(new_opp);
>>
>> It doesn't need. Because the new frequency is stored to 'freq'
>> by calling devfreq_recommended_opp().
> =

> fixed
> =

>>> +	dev_pm_opp_put(new_opp);
>>> +
>>> +	return clk_set_rate(priv->clk, new_freq);
>>
>> nitpick. you can use dev_pm_opp_set_rate(). But, I'm not forcing to use =
it.
> =

> Switched to dev_pm_opp_set_rate.
> =

> It might be interesting to add regulators control later, on some chips =

> the main NOC can run at different voltages.
> =

>>
>>> +}
>>> +
>>> +static int imx_bus_get_cur_freq(struct device *dev, unsigned long *fre=
q)
>>> +{
>>> +	struct imx_bus *priv =3D dev_get_drvdata(dev);
>>> +
>>> +	*freq =3D clk_get_rate(priv->clk);
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +static int imx_bus_get_dev_status(struct device *dev,
>>> +		struct devfreq_dev_status *stat)
>>> +{
>>> +	struct imx_bus *priv =3D dev_get_drvdata(dev);
>>> +
>>> +	stat->busy_time =3D 0;
>>> +	stat->total_time =3D 0;
>>> +	stat->current_frequency =3D clk_get_rate(priv->clk);
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +static void imx_bus_exit(struct device *dev)
>>> +{
>>> +	dev_pm_opp_of_remove_table(dev);
>>> +}
>>> +
>>> +static int imx_bus_probe(struct platform_device *pdev)
>>> +{
>>> +	struct device *dev =3D &pdev->dev;
>>> +	struct imx_bus *priv;
>>> +	const char *gov =3D DEVFREQ_GOV_USERSPACE;
>>> +	int ret;
>>> +
>>> +	priv =3D devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>>> +	if (!priv)
>>> +		return -ENOMEM;
>>> +
>>> +	/*
>>> +	 * Fetch the clock to adjust but don't explictly enable.
>>
>> Need to fix typo.
>> s/explictly/explicitly
> =

> fixed
> =

>>> +	 *
>>> +	 * For imx bus clock clk_set_rate is safe no matter if the clock is on
>>> +	 * or off and some peripheral side-buses might be off unless enabled =
by
>>> +	 * drivers for devices on those specific buses.
>>> +	 *
>>> +	 * Rate adjustment on a disabled bus clock just takes effect later.
>>> +	 */
>>> +	priv->clk =3D devm_clk_get(dev, NULL);
>>> +	if (IS_ERR(priv->clk)) {
>>> +		ret =3D PTR_ERR(priv->clk);
>>> +		dev_err(dev, "failed to fetch clk: %d\n", ret);
>>> +		return ret;
>>> +	}
>>> +	platform_set_drvdata(pdev, priv);
>>> +
>>> +	ret =3D dev_pm_opp_of_add_table(dev);
>>> +	if (ret < 0) {
>>> +		dev_err(dev, "failed to get OPP table\n");
>>> +		return ret;
>>> +	}
>>> +
>>> +	priv->profile.polling_ms =3D 1000;
>>> +	priv->profile.target =3D imx_bus_target;
>>> +	priv->profile.get_dev_status =3D imx_bus_get_dev_status;
>>> +	priv->profile.exit =3D imx_bus_exit;
>>> +	priv->profile.get_cur_freq =3D imx_bus_get_cur_freq;
>>> +	priv->profile.initial_freq =3D clk_get_rate(priv->clk);
>>> +
>>> +	priv->devfreq =3D devm_devfreq_add_device(dev, &priv->profile,
>>> +						gov, NULL);
>>> +	if (IS_ERR(priv->devfreq)) {
>>> +		ret =3D PTR_ERR(priv->devfreq);
>>> +		dev_err(dev, "failed to add devfreq device: %d\n", ret);
>>> +		goto err;
>>> +	}
>>> +
>>> +	return 0;
>>> +
>>> +err:
>>> +	dev_pm_opp_of_remove_table(dev);
>>> +	return ret;
>>> +}
>>> +
>>> +static const struct of_device_id imx_bus_of_match[] =3D {
>>> +	{ .compatible =3D "fsl,imx8m-noc", },
>>> +	{ .compatible =3D "fsl,imx8m-nic", },
>>> +	{ /* sentinel */ },
>>> +};
>>> +MODULE_DEVICE_TABLE(of, imx_bus_of_match);
>>> +
>>> +static struct platform_driver imx_bus_platdrv =3D {
>>> +	.probe		=3D imx_bus_probe,
>>> +	.driver =3D {
>>> +		.name	=3D "imx-bus-devfreq",
>>> +		.of_match_table =3D of_match_ptr(imx_bus_of_match),
>>> +	},
>>> +};
>>> +module_platform_driver(imx_bus_platdrv);
>>> +
>>> +MODULE_DESCRIPTION("Generic i.MX bus frequency scaling driver");
>>> +MODULE_AUTHOR("Leonard Crestez <leonard.crestez@nxp.com>");
>>> +MODULE_LICENSE("GPL v2");
>>>
>>
>>
> =

> =

> =

> =



-- =

Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
