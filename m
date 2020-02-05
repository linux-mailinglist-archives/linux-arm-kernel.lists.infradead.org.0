Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C98153034
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 12:54:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8l5bEK3OVt/UTzueSVQBkVAmDukNSeG8CDBtEt0uJ8Q=; b=gyUOf6xhHgC6YN
	byO5voBHITEC7Vpb7bz8Jxp4e5JZp83iBTDjCOwMx4cJ6l9M8frfcoVW6WwfzFmL2+1MYqSwYFgdG
	TzNP2Xdz8dm5/FqVGANgIa8ncAw03N6XK0vN4lk92KlRXZGSyvQEDiqFZpUIBGPDEAOJa81Sfq+6K
	fimVxgpBmFmscRsNhV4K5WQO8/+P7DWgR893gnywzv648JLY9KcXRWmjQ3IR9O7dYN7QDFxXrgYKW
	vXyy+TFvkPm9UwjwrxeO7Bf0PWG2GcXAfbPp6EVrNfoHUq8hTVEVDzj/J1TjM5kTPXQbCIdtA+GnR
	46Dw1Ab8+DGa6AJuxukw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izJFw-0004XY-Ep; Wed, 05 Feb 2020 11:54:08 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izJFq-0004X7-9R
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 11:54:04 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48CKj24db1z1rhZp;
 Wed,  5 Feb 2020 12:53:58 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48CKj23g0Cz1qyWX;
 Wed,  5 Feb 2020 12:53:58 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 5v9UrMj0JyH6; Wed,  5 Feb 2020 12:53:57 +0100 (CET)
X-Auth-Info: 2OzHQEQHDnh3ZgyP4l+mOQVWx8s4i/Y+97lxFGLkJJ8=
Received: from [127.0.0.1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed,  5 Feb 2020 12:53:57 +0100 (CET)
Subject: Re: STM32MP1 level triggered interrupts
To: Marc Zyngier <maz@kernel.org>
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
From: Marek Vasut <marex@denx.de>
Message-ID: <760b42cd-0fc4-5675-3f55-40edfe9440b2@denx.de>
Date: Wed, 5 Feb 2020 12:53:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <dcbb8f0447f2aa75f0cec6f420310b21@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_035402_627390_0C964A16 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/5/20 12:42 PM, Marc Zyngier wrote:
> On 2020-01-28 18:32, Marek Vasut wrote:
>> On 1/24/20 10:24 AM, Marc Zyngier wrote:
>>> On 2020-01-24 09:17, Alexandre Torgue wrote:
>>>> On 1/23/20 11:21 PM, Marek Vasut wrote:
>>>
>>> [...]
>>>
>>>>> But I still wonder, what is the purpose of the EXTImux in that SoC?
>>>>> Shouldn't that permit routing GPIOs directly into GIC SPIs, which
>>>>> would
>>>>> then permit detecting at least level-high interrupts ?
>>>>>
>>>>
>>>> For this SoC, EXTI block detects external line edges and rises a GIC
>>>> SPI interrupt. This EXTi block is mainly used to handle HW events like
>>>> buttons, clocks ... So first issue seems more to be a design issue
>>>> (your design doesn't fit with MP1 datasheet).
>>>>
>>>> Now, let's find a solution. I'll have a look on your proposition:
>>>> "check the line in EOI callback and retrig".
>>>>
>>>> Marc, this kind a solution could be acceptable on your side ?
>>>
>>> It will depend on the nature of the hack you will have to put in there.
>>> If it is 100% reliable, why not? Anything short of that, probably not.
>>
>> I had another look into this, and what we would end up is some sort of
>> phandle from exti to all the gpioX nodes in DT, would that be OK ?
>> However, if we do that, then we will have the pinctrl controller (which
>> has the gpio banks as subnodes) require the exti through a phandle and
>> exti require the gpio banks through a phandle, so we end up with some
>> sort of cyclic dependency there.
>>
>> So we would need to somehow have exti lazily deal with it's gpioX
>> controller phandles only when someone requests level interrupt ? That
>> would probably do.
> 
> TBH, I don't have much of an opinion here. If you can deal with the
> plumbing
> that's required to make this thing work reliably, then why not?
> 
> What I insist on is that the sampling/retriggering is made 100% reliable.
> I'd prefer we don't offer the functionality if it there is any doubt
> about it.

That question was more in the direction of ST, to see how it fits in
their design/plans. I would hate to work on something only to have it
rejected because ST developed something else in parallel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
