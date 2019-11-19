Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B76FA102236
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 11:46:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2RchLgqzSzblZW7sDg0M+54qQ4NMsZgZ1hVG/myI+9A=; b=flQWTFhMkR0Txy
	eFE4fS8S/N0EnSNz7com+ByJnyrrr2ja0PtFPvSGT24O0pTDNxiA8d8UszeJJpmtajiH7Q727L3FG
	5tfbwGXzW/dPBtwg5jjb2NAuvOKzjfeVm0KbG+c4vWKizSVcz3YA2zXgmEt/2slLg66VZNk6KQxU3
	H+ZjxbTMYjOFUPDQAchDka3zc/iHgb9NcVfJxrJxXXaJHWMGPVrukvAZWvMnRTJoYZpmpL5aUqS8I
	mFPZSETN8ytn7gOx1pXOSxEj/tNhngvir1GwRJWovJY6kHdQL/n1gu1Ve+XEQEQ5eaTxTe3qHIoB2
	feaqMbUx4EJRMd8BYFDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX11p-0004Jq-Ke; Tue, 19 Nov 2019 10:46:37 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX11g-0004JJ-2y
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 10:46:31 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id DF7E820BA0;
 Tue, 19 Nov 2019 11:46:21 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id CF4B7204EF;
 Tue, 19 Nov 2019 11:46:21 +0100 (CET)
Subject: Re: Using a GPIO as an interrupt line
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <f0d383f3-8efa-ae68-62af-68f69cd4143f@free.fr>
 <20191119095748.GX25745@shell.armlinux.org.uk>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <07db59e7-ff16-0457-87f2-fba10dc182d6@free.fr>
Date: Tue, 19 Nov 2019 11:46:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191119095748.GX25745@shell.armlinux.org.uk>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Tue Nov 19 11:46:21 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_024628_270145_974A4B70 
X-CRM114-Status: GOOD (  17.31  )
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, MSM <linux-arm-msm@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, GPIO <linux-gpio@vger.kernel.org>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/11/2019 10:57, Russell King - ARM Linux admin wrote:

> On Tue, Nov 19, 2019 at 10:28:15AM +0100, Marc Gonzalez wrote:
> 
>> The board I'm working on provides a TCA9539 I/O expander.
>> Or, as the datasheet(*) calls it, a "Low Voltage 16-Bit I2C and
>> SMBus Low-Power I/O Expander with Interrupt Output, Reset Pin,
>> and Configuration Registers"
>>
>> (*) http://www.ti.com/lit/ds/symlink/tca9539.pdf
>>
>> The binding is documented in Documentation/devicetree/bindings/gpio/gpio-pca953x.txt
>>
>> I have some doubts about the interrupt output, described as:
>>
>> Optional properties:
>>  - interrupts: interrupt specifier for the device's interrupt output.
>>
>> In my board's DT, the I/O expander is described as:
>>
>> 	exp1: gpio@74 {
>> 		compatible = "ti,tca9539";
>> 		reg = <0x74>;
>> 		gpio-controller;
>> 		#gpio-cells = <2>;
>> 		reset-gpios = <&tlmm 96 GPIO_ACTIVE_LOW>;
>> 		pinctrl-names = "default";
>> 		pinctrl-0 = <&top_exp_rst>;
>> 		interrupt-parent = <&tlmm>;
>> 		interrupts = <42 IRQ_TYPE_LEVEL_HIGH>;

As pointed out by ukleinek on IRC, I might have (??) specified the wrong
trigger type. The data-sheet states:
"The TCA9539 open-drain interrupt (INTn) output is activated when any input state
differs from its corresponding Input Port register state, and is used to indicate
to the system master that an input state has changed."
(The data sheet speaks of "INT with a line on top"; what is the typical way to
write that in ASCII? I was told that adding a trailing 'n' or 'b' was common.)

According to that description, it looks like IRQ_TYPE_LEVEL_LOW?
(Weird, because it worked well with IRQ_TYPE_LEVEL_HIGH.)

> This specifies an interrupt signal, number 42, on the tlmm interrupt
> controller. It isn't a GPIO specification. Not every interrupt is a
> GPIO, and some SoCs can have dedicated interrupt pins that are
> exactly that.
> 
> Hence, needlessly limiting an external device to requiring a GPIO for
> its interrupt is detrimental.

That makes complete sense.

IIUC, what is missing in my DT spec is defining pin 42 as a GPIO pin.
Looking more closely at top_exp_rst:

	top_exp_rst: top_exp_rst {
		mux {
			pins = "gpio96";
			function = "gpio";
		};

		config {
			pins = "gpio96";
			drive-strength = <2>;
			bias-pull-down;
		};
	};

IIUC, this defines pin 96 as a GPIO pin (as well as defining some low-level
properties of the pin). Likely I need something similar for pin 42?

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
