Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B68102389
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 12:46:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U/iAjjshjwOjLLF20gAJvBQMyEZa3ZEpzSH78G8tI7w=; b=u0p1NimggLEv8I
	1cHmzwLJKpI7qokZ/MkoOeitPg882uoHFBFHZM0cMIWwpZc6R+gVQndfCZ4osTrcApu8NhEv79so9
	wGhKfc0yLKGmcwuYg1+xu/pD8YS2L1vAeWq4FZ98ee3AvP/dDL7z5fT+8ShbggYRTuQsSJIAJf5pQ
	aQPssyLCRHkb0BrUX6GmHlqpcZyDorGSOC8T74jT4ldikoT7Qhem5uQoRHTgUtxdnbmSlT2MWo45q
	FshmH/DOHJ73BfFcaYBnPLqkCqwLYfD5pcb73qSA4OTJAMGo7yy/hzOiXxK3ZvMi0bYHvC5e3nqLk
	HCGv69XwTdf+1MyJq+HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX1xj-0006tq-Uj; Tue, 19 Nov 2019 11:46:27 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX1xZ-0006sz-QH
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 11:46:21 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 2FD4520C6F;
 Tue, 19 Nov 2019 12:46:16 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 1577820C65;
 Tue, 19 Nov 2019 12:46:16 +0100 (CET)
Subject: Re: Using a GPIO as an interrupt line
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <f0d383f3-8efa-ae68-62af-68f69cd4143f@free.fr>
 <20191119095748.GX25745@shell.armlinux.org.uk>
 <07db59e7-ff16-0457-87f2-fba10dc182d6@free.fr>
 <20191119105814.GZ25745@shell.armlinux.org.uk>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <9356da2a-2190-03fd-f5cc-6a0fd8c38e89@free.fr>
Date: Tue, 19 Nov 2019 12:46:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191119105814.GZ25745@shell.armlinux.org.uk>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Tue Nov 19 12:46:16 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_034619_150042_1292EDE3 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: MSM <linux-arm-msm@vger.kernel.org>, Marc Zyngier <maz@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 GPIO <linux-gpio@vger.kernel.org>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/11/2019 11:58, Russell King - ARM Linux admin wrote:

> On Tue, Nov 19, 2019 at 11:46:21AM +0100, Marc Gonzalez wrote:
>
>> On 19/11/2019 10:57, Russell King - ARM Linux admin wrote:
>>
>>> On Tue, Nov 19, 2019 at 10:28:15AM +0100, Marc Gonzalez wrote:
>>>
>>>> The board I'm working on provides a TCA9539 I/O expander.
>>>> Or, as the datasheet(*) calls it, a "Low Voltage 16-Bit I2C and
>>>> SMBus Low-Power I/O Expander with Interrupt Output, Reset Pin,
>>>> and Configuration Registers"
>>>>
>>>> (*) http://www.ti.com/lit/ds/symlink/tca9539.pdf
>>>>
>>>> The binding is documented in Documentation/devicetree/bindings/gpio/gpio-pca953x.txt
>>>>
>>>> I have some doubts about the interrupt output, described as:
>>>>
>>>> Optional properties:
>>>>  - interrupts: interrupt specifier for the device's interrupt output.
>>>>
>>>> In my board's DT, the I/O expander is described as:
>>>>
>>>> 	exp1: gpio@74 {
>>>> 		compatible = "ti,tca9539";
>>>> 		reg = <0x74>;
>>>> 		gpio-controller;
>>>> 		#gpio-cells = <2>;
>>>> 		reset-gpios = <&tlmm 96 GPIO_ACTIVE_LOW>;
>>>> 		pinctrl-names = "default";
>>>> 		pinctrl-0 = <&top_exp_rst>;
>>>> 		interrupt-parent = <&tlmm>;
>>>> 		interrupts = <42 IRQ_TYPE_LEVEL_HIGH>;
>>
>> As pointed out by ukleinek on IRC, I might have (??) specified the wrong
>> trigger type. The data-sheet states:
>> "The TCA9539 open-drain interrupt (INTn) output is activated when any input state
>> differs from its corresponding Input Port register state, and is used to indicate
>> to the system master that an input state has changed."
>> (The data sheet speaks of "INT with a line on top"; what is the typical way to
>> write that in ASCII? I was told that adding a trailing 'n' or 'b' was common.)
> 
> /INT or nINT are commonly used - I've never heard or seen 'b' (which is
> commonly used as a suffix on binary numbers) or a trailing 'n'.

Perhaps the 'b' suffix is only used in French...
'b' might stand for "barre" (i.e. the line above the symbol).


> Is pin 42 something that can be muxed?  If so, it seems sane to specify
> configuration for it.  Whether it needs to be a GPIO or whether it has
> a specific "interrupt" function mux state depends on the SoC.

According to drivers/pinctrl/qcom/pinctrl-msm8998.c
PINGROUP(42, EAST, blsp_spi6, blsp_uart3_b, blsp_uim3_b, _, qdss, _, _, _, _)

I don't think there is an explicit "interrupt" function in
this pinctrl driver... except FUNCTION(ssc_irq).

static const char * const ssc_irq_groups[] = {
	"gpio58", "gpio59", "gpio60", "gpio61", "gpio62", "gpio63", "gpio78",
	"gpio79", "gpio80", "gpio117", "gpio118", "gpio119", "gpio120",
	"gpio121", "gpio122", "gpio123", "gpio124", "gpio125",
};

@Bjorn, do you know what these are used for?

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
