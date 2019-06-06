Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2C536A28
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 04:52:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yhJQyhfu5qZRKGA5f/rBHCdS3tQxCcdj6KjE0SA1UNM=; b=ZZm7Xx3B4b95J1
	JFPv8uvk3dJoB8zQm5vcQHH0eVbnN26jTYAR61HuknpVrWvstqLmu/MUR1Bx4ntJCfpMCsWr7piD8
	SZka3WldnA1SG/wos8cQNVyhh5vOTCEeaLer+VC0k71lYlS3FcOVptH/u8aqQJS65QYkZu+E844A8
	4TwF7xTA0JYqnLrJzaj9DOdDLUSZ2TvTdyh3M/RIcnI4OXKe3RFJpOc7HSCgu3y3cD7PXImMQyClJ
	MWszmsKZ+VdbtVqaQI6gZt7qJnhDiwFUh8SdoirQuG/ImcI4+XP5jJ4Nak3P06kHct/6EWj/wmGsT
	K7BEztNGBmHdDxbZvi8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYiVZ-0006Ik-Nm; Thu, 06 Jun 2019 02:52:05 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYiVR-0006Ht-JD
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 02:51:59 +0000
Received: by mail-pf1-x442.google.com with SMTP id a23so541882pff.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 19:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wq0lK3Zs3odh/+c4J9zbeW7G1JU08TzCFECFGMK2fpY=;
 b=e8Np/LZTxQzD/6Uh6Q79/22rjVc7dtqAMeruis+e24ETjCOyOqY6ecBisx2Z8W1unm
 k47XZpTffFxMkYmLaPOeqvqbYTalqof6nyRnL8dpP7zRX+eYI4aZ/re3P9Ca7In5beUf
 ilh7VWBJie9rqLtFkT2NJSAPQR7bN5mSIkDXcY8aS8qTBXQ3ldecMPKcZBKBILi2uxUa
 r6KUo3ctYg0jlbq1FO46N7WaoJLY2mDq90Uc4gWae88xE/9rJrxz/LgJ6kdZFzFTRyBg
 qcanDnpm4YxMpfNZNBwzIUb4Uo57RYsD8T/xOsM2Z4zoCULBgJBsRSQEj7hjN9db2z5W
 1FjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wq0lK3Zs3odh/+c4J9zbeW7G1JU08TzCFECFGMK2fpY=;
 b=sW0qXYOATTvSjaG/epNEvycOoEBo4iphZLhnXwuBPkF9COTWPB+UVsm1Fh6GPh9ldT
 u3fdj0lfUztCX6xYXvh4iymTAWHPziNus2rd3r1DEkuTSy2DI/yqyg98DrcRhc2g3+aE
 bqrXv2IiT41p9qlyDPhCxTmTg2gjBXo9PS3flgg7ejA/lxP96A6F/9kB9xY37rGEDEOL
 XjstkQzQto2yeyoSpBURmAQvY5C3lglBDi4PhApwKamgjCCqgSCOgMIU5cDhO/vwDLOC
 rLLvhi7kFXAVTuJprVFH2XwqnsgUTCwubw+mUNazPTYBc1AQcZJ5ScSDM8bjGu7J8hqo
 J05Q==
X-Gm-Message-State: APjAAAV/3BMsevYr3fFbRQVtWrS6eqXvtqO6Rb/08Mf7gStQ72p8/C4i
 AD+rA7x1ozX5WSg5bR189KA=
X-Google-Smtp-Source: APXvYqzHvWobJ+2GneUHS2Wl7McaI0UKtgaYOo1NjVHeXyz1XitFnoDHRCR0oSuvRLB3klf2hfefAg==
X-Received: by 2002:a17:90a:cf0b:: with SMTP id
 h11mr41868070pju.90.1559789515484; 
 Wed, 05 Jun 2019 19:51:55 -0700 (PDT)
Received: from [192.168.1.3] (ip68-101-123-102.oc.oc.cox.net. [68.101.123.102])
 by smtp.gmail.com with ESMTPSA id h14sm242352pgj.8.2019.06.05.19.51.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 19:51:54 -0700 (PDT)
Subject: Re: [PATCH V2 1/2] DT: mailbox: add binding doc for the ARM SMC
 mailbox
To: Andre Przywara <andre.przywara@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-2-peng.fan@nxp.com>
 <ae4c79f0-4aec-250e-e312-20aba5554665@gmail.com>
 <20190603165651.GA12196@e107155-lin>
 <20190603181856.34996aaa@donnerap.cambridge.arm.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <19931084-8b12-c510-8856-5cc869e4f9ff@gmail.com>
Date: Wed, 5 Jun 2019 19:51:52 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190603181856.34996aaa@donnerap.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_195157_679103_951E568C 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, peng.fan@nxp.com,
 festevam@gmail.com, jassisinghbrar@gmail.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 van.freenix@gmail.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/3/2019 10:18 AM, Andre Przywara wrote:
> On Mon, 3 Jun 2019 17:56:51 +0100
> Sudeep Holla <sudeep.holla@arm.com> wrote:
> 
> Hi,
> 
>> On Mon, Jun 03, 2019 at 09:22:16AM -0700, Florian Fainelli wrote:
>>> On 6/3/19 1:30 AM, peng.fan@nxp.com wrote:  
>>>> From: Peng Fan <peng.fan@nxp.com>
>>>>
>>>> The ARM SMC mailbox binding describes a firmware interface to trigger
>>>> actions in software layers running in the EL2 or EL3 exception levels.
>>>> The term "ARM" here relates to the SMC instruction as part of the ARM
>>>> instruction set, not as a standard endorsed by ARM Ltd.
>>>>
>>>> Signed-off-by: Peng Fan <peng.fan@nxp.com>
>>>> ---
>>>>
>>>> V2:
>>>> Introduce interrupts as a property.
>>>>
>>>> V1:
>>>> arm,func-ids is still kept as an optional property, because there is no
>>>> defined SMC funciton id passed from SCMI. So in my test, I still use
>>>> arm,func-ids for ARM SIP service.
>>>>
>>>>  .../devicetree/bindings/mailbox/arm-smc.txt        | 101 +++++++++++++++++++++
>>>>  1 file changed, 101 insertions(+)
>>>>  create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.txt
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.txt b/Documentation/devicetree/bindings/mailbox/arm-smc.txt
>>>> new file mode 100644
>>>> index 000000000000..401887118c09
>>>> --- /dev/null
>>>> +++ b/Documentation/devicetree/bindings/mailbox/arm-smc.txt
>>>> @@ -0,0 +1,101 @@  
>>
>> [...]
>>
>>>> +Optional properties:
>>>> +- arm,func-ids		An array of 32-bit values specifying the function
>>>> +			IDs used by each mailbox channel. Those function IDs
>>>> +			follow the ARM SMC calling convention standard [1].
>>>> +			There is one identifier per channel and the number
>>>> +			of supported channels is determined by the length
>>>> +			of this array.
>>>> +- interrupts		SPI interrupts may be listed for notification,
>>>> +			each channel should use a dedicated interrupt
>>>> +			line.  
>>>
>>> I would not go about defining a specific kind of interrupt, since SPI is
>>> a GIC terminology, this firmware interface could be used in premise with
>>> any parent interrupt controller, for which the concept of a SPI/PPI/SGI
>>> may not be relevant.
>>>  
>>
>> While I agree the binding document may not contain specifics, I still
>> don't see how to use SGI with this. Also note it's generally reserved
>> for OS future use(IPC) and using this for other than IPC may be bit
>> challenging IMO. It opens up lots of questions.
> 
> Well, a PPI might be possible to use, although it's somewhat dodgy to hijack the GIC's (re-)distributor from EL3 to write to GICD_ISPENDR<n>. Need to ask Marc about his feelings towards this. But it's definitely possible from a hypervisor to inject arbitrary interrupts into a guest.
> 
> But more importantly: is there any actual reason this needs to be a GIC interrupt? If I understand the code correctly, this could just be any interrupt, including one of an interrupt combiner or a GPIO chip. So why not just use the standard wording of: "exactly one interrupt specifier for each channel"?

That was my point, I am not stuck on using an SGI, or PPI, or anything
(even if that's what we have been using at the moment), any interrupt
would/should do here so the wording should be exactly as you indicated.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
