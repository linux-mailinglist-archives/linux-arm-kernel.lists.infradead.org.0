Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF309C935E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 23:16:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gvrHTmAuaTOiDwkNKq2c/x5WENiH8q7IAgg5mUSL2ZE=; b=L3PJRsli4Bhsjh
	reDYd95yu8OE71sx7YcBFrMmIfWD/SSf0xqZq/jerf/oBb3gVrKo3h9xGyAZiVPaqz7y6B9oMFPiv
	ImgF6/6jKr4STyDI/zULsOEFCTKKIdwf+GHkMMNdRnBGTifrPg+SPeIRlIYznIE+qN5iSjQaCMwxD
	ULzxbIW04tzUZqaojlAAEZmZogMpw8jvPf/KW9HWv/NB7dAdWQhN2abT3twYMzPbxkuSIUGMLIHG6
	SR5Ef2XCRdhzQZ5gvq+xDUGHGVbwTlWyhxru6M9wzeR/WiOA4PDj7qv4wPbgfdOUjm5at/CdduBEH
	Dl75s1o7foe/6M2rJQZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFlyj-00062c-Fo; Wed, 02 Oct 2019 21:16:09 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFlyb-00060i-B5
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 21:16:03 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 0B60A891A9;
 Thu,  3 Oct 2019 10:15:50 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1570050950;
 bh=25Xmkl5cio0Zp4+K/8QH29O5rjUHD24kwL+T+bPzVZQ=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=HDhuKx5GinYfi8fD+VkNKJePuxXIbTmU/zeVzIswJVMgaEWwvh0mYq3y8Emf7sxra
 Qy/8/VXFlzK6EXzgx/AbIACWGnvwbloDsO0JSD2AX+d7LklILJQ0/gGY3f0ajtVLv9
 V28yB1Q1cDGnoVL3f5BJn8zkoPkkThky1gnl2/MLN+J1awuuqLWV05RazaEUiOZehi
 J5P6jdlXbAeqvn9msQnpXoWLb566p9VKwlw9WA0JCYyI4ChXhXAE+zhHm5VeMwlQEf
 Oz+ZpcsAQ+qhV9Dr7gybFC6bSIB/PVQhDZEDea8tQWxs2ubuB+Z9xO1/viyRZVmXLZ
 eHOm6/+iJ0BEw==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d9513860000>; Thu, 03 Oct 2019 10:15:50 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) with Microsoft SMTP Server
 (TLS) id 15.0.1156.6; Thu, 3 Oct 2019 10:15:49 +1300
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Thu, 3 Oct 2019 10:15:49 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "rayagonda.kokatanur@broadcom.com" <rayagonda.kokatanur@broadcom.com>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>, "f.fainelli@gmail.com"
 <f.fainelli@gmail.com>, "li.jin@broadcom.com" <li.jin@broadcom.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "sbranden@broadcom.com" <sbranden@broadcom.com>, "rjui@broadcom.com"
 <rjui@broadcom.com>
Subject: Re: Problem sharing interrupts between gpioa and uart0 on Broadcom
 Hurricane 2 (iProc)
Thread-Topic: Problem sharing interrupts between gpioa and uart0 on Broadcom
 Hurricane 2 (iProc)
Thread-Index: AQHVeAChr1G1lS1DPESIPAb5KujH5KdEPSUAgAAC1QCAAsM3gA==
Date: Wed, 2 Oct 2019 21:15:49 +0000
Message-ID: <e2e887ae92b61b01eda02b53522b6b07935042ea.camel@alliedtelesis.co.nz>
References: <32c3d1dfe61a656e3250438d887e5ba91bd880d0.camel@alliedtelesis.co.nz>
 <d72a965a-e4e1-ba5d-cd62-b31939e75e44@gmail.com>
 <f3a243b1f22cf29075467d236610dbd2e7a20e55.camel@alliedtelesis.co.nz>
In-Reply-To: <f3a243b1f22cf29075467d236610dbd2e7a20e55.camel@alliedtelesis.co.nz>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:2007:5b4f:51fc:6cd1]
Content-ID: <180ABB796D214C49B0635D214E52E607@atlnz.lc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_141601_712618_AA6B217A 
X-CRM114-Status: GOOD (  28.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-10-01 at 16:04 +1300, Chris Packham wrote:
> Hi Florian,
> 
> On Mon, 2019-09-30 at 19:54 -0700, Florian Fainelli wrote:
> > 
> > On 9/30/2019 7:33 PM, Chris Packham wrote:
> > > Hi,
> > > 
> > > We have a platform using the BCM53344 integrated switch/CPU. This is
> > > part of the Hurricane 2 (technically Wolfhound) family of devices.
> > > 
> > > Currently we're using pieces of Broadcom's "iProc" SDK based on an out
> > > of date kernel and we'd very much like to be running as close to
> > > upstream as possible. The fact that the Ubiquiti UniFi Switch 8 is
> > > upstream gives me some hope.
> > 
> > FYI, I could not get enough information from the iProc SDK to port (or
> > not) the clock driver, so if nothing else, that is an area that may
> > require immediate work (though sometimes fixed-clocks would do just fine).
> 
> Setting a fixed clock seems to work for me. At least for now.
> 
> > 
> > > 
> > > My current problem is the fact that the uart0 interrupt is shared with
> > > the Chip Common A gpio block. When I have and interrupt node on the
> > > gpio in the device tree I get an init exit at startup. If I remove the
> > > interrupt node the system will boot (except I don't get cascaded
> > > interrupts from the GPIOs).
> > > 
> > > Looking at the pinctrl-nsp-gpio.c it looks as though I might be able to
> > > make this work if I can convince the gpio code to return IRQ_HANDLED or
> > > IRQ_NONE but I'm struggling against the fact that the pinctrl-iproc-
> > > gpio.c defers it's interrupt handing to the gpio core.
> > 
> > Not sure I follow you here, what part is being handed to gpiolib? The
> > top interrupt handler under nsp_gpio_irq_handler() will try to do
> > exactly as you described. In fact, there are other iProc designs where
> > "gpio-a" and another interrupt, arch/arm/boot/dts/bcm-nsp.dtsi is one
> > such example and I never had problems with that part of NSP.
> > 
> 
> nsp_gpio_probe() creates the irq domain directly and
> nsp_gpio_irq_handler() directly deals with sharing by returning
> IRQ_HANDLED or IRQ_NONE depending on whether it has a bit set.
> 
> iproc_gpio_probe() on the sets iproc_gpio_irq_handler() as the
> parent_handler and defers to gpiolib to deal with the irq domain etc.
> 
> I'm currently assuming this is why I can't have uart0 and gpio
> interrupts. But of course I could be completely wrong.
> 
> > > 
> > > Is there any way I can get the gpio core to deal with the shared
> > > interrupt?

I think at least part of my problem is that the iProc ChipCommonB
register layout is different to the iProc ChipCommonA. It's closer to
the NorthStar Plus but still different layout. I think I'll need to
write a new driver rather than trying to get pinctrl-nsp-gpio.c or
pinctrl-iproc-gpio.c to work.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
