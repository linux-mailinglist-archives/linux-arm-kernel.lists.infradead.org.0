Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0807425F17
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 10:08:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sM335+NrQdX2NRdbwBLAvpT50o7p8G8mSaYJe33MyYc=; b=Rlp6OnfvxTL8bk
	AGPox48x+AlUOk2WZrjr9rDvWqyUNPRmLVJPrxNl4nquC29E+UdBweTYHhUgu95sX3INe6QJOY71T
	RAWhHRuJ6Bg3Y6eaNYnW2AO8vXZruV+TRy4tqFTzQSMZDHa++eE5CxaOE4Z7O1SHY44TXPLC1kfW4
	JADRCqnlDEsbqXZ295Y53+z3MCCh956iflymILTVKQNTSIJa7U/x0pT+NmdrO9WI3mJGjTIK0WxmJ
	BcEJ/arAx1CFwesR6X55S+TYzukTsGOmjJ9w6qmtqG3dMkuSDh0GO1QqElZ2nfYlMCTFRjaQMO+2q
	iKCIOGPBlo2bpB7nXroQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTMIc-0007rF-1X; Wed, 22 May 2019 08:08:34 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTMIT-0007pb-NK
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 08:08:27 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4M86k0n002750; Wed, 22 May 2019 10:08:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=31LcOJHiVU7kM7i+jYHMtvLW3Ng5hRb7rd4vsjEaOEI=;
 b=MPxkK+advOYvKxUWlQp8XawP3OkLWmtDv1F6BBmG3Z4jkIliGmkzdxjdMNZZUVuqFH0M
 jjVWDfeqpBQjs4VZogXcJvxwPYL27cicFu+/qXsvJtHKAImcqdNPzksV9G2AyPIIrno1
 gUVD8B2kuIus3hHJyagg/2jeQTfYcI0iCv1oCECKNiSz7e3NlAXvYjBArZmQyhww/kEG
 /GjJZfvne05cITC7K2VqFxKbIA2PPl55lYg1kFxyeZe7Gf7373tNCFL/gIwjySJKaJMv
 R4ZKz13t5TBlmsQyCEeFlPqoELdO4pODBRB/eF/+T8gDgABW/sQvHWWN9MAKnuqW9632 xA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sj77477wh-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 22 May 2019 10:08:18 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 65C4A34;
 Wed, 22 May 2019 08:08:17 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 23F6118FC;
 Wed, 22 May 2019 08:08:13 +0000 (GMT)
Received: from SFHDAG3NODE2.st.com (10.75.127.8) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 22 May
 2019 10:08:12 +0200
Received: from SFHDAG3NODE2.st.com ([fe80::b82f:1ce:8854:5b96]) by
 SFHDAG3NODE2.st.com ([fe80::b82f:1ce:8854:5b96%20]) with mapi id
 15.00.1347.000; Wed, 22 May 2019 10:08:12 +0200
From: Amelie DELAUNAY <amelie.delaunay@st.com>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH] pinctrl: stmfx: Fix compile issue when CONFIG_OF_GPIO is
 not defined
Thread-Topic: [PATCH] pinctrl: stmfx: Fix compile issue when CONFIG_OF_GPIO is
 not defined
Thread-Index: AQHVDuDxK6HzwnJUFE6SYGi4rooWzqZ2hLKAgAAnAgA=
Date: Wed, 22 May 2019 08:08:12 +0000
Message-ID: <eb8425ec-989a-9701-7fee-61bd1d2b93c1@st.com>
References: <1558338735-8444-1-git-send-email-amelie.delaunay@st.com>
 <20190522054833.GB4574@dell>
In-Reply-To: <20190522054833.GB4574@dell>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <E9CA614ECF5A6949ACD7AA72A5C4B2BA@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-22_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_010826_083585_3DCD066E 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "kbuild-all@01.org" <kbuild-all@01.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/22/19 7:48 AM, Lee Jones wrote:
> On Mon, 20 May 2019, Amelie Delaunay wrote:
> 
>> When CONFIG_GPIO_OF is not defined, struct gpio_chip 'of_node' member does
>> not exist:
>> drivers/pinctrl/pinctrl-stmfx.c: In function 'stmfx_pinctrl_probe':
>> drivers/pinctrl/pinctrl-stmfx.c:652:17: error: 'struct gpio_chip' has no member named 'of_node'
>>       pctl->gpio_chip.of_node = np;
>>
>> Fixes: 1490d9f841b1 ("pinctrl: Add STMFX GPIO expander Pinctrl/GPIO driver")
>> Reported-by: kbuild test robot <lkp@intel.com>
>> Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
>> ---
>>   drivers/pinctrl/pinctrl-stmfx.c | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/pinctrl/pinctrl-stmfx.c b/drivers/pinctrl/pinctrl-stmfx.c
>> index eba872c..bb64aa0 100644
>> --- a/drivers/pinctrl/pinctrl-stmfx.c
>> +++ b/drivers/pinctrl/pinctrl-stmfx.c
>> @@ -648,7 +648,9 @@ static int stmfx_pinctrl_probe(struct platform_device *pdev)
>>   	pctl->gpio_chip.base = -1;
>>   	pctl->gpio_chip.ngpio = pctl->pctl_desc.npins;
>>   	pctl->gpio_chip.can_sleep = true;
>> +#ifdef CONFIG_OF_GPIO
>>   	pctl->gpio_chip.of_node = np;
>> +#endif
> 
> This is pretty ugly.  Will STMFX ever be used without OF support?  If
> not, it might be better to place this restriction on the driver as a
> whole.
> 
> Incidentally, why is this blanked out in the structure definition?
> Even 'struct device' doesn't do this.
> 
config PINCTRL_STMFX
	tristate "STMicroelectronics STMFX GPIO expander pinctrl driver"
	depends on I2C
	depends on OF || COMPILE_TEST
	select GENERIC_PINCONF
	select GPIOLIB_IRQCHIP
	select MFD_STMFX

The issue is due to COMPILE_TEST: would "depends on OF || (OF && 
COMPILE_TEST)" be better ?

>>   	pctl->gpio_chip.need_valid_mask = true;
>>   
>>   	ret = devm_gpiochip_add_data(pctl->dev, &pctl->gpio_chip, pctl);
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
