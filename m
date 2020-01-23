Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8594614646F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 10:23:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pWJKUTq1tT8/Z253qvpVIwu19Qcj6a6pUWnVr94G4Gc=; b=BTRk9OLsVq0Rj0Qi1WXSvh6Rs
	ZdtbbN2kUgbEJeF4XvaO9V0ORUbYaVGSL3swdOo9umD1nNOLTOhkAZsbTvcMBtivsxbZnSfnS0pO4
	UJooFEBHuZNA7D7CAN32dAzn1X8rZQxO9Lnasr9wZmRYkXkB7tZ1hZgOoulWsDyPCiB88Ii8sdK5T
	4KgsgckV/RAfXhw+jmcqYzGzEDdFubd9B+xyOLfxq1oof0LXkvL5G1D7CcMWDJH8kTAvREP6oIyMK
	uJhIyzp/M0gPr5rG7tWLh++6VF4PMLh0Ix593G6EE3w9xQOuCzofsuZh7QV91dgh5vxJWfCU9WcDy
	9FCxkEuFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuYhZ-0005uK-2o; Thu, 23 Jan 2020 09:23:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuYhP-0005sw-Ml
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 09:22:52 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8441C2087E;
 Thu, 23 Jan 2020 09:22:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579771370;
 bh=Xa1jc12GgD3XPZe27C61UKhYiyg5L/iwg/AywK3fLUA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jLgG9/3N8q68uP1c9+dSMq6VuxSeYlnzoIho+5lvZj7fF36gwgdet6z7aRhp6JM1E
 R54tasc6mYqhQbi6UbhGnVharSGjTtTqpbJ8yk3XSVXQPPfm1o/w2pdoExNqJE4q6Z
 Au2XLYHBRWa2mylLRSjQw5smkRBL+IK78zGn7ruI=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1iuYhM-000uYp-S9; Thu, 23 Jan 2020 09:22:48 +0000
MIME-Version: 1.0
Date: Thu, 23 Jan 2020 09:22:48 +0000
From: Marc Zyngier <maz@kernel.org>
To: Alexandre Torgue <alexandre.torgue@st.com>
Subject: Re: STM32MP1 level triggered interrupts
In-Reply-To: <360b1adc-32f1-7993-c463-e52c7a5a8a67@st.com>
References: <20bb72d0-8258-abc0-e729-4d3d5a75c41c@denx.de>
 <d6e02817-2464-51b9-246a-7720b607b8d6@st.com>
 <65a1c5b2-c1b9-322f-338c-e6ff6379d8d1@denx.de>
 <129d04a0-c846-506d-5726-4a1024d977a6@st.com>
 <80db762c-3b3d-f007-2f9b-dadbffd95782@denx.de>
 <360b1adc-32f1-7993-c463-e52c7a5a8a67@st.com>
Message-ID: <c4f08f59acd31951527ef1d6e9409e6f@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: alexandre.torgue@st.com, marex@denx.de,
 linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 mcoquelin.stm32@gmail.com, patrick.delaunay@st.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_012251_766492_D7B85D56 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Marek Vasut <marex@denx.de>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-23 08:27, Alexandre Torgue wrote:
> On 1/22/20 8:29 PM, Marek Vasut wrote:
>> On 1/22/20 6:19 PM, Alexandre Torgue wrote:
>> 
>> Hi,
>> 
>> [...]
>> 
>>>>> Concerning, your question:
>>>>> 
>>>>> Setting your gpioC interruption as "falling edge" should be enough. 
>>>>> On
>>>>> gpioCx falling edge, a high-level signal is generated by exti and 
>>>>> sent
>>>>> to GIC (which triggers GIC interrupt). This signal remains high 
>>>>> until
>>>>> stm32_irq_ack is called.
>>>>> 
>>>>> So you only need: (ex for gpioc 1).
>>>>> 
>>>>> interrupt-parent = <&gpioc>;
>>>>> interrupts = <1 IRQ_TYPE_EDGE_FALLING>;
>>>> 
>>>> How does this deal with the case where the device holds the 
>>>> interrupt
>>>> line low (since it's level-sensitive, active low) after the driver
>>>> interrupt handler finishes ? Does such condition generate another
>>>> interrupt and call the driver interrupt handler again ? I would 
>>>> expect
>>>> the answer is no, because the interrupt is edge-triggered and there 
>>>> is
>>>> no edge.
>>> 
>>> Your assumption is good. If your device continue to hold the line to 
>>> low
>>> at the end of your interrupt handler, no more interrupt will be 
>>> generated.
>> 
>> But does that basically mean that such a device cannot be used with
>> STM32MP1 or am I fundamentally mistaken and don't understand how a
>> level-triggered interrupt works ? :)
> 
> You need to release the line in your device interrupt handler. If not,
> yes, you will miss interrupts :$

So to sum it up, this SoC doesn't support external level interrupts
on its own, full stop. You'd need some additional external sampling
HW to retrigger an edge on EOI.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
