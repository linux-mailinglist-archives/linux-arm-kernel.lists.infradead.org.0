Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADE910EB23
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 14:51:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K9q7W472QGPapGRvZdH5ciwqvxNFFKt2h4ytYvX2YC0=; b=sBDFLU0cIFS6SuPaK/Izu16Rz
	EDQMRaMfNT3HH+a7bPdWov74zHU1mqaa9IlVzPoI2H7xa2tYXMRxRcDakIXjcZckYloWs7MUQUuDz
	VMHWa52O1Ou4DI98CWDsqyEolrweSuv50PwcNxXCWbT/5N0szQ6ED7X8wUTmdpi5a+chFV06yM6MP
	eqhv8zIL0af3En22EgqguBCRBI208pGpb79EKgAx8wqkpAqU6/XhZ4oM3C7UsXHXVShBPFa0ULT15
	xyX8AyQPMzkkaOdW6ctHaSn6lcDdcek6mr5l2hp5UckfOiFzSZCWxFu8DTifUghYtf7Usn2vlXuxm
	Bnc+wUgJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibm6j-0001lA-V2; Mon, 02 Dec 2019 13:51:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibm6c-0001kM-Gd
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 13:51:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CED6130E;
 Mon,  2 Dec 2019 05:51:10 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 598313F68E;
 Mon,  2 Dec 2019 05:51:09 -0800 (PST)
Subject: Re: [PATCH v1] clk: Convert managed get functions to devm_add_action
 API
To: Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
References: <3d8a58bf-0814-1ec1-038a-10a20b9646ad@free.fr>
 <20191128185630.GK82109@yoga> <20191202014237.GR248138@dtor-ws>
 <f177ef95-ef7e-cab0-1322-6de28f18ecdb@free.fr>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <c0ccca86-b7b1-b587-60c1-4794376fa789@arm.com>
Date: Mon, 2 Dec 2019 13:51:08 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <f177ef95-ef7e-cab0-1322-6de28f18ecdb@free.fr>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_055114_636438_26F598CB 
X-CRM114-Status: GOOD (  21.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 LKML <linux-kernel@vger.kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/12/2019 9:25 am, Marc Gonzalez wrote:
> On 02/12/2019 02:42, Dmitry Torokhov wrote:
> 
>> On Thu, Nov 28, 2019 at 10:56:30AM -0800, Bjorn Andersson wrote:
>>
>>> On Tue 26 Nov 08:13 PST 2019, Marc Gonzalez wrote:
>>>
>>>> Date: Tue, 26 Nov 2019 13:56:53 +0100
>>>>
>>>> Using devm_add_action_or_reset() produces simpler code and smaller
>>>> object size:
>>>>
>>>> 1 file changed, 16 insertions(+), 46 deletions(-)
>>>>
>>>>      text	   data	    bss	    dec	    hex	filename
>>>> -   1797	     80	      0	   1877	    755	drivers/clk/clk-devres.o
>>>> +   1499	     56	      0	   1555	    613	drivers/clk/clk-devres.o
>>>>
>>>> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
>>>
>>> Looks neat
>>>
>>> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
>>
>> This however increases the runtime costs as each custom action cost us
>> an extra pointer. Given that in a system we likely have many clocks
>> managed by devres, I am not sure that this code savings is actually
>> gives us overall win. It might still, I just want to understand how we
>> are allocating/packing devres structures.
> 
> I'm not 100% sure what you are saying.

You reduce the text size by a constant amount, at the cost of allocating 
twice as much runtime data per clock (struct action_devres  vs. void*). 
Assuming 64-bit pointers, that means that in principle your ~320-byte 
saving would be cancelled out at ~40 managed clocks. However, that's 
also assuming that the minimum allocation granularity is no larger than 
a single pointer, which generally isn't true, so in reality it depends 
on whether the difference in data pushes the total struct devres 
allocation over the next ARCH_KMALLOC_MINALIGN boundary - if it doesn't, 
the difference comes entirely for free; if it does, the memory cost 
tradeoff gets even worse.

Robin.

> Are you arguing that the proposed patch increases the run-time cost of
> devm_clk_put() so much that the listed improvements (simpler source code,
> smaller object size) are not worth it?
> 
> AFAIU, the release action is only called
> - explicitly, when devm_clk_put() is called
> - implicitly, when the device is removed
> 
> How often are clocks removed?
> 
> In hot code-path (called hundreds of times per second) it makes sense to
> write more complex code, to shave a few cycles every iteration. But in
> cold code-path, I think it's better to write short/simple code.
> 
> Regards.
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
