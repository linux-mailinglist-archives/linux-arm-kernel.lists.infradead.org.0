Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA12153CDA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 03:01:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jnw3tkMtgz6V4uZafvEkN2YrgTVM1Fmv/voQWeXkoDE=; b=m0HXGav6Xt+a/i
	Gwv+CBs05+PU6w/EZILuHggOQL6V1cyVSGq4cI64hhJa+E56aMyl9ACfdzZMN0Bpu1f961VId/hEb
	gEoSmassIz/c4RHdRwc11SicYeSa6L8bQcGiXYkkC1ZOV9rAUCRip4/aMyH1rdHU4if1zNeZD0Kwl
	6Df1i4JR/OJkCTU0NrG129+4nwcZTCUR0h2Ep6mNnd9kXennUp5zhtLj9WIj/ScI86/KCXxRr6SUH
	JF+ymeMVJwxNykUtH3wMN5DNS6nXp5VYDWPhso7KnP0hwEtv1ClQcFqa20PLJcFmfHZZQ5aonQfIB
	p5zAlX6G9FdC3/q2yPGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izWTh-0002lb-Kq; Thu, 06 Feb 2020 02:01:13 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izWTY-0002js-E5
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 02:01:06 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48ChVP4wBlz1qql4;
 Thu,  6 Feb 2020 03:01:01 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48ChVP3Scdz1qy07;
 Thu,  6 Feb 2020 03:01:01 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 2ws57FTn2mMv; Thu,  6 Feb 2020 03:01:00 +0100 (CET)
X-Auth-Info: +rDtQRE2nPLpashtRVXtw62wMNXq80s9lesteY8tIdU=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Thu,  6 Feb 2020 03:01:00 +0100 (CET)
Subject: Re: STM32MP1 level triggered interrupts
To: Alexandre TORGUE <alexandre.torgue@st.com>, Marc Zyngier <maz@kernel.org>
References: <20bb72d0-8258-abc0-e729-4d3d5a75c41c@denx.de>
 <d6e02817-2464-51b9-246a-7720b607b8d6@st.com>
 <65a1c5b2-c1b9-322f-338c-e6ff6379d8d1@denx.de>
 <129d04a0-c846-506d-5726-4a1024d977a6@st.com>
 <80db762c-3b3d-f007-2f9b-dadbffd95782@denx.de>
 <360b1adc-32f1-7993-c463-e52c7a5a8a67@st.com>
 <c4f08f59acd31951527ef1d6e9409e6f@kernel.org>
 <20200123101225.nscpc5t4nmlarbw2@pengutronix.de>
 <03fd1cb7b5985b3221f66c6b0058adc8@kernel.org>
 <20200123105214.ru4j76xbisjtbtgw@pengutronix.de>
 <cf98f4fd257ba4f34c75fe1656bd341b@kernel.org>
 <e1fffd57-4814-ec36-68b4-4207e3d4ae5d@denx.de>
 <f9d98afc-6cb8-ef7b-cff7-a04e14dba4c8@st.com>
 <7e0ce712f7e34b38c8f541644026c52e@kernel.org>
 <5e1c419c-b141-52f6-88f1-ee3ab8219a4e@denx.de>
 <dcbb8f0447f2aa75f0cec6f420310b21@kernel.org>
 <760b42cd-0fc4-5675-3f55-40edfe9440b2@denx.de>
 <73a78da99d5e386bf1d3cb6e263a18ba@kernel.org>
 <101b2f751fff440e9110102e526dfdc4@SFHDAG3NODE2.st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <d8447a36-c196-c97d-2a4a-9c003d00a212@denx.de>
Date: Thu, 6 Feb 2020 03:00:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <101b2f751fff440e9110102e526dfdc4@SFHDAG3NODE2.st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_180104_773760_73A2A26B 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Patrick DELAUNAY <patrick.delaunay@st.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/5/20 4:36 PM, Alexandre TORGUE wrote:
> 
>>>>>> [...]
>>>>>>
>>>>>>>> But I still wonder, what is the purpose of the EXTImux in that
>>>>>>>> SoC?
>>>>>>>> Shouldn't that permit routing GPIOs directly into GIC SPIs, which
>>>>>>>> would then permit detecting at least level-high interrupts ?
>>>>>>>>
>>>>>>>
>>>>>>> For this SoC, EXTI block detects external line edges and rises a
>>>>>>> GIC SPI interrupt. This EXTi block is mainly used to handle HW
>>>>>>> events like buttons, clocks ... So first issue seems more to be a
>>>>>>> design issue (your design doesn't fit with MP1 datasheet).
>>>>>>>
>>>>>>> Now, let's find a solution. I'll have a look on your proposition:
>>>>>>> "check the line in EOI callback and retrig".
>>>>>>>
>>>>>>> Marc, this kind a solution could be acceptable on your side ?
>>>>>>
>>>>>> It will depend on the nature of the hack you will have to put in
>>>>>> there.
>>>>>> If it is 100% reliable, why not? Anything short of that, probably
>>>>>> not.
>>>>>
>>>>> I had another look into this, and what we would end up is some sort
>>>>> of phandle from exti to all the gpioX nodes in DT, would that be OK
>>>>> ?
>>>>> However, if we do that, then we will have the pinctrl controller
>>>>> (which has the gpio banks as subnodes) require the exti through a
>>>>> phandle and exti require the gpio banks through a phandle, so we end
>>>>> up with some sort of cyclic dependency there.
>>>>>
>>>>> So we would need to somehow have exti lazily deal with it's gpioX
>>>>> controller phandles only when someone requests level interrupt ?
>>>>> That would probably do.
>>>>
>>>> TBH, I don't have much of an opinion here. If you can deal with the
>>>> plumbing that's required to make this thing work reliably, then why
>>>> not?
>>>>
>>>> What I insist on is that the sampling/retriggering is made 100%
>>>> reliable.
>>>> I'd prefer we don't offer the functionality if it there is any doubt
>>>> about it.
>>>
>>> That question was more in the direction of ST, to see how it fits in
>>> their design/plans. I would hate to work on something only to have it
>>> rejected because ST developed something else in parallel.
>>
>> I think this is more of a "whoever needs it writes it" case, and ST obviously didn't
>> care much about supporting external level interrupts.
>>
>> So if you have the need *and* a clear idea on how to make it work, please post
>> patches. If ST wakes up and wants to chime in, LKML is the right forum for having
>> the discussion.
>>
> 
> Sorry for the delay (just back from business trip). This topic has triggered internal
> Discussions to update our design for future product. So thanks for that.
> Now we have to find a solution for MP1. I have to work on it (find a way to read
> gpio line value from exti). If you have something to propose don't hesitate to share it with us.

I believe the proposal is explained above. The question is whether that
is acceptable.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
