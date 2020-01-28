Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 303F114BFE7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 19:32:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s8kpjjJxxJ30CfXGH4JiOnxigp2xJFdb1lAUNTMCilU=; b=fTdZkYTSeGIC0V
	qRitCc6XCk72O2Z/YBit9wG+p4oSyu6TnVGLxSoqo26jF/FGJRv0FPOmRPtzZqgcD5hKgqtE70swm
	3sX9nTn+KDDOBgrRw898HwHsK9hocTfh73Hl6u4JWbw3e68BoVWdp28qRJnT92YUV8ZUYOJwdzhe8
	J2zwmjR4x6pNk+yVAjyUsyhfJ53SXTwjnBC/Vpdgm2bpnb5dk65/m55dV6e/bpzeM28vxLEn//pX8
	dNmRVlGceNwSsMWR9SQpFw/Lps21Tm53hex/y03uWHol8+dsbv7LaG7I8rAOTY23wSnA9/QyxXV0f
	9u6mSYhqj6vPtrS3CTcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwVew-0001aq-78; Tue, 28 Jan 2020 18:32:22 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwVej-0001Z0-9O
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 18:32:11 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 486Zw30m8Kz1rD8v;
 Tue, 28 Jan 2020 19:32:03 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 486Zw3058Dz1r42J;
 Tue, 28 Jan 2020 19:32:02 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id h-Irgru-JSPy; Tue, 28 Jan 2020 19:32:01 +0100 (CET)
X-Auth-Info: eaBw9gFJKjlVG/QeDQT0EJ026VLAM9o4jzu27nZpxJo=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 28 Jan 2020 19:32:01 +0100 (CET)
Subject: Re: STM32MP1 level triggered interrupts
To: Marc Zyngier <maz@kernel.org>, Alexandre Torgue <alexandre.torgue@st.com>
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
From: Marek Vasut <marex@denx.de>
Message-ID: <5e1c419c-b141-52f6-88f1-ee3ab8219a4e@denx.de>
Date: Tue, 28 Jan 2020 19:32:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <7e0ce712f7e34b38c8f541644026c52e@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_103209_480137_F1C3FCD1 
X-CRM114-Status: GOOD (  14.47  )
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
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/24/20 10:24 AM, Marc Zyngier wrote:
> On 2020-01-24 09:17, Alexandre Torgue wrote:
>> On 1/23/20 11:21 PM, Marek Vasut wrote:
> 
> [...]
> 
>>> But I still wonder, what is the purpose of the EXTImux in that SoC?
>>> Shouldn't that permit routing GPIOs directly into GIC SPIs, which would
>>> then permit detecting at least level-high interrupts ?
>>>
>>
>> For this SoC, EXTI block detects external line edges and rises a GIC
>> SPI interrupt. This EXTi block is mainly used to handle HW events like
>> buttons, clocks ... So first issue seems more to be a design issue
>> (your design doesn't fit with MP1 datasheet).
>>
>> Now, let's find a solution. I'll have a look on your proposition:
>> "check the line in EOI callback and retrig".
>>
>> Marc, this kind a solution could be acceptable on your side ?
> 
> It will depend on the nature of the hack you will have to put in there.
> If it is 100% reliable, why not? Anything short of that, probably not.

I had another look into this, and what we would end up is some sort of
phandle from exti to all the gpioX nodes in DT, would that be OK ?
However, if we do that, then we will have the pinctrl controller (which
has the gpio banks as subnodes) require the exti through a phandle and
exti require the gpio banks through a phandle, so we end up with some
sort of cyclic dependency there.

So we would need to somehow have exti lazily deal with it's gpioX
controller phandles only when someone requests level interrupt ? That
would probably do.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
