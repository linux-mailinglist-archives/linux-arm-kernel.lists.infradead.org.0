Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A71162E02
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 19:13:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2AZmGXyIDfN6BaOVVBlCfM7AObwnceLXfL/ojt2hxmw=; b=tf1pxiji+TU/Cl
	Z71tR1egfhmkLV1Ofs0svo0MdiTc8HFRbz2Vy92tKltT+OWCfMlx65T8FnDHeJSX6qubHC3qxf88H
	6RZaO1Umqz2+CQyMxPOhClxNT8CHkYENIUZox+gue0iYJfnsECX7MuNOM45ej0Aedwn4FoDlJX7nc
	jAdeR+/u4b58Sc4gYbRLFpYsb0VJSEniNmmdPhEhWnhCemyBW6aWRPXo5epZcveiJ0WOKyXb4oFh3
	SoSepkH1yn3SR7L9+5rKh9H2FoWbr0GC84wx7LavSaJi9WGIVXos+BDziUcjkxLMrwJsYpGTvooKk
	BbZximXs9SyH/JIIhB0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j47NR-0007Fp-KT; Tue, 18 Feb 2020 18:13:45 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j47NH-0007F9-Lj
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 18:13:36 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48MTW20VCjz1qrLd;
 Tue, 18 Feb 2020 19:13:34 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48MTW16kd1z1qwyJ;
 Tue, 18 Feb 2020 19:13:33 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 64VmRsFO5-ZX; Tue, 18 Feb 2020 19:13:32 +0100 (CET)
X-Auth-Info: 5DiJPN7ZEXVIoN5xaMax7fvwgUZjZzcYczFxU4VoA6k=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 18 Feb 2020 19:13:32 +0100 (CET)
Subject: Re: [PATCH v2 0/2] Add GPIO level-sensitive interrupt support
To: Alexandre Torgue <alexandre.torgue@st.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Linus Walleij <linus.walleij@linaro.org>
References: <20200218131218.10789-1-alexandre.torgue@st.com>
 <b5a2dcab-06db-4863-ac5c-28f4ef0c5ac9@denx.de>
 <32e409e6-d475-802a-6a90-c8ba6c0cf6d5@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <088e786c-511e-cf95-fc41-5343b8134407@denx.de>
Date: Tue, 18 Feb 2020 19:13:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <32e409e6-d475-802a-6a90-c8ba6c0cf6d5@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_101335_858422_E902F8E4 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/18/20 7:10 PM, Alexandre Torgue wrote:
> Hi Marek

Hi,

> On 2/18/20 5:25 PM, Marek Vasut wrote:
>> On 2/18/20 2:12 PM, Alexandre Torgue wrote:
>>> This series adds the possibility to handle gpio interrupts on level.
>>>
>>> GPIO hardware block is directly linked to EXTI block but EXTI handles
>>> external interrupts only on edge. To be able to handle GPIO interrupt on
>>> level a "hack" is done in gpio irq chip: parent interrupt (exti irq
>>> chip)
>>> is retriggered following interrupt type and gpio line value.
>>>
>>> In exti irq chip, retrigger ops function is added.
>>
>> btw. this might be unrelated, but is it possible to have e.g. gpioC2 set
>> as trigger-level-low and gpioD2 set as trigger-edge-falling ? It seems
>> 8eb2dfee9fb1 ("pinctrl: stm32: add lock mechanism for irqmux selection")
>> prevents that.
>>
> 
> No it's not possible. Each gpio line doesn't have a dedicated Exti line
> Each Exti line is muxing between gpio banks.

OK, that confirms my assumption.

> Mapping is done as following:
> 
> EXTI0 = A0 or B0 or C0 .... or Z0 : selected by Mux
> EXTI1 = A1 or B1 or C1 ....or Z1 : selected by Mux
> EXTI2 = A2 or B2 or C2 ....or Z2 : selected by Mux
> ...

Is it at least possible to have IRQs of the same type on the same exti
line? E.g. gpioA2 of trigger-edge-falling and gpioB2 trigger-edge-falling ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
