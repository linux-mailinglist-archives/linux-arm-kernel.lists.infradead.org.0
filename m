Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0FA1530D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 13:32:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0X1xP4+ikCdExKzYnOOnyyytDn9XQ6czZwDUi482shA=; b=Mh1VEKQWn4gybhUwPLBKfdvbE
	gW6WNmrCwdO2xjq4ZD5s9blWXzlVR0i97/yYIKRCVaNVwhKepBaxwI0vDEmdNmhX5kx7N0Ciz1gbf
	Sp1Y2IreiRnTQzg25ZbBKIn2XBqpMGRLvoJMO8E+NEMn67FDxFQFEJpFMjzWiCkgycmBXPUIuCv/v
	qOCuXdlZWKukZD6l5zWDnSQ8BghUmfKH1YRvnDYOdkY68uBBglGeEBVwhwuYtH/aTm0DjHhm3gU9E
	NM9J4uoXjmUsF6FF4SYXEiQgnKS8upQIseXlrd8m7g5azn1W8KB8j8JTHQpd6FVrl6cqp0ZxJ10Xc
	wq1vD4eLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izJqx-0004au-Eo; Wed, 05 Feb 2020 12:32:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izJqr-0004aY-MD
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 12:32:19 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 41A3620674;
 Wed,  5 Feb 2020 12:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580905937;
 bh=60CTz9zWVgmCVk3vxEOslzeIwfMQe/loj4SWO5bqgXo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=vrIFRbWvi9RqKvOphXz5IKzQ/NOpm+BB0+ge8tYw/GUMj1dwPwVPlyFMZ05fQ77t2
 Np2jZbY2cVhTZ0KocCUuQQA7/h9eCI3M5eIOP5xNrE1RQFkKVh94vizLwDX/urENom
 wlZQG0Vq7esRapEnDnn+FywVppFWpC26KNv8otug=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1izJqp-00380g-JN; Wed, 05 Feb 2020 12:32:15 +0000
MIME-Version: 1.0
Date: Wed, 05 Feb 2020 12:32:15 +0000
From: Marc Zyngier <maz@kernel.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: STM32MP1 level triggered interrupts
In-Reply-To: <760b42cd-0fc4-5675-3f55-40edfe9440b2@denx.de>
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
Message-ID: <73a78da99d5e386bf1d3cb6e263a18ba@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: marex@denx.de, alexandre.torgue@st.com,
 u.kleine-koenig@pengutronix.de, patrick.delaunay@st.com,
 mcoquelin.stm32@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_043217_768786_8F57AB8D 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K?= =?UTF-8?Q?=C3=B6nig?=
 <u.kleine-koenig@pengutronix.de>, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-05 11:53, Marek Vasut wrote:
> On 2/5/20 12:42 PM, Marc Zyngier wrote:
>> On 2020-01-28 18:32, Marek Vasut wrote:
>>> On 1/24/20 10:24 AM, Marc Zyngier wrote:
>>>> On 2020-01-24 09:17, Alexandre Torgue wrote:
>>>>> On 1/23/20 11:21 PM, Marek Vasut wrote:
>>>> 
>>>> [...]
>>>> 
>>>>>> But I still wonder, what is the purpose of the EXTImux in that 
>>>>>> SoC?
>>>>>> Shouldn't that permit routing GPIOs directly into GIC SPIs, which
>>>>>> would
>>>>>> then permit detecting at least level-high interrupts ?
>>>>>> 
>>>>> 
>>>>> For this SoC, EXTI block detects external line edges and rises a 
>>>>> GIC
>>>>> SPI interrupt. This EXTi block is mainly used to handle HW events 
>>>>> like
>>>>> buttons, clocks ... So first issue seems more to be a design issue
>>>>> (your design doesn't fit with MP1 datasheet).
>>>>> 
>>>>> Now, let's find a solution. I'll have a look on your proposition:
>>>>> "check the line in EOI callback and retrig".
>>>>> 
>>>>> Marc, this kind a solution could be acceptable on your side ?
>>>> 
>>>> It will depend on the nature of the hack you will have to put in 
>>>> there.
>>>> If it is 100% reliable, why not? Anything short of that, probably 
>>>> not.
>>> 
>>> I had another look into this, and what we would end up is some sort 
>>> of
>>> phandle from exti to all the gpioX nodes in DT, would that be OK ?
>>> However, if we do that, then we will have the pinctrl controller 
>>> (which
>>> has the gpio banks as subnodes) require the exti through a phandle 
>>> and
>>> exti require the gpio banks through a phandle, so we end up with some
>>> sort of cyclic dependency there.
>>> 
>>> So we would need to somehow have exti lazily deal with it's gpioX
>>> controller phandles only when someone requests level interrupt ? That
>>> would probably do.
>> 
>> TBH, I don't have much of an opinion here. If you can deal with the
>> plumbing
>> that's required to make this thing work reliably, then why not?
>> 
>> What I insist on is that the sampling/retriggering is made 100% 
>> reliable.
>> I'd prefer we don't offer the functionality if it there is any doubt
>> about it.
> 
> That question was more in the direction of ST, to see how it fits in
> their design/plans. I would hate to work on something only to have it
> rejected because ST developed something else in parallel.

I think this is more of a "whoever needs it writes it" case, and ST
obviously didn't care much about supporting external level interrupts.

So if you have the need *and* a clear idea on how to make it work, 
please
post patches. If ST wakes up and wants to chime in, LKML is the right
forum for having the discussion.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
