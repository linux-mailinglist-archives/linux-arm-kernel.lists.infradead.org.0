Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEEC9E3995
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 19:13:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=seLMSFDhwpWyW0m4iMVAxRZX6JZeQXGF8VAwIN2LRpY=; b=Yga2aNmRAta7wL
	ZmmK6SZpigZFqLP8Hu3fFmxLB3C+mqSTDE43tCHIDccCzHyFOUWl5qJCQ2lT7OtfN3IRy1I0/U3lT
	7fImFYpY1j+cUWACJtZyaA8r8teJH3H+nIfJMtdM3hxmcvXQF81JdX38rJ5eRzux4qP1PloNu/gzO
	urDR2uh8Q2N5wH/HrVsLSQp3JMhys3gakrPdGUb68i8lkq1HyH+2vQoXWmFlXMoWBnRYsxnjq0g+z
	M7fynif2zk+4b13nJR9lHaHPNnWWm3cy5Fcn1nmdTDn20aDk1W2IBfeQFkSj9EaM9PJHvIW1zHHmj
	q2VNYYtgAqMeY7/r3amg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNgg2-0000Kx-2A; Thu, 24 Oct 2019 17:13:34 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNgfp-0000KK-Ri
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 17:13:23 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5db1dbba0002>; Thu, 24 Oct 2019 10:13:30 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 24 Oct 2019 10:13:21 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 24 Oct 2019 10:13:21 -0700
Received: from DRHQMAIL107.nvidia.com (10.27.9.16) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 24 Oct
 2019 17:13:20 +0000
Received: from [10.21.133.51] (172.20.13.39) by DRHQMAIL107.nvidia.com
 (10.27.9.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 24 Oct
 2019 17:13:18 +0000
Subject: Re: [PATCH] spi: Fix SPI_CS_HIGH setting when using native and GPIO CS
To: Gregory CLEMENT <gregory.clement@bootlin.com>, Mark Brown
 <broonie@kernel.org>, <linux-spi@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20191018152929.3287-1-gregory.clement@bootlin.com>
 <dfabf9eb-4f81-91e5-55dc-caea0cdabd2d@nvidia.com> <87zhhqp4wf.fsf@FE-laptop>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <4be58f82-eeb1-83a5-4c83-1e86f3b82769@nvidia.com>
Date: Thu, 24 Oct 2019 18:13:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <87zhhqp4wf.fsf@FE-laptop>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 DRHQMAIL107.nvidia.com (10.27.9.16)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1571937210; bh=IGHxywHeWHbvWN/dGZiODRU1Pgz0qNdz6PS2iL/zybc=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=MM/18hyCWxGXMxY6YT9ReV/7/ZgXYKVgBZMHvbH4pc2hpiV43cLaFtS00fWFPWRDL
 erOSBvWRwITrxAmnu2xrjxMScAx1CyoARtjFmjxmuecIcturc7XchVXhRhRHkK1EhZ
 RUa/+fsDshDTE0sfaPU98V/ztsOr5bWkKCNLPzlDx2xEQGuwFGCB4vYCaWyOgFVAze
 b2qg3RWIFVcZwaqmRVm02T8T6xHLsg6CP2Bvz7tZfhgr3LQRfn9Mq1vr652b1mczLM
 t3YFFCZdh8Yaz054QJzum2+fA47872r3mtNIn1caKFtR/05p0aoV4hRfHuuav11qYR
 4tTyid1yiKBpQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_101321_916782_44A34F95 
X-CRM114-Status: GOOD (  18.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, stable@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 24/10/2019 15:57, Gregory CLEMENT wrote:
> Hello Jon,
> 
>> On 18/10/2019 16:29, Gregory CLEMENT wrote:
>>> When improving the CS GPIO support at core level, the SPI_CS_HIGH
>>> has been enabled for all the CS lines used for a given SPI controller.
>>>
>>> However, the SPI framework allows to have on the same controller native
>>> CS and GPIO CS. The native CS may not support the SPI_CS_HIGH, so they
>>> should not be setup automatically.
>>>
>>> With this patch the setting is done only for the CS that will use a
>>> GPIO as CS
>>>
>>> Fixes: f3186dd87669 ("spi: Optionally use GPIO descriptors for CS GPIOs")
>>> Cc: <stable@vger.kernel.org>
>>> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
>>> ---
>>>  drivers/spi/spi.c | 18 +++++++++---------
>>>  1 file changed, 9 insertions(+), 9 deletions(-)
>>>
>>> diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
>>> index 5414a10afd65..1b68acc28c8f 100644
>>> --- a/drivers/spi/spi.c
>>> +++ b/drivers/spi/spi.c
>>> @@ -1880,15 +1880,7 @@ static int of_spi_parse_dt(struct spi_controller *ctlr, struct spi_device *spi,
>>>  		spi->mode |= SPI_3WIRE;
>>>  	if (of_property_read_bool(nc, "spi-lsb-first"))
>>>  		spi->mode |= SPI_LSB_FIRST;
>>> -
>>> -	/*
>>> -	 * For descriptors associated with the device, polarity inversion is
>>> -	 * handled in the gpiolib, so all chip selects are "active high" in
>>> -	 * the logical sense, the gpiolib will invert the line if need be.
>>> -	 */
>>> -	if (ctlr->use_gpio_descriptors)
>>> -		spi->mode |= SPI_CS_HIGH;
>>> -	else if (of_property_read_bool(nc, "spi-cs-high"))
>>> +	if (of_property_read_bool(nc, "spi-cs-high"))
>>>  		spi->mode |= SPI_CS_HIGH;
>>>  
>>>  	/* Device DUAL/QUAD mode */
>>> @@ -1952,6 +1944,14 @@ static int of_spi_parse_dt(struct spi_controller *ctlr, struct spi_device *spi,
>>>  	}
>>>  	spi->chip_select = value;
>>>  
>>> +	/*
>>> +	 * For descriptors associated with the device, polarity inversion is
>>> +	 * handled in the gpiolib, so all gpio chip selects are "active high"
>>> +	 * in the logical sense, the gpiolib will invert the line if need be.
>>> +	 */
>>> +	if ((ctlr->use_gpio_descriptors) && ctlr->cs_gpiods[spi->chip_select])
>>> +		spi->mode |= SPI_CS_HIGH;
>>> +
>>
>> This patch is causing a boot regression on one of our Tegra boards. 
>> Bisect is pointing to this commit and reverting on top of today's -next
>> fixes the problem. 
>>
>> This patch is causing the following NULL pointer crash which I assume is
>> because we have not checked if 'ctlr->cs_gpiods' is valid before
>> dereferencing ...
> 
> I've just submitted a fixe for it
> 
> https://patchwork.kernel.org/patch/11209839/

Great! Thanks, Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
