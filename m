Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 729112BA8C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 21:11:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Y7lQ2rIXXh/p6vhfMJw4vJRbymq39dZcxANXP3S3fA=; b=VT5Lj0Mmws52nu
	6U7tyt9tTrSPbL5k5N0qYSEdVKD2xRRvdk+KiyK5vk5+ajBQVsUkDDmvpv/mRexABRignj0gJpKkU
	6pn4v6rjs69ZmJMgbvK1FrHgfkRmFkgK3hAv/2mBRz9nI1s0Tk0Acu1goAXdrsjLCoWhHc7xNqhoR
	AOlIuPYRdwcGG5JzHveosQeaNCyq+Tf3pifwkbbPfGKoFZNUFrR3+ZsHKftFqHlQLpH/nMm+0/xXw
	rJMdV7B2jAc8ezMtHWGeaN0JL2FOTF/W0KgePDu2XENwV9sJ5/zuIn88EhenhNi0XMPlpYnU3WA+x
	zIavVqtLZjwhJ7Ihl1/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVL1c-00072s-ML; Mon, 27 May 2019 19:11:12 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVL1V-000726-1B
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 19:11:06 +0000
Received: by mail-pf1-x444.google.com with SMTP id a23so10024725pff.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 12:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=GWWobeGYg4EECozO9Qj4YTpVWW3X1i9MJHljQCbCuiE=;
 b=HFN1ucZoAnnb4drttbW8myp2r9g43uolH/3ESLFMfRO4K/dwAogLoYIDa3xFc065tf
 xBBOQcc4YTKoGIfQmsntRM7dyHOeTw/QqgMhJA0PMLxcpRlGQv5sid5141zLnOaCtFyJ
 qRofW9gXOElW6HiJN7Fb3zvMKrIryV7+dXsCu0ow4l4jihobB9JnrI8qFhqe7s43h2qE
 rehwqClUpCK8hPsJSgFmA69veXSgAiJML2Hkmg8uuRcMh2Lfi+GZ0vXr1p5mH464M+tW
 Dw7ZPFlXdqx9YmyCgAqArbazxVVV7dAK3k7XXH4HhcaS1iPUDjzrUu3GUtxpocoaPfPR
 bvYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GWWobeGYg4EECozO9Qj4YTpVWW3X1i9MJHljQCbCuiE=;
 b=ulqMjwU4/E+l62SjMkak29NwHelMVr698rjXXArFdKyILXuIf01HT3BD9ld9yyX/fH
 KzC91GK6M/8foqLtvsWlWY638f2QyhO7wavaAF0nGBU18COibIbPsuXNVBIf/YRdK+sW
 6cRCwLkNYWNR+V404Mrs6ocBWU793mZXcMTOWZkkXNLY9b6fkrySP4RO/VDVQL5x0g/2
 +hRYb6aON73g/4wkMr5do89eDDNPvtvTQO6n3lTw1kbOUueJaVz2napie+RX/IEGdbs7
 7gvculeFVBH1dYU9Gu5MSuZbVDN0/gDO0Qh0nuNTBrIvRe5HSCK2cbJ8nOanBSSi2BKj
 oT+w==
X-Gm-Message-State: APjAAAUlZS6sVmcFtTruy4tgwIWugGDN0bIqFwS7AG4CkKDocZ4eVWbk
 lvmx5CFnI1eV/4MLcrGDDQcCh31x
X-Google-Smtp-Source: APXvYqyzZB0e/HKCzbmbW891E7cntlRXWCaEkDNDNcB1A+g7Xe+Fw+aaqINqqyOezQVsXb8VlLVmFQ==
X-Received: by 2002:a17:90a:35c8:: with SMTP id
 r66mr505097pjb.17.1558984263248; 
 Mon, 27 May 2019 12:11:03 -0700 (PDT)
Received: from [192.168.1.3] (ip68-101-123-102.oc.oc.cox.net. [68.101.123.102])
 by smtp.gmail.com with ESMTPSA id s2sm12223753pfe.105.2019.05.27.12.11.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 12:11:02 -0700 (PDT)
Subject: Re: [PATCH 0/2] mailbox: arm: introduce smc triggered mailbox
To: Peng Fan <peng.fan@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>
References: <20190523060437.11059-1-peng.fan@nxp.com>
 <4ba2b243-5622-bb27-6fc3-cd9457430e54@gmail.com>
 <AM0PR04MB4481C44F9B5EFCDD076EF728881D0@AM0PR04MB4481.eurprd04.prod.outlook.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <7aa27228-38fc-d5bf-0cb2-b255176a206a@gmail.com>
Date: Mon, 27 May 2019 12:11:01 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <AM0PR04MB4481C44F9B5EFCDD076EF728881D0@AM0PR04MB4481.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_121105_096960_1C337CE5 
X-CRM114-Status: GOOD (  25.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/26/2019 10:19 PM, Peng Fan wrote:
> Hi Florian,
> 
>> Subject: Re: [PATCH 0/2] mailbox: arm: introduce smc triggered mailbox
>>
>> Hi,
>>
>> On 5/22/19 10:50 PM, Peng Fan wrote:
>>> This is a modified version from Andre Przywara's patch series
>>>
>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.ke
>> rnel.org%2Fpatchwork%2Fcover%2F812997%2F&amp;data=02%7C01%7Cpe
>> ng.fan%40nxp.com%7C010c9ddd5df645c9c66b08d6dfa46cb2%7C686ea1d3b
>> c2b4c6fa92cd99c5c301635%7C0%7C0%7C636942294631442665&amp;sdat
>> a=BbS5ZQtzMANSwaKRDJ62NKrPrAyaED1%2BvymQaT6Qr8E%3D&amp;rese
>> rved=0.
>>> [1] is a draft implementation of i.MX8MM SCMI ATF implementation that
>>> use smc as mailbox, power/clk is included, but only part of clk has
>>> been implemented to work with hardware, power domain only supports get
>>> name for now.
>>>
>>> The traditional Linux mailbox mechanism uses some kind of dedicated
>>> hardware IP to signal a condition to some other processing unit,
>>> typically a dedicated management processor.
>>> This mailbox feature is used for instance by the SCMI protocol to
>>> signal a request for some action to be taken by the management processor.
>>> However some SoCs does not have a dedicated management core to
>> provide
>>> those services. In order to service TEE and to avoid linux shutdown
>>> power and clock that used by TEE, need let firmware to handle power
>>> and clock, the firmware here is ARM Trusted Firmware that could also
>>> run SCMI service.
>>>
>>> The existing SCMI implementation uses a rather flexible shared memory
>>> region to communicate commands and their parameters, it still requires
>>> a mailbox to actually trigger the action.
>>
>> We have had something similar done internally with a couple of minor
>> differences:
>>
>> - a SGI is used to send SCMI notifications/delayed replies to support
>> asynchronism (patches are in the works to actually add that to the Linux SCMI
>> framework). There is no good support for SGI in the kernel right now so we
>> hacked up something from the existing SMP code and adding the ability to
>> register our own IPI handlers (SHAME!). Using a PPI should work and should
>> allow for using request_irq() AFAICT.
> 
> So you are also implementing a firmware inside ATF for SCMI usecase, right?

Correct, SCMI is implemented in part within the trusted firmware (it is
not ATF, something custom), and in part using an external processor for
specific tasks.

> 
> Introducing SGI in ATF to notify Linux will introduce complexity, there is
> no good framework inside ATF for SCMI, and I use synchronization call for
> simplicity for now.

Sure that's fine, the point we all seem to agree upon is that putting
provision in the binding document for an optional interrupt is already
known to be desirable.

> 
>>
>> - the mailbox identifier is indicated as part of the SMC call such that we can
>> have multiple SCMI mailboxes serving both standard protocols and
>> non-standard (in the 0x80 and above) range, also they may have different
>> throughput (in hindsight, these could simply be different channels)
>>
>> Your patch series looks both good and useful to me, I would just put a
>> provision in the binding to support an optional interrupt such that
>> asynchronism gets reasonably easy to plug in when it is available (and
>> desirable).
> 
> Ok. Let me think about and add that in new version patch.
> 
> Thanks,
> Peng.
> 
>>
>>>
>>> This patch series provides a Linux mailbox compatible service which
>>> uses smc calls to invoke firmware code, for instance taking care of SCMI
>> requests.
>>> The actual requests are still communicated using the standard SCMI way
>>> of shared memory regions, but a dedicated mailbox hardware IP can be
>>> replaced via this new driver.
>>>
>>> This simple driver uses the architected SMC calling convention to
>>> trigger firmware services, also allows for using "HVC" calls to call
>>> into hypervisors or firmware layers running in the EL2 exception level.
>>>
>>> Patch 1 contains the device tree binding documentation, patch 2
>>> introduces the actual mailbox driver.
>>>
>>> Please note that this driver just provides a generic mailbox
>>> mechanism, though this is synchronous and one-way only (triggered by
>>> the OS only, without providing an asynchronous way of triggering
>>> request from the firmware).
>>> And while providing SCMI services was the reason for this exercise,
>>> this driver is in no way bound to this use case, but can be used
>>> generically where the OS wants to signal a mailbox condition to
>>> firmware or a hypervisor.
>>> Also the driver is in no way meant to replace any existing firmware
>>> interface, but actually to complement existing interfaces.
>>>
>>> [1]
>>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgith
>>>
>> ub.com%2FMrVan%2Farm-trusted-firmware%2Ftree%2Fscmi&amp;data=02
>> %7C01%7
>>>
>> Cpeng.fan%40nxp.com%7C010c9ddd5df645c9c66b08d6dfa46cb2%7C686ea1
>> d3bc2b4
>>>
>> c6fa92cd99c5c301635%7C0%7C0%7C636942294631442665&amp;sdata=kN
>> 9bEFFcsZA
>>> 1ePeNLLfHmONpVaG6O5ajVQvKMuaBXyk%3D&amp;reserved=0
>>>
>>> Peng Fan (2):
>>>   DT: mailbox: add binding doc for the ARM SMC mailbox
>>>   mailbox: introduce ARM SMC based mailbox
>>>
>>>  .../devicetree/bindings/mailbox/arm-smc.txt        |  96
>> +++++++++++++
>>>  drivers/mailbox/Kconfig                            |   7 +
>>>  drivers/mailbox/Makefile                           |   2 +
>>>  drivers/mailbox/arm-smc-mailbox.c                  | 154
>> +++++++++++++++++++++
>>>  include/linux/mailbox/arm-smc-mailbox.h            |  10 ++
>>>  5 files changed, 269 insertions(+)
>>>  create mode 100644
>>> Documentation/devicetree/bindings/mailbox/arm-smc.txt
>>>  create mode 100644 drivers/mailbox/arm-smc-mailbox.c  create mode
>>> 100644 include/linux/mailbox/arm-smc-mailbox.h
>>>
>>
>>
>> --
>> Florian

-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
