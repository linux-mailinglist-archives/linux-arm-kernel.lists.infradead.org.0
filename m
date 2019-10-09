Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E7FD123E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 17:15:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p8X+zqg7xOuxQfqKTS8nwCADE66p1KtvcsCQHfLv2lY=; b=RqgkNC6XPXNIkzE/aYiQADdLJ
	Yj9zu0C6AyeyxCPzAgIP+UzcJT/v0vuAnVPlblHiuosMmkoOq+6XbWmnFY/FBG6cdni0EsgJIGu7K
	wp2gxALQSEQEtTqR1DmqBAWqsMIsQYlb1lfSP0Bw4pdlrh5pNE+zP1OHdqXe3/UBwZT9CnTx6/BFZ
	jNqguc7WAy1pQpqydeDm/lCL9SRpi4yYmgJNif2wfTK/iECD8mVD2UyZ2/i/ES6kB9cdGiP9+BB2F
	u3XkaUY3Kxh3Ys7oDzlkTQ6XYAHo1+ipGr2ccQzM7Ampp/bjpdMdxoDt0nZcsAQqX+hrB1MLuHlBR
	dGcQTNNIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIDgr-0005UM-B7; Wed, 09 Oct 2019 15:15:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIDgk-0005Tn-Il
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 15:15:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C68C2337;
 Wed,  9 Oct 2019 08:15:41 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 870A63F68E;
 Wed,  9 Oct 2019 08:15:40 -0700 (PDT)
Subject: Re: [PATCH] dts: Disable DMA support on the BK4 vf610 device's
 fsl_lpuart driver
To: Lukasz Majewski <lukma@denx.de>
References: <20191009143032.9261-1-lukma@denx.de>
 <b39b6860-9e9b-5cee-a07e-7b430c2e5119@arm.com> <20191009164442.51f27b9d@jawa>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <34d5f652-57e5-168e-0025-38b897e88fff@arm.com>
Date: Wed, 9 Oct 2019 16:15:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191009164442.51f27b9d@jawa>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_081542_707815_9355CC55 
X-CRM114-Status: GOOD (  23.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 WEIRD_QUOTING          BODY: Weird repeated double-quotation marks
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/10/2019 15:44, Lukasz Majewski wrote:
> Hi Robin,
> 
>> On 09/10/2019 15:30, Lukasz Majewski wrote:
>>> This change disables the DMA support (RX/TX) on the NXP's fsl_lpuart
>>> driver - the PIO mode is used instead. This change is necessary for
>>> better robustness of BK4's device use cases with many potentially
>>> interrupted short serial transfers.
>>>
>>> Without it the driver hangs when some distortion happens on UART
>>> lines.
>>>
>>> Signed-off-by: Lukasz Majewski <lukma@denx.de>
>>> ---
>>>    arch/arm/boot/dts/vf610-bk4.dts | 4 ++++
>>>    1 file changed, 4 insertions(+)
>>>
>>> diff --git a/arch/arm/boot/dts/vf610-bk4.dts
>>> b/arch/arm/boot/dts/vf610-bk4.dts index 0f3870d3b099..ad20f3442d40
>>> 100644 --- a/arch/arm/boot/dts/vf610-bk4.dts
>>> +++ b/arch/arm/boot/dts/vf610-bk4.dts
>>> @@ -259,24 +259,28 @@
>>>    &uart0 {
>>>    	pinctrl-names = "default";
>>>    	pinctrl-0 = <&pinctrl_uart0>;
>>> +	dma-names = "","";
>>
>> This looks like a horrible hack - is there any reason not to just
>> strip things at compile-time, i.e. "/delete-property/ dmas;"?
> 
> I don't want to strip the dma-names property globally. I just want to
> adjust this particular driver mode from DMA to PIO.

What do you mean by "globally"? The /delete-property/ operator just 
removes a previously-defined property from the node in which it appears.
> For my use cases - as written in the commit message - the PIO mode is
> more suitable (and reliable).

Right, and having invalid "dma-names" properties for this board is what 
happens to trick Linux into not using DMA mode via 
of_dma_request_slave_channel() failing, yes? What I'm saying is that if 
the underlying justification is that it's not worth using DMA mode at 
all on this board, then suppressing the actual "dmas" property it its 
DTS such that there's no dependency on a particular driver behaviour is 
a lot more robust.

Robin.

>>>    	status = "okay";
>>>    };
>>>    
>>>    &uart1 {
>>>    	pinctrl-names = "default";
>>>    	pinctrl-0 = <&pinctrl_uart1>;
>>> +	dma-names = "","";
>>>    	status = "okay";
>>>    };
>>>    
>>>    &uart2 {
>>>    	pinctrl-names = "default";
>>>    	pinctrl-0 = <&pinctrl_uart2>;
>>> +	dma-names = "","";
>>>    	status = "okay";
>>>    };
>>>    
>>>    &uart3 {
>>>    	pinctrl-names = "default";
>>>    	pinctrl-0 = <&pinctrl_uart3>;
>>> +	dma-names = "","";
>>>    	status = "okay";
>>>    };
>>>    
>>>    
> 
> 
> 
> 
> Best regards,
> 
> Lukasz Majewski
> 
> --
> 
> DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email: lukma@denx.de
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
