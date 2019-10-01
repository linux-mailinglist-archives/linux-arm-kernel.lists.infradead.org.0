Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E35B8C2C30
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 05:05:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wFXnqftKUcXKjrKibDYD3TBw5ewbBVIo5uFW15TluWA=; b=IaIAPHsI4px1qC
	aG0JXdcmYzS1/x3/ceO+fLh3HFHeZMOdXwTIiY/yEsvcalL7IM8lO7VrR3aZYHKAdcJ9yQtF4gzgD
	mf9ByX3bFQ/VAYMOP8fSyJvbYUZ0c5UtNukOxWEePWxyc2pszg3FLMq/JVyyw56ew6u/wlnwUql1l
	ktBE3NoMnTMAE4THHxGn7aDUcZHvbNIvdTsg25rEihJZfDNwKw7CnqI6ApOTfHFDdMmkTZkU5BHA2
	ZHMyRiNeJPO3fhrMUDjqvBoa+Amyv7a62KKFFnKfi5r7SLfTbPEsf7dO4ODxHYETWObgeJUJhZBfW
	qvNnyYy3ZBBI/OFT5Bww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF8T7-0005ua-Bo; Tue, 01 Oct 2019 03:04:53 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF8Sw-0005tj-Cl
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 03:04:44 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id C9A0B891AC;
 Tue,  1 Oct 2019 16:04:37 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1569899077;
 bh=6Ps8c2mwMYs63gM+juMo2bF9nGCmlv/Bhb3Rap1Be20=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=g7Kb8urqcsSwRVSLn6snIAYWTH9UxmhXtG9vyE3PE6b2bHPqOJeXzBFnWlbuMLm2V
 HFIPoxUGxDmJI47iL72GqBSaZ6ivw7sTgL24PRAAqpMiqsQ5XCnKQgDXN9GNHnz68v
 ZcbMKhmDazzfis2jYT2EqPNNyCpQEZb1Itq5ksmwZ5LiTlL9Atnu1z07+BT9Dsahza
 9SdXy3WAMVVYoOCBugXsjJ6GTX+thnBjRY637m0iHFBYGNi2BxQAcntO3RAoeOqnv+
 lg1+xT+xjDEzjyEze7IxJtui+5Fx2KF7Nizz0LsKPll5SUzFGNrB531KpV2PcNPBmC
 GhO6HgSRLsqUw==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d92c2460000>; Tue, 01 Oct 2019 16:04:38 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) with Microsoft SMTP Server
 (TLS) id 15.0.1156.6; Tue, 1 Oct 2019 16:04:37 +1300
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Tue, 1 Oct 2019 16:04:37 +1300
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
Thread-Index: AQHVeAChr1G1lS1DPESIPAb5KujH5KdEPSUAgAAC1QA=
Date: Tue, 1 Oct 2019 03:04:36 +0000
Message-ID: <f3a243b1f22cf29075467d236610dbd2e7a20e55.camel@alliedtelesis.co.nz>
References: <32c3d1dfe61a656e3250438d887e5ba91bd880d0.camel@alliedtelesis.co.nz>
 <d72a965a-e4e1-ba5d-cd62-b31939e75e44@gmail.com>
In-Reply-To: <d72a965a-e4e1-ba5d-cd62-b31939e75e44@gmail.com>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:11c:6830:fcb5:dc24]
Content-ID: <9ED249CD8C3C5A4AA80456A8123D76C6@atlnz.lc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_200442_987407_4F46DC4C 
X-CRM114-Status: GOOD (  25.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Florian,

On Mon, 2019-09-30 at 19:54 -0700, Florian Fainelli wrote:
> 
> On 9/30/2019 7:33 PM, Chris Packham wrote:
> > Hi,
> > 
> > We have a platform using the BCM53344 integrated switch/CPU. This is
> > part of the Hurricane 2 (technically Wolfhound) family of devices.
> > 
> > Currently we're using pieces of Broadcom's "iProc" SDK based on an out
> > of date kernel and we'd very much like to be running as close to
> > upstream as possible. The fact that the Ubiquiti UniFi Switch 8 is
> > upstream gives me some hope.
> 
> FYI, I could not get enough information from the iProc SDK to port (or
> not) the clock driver, so if nothing else, that is an area that may
> require immediate work (though sometimes fixed-clocks would do just fine).

Setting a fixed clock seems to work for me. At least for now.

> 
> > 
> > My current problem is the fact that the uart0 interrupt is shared with
> > the Chip Common A gpio block. When I have and interrupt node on the
> > gpio in the device tree I get an init exit at startup. If I remove the
> > interrupt node the system will boot (except I don't get cascaded
> > interrupts from the GPIOs).
> > 
> > Looking at the pinctrl-nsp-gpio.c it looks as though I might be able to
> > make this work if I can convince the gpio code to return IRQ_HANDLED or
> > IRQ_NONE but I'm struggling against the fact that the pinctrl-iproc-
> > gpio.c defers it's interrupt handing to the gpio core.
> 
> Not sure I follow you here, what part is being handed to gpiolib? The
> top interrupt handler under nsp_gpio_irq_handler() will try to do
> exactly as you described. In fact, there are other iProc designs where
> "gpio-a" and another interrupt, arch/arm/boot/dts/bcm-nsp.dtsi is one
> such example and I never had problems with that part of NSP.
> 

nsp_gpio_probe() creates the irq domain directly and
nsp_gpio_irq_handler() directly deals with sharing by returning
IRQ_HANDLED or IRQ_NONE depending on whether it has a bit set.

iproc_gpio_probe() on the sets iproc_gpio_irq_handler() as the
parent_handler and defers to gpiolib to deal with the irq domain etc.

I'm currently assuming this is why I can't have uart0 and gpio
interrupts. But of course I could be completely wrong.

> > 
> > Is there any way I can get the gpio core to deal with the shared
> > interrupt?
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
