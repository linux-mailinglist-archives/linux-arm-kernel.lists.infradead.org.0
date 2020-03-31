Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C31E198D37
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 09:40:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a72eJxjZGQMyo7dhUg6Es2vrbJWdIVnRLpAfUAUfU2c=; b=O5GVCueJjbT17VSkbWNqieZ+e
	DintNIEh8WYg1KkDf4xd9WBh7AA14kSWYN3bcQzQbt1hrzVtSVk5VxuZpYdcmug8IOrTkzIzNGZOT
	yjUchrY/F12h64WMLqm1zv2Qkl6uVWlwqPE/VIl4IyziV5NIiqodP025OspQGZlFDfWOTq6J3is0u
	bwR6tGlKKi4D/qGpSwW+75AxgDAExHBKkxepwiE6jSi62GIoMuoI29JvXe5npjmOeQfzxbzSaDWij
	RJ9BiJckUMckQ2jFVE34rrGpF4QENPMg76tBJbUwRydKOVyKxNAWf543mZc1DlQZV2mzqPbYZ/yn6
	mAF9fBdQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJBW1-0002b8-Lg; Tue, 31 Mar 2020 07:40:53 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJBVn-0002aF-36
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 07:40:42 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 7CC1E22EE3;
 Tue, 31 Mar 2020 09:40:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1585640434;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mviIisaY+natZUJ2Z168wGqsXylmvuvr2v6d2rj4s3E=;
 b=SOXcyaVY+Xh1wNUH5QfHmaec2ziYF4dLWLvGyJL95daw/h6eKFaCWpOIFTEW8H93ID6Qnh
 y756CM/zRC6dngc+sUgBXs/wyn4mOK8MCbT3stSE0gEjxEDC6ttFmj2u/XkqH7FgOiiJqV
 6Q1uQMqY7aUaYn+pGQPt1Aow6EJGC58=
MIME-Version: 1.0
Date: Tue, 31 Mar 2020 09:40:33 +0200
From: Michael Walle <michael@walle.cc>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 04/18] dt-bindings: mfd: Add bindings for sl28cpld
In-Reply-To: <20200330223535.GA31402@bogus>
References: <20200317205017.28280-1-michael@walle.cc>
 <20200317205017.28280-5-michael@walle.cc> <20200330223535.GA31402@bogus>
Message-ID: <538e5e51e59594a39064841509395fdb@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: 7CC1E22EE3
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 DBL_PROHIBIT(0.00)[0.0.0.0:email,0.0.0.1:email];
 RCPT_COUNT_TWELVE(0.00)[21]; NEURAL_HAM(-0.00)[-0.835];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,linaro.org,baylibre.com,suse.com,roeck-us.net,gmail.com,pengutronix.de,linux-watchdog.org,kernel.org,nxp.com,linutronix.de,lakedaemon.net];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_004039_440713_86707DD4 
X-CRM114-Status: GOOD (  23.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-hwmon@vger.kernel.org, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Marc Zyngier <maz@kernel.org>,
 linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 linux-gpio@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2020-03-31 00:35, schrieb Rob Herring:
> On Tue, Mar 17, 2020 at 09:50:03PM +0100, Michael Walle wrote:
>> This adds device tree bindings for the board management controller 
>> found
>> on the Kontron SMARC-sAL28 board.
>> 
>> Signed-off-by: Michael Walle <michael@walle.cc>
>> ---
>>  .../bindings/mfd/kontron,sl28cpld.yaml        | 143 
>> ++++++++++++++++++
>>  1 file changed, 143 insertions(+)
>>  create mode 100644 
>> Documentation/devicetree/bindings/mfd/kontron,sl28cpld.yaml
>> 
>> diff --git 
>> a/Documentation/devicetree/bindings/mfd/kontron,sl28cpld.yaml 
>> b/Documentation/devicetree/bindings/mfd/kontron,sl28cpld.yaml
>> new file mode 100644
>> index 000000000000..3b9cca49d2d6
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mfd/kontron,sl28cpld.yaml
>> @@ -0,0 +1,143 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/mfd/kontron,sl28cpld.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Kontron's sl28cpld board management controller
>> +
>> +maintainers:
>> +  - Michael Walle <michael@walle.cc>
>> +
>> +description: |
>> +  The board management controller may contain different IP blocks 
>> like
>> +  watchdog, fan monitoring, PWM controller, interrupt controller and 
>> a
>> +  GPIO controller.
>> +
>> +properties:
>> +  compatible:
>> +    const: kontron,sl28cpld
>> +
>> +  reg:
>> +    description:
>> +      I2C device address.
>> +    maxItems: 1
>> +
>> +  "#address-cells":
>> +    const: 1
>> +
>> +  "#size-cells":
>> +    const: 0
>> +
>> +  "#interrupt-cells":
>> +    const: 2
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  interrupt-controller: true
>> +
>> +patternProperties:
>> +  "^gp(io|i|o)(@[0-9]+)?$":
> 
> Just 'gpio'. We don't need that level of distinguishing in node names.
> 
>> +    $ref: ../gpio/kontron,sl28cpld-gpio.yaml
>> +
>> +  "^hwmon(@[0-9]+)?$":
>> +    $ref: ../hwmon/kontron,sl28cpld-hwmon.yaml
>> +
>> +  "^pwm(@[0-9]+)?$":
>> +    $ref: ../pwm/kontron,sl28cpld-pwm.yaml
>> +
>> +  "^watchdog(@[0-9]+)?$":
>> +    $ref: ../watchdog/kontron,sl28cpld-wdt.yaml
> 
> The patches for these files need to come first or validating this file
> fails. Really, you can just make all five files 1 patch.
> 
>> +
>> +required:
>> +  - "#address-cells"
>> +  - "#size-cells"
>> +  - compatible
>> +  - reg
>> +  - "#interrupt-cells"
>> +  - interrupt-controller
>> +
>> +oneOf:
>> +  - required:
>> +    - interrupts
>> +  - required:
>> +    - interrupts-extended
> 
> Don't need to do this. Just make 'interrupts' required and you'll get
> interrupts-extended for free.
> 
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/irq.h>
>> +    i2c {
>> +        #address-cells = <1>;
>> +        #size-cells = <0>;
>> +
>> +        sl28cpld@4a {
>> +            #address-cells = <1>;
>> +            #size-cells = <0>;
>> +            compatible = "kontron,sl28cpld";
>> +            reg = <0x4a>;
>> +            interrupts-extended = <&gpio2 6 IRQ_TYPE_EDGE_FALLING>;
>> +
>> +            #interrupt-cells = <2>;
>> +            interrupt-controller;
>> +
>> +            gpio@0 {
>> +                compatible = "kontron,sl28cpld-gpio";
>> +                reg = <0>;
>> +
>> +                gpio-controller;
>> +                #gpio-cells = <2>;
>> +
>> +                interrupt-controller;
>> +                #interrupt-cells = <2>;
>> +            };
>> +
>> +            gpio@1 {
>> +                compatible = "kontron,sl28cpld-gpio";
>> +                reg = <1>;
>> +
>> +                gpio-controller;
>> +                #gpio-cells = <2>;
>> +
>> +                interrupt-controller;
>> +                #interrupt-cells = <2>;
>> +            };
>> +
>> +            gpo {
>> +                compatible = "kontron,sl28cpld-gpo";
>> +
>> +                gpio-controller;
>> +                #gpio-cells = <2>;
>> +                gpio-line-names = "a", "b", "c";
>> +            };
>> +
>> +            gpi {
>> +                compatible = "kontron,sl28cpld-gpi";
>> +
>> +                gpio-controller;
>> +                #gpio-cells = <2>;
>> +            };
>> +
>> +            hwmon {
>> +                compatible = "kontron,sl28cpld-fan";
>> +            };
>> +
>> +            pwm@0 {
> 
> You already used the '0' address. You can't have 2 things at the
> same address. There's only one number space at a given level.

There was a reason for having duplicate unit-addresses. See here
for my reasoning:
https://lore.kernel.org/linux-devicetree/e55d59a68f497c8f2eb406d40ae878b9@walle.cc/

But I've already noticed that it shouldn't be done it this way. The
DT check is already complaining.


> All these child devices don't have any DT resources, so you don't 
> really
> need them. The parent node could be a gpio and pwm provider and that's
> all you need in DT. Aside from DT resources, the only other reason
> to have all these child nodes are if the child blocks are going to get
> assembled in different combinations across a variety of h/w.

What do you mean by DT resources? There is a new patch series in 
preparation
where for example the watchdog has a new property
"kontron,assert-wdt-timeout-pin". Which IMHO should be go under the 
watchdog
node.
Besides from that, there are actually three interrupt controllers, ie. 
the
two full featured gpio controllers and one interrupt controller. Do you 
think
it makes sense to combine that into the parent node eg. merging 
different
thinks like an interrupt controller and the gpio controllers into a 
single
interrupt mapping in the parent node.
See also:
https://lore.kernel.org/linux-devicetree/0e3e8204ab992d75aa07fc36af7e4ab2@walle.cc/

Also please keep in mind, that these are only the current available 
building
blocks of a sl28cpld. They are likely to be extended for other 
functionalities.
So while it might be possible to merge the current nodes into the parent 
I don't
know it that is possible for future blocks.

-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
