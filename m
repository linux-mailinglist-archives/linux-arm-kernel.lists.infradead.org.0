Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 423181473B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 23:22:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yWHRapOkWblkz6shxj0dFQQeqLjtAczMoDGTxZoPJ8s=; b=chwMQgT6xDTP1u
	SMDtlXN6gGM4JtBKVNbai3VWaUoKsIKmmGE6+kMx9TuLxOXWPTIgtK1A/67nCTWyRo9/JLB1KJQ+w
	X+nNoNJTbULccYKNGsPD8HOmwdw4qvNiZ0prg37ASokm4S+Dg0ewq9kROgN/59nZrozkvrEjhrMFH
	wDEQsmRssVeMH1Q8/bge9x4yAa6Stc1XlB1ME7tkJoniiKRQo4dk8GpazG+D/8KyLz8NyWgfw+kQC
	d+Ty7a9OSg6ayr29jbzqvBrXOOKQJ7dhCTPTusPqNhrL9gVdPz+JicUpYHL0FcUOnNl1llYXPrpgy
	HB0UrIFIHjwU9LyD4F9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iukrV-0007Ny-FW; Thu, 23 Jan 2020 22:22:05 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iukrK-0007NA-Pv
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 22:21:56 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 483cFY1TXrz1rVvM;
 Thu, 23 Jan 2020 23:21:53 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 483cFY0g3gz1qqkW;
 Thu, 23 Jan 2020 23:21:53 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id Vd9BkDfx5arJ; Thu, 23 Jan 2020 23:21:52 +0100 (CET)
X-Auth-Info: AjghCkUmegV7CIuohImDfsu5ciTaAHdczIUoMA0Lpxs=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Thu, 23 Jan 2020 23:21:51 +0100 (CET)
Subject: Re: STM32MP1 level triggered interrupts
To: Marc Zyngier <maz@kernel.org>, Alexandre Torgue <alexandre.torgue@st.com>
References: <20bb72d0-8258-abc0-e729-4d3d5a75c41c@denx.de>
 <d6e02817-2464-51b9-246a-7720b607b8d6@st.com>
 <65a1c5b2-c1b9-322f-338c-e6ff6379d8d1@denx.de>
 <129d04a0-c846-506d-5726-4a1024d977a6@st.com>
 <80db762c-3b3d-f007-2f9b-dadbffd95782@denx.de>
 <360b1adc-32f1-7993-c463-e52c7a5a8a67@st.com>
 <c4f08f59acd31951527ef1d6e9409e6f@kernel.org>
From: Marek Vasut <marex@denx.de>
Message-ID: <ae80c911-1905-136d-56d3-5cb01d4770a4@denx.de>
Date: Thu, 23 Jan 2020 23:21:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <c4f08f59acd31951527ef1d6e9409e6f@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_142154_985992_BC822442 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/23/20 10:22 AM, Marc Zyngier wrote:
> On 2020-01-23 08:27, Alexandre Torgue wrote:
>> On 1/22/20 8:29 PM, Marek Vasut wrote:
>>> On 1/22/20 6:19 PM, Alexandre Torgue wrote:
>>>
>>> Hi,
>>>
>>> [...]
>>>
>>>>>> Concerning, your question:
>>>>>>
>>>>>> Setting your gpioC interruption as "falling edge" should be
>>>>>> enough. On
>>>>>> gpioCx falling edge, a high-level signal is generated by exti and
>>>>>> sent
>>>>>> to GIC (which triggers GIC interrupt). This signal remains high until
>>>>>> stm32_irq_ack is called.
>>>>>>
>>>>>> So you only need: (ex for gpioc 1).
>>>>>>
>>>>>> interrupt-parent = <&gpioc>;
>>>>>> interrupts = <1 IRQ_TYPE_EDGE_FALLING>;
>>>>>
>>>>> How does this deal with the case where the device holds the interrupt
>>>>> line low (since it's level-sensitive, active low) after the driver
>>>>> interrupt handler finishes ? Does such condition generate another
>>>>> interrupt and call the driver interrupt handler again ? I would expect
>>>>> the answer is no, because the interrupt is edge-triggered and there is
>>>>> no edge.
>>>>
>>>> Your assumption is good. If your device continue to hold the line to
>>>> low
>>>> at the end of your interrupt handler, no more interrupt will be
>>>> generated.
>>>
>>> But does that basically mean that such a device cannot be used with
>>> STM32MP1 or am I fundamentally mistaken and don't understand how a
>>> level-triggered interrupt works ? :)
>>
>> You need to release the line in your device interrupt handler. If not,
>> yes, you will miss interrupts :$
> 
> So to sum it up, this SoC doesn't support external level interrupts
> on its own, full stop. You'd need some additional external sampling
> HW to retrigger an edge on EOI.

Thank you for confirming my suspicion.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
