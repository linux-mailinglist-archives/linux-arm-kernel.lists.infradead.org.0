Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC501683CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 17:41:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJkBFQWYnkPWX7W84beh2NDDWCTmR0DGmM9nqNzqKdc=; b=tdiJP+Egbc2wFM
	wxDIvHc5iLpH40RLsUG7EqxvgAR3vhJAL8hM8sikyCRj7Lnb2gO4eayOenkPj6jUMuI56WI1iIKn4
	orQo/1COoLetWKgCN8TE8w17FpcHp3BaU4R7MKfDc0xn1QWZEETjt8FthMTfdLs2nRocv3HSrPWk4
	2j5esPVR3YjqT4QZ+13Z1yKBv8DHP+y+/Y3gWLgNQvu+X8tr9uhtLdsWs37b79gF8Qo9m3KR1Vn3i
	5fFp6NbyJJWPzqYjnoFdSSCofwvsHMV+Al4h7hik32rFJY+pnsWULyNmFXrB7u6eqkCGngOdZmRAl
	24MS+n4d4RrgBrA8s2ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5BMj-00039h-FN; Fri, 21 Feb 2020 16:41:25 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5BMY-00038d-Qf
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 16:41:16 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48PHK21SMHz1rd1Q;
 Fri, 21 Feb 2020 17:41:10 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48PHK20WlYz1r0bZ;
 Fri, 21 Feb 2020 17:41:10 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id T2YKWe-QNZdI; Fri, 21 Feb 2020 17:41:08 +0100 (CET)
X-Auth-Info: tPcD5NT6YuYT6cAPtv9wImntzVhf6GYyvo9WLMRjP8E=
Received: from [127.0.0.1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Fri, 21 Feb 2020 17:41:08 +0100 (CET)
Subject: Re: [PATCH v2 0/2] Add GPIO level-sensitive interrupt support
To: Alexandre Torgue <alexandre.torgue@st.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Linus Walleij <linus.walleij@linaro.org>
References: <20200218131218.10789-1-alexandre.torgue@st.com>
 <b5a2dcab-06db-4863-ac5c-28f4ef0c5ac9@denx.de>
 <32e409e6-d475-802a-6a90-c8ba6c0cf6d5@st.com>
 <088e786c-511e-cf95-fc41-5343b8134407@denx.de>
 <d271f09b-6391-779a-b133-66bcdfbb0ec6@st.com>
 <38e7cf57-2f89-7615-0841-316355a9102f@denx.de>
 <66520848-f630-e210-aecb-96c8828605b7@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <faf55c81-e28f-20ed-ffdc-d20f00e3aefc@denx.de>
Date: Fri, 21 Feb 2020 17:41:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <66520848-f630-e210-aecb-96c8828605b7@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_084115_173065_C7A9A0EF 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On 2/20/20 2:09 PM, Alexandre Torgue wrote:
> Hi Marek

Hi,

> On 2/19/20 6:24 PM, Marek Vasut wrote:
>> On 2/19/20 10:20 AM, Alexandre Torgue wrote:
>> Hi,
>> [...]
>>>>>>> This series adds the possibility to handle gpio interrupts on level.
>>>>>>>
>>>>>>> GPIO hardware block is directly linked to EXTI block but EXTI
>>>>>>> handles
>>>>>>> external interrupts only on edge. To be able to handle GPIO
>>>>>>> interrupt on
>>>>>>> level a "hack" is done in gpio irq chip: parent interrupt (exti irq
>>>>>>> chip)
>>>>>>> is retriggered following interrupt type and gpio line value.
>>>>>>>
>>>>>>> In exti irq chip, retrigger ops function is added.
>>>>>>
>>>>>> btw. this might be unrelated, but is it possible to have e.g. gpioC2
>>>>>> set
>>>>>> as trigger-level-low and gpioD2 set as trigger-edge-falling ? It
>>>>>> seems
>>>>>> 8eb2dfee9fb1 ("pinctrl: stm32: add lock mechanism for irqmux
>>>>>> selection")
>>>>>> prevents that.
>>>>>>
>>>>>
>>>>> No it's not possible. Each gpio line doesn't have a dedicated Exti
>>>>> line
>>>>> Each Exti line is muxing between gpio banks.
>>>>
>>>> OK, that confirms my assumption.
>>>>
>>>>> Mapping is done as following:
>>>>>
>>>>> EXTI0 = A0 or B0 or C0 .... or Z0 : selected by Mux
>>>>> EXTI1 = A1 or B1 or C1 ....or Z1 : selected by Mux
>>>>> EXTI2 = A2 or B2 or C2 ....or Z2 : selected by Mux
>>>>> ...
>>>>
>>>> Is it at least possible to have IRQs of the same type on the same exti
>>>> line? E.g. gpioA2 of trigger-edge-falling and gpioB2
>>>> trigger-edge-falling ?
>>>>
>>>
>>> Sorry I don't catch your point. If you already succeed to get gpioA2,
>>> then you will failed to get gpioB2 but looking at function call stack we
>>> could get an other issue.
>>
>> Considering the EXTI line limitations, I'd like to know what kind of IRQ
>> input configuration is allowed/valid and what kind of configuration is
>> not valid.
> 
> As a mux is used to select which GPIO[A..Z]_X has to be mapped on exti_X
> line, only one GPIO can be used on the EXTI line.
> 
> For example, on EXTI2 you could map either gpioa2 or gpiob2 or
> ....gpioz2 but not gpioa2 and gpiob2 in the same time.

Got it, thank you for the clarification.

Maybe that could be something to improve for MP2 :-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
