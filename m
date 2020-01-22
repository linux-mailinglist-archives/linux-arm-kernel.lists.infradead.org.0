Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1BD145AAF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 18:19:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i287Y6SekWKaFTapCu/qmOSi9fIc/pNmcgMjwFTJTgg=; b=KhaSNRoLoCkAxK0pLFEjZdKv2
	hKGg0yahkhH9QnZRaIy2afJgz1exMgHyTg0tiynNsi9sWtMQmUKk8GqijyWdZ17ITg0pJ/B+ahzO2
	cxBIwRkzraEVVXrzFKDSj1i3GiS5baC0zcsR/k45eDCRpxFpSXec4+P3MU2rScA3SUknKpt6TW1dJ
	PDFwd352mdWPhP43ZPKu2cvWRdTxnTTde4yImeRrD4Yg5PwP4UJbXrcpDIdsdBAoP506IxI9CeaCN
	F+wXFAZZYujnHyXeMzsoRocbSkQJ8SF0skGLWgcDpVz8rHihqNsJtgy4+ofCBv30YAEN3dqh2BSmv
	C4xYJxzDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuJf8-0000oy-U4; Wed, 22 Jan 2020 17:19:30 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuJew-0000oT-I7
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 17:19:20 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00MHEJRo028310; Wed, 22 Jan 2020 18:19:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=kNGSIIbn3i+3VyekekpcmvrILBb9EdYflyQePuEw5sE=;
 b=R/d4wItN7i6JSHnVGSFzX0NU2+E1W+szsS732IMGZFwO0VfPRGyFM0WttSsJhhM29mKl
 Y2+Obq2l+z2uy9wYBej91ylh1CjVALKcARJOzkNsQmVrZQ8C4yKUD/aEinj241lv8tjt
 0dVk5SS15CXBu/nRoSrneDOJ1JSXENhoftrNbTC6HjyZRq7rS1NlLsHHyDl5+J14EQJT
 hEMv+OkvayYRcWgde7qIGkCE0Wl0qmShx6umHH+kgGtpxsXcfDG5VqBMYwpV48d3ZogA
 75BM1BupewZwAzIfO1xMhTDSWQLGwy/56v/9nZZtrXwELozek7Ie2hiIdFsa/Uq7hnUS bA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xkrp2dqwq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jan 2020 18:19:13 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 74C4F10002A;
 Wed, 22 Jan 2020 18:19:12 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id CB6B722092A;
 Wed, 22 Jan 2020 18:19:07 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.51) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 22 Jan
 2020 18:19:07 +0100
Subject: Re: STM32MP1 level triggered interrupts
To: Marek Vasut <marex@denx.de>, Linux ARM
 <linux-arm-kernel@lists.infradead.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
References: <20bb72d0-8258-abc0-e729-4d3d5a75c41c@denx.de>
 <d6e02817-2464-51b9-246a-7720b607b8d6@st.com>
 <65a1c5b2-c1b9-322f-338c-e6ff6379d8d1@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <129d04a0-c846-506d-5726-4a1024d977a6@st.com>
Date: Wed, 22 Jan 2020 18:19:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <65a1c5b2-c1b9-322f-338c-e6ff6379d8d1@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-22_07:2020-01-22,
 2020-01-22 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_091919_092207_2D10E755 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Patrick Delaunay <patrick.delaunay@st.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 1/21/20 6:41 PM, Marek Vasut wrote:
> On 1/21/20 6:12 PM, Alexandre Torgue wrote:
>> Hi Marek,
> 
> Hi,
> 
>> On 1/20/20 7:32 PM, Marek Vasut wrote:
>>> Hi,
>>>
>>> I have a device connected to STM32MP157C which requires active-low
>>> level-triggered interrupt sink. The device interrupt line is connected
>>> to the SoC gpio-C bank, which has it's interrupt line routed into EXTI,
>>> which can only handle edge triggered interrupts to my understanding.
>>
>> correct.
> 
> OK
> 
>>> However, ARM GIC should be able to do both and EXTI has this irqmux /
>>> EXTImux functionality, which -- if my understanding is correct -- is
>>> capable of routing a select GPIO line directly into the GIC as an EXTIn
>>> interrupt signal. Thus, this might permit handling active low
>>> level-triggered interrupts. Is there some DT binding to configure this
>>> yet ?
>>>
>>> Or is there some other, better, way ?
>>>
>>
>> For SPIs, GIC controller handles rising edge triggered interrupt and
>> active high level-sensitive. GIC integration in STM32MP157c makes that
>> only active high level-sensitive configuration for SPI interrupts is
>> supported.
> 
> So technically , there is a possibility to handle level-sensitive
> active-high interrupts. Can one such interrupt be routed through the
> EXTImux into a GIC SPI then ?

Not for external signals. Externals signals are routed to the EXTI 
block. Allowed configurations are: rising/falling/both. Following a 
rising or falling edge, EXTI will trig a other signal mapped to the GIC.
This GIC interrupt is configured as high level sensitive (and remains 
high until EXTI edge pending register is read).

> 
>> Concerning, your question:
>>
>> Setting your gpioC interruption as "falling edge" should be enough. On
>> gpioCx falling edge, a high-level signal is generated by exti and sent
>> to GIC (which triggers GIC interrupt). This signal remains high until
>> stm32_irq_ack is called.
>>
>> So you only need: (ex for gpioc 1).
>>
>> interrupt-parent = <&gpioc>;
>> interrupts = <1 IRQ_TYPE_EDGE_FALLING>;
> 
> How does this deal with the case where the device holds the interrupt
> line low (since it's level-sensitive, active low) after the driver
> interrupt handler finishes ? Does such condition generate another
> interrupt and call the driver interrupt handler again ? I would expect
> the answer is no, because the interrupt is edge-triggered and there is
> no edge.

Your assumption is good. If your device continue to hold the line to low 
at the end of your interrupt handler, no more interrupt will be generated.

> 
>> regards
>> Alex
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
