Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E16B7145C6B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 20:29:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IuUheZkgYsZ8kKJCU7XZChf4PIS2wxtKh97Au3U+3xc=; b=Pd7s6bSrW1WWJR
	ZQPEUW3tgDo8btmprosLW0j7doNWXbHfsmfkMWykB/E4DelFXhLlJsn5kp84sph9OpsiYfcdoSwaJ
	QHV9KAbP70hwlRVldNXrYQq1yYg5/h//UkRnS78DPP7ntOUnNa1hR+jhlJHYpnZPbkL/i4uF232h9
	I61mZe30wbG1TU2fuRF+zmZjvS1EOOdsXMWmGFMJOwkcAeA5It4HgcdHgR9w2Op58Ugm+LjvMFsd/
	WL0Xj9fdaf3/XI009MZjPawmBNHMdNBqBy3qpJg2maig0LLpq0bZNOaMfwtUxRuJaLbqh65hZi7R1
	CI55GM1zwr5mMHuDBTew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuLgw-0001dL-Ax; Wed, 22 Jan 2020 19:29:30 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuLgm-0001c1-Or
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 19:29:22 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 482wSr1hQCz1rh7v;
 Wed, 22 Jan 2020 20:29:16 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 482wSr13VJz1qrnG;
 Wed, 22 Jan 2020 20:29:16 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id sn4K-R6IxAgY; Wed, 22 Jan 2020 20:29:14 +0100 (CET)
X-Auth-Info: nnhbN4JxEyR9kaafm0F2Jd/LipmWamMPaqS5s2fEZz8=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed, 22 Jan 2020 20:29:14 +0100 (CET)
Subject: Re: STM32MP1 level triggered interrupts
To: Alexandre Torgue <alexandre.torgue@st.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
References: <20bb72d0-8258-abc0-e729-4d3d5a75c41c@denx.de>
 <d6e02817-2464-51b9-246a-7720b607b8d6@st.com>
 <65a1c5b2-c1b9-322f-338c-e6ff6379d8d1@denx.de>
 <129d04a0-c846-506d-5726-4a1024d977a6@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <80db762c-3b3d-f007-2f9b-dadbffd95782@denx.de>
Date: Wed, 22 Jan 2020 20:29:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <129d04a0-c846-506d-5726-4a1024d977a6@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_112920_958070_20B95848 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Patrick Delaunay <patrick.delaunay@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/22/20 6:19 PM, Alexandre Torgue wrote:

Hi,

[...]

>>> Concerning, your question:
>>>
>>> Setting your gpioC interruption as "falling edge" should be enough. On
>>> gpioCx falling edge, a high-level signal is generated by exti and sent
>>> to GIC (which triggers GIC interrupt). This signal remains high until
>>> stm32_irq_ack is called.
>>>
>>> So you only need: (ex for gpioc 1).
>>>
>>> interrupt-parent = <&gpioc>;
>>> interrupts = <1 IRQ_TYPE_EDGE_FALLING>;
>>
>> How does this deal with the case where the device holds the interrupt
>> line low (since it's level-sensitive, active low) after the driver
>> interrupt handler finishes ? Does such condition generate another
>> interrupt and call the driver interrupt handler again ? I would expect
>> the answer is no, because the interrupt is edge-triggered and there is
>> no edge.
> 
> Your assumption is good. If your device continue to hold the line to low
> at the end of your interrupt handler, no more interrupt will be generated.

But does that basically mean that such a device cannot be used with
STM32MP1 or am I fundamentally mistaken and don't understand how a
level-triggered interrupt works ? :)

-- 
Best regards,
Marek Vasut

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
