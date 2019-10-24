Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F2BE3262
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 14:29:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ju0l9KObbOIKXClUGHL/NpEnUECWNsaofJfjZJS3eRk=; b=dhRuczVkA5vkao0R+sLjVwyPa
	byXA8a3wPEgCdxF374t01kwd4QJbO/NdPDe8sCPZGLtFbkG3bohs2vpn1QuXTmv0swOF/FKbmo55c
	KKh1So4ELcBxb4i6zMiXhNfT2EalcCfqCCTUDqJ8UrjR8DawU8CAzdNJBgq20ispeiBjSnEQ2rphB
	5XbxRxRJzlKvLBWhWJZ8DueoKofkYsGo80xKmsH8fXaLyOrpfHtu4zgwuVvLiO7YcYxV8zXAxyYxD
	hR0ZfsomLRXPt5VMhSwqYBmWGifwC0ID1/gCBHznTPBQBbnBlfaB6rA//2O6cdmH0Mb+Y0zo/BxBi
	Fx1lYg/uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNcFA-0002Wf-45; Thu, 24 Oct 2019 12:29:32 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNcF1-0002W3-0s
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 12:29:25 +0000
X-Originating-IP: 92.137.17.54
Received: from [192.168.10.51] (alyon-657-1-975-54.w92-137.abo.wanadoo.fr
 [92.137.17.54]) (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id AEB8160003
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 12:29:13 +0000 (UTC)
Subject: Re: [PATCH 2/4] i2c: at91: implement i2c bus recovery
To: linux-arm-kernel@lists.infradead.org
References: <20191002144658.7718-1-kamel.bouhara@bootlin.com>
 <20191002144658.7718-3-kamel.bouhara@bootlin.com>
 <20191009135500.ufkxcemccwfcfys7@M43218.corp.atmel.com>
 <20191009140145.GE4254@piout.net>
 <20191010065408.y7i7aywdztgixv47@M43218.corp.atmel.com>
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
Message-ID: <ead1bd39-5834-b970-06b7-fdc9c50bb780@bootlin.com>
Date: Thu, 24 Oct 2019 14:29:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191010065408.y7i7aywdztgixv47@M43218.corp.atmel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_052923_334354_F6C75184 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 10/10/2019 08:54, Ludovic Desroches wrote:
> On Wed, Oct 09, 2019 at 04:01:47PM +0200, Alexandre Belloni wrote:
>>
>> On 09/10/2019 15:55:00+0200, Ludovic Desroches wrote:
>>> On Wed, Oct 02, 2019 at 04:46:56PM +0200, Kamel Bouhara wrote:
>>>> External E-Mail
>>>>
>>>>
>>>> Implement i2c bus recovery when slaves devices might hold SDA low.
>>>> In this case re-assign SCL/SDA to gpios and issue 9 dummy clock pulses
>>>> until the slave release SDA.
>>>>
>>>
>>> Hi Kamel,
>>>
Hi Ludovic,

>>> Thanks for adding this new feature. As I see patches only for sama5d3 and
>>> sama5d4, I assume it has not been tested with a sama5d2, isn't it?
>>>
>>
>> I there a point having it on sama5d2 as the controller already supports
>> this feature?
>>
> 
> Right, I was focused on pinctrl and forget we have this feature
> supported by the IP.
> 
>>> I doubt it works with a sama5d2 because of the pinctrl. I also wonder if it can
>>> work if we add .strict = true to pinmux_ops which is something plan for the
>>> future...
>>>
>>
>> I don't see why it wouldn't work with strict as this is switching muxing
>> properly instead of using the pins for two functions at the same time.
>>
> 
> Not sure devm_gpiod_get won't fail with strict.
> 
Actually the strict flag is checked in the pinmux core to allow the pin 
request.

What is the purpose to enable it ? It seems to break a lot things, eg. 
on sama5d3 :

# dmesg |grep pin
pinctrl-at91 ahb:apb:pinctrl@fffff200: pin pioA18 already requested by 
f801c000.i2c; cannot claim for fffff200.gpio:18
pinctrl-at91 ahb:apb:pinctrl@fffff200: pin-18 (fffff200.gpio:18) status -22
pinctrl-at91 ahb:apb:pinctrl@fffff200: pin pioA19 already requested by 
f801c000.i2c; cannot claim for fffff200.gpio:19
pinctrl-at91 ahb:apb:pinctrl@fffff200: pin-19 (fffff200.gpio:19) status -22
pinctrl-at91 ahb:apb:pinctrl@fffff200: pin pioE9 already requested by 
500000.gadget; cannot claim for fffffa00.gpio:137
pinctrl-at91 ahb:apb:pinctrl@fffff200: pin-137 (fffffa00.gpio:137) 
status -22
pinctrl-at91 ahb:apb:pinctrl@fffff200: pin pioE0 already requested by 
f0000000.mmc; cannot claim for fffffa00.gpio:128
pinctrl-at91 ahb:apb:pinctrl@fffff200: pin-128 (fffffa00.gpio:128) 
status -22
pinctrl-at91 ahb:apb:pinctrl@fffff200: pin pioE1 already requested by 
f8000000.mmc; cannot claim for fffffa00.gpio:129
pinctrl-at91 ahb:apb:pinctrl@fffff200: pin-129 (fffffa00.gpio:129) 
status -22
pinctrl-at91 ahb:apb:pinctrl@fffff200: pin pioE29 already requested by 
gpio_keys; cannot claim for fffffa00.gpio:157
pinctrl-at91 ahb:apb:pinctrl@fffff200: pin-157 (fffffa00.gpio:157) 
status -22

> Ludovic
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
Kamel Bouhara, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
