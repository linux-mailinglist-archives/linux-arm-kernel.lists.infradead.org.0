Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B685144379
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 18:41:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sl4oEAIbz0OVVKd3GUn+msme12C8Px2Xij2eF0HtO5M=; b=BocyEidaoYakr5
	EhdyO0DXeZo/nKALyrrMdFfHXkFc9YySVJyHKxCBx3wKwxTL7VS+yM/ycoaL0ozW6i7M8cLe6Xm7W
	qEzin+jQQLFtrgTO2Rt2NzEL1r55J4Qk0thq8Qzxd7zz6Iotw25o1iMlX6ZG/SfynZhj2ZvWmfq3P
	0wkNRJggCo4YnqjM0Xi0aqdJ/qSZXGaS1PLQS0fcAk0udwmJT1P9wFAY1RVOpotxN2mKj2bHuLaVC
	+YUtbBXTBTIYxG5TEwQaVT9/5rkcrrGAwHMCoBPte4cwWb9kddD08gZ0KLv5aPIN+OrVzZ4WVz8bU
	CAV7Wb3czhM1+12iV3xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itxWt-0003u4-1L; Tue, 21 Jan 2020 17:41:31 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itxWe-0003rl-9p
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 17:41:22 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 482G6Z73Lgz1rfc7;
 Tue, 21 Jan 2020 18:41:10 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 482G6Z6QFfz1qwXg;
 Tue, 21 Jan 2020 18:41:10 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id EbGYQCG4T7j8; Tue, 21 Jan 2020 18:41:09 +0100 (CET)
X-Auth-Info: wSk5obzn2cUhXyz89ewE7gzq8k1EATG6ukAMXHWbguc=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 21 Jan 2020 18:41:09 +0100 (CET)
Subject: Re: STM32MP1 level triggered interrupts
To: Alexandre Torgue <alexandre.torgue@st.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
References: <20bb72d0-8258-abc0-e729-4d3d5a75c41c@denx.de>
 <d6e02817-2464-51b9-246a-7720b607b8d6@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <65a1c5b2-c1b9-322f-338c-e6ff6379d8d1@denx.de>
Date: Tue, 21 Jan 2020 18:41:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <d6e02817-2464-51b9-246a-7720b607b8d6@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_094116_488558_A8E23874 
X-CRM114-Status: GOOD (  17.13  )
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Patrick Delaunay <patrick.delaunay@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/21/20 6:12 PM, Alexandre Torgue wrote:
> Hi Marek,

Hi,

> On 1/20/20 7:32 PM, Marek Vasut wrote:
>> Hi,
>>
>> I have a device connected to STM32MP157C which requires active-low
>> level-triggered interrupt sink. The device interrupt line is connected
>> to the SoC gpio-C bank, which has it's interrupt line routed into EXTI,
>> which can only handle edge triggered interrupts to my understanding.
> 
> correct.

OK

>> However, ARM GIC should be able to do both and EXTI has this irqmux /
>> EXTImux functionality, which -- if my understanding is correct -- is
>> capable of routing a select GPIO line directly into the GIC as an EXTIn
>> interrupt signal. Thus, this might permit handling active low
>> level-triggered interrupts. Is there some DT binding to configure this
>> yet ?
>>
>> Or is there some other, better, way ?
>>
> 
> For SPIs, GIC controller handles rising edge triggered interrupt and
> active high level-sensitive. GIC integration in STM32MP157c makes that
> only active high level-sensitive configuration for SPI interrupts is
> supported.

So technically , there is a possibility to handle level-sensitive
active-high interrupts. Can one such interrupt be routed through the
EXTImux into a GIC SPI then ?

> Concerning, your question:
> 
> Setting your gpioC interruption as "falling edge" should be enough. On
> gpioCx falling edge, a high-level signal is generated by exti and sent
> to GIC (which triggers GIC interrupt). This signal remains high until
> stm32_irq_ack is called.
> 
> So you only need: (ex for gpioc 1).
> 
> interrupt-parent = <&gpioc>;
> interrupts = <1 IRQ_TYPE_EDGE_FALLING>;

How does this deal with the case where the device holds the interrupt
line low (since it's level-sensitive, active low) after the driver
interrupt handler finishes ? Does such condition generate another
interrupt and call the driver interrupt handler again ? I would expect
the answer is no, because the interrupt is edge-triggered and there is
no edge.

> regards
> Alex

-- 
Best regards,
Marek Vasut

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
