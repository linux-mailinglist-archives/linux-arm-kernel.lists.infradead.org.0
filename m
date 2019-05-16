Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DDA207DF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 15:20:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ywtU2RzITJ7I1RV6D6YZcp44Vs34EPpKInVM4p9sbTA=; b=MiemlnQBGNW8FD
	0fUFNixVkxorBIhvOhCcEc3XW8ZO/5T6hKgJ76LaYRzw/AUQ/TPQpCUeSgSVk0203tRGiKrog1sx8
	NXGbomg8ueuWe1mTQjKWsq8eJXzNb247mQFOlYNDYi89aK51qcyKEwVTLzKdrq/ZhMxjiNCnUz3S2
	DUX1QrWid3mYYamTIr//fSb+qDgNg75ko/Ag/+8Dkco8DzBlcqoO+UgYzoO61zhPRHjFb+5JDUcoi
	nx77ndrIpn4PUBSdM3Xg2vOqqGdRVZmxGL8hPa/ESIrRcZRHczN0efbbJuYVj8edwr9laiYvGTJRd
	X57+TDCGqL+LVHD6jR8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRGIx-0005nV-CJ; Thu, 16 May 2019 13:20:15 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRGIp-0005Gl-Qe
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 13:20:09 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4GDIr6G007346; Thu, 16 May 2019 15:20:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=MtuDKvN8MklsTqTwJQb+qb1nbgfCtLqblkoVlG4HJiQ=;
 b=S1uutbtAtHdUqZ6gFxAtDcx/Kz34SSD3CTbccYcx/gBuqXz8mNSRsy1Rp/07tk1f9iXD
 Dna8nd0sM1sZ+0EOGe0ktLt9df8Gk44MZiOh3lud01hdmMvFdwtbszSWMcsknoQkdmcn
 OmtXnOYZ09RMaxMgRb5iRROKNISB5heCT1QMjOfshFivnps6ck4UUAzmVKacbc3zKJBR
 tmVeP3BdL+7wAOIcMLN5+q3gFRJW7gS12W2WZewjGUmE7TGVmDMSjT7rN4/oMcUw0eDQ
 /CiUBno3cEzbyYlpGnI1/DKdtNKhrtmqdyEPk7qZcc7Mv5sekWQoG+wP6Fe+UWQtMz0/ 6w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sdkv079g6-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 16 May 2019 15:20:03 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9B46241;
 Thu, 16 May 2019 13:20:02 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6FA6B2732;
 Thu, 16 May 2019 13:20:02 +0000 (GMT)
Received: from [10.48.0.167] (10.75.127.49) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 16 May
 2019 15:20:01 +0200
Subject: Re: [PATCH] i2c: i2c-stm32f7: fix the get_irq error cases
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
References: <1557932949-15912-1-git-send-email-fabrice.gasnier@st.com>
 <366a1437-cd12-c0f9-cfa1-49b6524fdb1e@free.fr>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <e7424e17-0dec-300f-13dd-71f3725fbde1@st.com>
Date: Thu, 16 May 2019 15:20:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <366a1437-cd12-c0f9-cfa1-49b6524fdb1e@free.fr>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG4NODE1.st.com (10.75.127.10) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-16_11:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_062008_330824_92094010 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Wolfram Sang <wsa@the-dreams.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/16/19 11:22 AM, Marc Gonzalez wrote:
> On 15/05/2019 17:09, Fabrice Gasnier wrote:
> 
>> During probe, return the "get_irq" error value instead of -EINVAL which
>> allows the driver to be deferred probed if needed.
>> Fix also the case where of_irq_get() returns a negative value.
>> Note :
>> On failure of_irq_get() returns 0 or a negative value while
>> platform_get_irq() returns a negative value.
>>
>> Fixes: aeb068c57214 ("i2c: i2c-stm32f7: add driver")
>>
>> Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
>> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
>> ---
>>  drivers/i2c/busses/i2c-stm32f7.c | 26 ++++++++++++++------------
>>  1 file changed, 14 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
>> index 4284fc9..14fb105 100644
>> --- a/drivers/i2c/busses/i2c-stm32f7.c
>> +++ b/drivers/i2c/busses/i2c-stm32f7.c
>> @@ -25,7 +25,6 @@
>>  #include <linux/module.h>
>>  #include <linux/of.h>
>>  #include <linux/of_address.h>
>> -#include <linux/of_irq.h>
>>  #include <linux/of_platform.h>
>>  #include <linux/platform_device.h>
>>  #include <linux/pinctrl/consumer.h>
>> @@ -1812,15 +1811,14 @@ static struct i2c_algorithm stm32f7_i2c_algo = {
>>  
>>  static int stm32f7_i2c_probe(struct platform_device *pdev)
>>  {
>> -	struct device_node *np = pdev->dev.of_node;
>>  	struct stm32f7_i2c_dev *i2c_dev;
>>  	const struct stm32f7_i2c_setup *setup;
>>  	struct resource *res;
>> -	u32 irq_error, irq_event, clk_rate, rise_time, fall_time;
>> +	u32 clk_rate, rise_time, fall_time;
>>  	struct i2c_adapter *adap;
>>  	struct reset_control *rst;
>>  	dma_addr_t phy_addr;
>> -	int ret;
>> +	int irq_error, irq_event, ret;
>>  
>>  	i2c_dev = devm_kzalloc(&pdev->dev, sizeof(*i2c_dev), GFP_KERNEL);
>>  	if (!i2c_dev)
>> @@ -1832,16 +1830,20 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
>>  		return PTR_ERR(i2c_dev->base);
>>  	phy_addr = (dma_addr_t)res->start;
>>  
>> -	irq_event = irq_of_parse_and_map(np, 0);
>> -	if (!irq_event) {
>> -		dev_err(&pdev->dev, "IRQ event missing or invalid\n");
>> -		return -EINVAL;
>> +	irq_event = platform_get_irq(pdev, 0);
>> +	if (irq_event < 0) {
>> +		if (irq_event != -EPROBE_DEFER)
>> +			dev_err(&pdev->dev, "Failed to get IRQ event: %d\n",
>> +				irq_event);
>> +		return irq_event;
>>  	}
>>  
>> -	irq_error = irq_of_parse_and_map(np, 1);
>> -	if (!irq_error) {
>> -		dev_err(&pdev->dev, "IRQ error missing or invalid\n");
>> -		return -EINVAL;
>> +	irq_error = platform_get_irq(pdev, 1);
>> +	if (irq_error < 0) {
>> +		if (irq_error != -EPROBE_DEFER)
>> +			dev_err(&pdev->dev, "Failed to get IRQ error: %d\n",
>> +				irq_error);
>> +		return irq_error;
> 
> As far as I understand, if platform_get_irq() returns 0, that is an error
> as well.
> 
> https://patchwork.kernel.org/patch/10006651/

Hi Marc,

Thanks for pointing this out.
I'll fix it in v2, based on this, e.g. basically:
if (irq <= 0)
	return irq ? irq : -ENODEV;

Best Regards,
Fabrice

> https://yarchive.net/comp/linux/zero.html
> 
> Regards.
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
