Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0310CDC63
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 09:31:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0eUzGD7IQ3npM81snVjf2qBho72kSpCoUDec8y6kVI=; b=cmGKSGTNVk9sTh
	nAPxZAYx0lOXL43NK0kdKDYMIfWTpXMSRilBPl0gFfksoWIDF28FYS8RVOabONFq28xcnj0Vo1Hpc
	Bqf0TzNpLRMwpZ+ZXLUG7ME4lgSalkXEEPiCulskqtXcn2Gmsr4idyreCIiq9nANKab79dTIDdBS5
	ZJGfQqVQhJ7eg81kQsRG1MM4cchFYn0emqF7/iSGJtTaMrCodwxmYWUB7YFb3uLakltfeMYR+/xJO
	2EkZcAv2bDQ9aDDBLNI7gVBm/IhmSjIXLZTMsF+GVkYOPUF4LOlycOEr1Rr5kOZHDYRshcOIzy6tq
	5uDdZWaZsRxg2zc0DjUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHNUP-0002mV-ST; Mon, 07 Oct 2019 07:31:29 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHNUI-0002km-OM
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 07:31:24 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x977RFgY014524; Mon, 7 Oct 2019 09:31:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=m0wVzPPVZI5zTvNlb362SfLUY82UVnwf8TmB+ThZU2M=;
 b=qA1R/5kuWiNjTVm2AL6IlnTYnyJD3Jpq5RZNMd0yJMMachZ1XA10EeBMVtdcM/t2aI66
 Ou3lY80QKehIIsesQzTdbHF1WCMwSoTGX1wrsppreGXDtT2MroJpcDwGob75bEce9LAm
 HZFHCSyFuTprnfrqMSlhsKd4YYFIF1CC+dPM0X59g8LfSKuxwhj5+t17pyQpMnwQbsDB
 npQB7thmZeJBzSFn3zvSmX36l45BSC57YK7Re1JlWOdiTqfo9k7MYbpLLT4F94+Z5c0S
 qKlHIT0OICM4neM9QAUb1cOy4AdMq+EHg/kJvjxnx7icHimVFuMfpCIdNBPf/VbZiA94 yQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vej2p0rsb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2019 09:31:14 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5D083100038;
 Mon,  7 Oct 2019 09:31:12 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4717C2AECA9;
 Mon,  7 Oct 2019 09:31:12 +0200 (CEST)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.46) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 7 Oct 2019
 09:31:12 +0200
Received: from [10.48.0.192] (10.48.0.192) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0;
 Mon, 7 Oct 2019 09:31:11 +0200
Subject: Re: [PATCH] counter: stm32: clean up indentation issue
To: William Breathitt Gray <vilhelm.gray@gmail.com>
References: <20190925095126.20219-1-colin.king@canonical.com>
 <20191005173004.GA7431@icarus>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <792dd11a-ae78-c4a3-834f-b1f67a750a14@st.com>
Date: Mon, 7 Oct 2019 09:31:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191005173004.GA7431@icarus>
Content-Language: en-US
X-Originating-IP: [10.48.0.192]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-07_01:2019-10-03,2019-10-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_003123_160891_F47EC8EA 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, linux-iio@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Colin King <colin.king@canonical.com>,
 linux-stm32@st-md-mailman.stormreply.com, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/5/19 7:30 PM, William Breathitt Gray wrote:
> On Wed, Sep 25, 2019 at 10:51:26AM +0100, Colin King wrote:
>> From: Colin Ian King <colin.king@canonical.com>
>>
>> There is an if statement that is indented one level too deeply,
>> remove the extraneous tabs.
>>
>> Signed-off-by: Colin Ian King <colin.king@canonical.com>
>> ---
>>  drivers/counter/stm32-timer-cnt.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/counter/stm32-timer-cnt.c b/drivers/counter/stm32-timer-cnt.c
>> index 644ba18a72ad..613dcccf79e1 100644
>> --- a/drivers/counter/stm32-timer-cnt.c
>> +++ b/drivers/counter/stm32-timer-cnt.c
>> @@ -219,8 +219,8 @@ static ssize_t stm32_count_enable_write(struct counter_device *counter,
>>  
>>  	if (enable) {
>>  		regmap_read(priv->regmap, TIM_CR1, &cr1);
>> -			if (!(cr1 & TIM_CR1_CEN))
>> -				clk_enable(priv->clk);
>> +		if (!(cr1 & TIM_CR1_CEN))
>> +			clk_enable(priv->clk);
>>  
>>  		regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN,
>>  				   TIM_CR1_CEN);
>> -- 
>> 2.20.1
> 
> Acked-by: William Breathitt Gray <vilhelm.gray@gmail.com>
> 
> Fabrice,
> 
> I noticed the TIM_CR1_CEN check is happening before the
> regmap_update_bits call for the enable path, while the disable path does
> the check after. Is this logic is correct.

Hi  William,

In the disable path, things are done in the reverse order, purpose is to:
- enable the clock before enabling the counter (CEN)
- disable the clock after the counter has been disabled
Current code also takes care of balancing clock enable/disable calls.

BR,
Fabrice
> 
> William Breathitt Gray
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
