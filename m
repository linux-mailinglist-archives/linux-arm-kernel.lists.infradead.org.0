Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C918A7D01
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 09:48:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Q7cp3NtMdamnJUFNzmWH6ifmUxPHpdOYjHqDetkmxo=; b=kHU1QOI7ZvgXZr
	r6F4OfLtRxCibgaQ9RJRlg47FVCK3beiaV82nIMeXDHc7wchU85n1biYMZMpoMF/ykCmXkKc8gPeN
	CCM3osn7GR6pN1/CmLtQP9kA+kSGkft44iBheFiDCjlT75Z2L/uYaV5MLjX0bwnw8c2mpSR7jC7GY
	0xOF4lgHe1LCCVFBhzK8UDQ2+ZUgQOqqiL99uKf4JKuDbOHArIQ7xWB+ke/grIwf3DZDjMacXmw3e
	gEQKuq67Ehr/2yscG6LIk1HxJSh5Pv8Yti2iZ7uq+YLmg+n4k+TTX7nvYEHAfc0Kj9+gFYtRHS+r9
	HarkyF9ejoUJhMgZnizg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Q0z-00022C-At; Wed, 04 Sep 2019 07:47:41 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Q0g-00021U-Oo
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 07:47:24 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x847bAmM000836; Wed, 4 Sep 2019 09:47:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=4UyuBYEhSmaJWCoduBpGAY7jENPHNN3jaF8lnYU4bFY=;
 b=avLB/K+6dY1CH0Jiwo9EBM5miectu4+Tap6y9Zoritd2dLPoZcLD1Dwpl8D9oCB3J2Db
 ULwNIdfpicC7HVHo8X7839kHq/yt7EGMps7uItCDQFhABO5T6SM0VM/HE5tEvjtjdO9p
 /3BU6I0Qkgfc/iYkWYvRFBsws+mOklltKTUGZzlqmiXGGtJUdUrx3RJdOjsFqrfh60Ur
 SDLYlCTnRnBPUaVfoL81ZPNOg83zjEzLqE+B+iUi+5m/csvhwPx/ECXDhLx2k/TxaihG
 uLnV0r/Ixi7nnpAKDgedAU6gZyF0pwLsBMmD914k4waeTETbLoP5koubBxysrtTNg/z4 jQ== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx08-00178001.pphosted.com with ESMTP id 2uqe19r07v-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 04 Sep 2019 09:47:17 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 7F74E54;
 Wed,  4 Sep 2019 07:47:09 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node2.st.com [10.75.127.14])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 35A4A2BA693;
 Wed,  4 Sep 2019 09:47:09 +0200 (CEST)
Received: from [10.48.1.93] (10.75.127.45) by SFHDAG5NODE2.st.com
 (10.75.127.14) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 4 Sep
 2019 09:47:08 +0200
Subject: Re: [PATCH] i2c: stm32f7: Make structure stm32f7_i2c_algo constant
To: Wolfram Sang <wsa@the-dreams.de>, Nishka Dasgupta
 <nishkadg.linux@gmail.com>
References: <20190815055857.1944-1-nishkadg.linux@gmail.com>
 <20190903180552.GI2171@ninjato>
From: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
Message-ID: <662b171f-37e2-f58e-3e05-41a52737b1f3@st.com>
Date: Wed, 4 Sep 2019 09:47:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190903180552.GI2171@ninjato>
Content-Language: en-US
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG7NODE1.st.com (10.75.127.19) To SFHDAG5NODE2.st.com
 (10.75.127.14)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-04_01:2019-09-03,2019-09-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_004723_276930_7FB53A7E 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Wolfram

Sorry for the delay.

Acked-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>

BR

On 9/3/19 8:05 PM, Wolfram Sang wrote:
> On Thu, Aug 15, 2019 at 11:28:57AM +0530, Nishka Dasgupta wrote:
>> Static structure stm32f7_i2c_algo, of type i2c_algorithm, is used only
>> when it is assigned to constant field algo of a variable having type
>> i2c_adapter. As stm32f7_i2c_algo is therefore never modified, make it
>> const as well to protect it from unintended modification.
>> Issue found with Coccinelle.
>>
>> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
>> ---
> 
> Are you guys okay with this patch?
> 
>>  drivers/i2c/busses/i2c-stm32f7.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
>> index 266d1c269b83..d36cf08461f7 100644
>> --- a/drivers/i2c/busses/i2c-stm32f7.c
>> +++ b/drivers/i2c/busses/i2c-stm32f7.c
>> @@ -1809,7 +1809,7 @@ static u32 stm32f7_i2c_func(struct i2c_adapter *adap)
>>  		I2C_FUNC_SMBUS_I2C_BLOCK;
>>  }
>>  
>> -static struct i2c_algorithm stm32f7_i2c_algo = {
>> +static const struct i2c_algorithm stm32f7_i2c_algo = {
>>  	.master_xfer = stm32f7_i2c_xfer,
>>  	.smbus_xfer = stm32f7_i2c_smbus_xfer,
>>  	.functionality = stm32f7_i2c_func,
>> -- 
>> 2.19.1
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
