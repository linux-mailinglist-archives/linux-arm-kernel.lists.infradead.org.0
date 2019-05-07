Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B94A916DCC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 01:21:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q8RjmXJ+NXh6fkmHji85wkEO/lwDbanBzNBP5g/bF+4=; b=QccpGGnYZSQ4ynj1bpxA5PT4s
	T6ZR3un24VUe3KUShEVw6s8snNu1Mc51/duwEQ37VoJGNHkqcL75YCprxCYpetNXBYM3WD310pURI
	rGPG/xNdOmlaD+xMCXbOtVkDYsumNF0a6NecRvGGiHP1DphLLMfwq8S+mvBE8q1nHrivjHOcSEyc7
	ZH8AxjrbfV5p2/h8/Vp8WgAMUwLxYjnG17ZyBfUJNhuRDESNRGdT2o56CrJ4hYH7TAceDWsNLJAqy
	CWmGOfi6vX2Hh2td0auUATq/qTluYBH0RRa/0XjIzOd2Oihe0yRWHn14Q4aqlSKtPqkc+iBoz6Tr4
	FxKdpFNQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO9Oc-0002NI-De; Tue, 07 May 2019 23:21:14 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO9OU-0002Mz-Um
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 23:21:08 +0000
Received: by mail-pl1-x644.google.com with SMTP id y3so8932962plp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 16:21:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+gKSlDLnDf/+lOEDDP2Iyq5/Ag+VeBN4xDo4/a6mcWE=;
 b=Xbkzd+ahKjnjPuFAeJ37rdP601/YT/yiEItlz9avQ/dyh/XWESKqPiRwDStmiiMvOB
 yIbAu0kjJffnXj83mXIhvtoAvPuBeDL21aBao0UMDM6GwGxMg6pxXEai8S5jTy87lCOy
 lTjsmDHTpCxdOAwy0O1gSpsX7pqajG+2dsaKCHBE60KaiGL0qGelg+ndUkbEW7gbuAdF
 cRC3CyIckZrtNlcgBvirZER8mKrAb2eUPtIM6feMx6wHd5BbQMYf4YL0+m0X/t4+JccH
 7Y4GE6iRpuhUkhoJpThYZPslQnXvaKYKfWxTT6rCbvQkXdzeqzpt5w2kdNRNMdkKfLK1
 PFyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+gKSlDLnDf/+lOEDDP2Iyq5/Ag+VeBN4xDo4/a6mcWE=;
 b=tQb+OAKxit8vgy6+ttew5p5O17sFR68NPwcqknkDL6PuirUIPxrpuQw5X8nD16uFeE
 dY7OKxyo8Fi2yAEIwjno4RfRP1gciXwq4GKoB7YIZkqR/92XNb+utUDBqVMUl31cSmAY
 7QYWNuwYVXHtKTTL/VxySr92DpST1SqYsIllC07Mi0BoVOz4UwnRBubTKxcWVf/sZJOC
 AcexdD0HCtt2F2EsdNLxQ+mEfvEMmcbu4LniBkqfE49WSPaaOrduGyXUp1dsNraU1llE
 kJm63PnlVbp80fk3cGUvyJcKDM4W3vV0eu6UA/KjaTErAHpRnkkyv+T6AUEpmYT9TazU
 c9zA==
X-Gm-Message-State: APjAAAUTmHQQprLFW9GEpFTbYIqEnfbjgdsIyJjSfcBnrV5lUI+P1i1C
 1NxW9Hz4qY5Sq52UFKjpBx4=
X-Google-Smtp-Source: APXvYqz93rUWqPle/G8Op3EXe4WndFHGalqvrnzO565qJxS6Yp9F+7od8crkk6C0Mm0UtjfR6LV7rA==
X-Received: by 2002:a17:902:b40b:: with SMTP id
 x11mr44424746plr.265.1557271265376; 
 Tue, 07 May 2019 16:21:05 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 g128sm20055716pfb.131.2019.05.07.16.21.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 16:21:03 -0700 (PDT)
Subject: Re: [PATCH v2 1/3] kernel: Provide a __pow10() function
To: Florian Fainelli <f.fainelli@gmail.com>
References: <20190507193504.28248-1-f.fainelli@gmail.com>
 <20190507193504.28248-2-f.fainelli@gmail.com>
 <20190507210654.GA4951@roeck-us.net>
 <b3c4fdd3-0c91-9681-e471-a9ddbbd256c8@gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <9c9d44ea-1cd2-0705-5d0f-b05af0682f90@roeck-us.net>
Date: Tue, 7 May 2019 16:21:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <b3c4fdd3-0c91-9681-e471-a9ddbbd256c8@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_162107_020023_BD0A8C85 
X-CRM114-Status: GOOD (  20.35  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "open list:HARDWARE MONITORING" <linux-hwmon@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/7/19 2:49 PM, Florian Fainelli wrote:
> On 5/7/19 2:06 PM, Guenter Roeck wrote:
>> On Tue, May 07, 2019 at 12:35:02PM -0700, Florian Fainelli wrote:
>>> Provide a simple macro that can return the value of 10 raised to a
>>> positive integer. We are going to use this in order to scale units from
>>> firmware to HWMON.
>>>
>>> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
>>> ---
>>>   include/linux/kernel.h | 11 +++++++++++
>>>   1 file changed, 11 insertions(+)
>>>
>>> diff --git a/include/linux/kernel.h b/include/linux/kernel.h
>>> index 2d14e21c16c0..62fc8bd84bc9 100644
>>> --- a/include/linux/kernel.h
>>> +++ b/include/linux/kernel.h
>>> @@ -294,6 +294,17 @@ static inline u32 reciprocal_scale(u32 val, u32 ep_ro)
>>>   	return (u32)(((u64) val * ep_ro) >> 32);
>>>   }
>>>   
>>> +/* Return in f the value of 10 raise to the power x */
>>> +#define __pow10(x, f)(					\
>>> +{							\
>>> +	typeof(x) __x = abs(x);				\
>>> +	f = 1;						\
>>> +	while (__x--)					\
>>> +		f *= 10;				\
>>> +	f;						\
>>> +}							\
>>> +)
>>
>> Kind of unusual. I would have expected to use this like
>> 	f = __pow10(x);
>> ie without having to provide f as parameter. That would be much less
>> confusing. I assume this is to make the result type independent, but
>> I am not sure if that is worth the trouble.
> 
> Correct, that was the intent here.
> 
>>
>> Are there users outside the hwmon code ? If not, it might be simpler
>> to keep it there for now.
> 
> There appears to be a few outside actually:
> 
> drivers/acpi/sbs.c::battery_scale
> drivers/iio/common/hid-sensors/hid-sensor-attributes.c::pow_10
> 
> There could be others but those two came out as obvious candidates.
> 
> Would you be okay with a local pow10 function within scmi-hwmon.c and a
> subsequent patch series providing a common function?
> 

I would prefer that, actually, to reduce dependencies.

Thanks,
Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
