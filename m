Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC3D11C7F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 09:23:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8bo3ybKiVBmwll6KUVVC3YCFngNm5WrVCpiTJb6t3o8=; b=oGlN1eWn8gJ2fR
	r0L2pT7Gyz9kC0Zppgl2YLKPcNfWaPGbpUTDvSjs4PDmYNrhGVuibfplcLXfLd5is4GVBdDDkQkgj
	iuQypoj5wcD9c1T5ufu5ePtQ+a284pnXRrMH3oVKpiJPHEZV6FI5SfCUsz+RIFAyPqNT5cyoLIeaT
	g41wSJ9LBHMBl5fv45jvOTmc70f5c3ksc2OnBUTpgi7DzOYRwCJnj5Lps24hSocxSx4rIr/+4o3cy
	vac1QzzOurZdHFfdXdfp3dX4RFYOi9p+k4iilRibpzKWmQIs98qg/55pwqgFScpKonmJ1xaJyBGFi
	6cc921jLctzHbv+VbwHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifJko-0002S0-MM; Thu, 12 Dec 2019 08:23:22 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifJke-0002P8-Vk
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 08:23:15 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191212082309euoutp015bdf12fb89d38728db255674643204e2~fkg9j5UVi1612916129euoutp01G
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 08:23:09 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191212082309euoutp015bdf12fb89d38728db255674643204e2~fkg9j5UVi1612916129euoutp01G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576138989;
 bh=xDuUwadBE0kt6XD5tpV9niV0Sfcra9cZCGe37EaX0/M=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=sXQ/5gg76ekNpnTPQ1fb4LfibDiGSUv2OiZ3gjnsP/I2ksc/3ut3iaDqxtPncKO5z
 UOkFDRt4hZyy9AY6LHyPvXjwDvjR4Ai2VZej9/qJubKcdGA/mjCfbTMauWZ+wOJmzr
 sJM5XDsiMZo+YahRa6vVPcij0ORtaxb8WTwWSpxw=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191212082309eucas1p2af50b8b384d69135943d01c85ea17868~fkg9SAd2k3081030810eucas1p2J;
 Thu, 12 Dec 2019 08:23:09 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 5D.FB.61286.CE8F1FD5; Thu, 12
 Dec 2019 08:23:09 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191212082308eucas1p1e0ce843cf3e6f6beba6beffff1c999dc~fkg88jml61415614156eucas1p1Q;
 Thu, 12 Dec 2019 08:23:08 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191212082308eusmtrp14d7cdb21a52724346d6433f7de391a8e~fkg87Bd9E2511325113eusmtrp1I;
 Thu, 12 Dec 2019 08:23:08 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-e7-5df1f8ec466a
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 14.DF.08375.CE8F1FD5; Thu, 12
 Dec 2019 08:23:08 +0000 (GMT)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191212082307eusmtip2ef9e20e1d2ac9ca1378d7108f3a0814f~fkg75OO_w0288302883eusmtip2F;
 Thu, 12 Dec 2019 08:23:07 +0000 (GMT)
Subject: Re: [PATCH v2 4/4] usb: usb3503: Convert to use GPIO descriptors
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <f33fe872-50cf-c33b-ea6c-cfffb82c57a7@samsung.com>
Date: Thu, 12 Dec 2019 09:23:07 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <1576116600.21256.3.camel@mhfsdcap03>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0iTURj27Lvsczk9TXMvFQmzBCU1rexE2UUKPiGqH0UQTFv5oZbO2tSy
 HyVaS4dGpZBOrVBRW3k3MzPFS05bOC8QdjEqLSyYaWoXisj5WfnveZ/nPOd5n8PhKIWdWc7F
 ahMFnVYTp2JldGP3jz5/+/cp9TrzVQnpG/1Jk9q8aoZY2yZocqm1iCbpJdUssdlqpCT3V7mE
 1I0+Y8hQcyFLhtIHEMmztUpIcdlFiqRdWE8MmWUMqa+6JCU/OmySHZgv+faa4mve3WH4B6YR
 KV9nzmT5V89aWL6t6K6Ury89z1/obaP5yw1mxE/XrdovOyzbGiXExSYLusBtR2QxmaVG5mSB
 55mvPQY2FeUojMiZA7wB8mfGWQdW4AoEI5NKI5LN4RkE9/K7WHGYRvD0qVn611FQ83lBKEcw
 NtmHxMGOYLx1Zk7hOHccDo+KfB0GD7wWDNabEscZCltpyJ4xMQ6BxUFgtBvns+V4GzRPfJjH
 NF4Do7ZWqeOeZVgNGeUx4pGl0Js/RjtoZxwMxT0qB01hL7hvL6RErIQXY2IU4HwOnj9PR+LS
 u2BybEoiYnf4ZGlYKLMSrDlZtGhIR/C2r1IqDlkIhtLyFtxboNMywDiSKewL1c2BIr0TRmz9
 83sCdoVh+1JxCVe41nidEmk5ZBgWXtoHTJaqf7Ht/YPUFaQyLWpmWlTHtKiO6X/uLUSbkVJI
 0sdHC/ogrXA6QK+J1ydpowOOJcTXoblPaP1t+dKEZgePdiDMIZWL/M2KKbWC0STrU+I7EHCU
 ykNuMUyoFfIoTcpZQZcQqUuKE/QdaAVHq5Ty9cUf1QocrUkUTgjCSUH3V5VwzstT0UVqqzwv
 Nbh9k3fkqff7eBe37qzcIxHsxiXa4eJH68I6W/zc6Ojjw04Pz23O3h3otCdXGVDQe72+Vni8
 9/aBNM/Z7vBDqzcc3FhpFmqvbO/KkQ5RDb+bZtkKtj/72KlQ8sQlpOVloU9Ry88bibXKKM9v
 ER58Y6p3tVdoiPp7WJe/q4rWx2iC/CidXvMHRW6lGYADAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpkleLIzCtJLcpLzFFi42I5/e/4Pd03Pz7GGuzsULM49/g3i8XGGetZ
 LU7vf8di0b5vLotF8+L1bBbnz29gt5jyZzmTxabH11gtLu+aw2Zxufkio8WM8/uYLBYta2W2
 aGoxtmjrXMZqsXldO7vFz0PnmRwEPBZ/v8fsseHRalaPnbPusntsWtXJ5nHn2h42j/1z17B7
 bF5S79Fycj+LR9+WVYwenzfJBXBF6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZ
 mSrp29mkpOZklqUW6dsl6GV0LuliLZgtVvHtRBtbA+NkoS5GTg4JAROJ2Rves3UxcnEICSxl
 lHi84SoLREJG4uS0BlYIW1jiz7UuqKLXjBIr7h5i6mLk4BAW8JTYO1cTpEZEQEei7fR8JpAa
 ZoHzLBLPbj9lhWh4yyjR8OEzG0gVm4ChRNfbLjCbV8BOYte7Z2A2i4CqxOPz+9hBbFGBWInv
 Kz8xQtQISpyc+YQFZBmngJHEohNKIGFmATOJeZsfMkPY8hLb386BssUlbj2ZzzSBUWgWku5Z
 SFpmIWmZhaRlASPLKkaR1NLi3PTcYkO94sTc4tK8dL3k/NxNjMDo33bs5+YdjJc2Bh9iFOBg
 VOLh7ZD8GCvEmlhWXJl7iFGCg1lJhPd427tYId6UxMqq1KL8+KLSnNTiQ4ymQL9NZJYSTc4H
 Jqa8knhDU0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2M0ipLku6qq3Wf
 mL3OcsU5Lb95ylMOHFtzXPlOj8zKQuPHmmdTzb6H9n22rMuT7e2eYnm2f/YSww7RLsszcd7x
 x1Ya1t6vdXVetf9w19mD776d3Ghw+5rYoqz/Z+7mtxV7eGslvXnzyv9GrgzPokuRmU+Mj7LK
 G5ut05r+YM8uo/3WMru2XiiZo8RSnJFoqMVcVJwIAOpMfpcUAwAA
X-CMS-MailID: 20191212082308eucas1p1e0ce843cf3e6f6beba6beffff1c999dc
X-Msg-Generator: CA
X-RootMTR: 20191211145231eucas1p29d4e0ed105274c79682b48a613b45904
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191211145231eucas1p29d4e0ed105274c79682b48a613b45904
References: <20191211145054.24835-1-m.szyprowski@samsung.com>
 <CGME20191211145231eucas1p29d4e0ed105274c79682b48a613b45904@eucas1p2.samsung.com>
 <20191211145226.25074-1-m.szyprowski@samsung.com>
 <1576116600.21256.3.camel@mhfsdcap03>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_002313_228053_538CEA50 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stefan Agner <stefan@agner.ch>, linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Chen-Yu Tsai <wens@csie.org>,
 Andy Gross <agross@kernel.org>, linux-mediatek@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chunfeng,

On 12.12.2019 03:10, Chunfeng Yun wrote:
> On Wed, 2019-12-11 at 15:52 +0100, Marek Szyprowski wrote:
>> From: Linus Walleij <linus.walleij@linaro.org>
>>
>> This converts the USB3503 to pick GPIO descriptors from the
>> device tree instead of iteratively picking out GPIO number
>> references and then referencing these from the global GPIO
>> numberspace.
>>
>> The USB3503 is only used from device tree among the in-tree
>> platforms. If board files would still desire to use it they can
>> provide machine descriptor tables.
>>
>> Make sure to preserve semantics such as the reset delay
>> introduced by Stefan.
>>
>> Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>
>> Cc: Marek Szyprowski <m.szyprowski@samsung.com>
>> Cc: Stefan Agner <stefan@agner.ch>
>> Cc: Krzysztof Kozlowski <krzk@kernel.org>
>> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
>> [mszyprow: invert the logic behind reset GPIO line]
>> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
>> ---
>>   drivers/usb/misc/usb3503.c            | 94 ++++++++++-----------------
>>   include/linux/platform_data/usb3503.h |  3 -
>>   2 files changed, 35 insertions(+), 62 deletions(-)
>>
>> diff --git a/drivers/usb/misc/usb3503.c b/drivers/usb/misc/usb3503.c
>> index 72f39a9751b5..116bd789e568 100644
>> --- a/drivers/usb/misc/usb3503.c
>> +++ b/drivers/usb/misc/usb3503.c
>> @@ -7,11 +7,10 @@
>>   
>>   #include <linux/clk.h>
>>   #include <linux/i2c.h>
>> -#include <linux/gpio.h>
>> +#include <linux/gpio/consumer.h>
>>   #include <linux/delay.h>
>>   #include <linux/slab.h>
>>   #include <linux/module.h>
>> -#include <linux/of_gpio.h>
>>   #include <linux/platform_device.h>
>>   #include <linux/platform_data/usb3503.h>
>>   #include <linux/regmap.h>
>> @@ -47,19 +46,19 @@ struct usb3503 {
>>   	struct device		*dev;
>>   	struct clk		*clk;
>>   	u8	port_off_mask;
>> -	int	gpio_intn;
>> -	int	gpio_reset;
>> -	int	gpio_connect;
>> +	struct gpio_desc	*intn;
>> +	struct gpio_desc 	*reset;
>> +	struct gpio_desc 	*connect;
>>   	bool	secondary_ref_clk;
>>   };
>>   
>>   static int usb3503_reset(struct usb3503 *hub, int state)
>>   {
>> -	if (!state && gpio_is_valid(hub->gpio_connect))
>> -		gpio_set_value_cansleep(hub->gpio_connect, 0);
>> +	if (!state && hub->connect)
>> +		gpiod_set_value_cansleep(hub->connect, 0);
>>   
>> -	if (gpio_is_valid(hub->gpio_reset))
>> -		gpio_set_value_cansleep(hub->gpio_reset, state);
>> +	if (hub->reset)
>> +		gpiod_set_value_cansleep(hub->reset, !state);
> What about preparing another patch for @state before this path?

In such case the driver will be broken after such patch until a 
conversion to descriptor based GPIO api is done.

...

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
