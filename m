Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BE77BA02
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 08:55:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GhA+8VEHbJRf3l1S/dgzE4It8MIVFROxMOKtn6WsB50=; b=AiWMzgSvhZkyDhsPLyhXdAZ1g
	TzN4km3nHrfd3kKbbdrNxljeg/Cr6wHQGpPV7yKQuyzKaCO6n8AbcasN05qTq32IZLDzSf2PNz7PL
	ugUqiApW8fSksEetqCQjDJAlctKsvuE2TwZEg9D7djbpb0M23AoqW8vW66VjBE9p9dmmbz20HaYqu
	/0SRYMwLiK8OBZJeO0TrYym+7dAUSeW+IHyGut3DazUDPusifPIzGGZNJVdiYu6FBp+87yNfEcEfF
	blOFPSvdZ15PxxxsOziEQJrhcTB37LYGcGC7lnt4EX1dqFyErVkqq1S4FxxNmLp3TD8wdj7HM5fd8
	Pp0aEIxAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsiVn-00041A-SO; Wed, 31 Jul 2019 06:54:59 +0000
Received: from uho.ysoft.cz ([81.19.3.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsiVa-00040l-S2
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 06:54:48 +0000
Received: from [10.1.8.111] (unknown [10.1.8.111])
 by uho.ysoft.cz (Postfix) with ESMTP id 99908A415D;
 Wed, 31 Jul 2019 08:54:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ysoft.com;
 s=20160406-ysoft-com; t=1564556075;
 bh=ThsOhNRIajeNUym+bp8b02ILLZbpBe61k5u1jccGA4k=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=evXEg1ZuUxWP5CJvP5psdM7di4WpQYJivbeMTIixKqBCqE5GLn7H9RwcZR32Y9oyR
 0CL+5q84x8jCK4nU/WyASAM7NFAPO22oFL030wS+cqdlLl2hNMzqijqHnL2zdoe7F+
 JULn9s28Y+22TEIhoV6IwIT/mB9rauMJ3VqlXPhw=
Subject: Re: [PATCH 12/22] ARM: dts: imx6: Add touchscreens used on Toradex
 eval boards
To: Philippe Schenker <philippe.schenker@toradex.com>,
 "festevam@gmail.com" <festevam@gmail.com>
References: <20190730144649.19022-1-dev@pschenker.ch>
 <20190730144649.19022-13-dev@pschenker.ch>
 <CAOMZO5DRi6yawn3RF-Mouiejz0nc7htdsCjOBC_EXZZKUZ3nvA@mail.gmail.com>
 <60760aa2d4710252e13877c409d0c4d2267824a6.camel@toradex.com>
From: =?UTF-8?B?TWljaGFsIFZva8OhxI0=?= <michal.vokac@ysoft.com>
Message-ID: <e0f508aa-61d1-d555-040b-aa28e3ea8220@ysoft.com>
Date: Wed, 31 Jul 2019 08:54:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <60760aa2d4710252e13877c409d0c4d2267824a6.camel@toradex.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_235447_066356_A3AD1055 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.19.3.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 31. 07. 19 8:43, Philippe Schenker wrote:
> On Tue, 2019-07-30 at 17:46 -0300, Fabio Estevam wrote:
>> On Tue, Jul 30, 2019 at 11:57 AM Philippe Schenker <dev@pschenker.ch> wrote:
>>
>>> +       /* Atmel maxtouch controller */
>>> +       atmel_mxt_ts: atmel_mxt_ts@4a {
>>
>> Generic node names, please:
>>
>> touchscreen@4a
>>
>>> +               compatible = "atmel,maxtouch";
>>> +               pinctrl-names = "default";
>>> +               pinctrl-0 = <&pinctrl_pcap_1>;
>>> +               reg = <0x4a>;
>>> +               interrupt-parent = <&gpio1>;
>>> +               interrupts = <9 IRQ_TYPE_EDGE_FALLING>; /* SODIMM 28 */
>>> +               reset-gpios = <&gpio2 10 GPIO_ACTIVE_HIGH>; /* SODIMM 30 */
>>> +               status = "disabled";
>>> +       };
>>> +
>>> +       /*
>>> +        * the PCAPs use SODIMM 28/30, also used for PWM<B>, PWM<C>, aka
>>> pwm1,
>>> +        * pwm4. So if you enable one of the PCAP controllers disable the
>>> pwms.
>>> +        */
>>> +       pcap: pcap@10 {
>>
>> touchscreen@10
>>
>>> +               /* TouchRevolution Fusion 7 and 10 multi-touch controller */
>>> +               compatible = "touchrevolution,fusion-f0710a";
>>
>> I do not find this binding documented.
> 
> Thanks for your feedback Fabio, and sorry such obvious stuff went through. I
> will go through my whole patchset again more carefully lookup all the bindings.
>
Hi Philippe,
also look at the I2C sub-nodes - they should be sorted by the bus address.
In most of the patches it is not correct.

Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
