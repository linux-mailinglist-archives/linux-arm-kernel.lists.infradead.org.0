Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4628E17FD5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 20:35:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E9w/5mVf4umOgDVNbyiBwkkNQgL05mEgrIm13xLnPv4=; b=BkmNnGkgPaRY0H
	BuhVVUwnoaLNxKZGYLB78LbcSjldFqrwzb+IxlpEmVk9JJmt9eXFiMHXY8qyntW2T43dNJcDSbOAT
	Lh4G+7CmprjK4Go1WFmG/mbF9CzDx7zHlftLtCR76rCuUu05qc8+2QI1mMF9+R47cmLNgkBD1dv1u
	lV5hIOlNBBaQF4wUjlsiyB6p7km6JjJDjrJRxT7fdD6d/vSF2VBCnG9sF81Nmpv3alKCx+X4+EjQO
	7cjd+ZL6VqLh4f/EIIf5GbBnlpj8eZYtcA58Axm6WXuB4ysPvVx4o/3qwiHNYfk0KixB3w16q8oqd
	uIFqwYOdy+Ddsxucbk3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hORPO-0003rD-Il; Wed, 08 May 2019 18:35:14 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hORPF-0003GW-2a
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 18:35:06 +0000
Received: by mail-wm1-x341.google.com with SMTP id y5so4496972wma.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 11:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=r53KqvTNyEHbPl5nloYyer+QIoI+IFnuUH0wD3K1oy8=;
 b=gUJhOuZFLpRNADsaIZbp942bQ0JUAw6ZFCf/VSFu3z3h2PTxCGBiQaBmTpfiq5JFqx
 ezScvdMJpLTajavg3S5sBnwAHau4c52XJUYpKeQIUaSOmrDDZevv5kAZqECW1EMQPnTh
 3D6vgw9oSrPDuxQt9Y+IrGPyW8I89DEyGB8wK26inXLLJAwvamBLJhDtt8BqqXYrBgfI
 qzh8Q+ASrzTeRxySt03beKz9eg5peYpgDyBPdLeSDhrKcRI0Qba+h7a4QL8BE5Sn9CY4
 ixoX6Bc72zc49HV7kKIuPXJ3WaNrNK5WV52okARQQRac1DVhh6z/TWpMFyI4y5vvt9Mj
 X+/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=r53KqvTNyEHbPl5nloYyer+QIoI+IFnuUH0wD3K1oy8=;
 b=gRFlclJlFqCHjFyiSRObXDRbXq4dZKYi/XQzTLX7RqqJ/MGG2Sg9qCu7yGGxqHb2yN
 lgzUBgHoDEIlQ2MHCr8inyGKUML8Sa/3BQIleaYqnT6Zs0cuMlRPM8PlEHErTJm14MI5
 fXX/2etMFwX42Vpw/9cDIMi9mXzcrJ4Bq3yTSMD7T5CK0PJR0sOdtbCglZ+TMC3VP7gg
 Agz02pcgxli6TdixxA583ZjQA8sEUL3rZnASJEnmbWBcAcfdaX1qlBVkGvbmADG+8TAb
 lhLMWg4ZwUnlIX38ULV4sNLHenZgnhLtu+6L9Wa7PEkdOgNfIFrfO9Vckke1D6kqZQ7n
 2TdA==
X-Gm-Message-State: APjAAAVTRXngETNfGaadqPiQHQwea+DYM6l3aAuYPRyr76S0YYrFUhPX
 LFpWxghG2ED8lizE5t2qJEg=
X-Google-Smtp-Source: APXvYqzwznexwK+fW8WLQHIFh3JB3tGy6hPmrg+tLff4wubfkMtPyko/oOXPUzHG+ycqGPuZeB3UHw==
X-Received: by 2002:a1c:43c2:: with SMTP id q185mr4201082wma.53.1557340502937; 
 Wed, 08 May 2019 11:35:02 -0700 (PDT)
Received: from [10.67.49.27] ([192.19.223.250])
 by smtp.googlemail.com with ESMTPSA id v189sm6006306wma.3.2019.05.08.11.34.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 11:35:01 -0700 (PDT)
Subject: Re: [PATCH v4 2/2] hwmon: scmi: Scale values to target desired HWMON
 units
To: Guenter Roeck <linux@roeck-us.net>, Florian Fainelli <f.fainelli@gmail.com>
References: <20190508170035.19671-1-f.fainelli@gmail.com>
 <20190508170035.19671-3-f.fainelli@gmail.com>
 <20190508183244.GA25133@roeck-us.net>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <258aec23-055b-61c2-c0f6-2ff1abc006cd@gmail.com>
Date: Wed, 8 May 2019 11:34:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190508183244.GA25133@roeck-us.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_113505_129036_5E2B2068 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:HARDWARE MONITORING" <linux-hwmon@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/8/19 11:32 AM, Guenter Roeck wrote:
> Hi Florian,
> 
> On Wed, May 08, 2019 at 10:00:35AM -0700, Florian Fainelli wrote:
>> If the SCMI firmware implementation is reporting values in a scale that
>> is different from the HWMON units, we need to scale up or down the value
>> according to how far appart they are.
>>
>> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
>> ---
>>  drivers/hwmon/scmi-hwmon.c | 46 ++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 46 insertions(+)
>>
>> diff --git a/drivers/hwmon/scmi-hwmon.c b/drivers/hwmon/scmi-hwmon.c
>> index a80183a488c5..4399372e2131 100644
>> --- a/drivers/hwmon/scmi-hwmon.c
>> +++ b/drivers/hwmon/scmi-hwmon.c
>> @@ -7,6 +7,7 @@
>>   */
>>  
>>  #include <linux/hwmon.h>
>> +#include <linux/limits.h>
>>  #include <linux/module.h>
>>  #include <linux/scmi_protocol.h>
>>  #include <linux/slab.h>
>> @@ -18,6 +19,47 @@ struct scmi_sensors {
>>  	const struct scmi_sensor_info **info[hwmon_max];
>>  };
>>  
>> +static inline u64 __pow10(u8 x)
>> +{
>> +	u64 r = 1;
>> +
>> +	while (x--)
>> +		r *= 10;
>> +
>> +	return r;
>> +}
>> +
>> +static int scmi_hwmon_scale(const struct scmi_sensor_info *sensor, u64 *value)
>> +{
>> +	s8 scale = sensor->scale;
>> +	u64 f;
>> +
>> +	switch (sensor->type) {
>> +	case TEMPERATURE_C:
>> +	case VOLTAGE:
>> +	case CURRENT:
>> +		scale += 3;
>> +		break;
>> +	case POWER:
>> +	case ENERGY:
>> +		scale += 6;
>> +		break;
>> +	default:
>> +		break;
>> +	}
>> +
>> +	f = __pow10(abs(scale));
>> +	if (f == U64_MAX)
>> +		return -E2BIG;
> 
> Unfortunately that is not how integer overflows work.
> 
> A test program with increasing values of scale reports:
> 
> 0: 1
> ...
> 18: 1000000000000000000
> 19: 10000000000000000000
> 20: 7766279631452241920
> 21: 3875820019684212736
> 22: 1864712049423024128
> 23: 200376420520689664
> 24: 2003764205206896640
> ...
> 61: 11529215046068469760
> 62: 4611686018427387904
> 63: 9223372036854775808
> 64: 0
> ...
> 
> You'll have to check for abs(scale) > 19 if you want to report overflows.

Yes silly me, my test program was flawed, thanks for pointing out that.
You are okay with returning E2BIG when we overflow?
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
