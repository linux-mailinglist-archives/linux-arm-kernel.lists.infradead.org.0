Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54AB919D01E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 08:15:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C180t8dd9uZTBdsQNjahyI4YGIHaKoFJli5x3re5ZNg=; b=JL6z4Gc/tjYjNy
	dma8ceSd61qNvoEp0iXb5yPyK7GbQ3C31RYW86FC+FNUvICUjQvJAB80NXn504aO8S41zKKviUCI8
	XKchaMTY1ylOwoUG95EmG7v9sGrYtZvnHEswRTyEGqZ/iHILoqCyQfhxUiQRUvsT+hJT6+k76wJe7
	FVL+ihJk5VtbGOQEFbZC7mML8MiRdhB3qhlqSXAxJ9fQvuk8YPmafNl/qZr/T1ZHZI68ldtGEjyxw
	+E1qdgy2gS260n9eShjZcyJAqXf227DdoF/mGQUhtMRHikkDfQ7XxGyqtT4uQpM7vtDT0o6qV7QAT
	uF8xFDXeLvl5Cbv5u2Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKFcK-0002s7-1U; Fri, 03 Apr 2020 06:15:48 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKFbb-0000EP-Od
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 06:15:07 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200403061459epoutp01f0c9671c55e6f45710107cf7024df07c~COqUy-9Yq0882208822epoutp01d
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  3 Apr 2020 06:14:59 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200403061459epoutp01f0c9671c55e6f45710107cf7024df07c~COqUy-9Yq0882208822epoutp01d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1585894500;
 bh=3ClS9acp6q4A7vSCobCxmpD58P6iw05fT1PXVOUXNpE=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=HB3X0QWnzllBfreljuSH4F1aFqrqVXJ+yPvSZpX5EINlGYH403F0N+6k5CRPd7w1U
 QwYBljRRAE3Y0FWGzH+13Mk93690UcP3Pw+w9nqnSYbRIOAYcc/4YVNxLphQnan412
 gfNjFto+TpIk99uS8+b8OxSlCfYanDRQRqpRzk2Y=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20200403061459epcas1p3624caee3ae23f5387ce976b3fe4c3916~COqUUIHPs1573415734epcas1p3o;
 Fri,  3 Apr 2020 06:14:59 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.156]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 48tqR50NkjzMqYl0; Fri,  3 Apr
 2020 06:14:57 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 A2.42.04744.064D68E5; Fri,  3 Apr 2020 15:14:56 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20200403061456epcas1p34bfc5d92890a2d68e009662276bff257~COqRhd-241108111081epcas1p32;
 Fri,  3 Apr 2020 06:14:56 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200403061456epsmtrp23d7e3a32eb30ebd9dc8a9c485871a724~COqRfnGgZ2943229432epsmtrp2X;
 Fri,  3 Apr 2020 06:14:56 +0000 (GMT)
X-AuditID: b6c32a38-26bff70000001288-3c-5e86d460e99f
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 34.E8.04158.064D68E5; Fri,  3 Apr 2020 15:14:56 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200403061455epsmtip276c35d9d898edb60afdce60699cb0798~COqRComKY1491614916epsmtip2I;
 Fri,  3 Apr 2020 06:14:55 +0000 (GMT)
Subject: Re: [PATCH 2/8] PM / devfreq: Add generic imx bus scaling driver
To: Leonard Crestez <leonard.crestez@nxp.com>, Rob Herring
 <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <1e4de7a9-fbc5-b441-3032-5200d301583d@samsung.com>
Date: Fri, 3 Apr 2020 15:23:59 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB69417B0BC486AE67957522ADEEC60@VI1PR04MB6941.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02TbUxTVxjHd3pvby9mddcK44y5CVe/rAnQAoXDAkQHmrvhlmZb+LBE8I5e
 KaNv9FIH25KVKQwapxBXGXUgDOtoNRvUIi+BdELNAm4oe6ls6DDBIJkC01I2dSxruTXh2+95
 nv9zzvk/Jw+JyfolCWS5oYozG1gdTWzCL469lJJ84Jf6YsXfoRw0214HUOjKBEBnf7oM0Ip9
 CENzszMA9beWotP+STHqvTCDo5YRD4Hc9kEcXb3aI0E/fnJPgrpv3hcjz1xAjGyPXBgKfuYH
 yHl9SoQC3c1iFOyZA2hqYg+aqe0m0LnJSwRqW7FjqG7EL0G20TUC/RfoxdGCNx45uwIY6g0x
 u15g7LZuwJxvPw+Y5ek6CXPKOoUzHR4L43E3EsyNwDDBXDjzMdO7NCBijq8pmEdjccwxrxsw
 Qc+Lauk7FTlajtVw5kTOUGrUlBvKcunCt0ryS1SZCmWyMhtl0YkGVs/l0gX71Ml7y3XhodCJ
 h1idJZxSszxPp+blmI2WKi5Ra+SrcmnOpNGZsk0pPKvnLYaylFKj/mWlQpGmCgsPVGgdzgcS
 k/fN6q/HAmIrqC2wgRgSUhlw6K8zwAY2kTJqAMA/Tt4VCcEDAK8s+nAhWAXQesMledLitS9L
 hMIIgE2/9UeDZQB/6O8EEdVW6lW4cuzLdY6lquHRYCcREWHUAgn/XXhIRAoEJYe+hel1foZK
 gr/+M7feIKXyoH3xO3GEcWon/HbVv66Jo4rg+MUjUc0WON56G49wDLUf3hsfxCKMUSlwfsKB
 CxwPf799WiTwdni47xQWeQSkhkn4ePArkeCnALofXgYCb4V/fu+N+kyAwaURQuAPoWvcTwjN
 DQB6fdfEQiEd+pwnogclwcHHbUC4bTNcCh0Na8hwXgob6mWCZAf8+dbNqPw52PVpI9EEaMcG
 P44NHhwbPDg2eOgAuBs8y5l4fRnHK00ZG3/cA9aXRo4GwPDkvlFAkYB+WvrUpbpimZg9xNfo
 RwEkMTpWuvuLcEqqYWs+4MzGErNFx/GjQBWedzOWEFdqDK+goapEqUpLT09HGcpMlVJJx0vt
 13XFMqqMreIqOM7EmZ/0iciYBCtomx+ueD6pKfa1rL7KvKaTx+PVZ3dRliMtd3taD+6tmb8/
 //a12ULttp2c2pVV+W5hS1GzfLHo/U7RR6nlm3dXNqS+ke/ask3j7thR7yOn76Dsc7FJB6sz
 5K+8Rx62i8nXQ/l7tncVfbN/tR1nLWufD+Wn1vY1nlAYuPY0Z6bvzi0rjfNaVinHzDz7P9u/
 VHhKBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTUQDHO7uPXcXVbb5OiolLhIalVsJBQy0KbtCHMggMUse8qeTm2vXR
 ikiNCS5c9WFZ21IjLVvmY67SXuo2S4sUy5ZoIjiVCpflVErKcrPAbz/O//c758uhMGE1EULl
 ygtYpVySJyJ98Yc2Ufi2zKHy9FhjbRAar1YDtPD6FUC33/YANK97jCHn+ChAj65LUY29n0Ct
 baM4qnpmJpFJ14GjgYEWPnpTNsNHDWPfCWR2OgikWbqLIXelHaD6D4M85Gi4QiB3ixOgwVf7
 0WhpA4nu9XeT6Ma8DkPqZ3Y+0lh/k2jZ0YqjT5ZgVH/LgaHWBSYljNFpGgDTWN0ImNlhNZ8x
 lAziTK25kDGbKkjmo+MpybTVnWdav7bzmEu/Y5klWyCjtZgA4zZvPiQ45rs7i83LLWKVMUmZ
 vjn6+jm+wpJ6+o7NQZSA0n0a4ENBehe06Gb5GuBLCeknANp/dpKrwyZ4dbAH0wBqhf2hzcat
 Oi4ATX1W4HH86QNwXmv0cgB9GqqrjIRHwugZCnZ9qcA8g5Cew+BUd4KHSVoMOz8Nex/YQEfA
 9z+c3lhAJ0Gdq4vwME5HwuZFu9cJpI/Cjjonb9XZCPuuT+Ie9qGPw5m+Du/9GB0Ny903easc
 DEcma/5xOLzwwIBdBv76Nbl+TaJfk+jXJLUAN4FNrIKTZcu4OMUOOVu8nZPIuEJ59nZpvswM
 vL9GLG4Hvb0ZVkBTQOQnWNetThcSkiJOJbMCSGGiAMGeaytHgiyJ6gyrzM9QFuaxnBWEUrgo
 WBCe/yJNSGdLCtiTLKtglf9XHuUTUgKCmm4/iRlKUKWFNBoXd7rYs5E38ZTepunOgGLgkvi5
 tKmTm2cTtyRrS34tTR8OQ/HDR1TO5/1Xz8mTtc0XFREy01DkS+msYbksdMS4t3FKOvr52ruq
 5JoWIupgz9KkxR2YUnkivuzy0KkcQ7ThaFSfIHfrffGfMYFzYn3it4lEEc7lSOLEmJKT/AUR
 uKEZMQMAAA==
X-CMS-MailID: 20200403061456epcas1p34bfc5d92890a2d68e009662276bff257
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
 <8b1623d9-fb71-836f-776e-2dffdbcc27b3@samsung.com>
 <VI1PR04MB69417B0BC486AE67957522ADEEC60@VI1PR04MB6941.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_231504_239687_532902C6 
X-CRM114-Status: GOOD (  33.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/2/20 6:53 PM, Leonard Crestez wrote:
> On 2020-04-02 1:48 AM, Chanwoo Choi wrote:
>> On 4/1/20 11:20 PM, Leonard Crestez wrote:
>>> On 2020-04-01 1:55 AM, Chanwoo Choi wrote:
>>>> Hi,
>>>>
>>>> Looks good to me. I added the comments.
>>>> But, it need to add the dt binding documentation for this device.
>>>
>>> DT bindings were included:
>>>
>>> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fpat=
chwork.kernel.org%2Fpatch%2F11458981%2F&amp;data=3D02%7C01%7Cleonard.creste=
z%40nxp.com%7C7381d117a4d1468cd2c608d7d68ecfac%7C686ea1d3bc2b4c6fa92cd99c5c=
301635%7C0%7C0%7C637213781167514099&amp;sdata=3DQu8x14cXnuxlwOT2SlUOf%2FLgC=
VWbnJRKA4TBjMIWQeA%3D&amp;reserved=3D0
>>
>> The dt-binding document for this driver is required under
>> Documentation/devicetree/binding/devfreq.
> =

> Bindings for imx8m-ddrc were at one point posted for =

> devicetree/bindings/devfreq but Rob Herring suggested to move them under =

> "memory-controller" instead and I expect same logic makes sense here. =

> Link to previous discussion:
> =

> https://patchwork.kernel.org/patch/11221919/
> =

> DT bindings should try to describe "hardware" rather than "drivers" and =

> an "interconnect" is a class of hardware while "devfreq" isn't.
> =

> Not only that but the main noc has properties parsed by interconnect driv=
er.

OK. Thanks for reply.

> =

>> It is difficult to catch where is the dt-binding document
>> for this driver for who don't know the detailed history
>> of this driver. I don't said that add the duplicate documentation
>> But, at least the some document have to point out the reference.
> =

> What I usually do to find information about a device is grep for the =

> compat string in the entire tree.
> =

>>>> The old email of Artur =A6wigo=F1 is not used. On next time,
>>>> use following the new email address Because when I reply the mail,
>>>> always show the fail message from thunderbird due to the Artur's old e=
mail.
>>>> <a.swigon@partnet.samsung.com> -> <a.swigon@samsung.com>
>>>
>>> Yeah, I received multiple bounces because of this.
>>>
>>>> On 3/26/20 11:16 AM, Leonard Crestez wrote:
>>>>> Add initial support for dynamic frequency switching on pieces of the =
imx
>>>>> interconnect fabric.
>>>>>
>>>>> All this driver does is set a clk rate based on an opp table, it does
>>>>> not map register areas.
>>>>>
>>>>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>>>>> ---
>>>>>    drivers/devfreq/Kconfig   |   9 +++
>>>>>    drivers/devfreq/Makefile  |   1 +
>>>>>    drivers/devfreq/imx-bus.c | 142 ++++++++++++++++++++++++++++++++++=
++++
>>>>>    3 files changed, 152 insertions(+)
>>>>>    create mode 100644 drivers/devfreq/imx-bus.c
>>>>>
>>>>> diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
>>>>> index 0b1df12e0f21..44d26192ddc4 100644
>>>>> --- a/drivers/devfreq/Kconfig
>>>>> +++ b/drivers/devfreq/Kconfig
>>>>> @@ -99,10 +99,19 @@ config ARM_IMX8M_DDRC_DEVFREQ
>>>>>    	select DEVFREQ_GOV_USERSPACE
>>>>>    	help
>>>>>    	  This adds the DEVFREQ driver for the i.MX8M DDR Controller. It =
allows
>>>>>    	  adjusting DRAM frequency.
>>>>>    =

>>>>> +config ARM_IMX_BUS_DEVFREQ
>>>>> +	tristate "i.MX Generic Bus DEVFREQ Driver"
>>>>> +	depends on ARCH_MXC || COMPILE_TEST
>>>>> +	select DEVFREQ_GOV_PASSIVE
>>>>> +	select DEVFREQ_GOV_USERSPACE
>>>>
>>>> Maybe, you would update it by using passive governor?
>>>> But, in this version, it doesn't handle the any passive governor.
>>>
>>> dropped
>>>
>>>>> +	help
>>>>> +	  This adds the generic DEVFREQ driver for i.MX interconnects. It
>>>>> +	  allows adjusting NIC/NOC frequency.
>>>>> +
>>>>>    config ARM_TEGRA_DEVFREQ
>>>>>    	tristate "NVIDIA Tegra30/114/124/210 DEVFREQ Driver"
>>>>>    	depends on ARCH_TEGRA_3x_SOC || ARCH_TEGRA_114_SOC || \
>>>>>    		ARCH_TEGRA_132_SOC || ARCH_TEGRA_124_SOC || \
>>>>>    		ARCH_TEGRA_210_SOC || \
>>>>> diff --git a/drivers/devfreq/Makefile b/drivers/devfreq/Makefile
>>>>> index 3eb4d5e6635c..3ca1ad0ecb97 100644
>>>>> --- a/drivers/devfreq/Makefile
>>>>> +++ b/drivers/devfreq/Makefile
>>>>> @@ -7,10 +7,11 @@ obj-$(CONFIG_DEVFREQ_GOV_POWERSAVE)	+=3D governor_p=
owersave.o
>>>>>    obj-$(CONFIG_DEVFREQ_GOV_USERSPACE)	+=3D governor_userspace.o
>>>>>    obj-$(CONFIG_DEVFREQ_GOV_PASSIVE)	+=3D governor_passive.o
>>>>>    =

>>>>>    # DEVFREQ Drivers
>>>>>    obj-$(CONFIG_ARM_EXYNOS_BUS_DEVFREQ)	+=3D exynos-bus.o
>>>>> +obj-$(CONFIG_ARM_IMX_BUS_DEVFREQ)	+=3D imx-bus.o
>>>>
>>>> The ARM_IMX_BUS_DEVFREQ config is under ARM_IMX8M_DDRC_DEVFREQ
>>>> and imx-bus.o is over imx8m-ddrc.o. Need to edit the sequence.
>>>
>>> Reordered kconfig to match. 8M_DDRC sorts before _BUS alphabetically but
>>> it's pettier this way, and matches tegra.
>>>
>>>>>    obj-$(CONFIG_ARM_IMX8M_DDRC_DEVFREQ)	+=3D imx8m-ddrc.o
>>>>>    obj-$(CONFIG_ARM_RK3399_DMC_DEVFREQ)	+=3D rk3399_dmc.o
>>>>>    obj-$(CONFIG_ARM_TEGRA_DEVFREQ)		+=3D tegra30-devfreq.o
>>>>>    obj-$(CONFIG_ARM_TEGRA20_DEVFREQ)	+=3D tegra20-devfreq.o
>>>>>    =

>>>>> diff --git a/drivers/devfreq/imx-bus.c b/drivers/devfreq/imx-bus.c
>>>>> new file mode 100644
>>>>> index 000000000000..285e0f1ae6b1
>>>>> --- /dev/null
>>>>> +++ b/drivers/devfreq/imx-bus.c
>>>>> @@ -0,0 +1,142 @@
>>>>> +// SPDX-License-Identifier: GPL-2.0
>>>>> +/*
>>>>> + * Copyright 2019 NXP
>>>>> + */
>>>>> +
>>>>> +#include <linux/clk.h>
>>>>> +#include <linux/devfreq.h>
>>>>> +#include <linux/device.h>
>>>>> +#include <linux/module.h>
>>>>> +#include <linux/of_device.h>
>>>>> +#include <linux/pm_opp.h>
>>>>> +#include <linux/platform_device.h>
>>>>> +#include <linux/slab.h>
>>>>> +
>>>>> +struct imx_bus {
>>>>> +	struct devfreq_dev_profile profile;
>>>>> +	struct devfreq *devfreq;
>>>>> +	struct clk *clk;
>>>>> +	struct devfreq_passive_data passive_data;
>>>>
>>>> This patch doesn't touch the passive_data.
>>>
>>> dropped
>>>
>>>>> +};
>>>>> +
>>>>> +static int imx_bus_target(struct device *dev,
>>>>> +		unsigned long *freq, u32 flags)
>>>>> +{
>>>>> +	struct imx_bus *priv =3D dev_get_drvdata(dev);
>>>>> +	struct dev_pm_opp *new_opp;
>>>>> +	unsigned long new_freq;
>>>>> +	int ret;
>>>>> +
>>>>> +	new_opp =3D devfreq_recommended_opp(dev, freq, flags);
>>>>> +	if (IS_ERR(new_opp)) {
>>>>> +		ret =3D PTR_ERR(new_opp);
>>>>> +		dev_err(dev, "failed to get recommended opp: %d\n", ret);
>>>>> +		return ret;
>>>>> +	}
>>>>> +	new_freq =3D dev_pm_opp_get_freq(new_opp);
>>>>
>>>> It doesn't need. Because the new frequency is stored to 'freq'
>>>> by calling devfreq_recommended_opp().
>>>
>>> fixed
>>>
>>>>> +	dev_pm_opp_put(new_opp);
>>>>> +
>>>>> +	return clk_set_rate(priv->clk, new_freq);
>>>>
>>>> nitpick. you can use dev_pm_opp_set_rate(). But, I'm not forcing to us=
e it.
>>>
>>> Switched to dev_pm_opp_set_rate.
>>>
>>> It might be interesting to add regulators control later, on some chips
>>> the main NOC can run at different voltages.
>>>
>>>>
>>>>> +}
>>>>> +
>>>>> +static int imx_bus_get_cur_freq(struct device *dev, unsigned long *f=
req)
>>>>> +{
>>>>> +	struct imx_bus *priv =3D dev_get_drvdata(dev);
>>>>> +
>>>>> +	*freq =3D clk_get_rate(priv->clk);
>>>>> +
>>>>> +	return 0;
>>>>> +}
>>>>> +
>>>>> +static int imx_bus_get_dev_status(struct device *dev,
>>>>> +		struct devfreq_dev_status *stat)
>>>>> +{
>>>>> +	struct imx_bus *priv =3D dev_get_drvdata(dev);
>>>>> +
>>>>> +	stat->busy_time =3D 0;
>>>>> +	stat->total_time =3D 0;
>>>>> +	stat->current_frequency =3D clk_get_rate(priv->clk);
>>>>> +
>>>>> +	return 0;
>>>>> +}
>>>>> +
>>>>> +static void imx_bus_exit(struct device *dev)
>>>>> +{
>>>>> +	dev_pm_opp_of_remove_table(dev);
>>>>> +}
>>>>> +
>>>>> +static int imx_bus_probe(struct platform_device *pdev)
>>>>> +{
>>>>> +	struct device *dev =3D &pdev->dev;
>>>>> +	struct imx_bus *priv;
>>>>> +	const char *gov =3D DEVFREQ_GOV_USERSPACE;
>>>>> +	int ret;
>>>>> +
>>>>> +	priv =3D devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>>>>> +	if (!priv)
>>>>> +		return -ENOMEM;
>>>>> +
>>>>> +	/*
>>>>> +	 * Fetch the clock to adjust but don't explictly enable.
>>>>
>>>> Need to fix typo.
>>>> s/explictly/explicitly
>>>
>>> fixed
>>>
>>>>> +	 *
>>>>> +	 * For imx bus clock clk_set_rate is safe no matter if the clock is=
 on
>>>>> +	 * or off and some peripheral side-buses might be off unless enable=
d by
>>>>> +	 * drivers for devices on those specific buses.
>>>>> +	 *
>>>>> +	 * Rate adjustment on a disabled bus clock just takes effect later.
>>>>> +	 */
>>>>> +	priv->clk =3D devm_clk_get(dev, NULL);
>>>>> +	if (IS_ERR(priv->clk)) {
>>>>> +		ret =3D PTR_ERR(priv->clk);
>>>>> +		dev_err(dev, "failed to fetch clk: %d\n", ret);
>>>>> +		return ret;
>>>>> +	}
>>>>> +	platform_set_drvdata(pdev, priv);
>>>>> +
>>>>> +	ret =3D dev_pm_opp_of_add_table(dev);
>>>>> +	if (ret < 0) {
>>>>> +		dev_err(dev, "failed to get OPP table\n");
>>>>> +		return ret;
>>>>> +	}
>>>>> +
>>>>> +	priv->profile.polling_ms =3D 1000;
>>>>> +	priv->profile.target =3D imx_bus_target;
>>>>> +	priv->profile.get_dev_status =3D imx_bus_get_dev_status;
>>>>> +	priv->profile.exit =3D imx_bus_exit;
>>>>> +	priv->profile.get_cur_freq =3D imx_bus_get_cur_freq;
>>>>> +	priv->profile.initial_freq =3D clk_get_rate(priv->clk);
>>>>> +
>>>>> +	priv->devfreq =3D devm_devfreq_add_device(dev, &priv->profile,
>>>>> +						gov, NULL);
>>>>> +	if (IS_ERR(priv->devfreq)) {
>>>>> +		ret =3D PTR_ERR(priv->devfreq);
>>>>> +		dev_err(dev, "failed to add devfreq device: %d\n", ret);
>>>>> +		goto err;
>>>>> +	}
>>>>> +
>>>>> +	return 0;
>>>>> +
>>>>> +err:
>>>>> +	dev_pm_opp_of_remove_table(dev);
>>>>> +	return ret;
>>>>> +}
>>>>> +
>>>>> +static const struct of_device_id imx_bus_of_match[] =3D {
>>>>> +	{ .compatible =3D "fsl,imx8m-noc", },
>>>>> +	{ .compatible =3D "fsl,imx8m-nic", },
>>>>> +	{ /* sentinel */ },
>>>>> +};
>>>>> +MODULE_DEVICE_TABLE(of, imx_bus_of_match);
>>>>> +
>>>>> +static struct platform_driver imx_bus_platdrv =3D {
>>>>> +	.probe		=3D imx_bus_probe,
>>>>> +	.driver =3D {
>>>>> +		.name	=3D "imx-bus-devfreq",
>>>>> +		.of_match_table =3D of_match_ptr(imx_bus_of_match),
>>>>> +	},
>>>>> +};
>>>>> +module_platform_driver(imx_bus_platdrv);
>>>>> +
>>>>> +MODULE_DESCRIPTION("Generic i.MX bus frequency scaling driver");
>>>>> +MODULE_AUTHOR("Leonard Crestez <leonard.crestez@nxp.com>");
>>>>> +MODULE_LICENSE("GPL v2");
>>>>>
>>>>
>>>>
>>>
>>>
>>>
>>>
>>
>>
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
