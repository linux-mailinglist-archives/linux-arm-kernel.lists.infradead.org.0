Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D8156BB9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 16:18:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8L9u1Y1BDk7HPd/89t/FZgGnJtK/8jRD7iat6RNrkl4=; b=lhnEVdwarATgKp
	gif53sVwCE4mo1ov2roFAAmCyhs3AO8XJvf0Tw++xKiXSsptsV0N07m/J6LUXxv1gpLIpd4cguDLZ
	78zNWgjEibQHDkVygGi5J8rnZZTUX7fcH1ezGeFpQluaHX3YOHMHjQ6RUuDfMkG+TVP3NGVUpuw+K
	NkJnAWq73S/LA9Jpzqi9l+8VeL8H+pmBIwlmG3xtGPSpAUjX/T0XiOOY+eak6FKgURggv1RWGu9Ks
	9iczlD93HhnDEL3DlGjk1qHSz/NI5ugGpOO6pgNPOzos8efmwN/1r1wIrzApRnOzb5TNw1mwY3wOv
	k4OUIEoI05GUbzhXB39Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg8kI-0007KB-N8; Wed, 26 Jun 2019 14:17:58 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg8hR-0004Pf-I8
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 14:15:04 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5QE6Sop016102; Wed, 26 Jun 2019 16:14:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=WC3M5mQ7yREfwEdPV7kKxdDvvWYQOrxeml4zeAizf3M=;
 b=M9CdTU8a0eBLpab+3SnE9feWBOzkHJz2OpdgAtiDVRsmMHTMNeiieG0WPOZBMIuYFyCL
 q6/wC7J7y56YYd0k6d3j9YGQeTZJT1C4lJ6NmFjeJfSV5QMi/5BM5kJNHydg3TjkXoCq
 BDmV5tw2+fUgj3bYHtiwLPpKanLNjNJSIshsjY6wckQNSWqkx9rYyZ6eTamZDhi7sORk
 1CEC7Nx8Qqlw9KR3G9NLe5Sj9hmcigDw/v4/KjTNeMTrLSfH4Mqcaxd4yv9SDROw13nF
 4uLWLOMc+f6W+ReEtzGIdSuk/2slqfP0TSWIaM+bQBx9dX3DjDr1xPG9kCTiSRyuxVZ0 Hg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t9d2ggnvf-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 26 Jun 2019 16:14:56 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EB3E038;
 Wed, 26 Jun 2019 14:14:54 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node2.st.com [10.75.127.14])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BA4712A63;
 Wed, 26 Jun 2019 14:14:54 +0000 (GMT)
Received: from [10.48.1.93] (10.75.127.51) by SFHDAG5NODE2.st.com
 (10.75.127.14) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 26 Jun
 2019 16:14:53 +0200
Subject: Re: [PATCH] i2c: i2c-stm32f7: Add I2C_SMBUS_I2C_BLOCK_DATA support
To: Wolfram Sang <wsa@the-dreams.de>, Fabrice Gasnier <fabrice.gasnier@st.com>
References: <1559654451-26612-1-git-send-email-fabrice.gasnier@st.com>
 <20190626134535.GN801@ninjato>
From: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
Message-ID: <762d7038-62e5-4192-e471-e18194e528f9@st.com>
Date: Wed, 26 Jun 2019 16:14:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190626134535.GN801@ninjato>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG8NODE1.st.com (10.75.127.22) To SFHDAG5NODE2.st.com
 (10.75.127.14)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-26_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_071502_315740_A8B2998C 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 KHOP_DYNAMIC           Relay looks like a dynamic address
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

Hi

I looks good to me

Reviewed-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>

Thx

On 6/26/19 3:45 PM, Wolfram Sang wrote:
> On Tue, Jun 04, 2019 at 03:20:51PM +0200, Fabrice Gasnier wrote:
>> This patch adds the support of I2C_SMBUS_I2C_BLOCK_DATA transaction type
>> for the stm32f7 SMBUS Controller.
>> Use emulated I2C_SMBUS_I2C_BLOCK_DATA transactions as there is no specific
>> hardware in STM32 I2C to manage this (e.g. like no need for PEC here).
>> Emulated transfer will fall back calling i2c transfer method where there's
>> already support for DMAs for example.
>> So, use the I2C_FUNC_SMBUS_I2C_BLOCK in stm32f7_i2c_func(), and rely on
>> emulated transfer by returning -EOPNOTSUPP in the smbus_xfer() routine
>> for such a case.
>>
>> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> 
> Maintainers?
> 
>> ---
>>  drivers/i2c/busses/i2c-stm32f7.c | 6 +++++-
>>  1 file changed, 5 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
>> index 48337be..68a751e 100644
>> --- a/drivers/i2c/busses/i2c-stm32f7.c
>> +++ b/drivers/i2c/busses/i2c-stm32f7.c
>> @@ -953,6 +953,9 @@ static int stm32f7_i2c_smbus_xfer_msg(struct stm32f7_i2c_dev *i2c_dev,
>>  		cr2 &= ~STM32F7_I2C_CR2_RD_WRN;
>>  		f7_msg->read_write = I2C_SMBUS_READ;
>>  		break;
>> +	case I2C_SMBUS_I2C_BLOCK_DATA:
>> +		/* Rely on emulated i2c transfer (through master_xfer) */
>> +		return -EOPNOTSUPP;
>>  	default:
>>  		dev_err(dev, "Unsupported smbus protocol %d\n", f7_msg->size);
>>  		return -EOPNOTSUPP;
>> @@ -1803,7 +1806,8 @@ static u32 stm32f7_i2c_func(struct i2c_adapter *adap)
>>  		I2C_FUNC_SMBUS_QUICK | I2C_FUNC_SMBUS_BYTE |
>>  		I2C_FUNC_SMBUS_BYTE_DATA | I2C_FUNC_SMBUS_WORD_DATA |
>>  		I2C_FUNC_SMBUS_BLOCK_DATA | I2C_FUNC_SMBUS_BLOCK_PROC_CALL |
>> -		I2C_FUNC_SMBUS_PROC_CALL | I2C_FUNC_SMBUS_PEC;
>> +		I2C_FUNC_SMBUS_PROC_CALL | I2C_FUNC_SMBUS_PEC |
>> +		I2C_FUNC_SMBUS_I2C_BLOCK;
>>  }
>>  
>>  static struct i2c_algorithm stm32f7_i2c_algo = {
>> -- 
>> 2.7.4
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
