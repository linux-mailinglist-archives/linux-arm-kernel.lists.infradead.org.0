Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C77197BEAF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 12:55:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Yxpe3fyuj3FX9rFGrsRKzphvwvHCSPLUZnxRgSz/2k=; b=WlNytAhfFNxz5n
	AbJxCVwVGWBmcUgeyjw8W1bXCXCx0qR+ieRXa8a7UEiztSL2RvR/+VaK9PVGbWnQCRrDG6eLEYVsn
	PGYsg4I3YS1FPlSiiZGzZT3/7cwBw7oThhrDJzoirM2Ydz78qj1Y7M8rxonTOcm2xqCqMfFzvTPgC
	bGl5Xs3Issu7X6Rxmdze8MZm+KabeQq9K40JjnkMyCRccJNGf3OjFapxn/taiZlBealQXz4SS6zae
	4aZVhpaBj4bduO0OO33MaNDFX6LO7tonpCPBEXiVHPO/8zI2ylFVRk0IvoTeoR/puOEsxC4mIOUcN
	RTjCOILLr6qLPSWvKJSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsmGi-0006ct-N3; Wed, 31 Jul 2019 10:55:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsmGb-0006RW-LI; Wed, 31 Jul 2019 10:55:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2378C337;
 Wed, 31 Jul 2019 03:55:29 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 DBF6C3F71F; Wed, 31 Jul 2019 03:55:26 -0700 (PDT)
Subject: Re: [PATCH RFC 18/18] ARM: dts: Add minimal Raspberry Pi 4 support
To: Stefan Wahren <wahrenst@gmx.net>, Stefan Wahren <stefan.wahren@i2se.com>
References: <1563398164-2679-1-git-send-email-wahrenst@gmx.net>
 <1563398164-2679-5-git-send-email-wahrenst@gmx.net>
 <20190723191326.3afdff83@why> <ebcb934d-7bab-bfc7-3371-1b5032b67ec7@i2se.com>
 <86v9vmmlsd.wl-marc.zyngier@arm.com>
 <6f3933b5-3b6c-f76b-3c7b-8cbf4e23108b@gmx.net>
From: Marc Zyngier <marc.zyngier@arm.com>
Openpgp: preference=signencrypt
Autocrypt: addr=marc.zyngier@arm.com; prefer-encrypt=mutual; keydata=
 mQINBE6Jf0UBEADLCxpix34Ch3kQKA9SNlVQroj9aHAEzzl0+V8jrvT9a9GkK+FjBOIQz4KE
 g+3p+lqgJH4NfwPm9H5I5e3wa+Scz9wAqWLTT772Rqb6hf6kx0kKd0P2jGv79qXSmwru28vJ
 t9NNsmIhEYwS5eTfCbsZZDCnR31J6qxozsDHpCGLHlYym/VbC199Uq/pN5gH+5JHZyhyZiNW
 ozUCjMqC4eNW42nYVKZQfbj/k4W9xFfudFaFEhAf/Vb1r6F05eBP1uopuzNkAN7vqS8XcgQH
 qXI357YC4ToCbmqLue4HK9+2mtf7MTdHZYGZ939OfTlOGuxFW+bhtPQzsHiW7eNe0ew0+LaL
 3wdNzT5abPBscqXWVGsZWCAzBmrZato+Pd2bSCDPLInZV0j+rjt7MWiSxEAEowue3IcZA++7
 ifTDIscQdpeKT8hcL+9eHLgoSDH62SlubO/y8bB1hV8JjLW/jQpLnae0oz25h39ij4ijcp8N
 t5slf5DNRi1NLz5+iaaLg4gaM3ywVK2VEKdBTg+JTg3dfrb3DH7ctTQquyKun9IVY8AsxMc6
 lxl4HxrpLX7HgF10685GG5fFla7R1RUnW5svgQhz6YVU33yJjk5lIIrrxKI/wLlhn066mtu1
 DoD9TEAjwOmpa6ofV6rHeBPehUwMZEsLqlKfLsl0PpsJwov8TQARAQABtCNNYXJjIFp5bmdp
 ZXIgPG1hcmMuenluZ2llckBhcm0uY29tPokCTwQTAQIAOQIbAwYLCQgHAwIGFQgCCQoLBBYC
 AwECHgECF4AWIQSf1RxT4LVjGP2VnD0j0NC60T16QwUCXR3BUgAKCRAj0NC60T16Qyd/D/9s
 x0puxd3lI+jdLMEY8sTsNxw/+CZfyKaHtysasZlloLK7ftYhRUc63mMW2mrvgB1GEnXYIdj3
 g6Qo4csoDuN+9EBmejh7SglM/h0evOtrY2V5QmZA/e/Pqfj0P3N/Eb5BiB3R4ptLtvKCTsqr
 3womxCRqQY3IrMn1s2qfpmeNLUIfCUtgh8opzPtFuFJWVBzbzvhPEApZzMe9Vs1O2P8BQaay
 QXpbzHaKruthoLICRzS/3UCe0N/mBZQRKHrqhPwvjZdO0KMqjSsPqfukOJ8bl5jZxYk+G/3T
 66Z4JUpZ7RkcrX7CvBfZqRo19WyWFfjGz79iVMJNIEkJvJBANbTSiWUC6IkP+zT/zWYzZPXx
 XRlrKWSBBqJrWQKZBwKOLsL62oQG7ARvpCG9rZ6hd5CLQtPI9dasgTwOIA1OW2mWzi20jDjD
 cGC9ifJiyWL8L/bgwyL3F/G0R1gxAfnRUknyzqfpLy5cSgwKCYrXOrRqgHoB+12HA/XQUG+k
 vKW8bbdVk5XZPc5ghdFIlza/pb1946SrIg1AsjaEMZqunh0G7oQhOWHKOd6fH0qg8NssMqQl
 jLfFiOlgEV2mnaz6XXQe/viXPwa4NCmdXqxeBDpJmrNMtbEbq+QUbgcwwle4Xx2/07ICkyZH
 +7RvbmZ/dM9cpzMAU53sLxSIVQT5lj23WLkCDQROiX9FARAAz/al0tgJaZ/eu0iI/xaPk3DK
 NIvr9SsKFe2hf3CVjxriHcRfoTfriycglUwtvKvhvB2Y8pQuWfLtP9Hx3H+YI5a78PO2tU1C
 JdY5Momd3/aJBuUFP5blbx6n+dLDepQhyQrAp2mVC3NIp4T48n4YxL4Og0MORytWNSeygISv
 Rordw7qDmEsa7wgFsLUIlhKmmV5VVv+wAOdYXdJ9S8n+XgrxSTgHj5f3QqkDtT0yG8NMLLmY
 kZpOwWoMumeqn/KppPY/uTIwbYTD56q1UirDDB5kDRL626qm63nF00ByyPY+6BXH22XD8smj
 f2eHw2szECG/lpD4knYjxROIctdC+gLRhz+Nlf8lEHmvjHgiErfgy/lOIf+AV9lvDF3bztjW
 M5oP2WGeR7VJfkxcXt4JPdyDIH6GBK7jbD7bFiXf6vMiFCrFeFo/bfa39veKUk7TRlnX13go
 gIZxqR6IvpkG0PxOu2RGJ7Aje/SjytQFa2NwNGCDe1bH89wm9mfDW3BuZF1o2+y+eVqkPZj0
 mzfChEsiNIAY6KPDMVdInILYdTUAC5H26jj9CR4itBUcjE/tMll0n2wYRZ14Y/PM+UosfAhf
 YfN9t2096M9JebksnTbqp20keDMEBvc3KBkboEfoQLU08NDo7ncReitdLW2xICCnlkNIUQGS
 WlFVPcTQ2sMAEQEAAYkCHwQYAQIACQUCTol/RQIbDAAKCRAj0NC60T16QwsFD/9T4y30O0Wn
 MwIgcU8T2c2WwKbvmPbaU2LDqZebHdxQDemX65EZCv/NALmKdA22MVSbAaQeqsDD5KYbmCyC
 czilJ1i+tpZoJY5kJALHWWloI6Uyi2s1zAwlMktAZzgGMnI55Ifn0dAOK0p8oy7/KNGHNPwJ
 eHKzpHSRgysQ3S1t7VwU4mTFJtXQaBFMMXg8rItP5GdygrFB7yUbG6TnrXhpGkFBrQs9p+SK
 vCqRS3Gw+dquQ9QR+QGWciEBHwuSad5gu7QC9taN8kJQfup+nJL8VGtAKgGr1AgRx/a/V/QA
 ikDbt/0oIS/kxlIdcYJ01xuMrDXf1jFhmGZdocUoNJkgLb1iFAl5daV8MQOrqciG+6tnLeZK
 HY4xCBoigV7E8KwEE5yUfxBS0yRreNb+pjKtX6pSr1Z/dIo+td/sHfEHffaMUIRNvJlBeqaj
 BX7ZveskVFafmErkH7HC+7ErIaqoM4aOh/Z0qXbMEjFsWA5yVXvCoJWSHFImL9Bo6PbMGpI0
 9eBrkNa1fd6RGcktrX6KNfGZ2POECmKGLTyDC8/kb180YpDJERN48S0QBa3Rvt06ozNgFgZF
 Wvu5Li5PpY/t/M7AAkLiVTtlhZnJWyEJrQi9O2nXTzlG1PeqGH2ahuRxn7txA5j5PHZEZdL1
 Z46HaNmN2hZS/oJ69c1DI5Rcww==
Organization: ARM Ltd
Message-ID: <1c5896c2-a636-c726-231d-2f32a7ba726c@arm.com>
Date: Wed, 31 Jul 2019 11:55:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <6f3933b5-3b6c-f76b-3c7b-8cbf4e23108b@gmx.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_035533_794447_E5CEBD34 
X-CRM114-Status: GOOD (  24.24  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Stephen Boyd <sboyd@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Mark Brown <broonie@kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/07/2019 19:33, Stefan Wahren wrote:
> Hi Marc,
>>> Hi Marc,
>>>
>>> Am 23.07.19 um 20:13 schrieb Marc Zyngier:
>>>> On Wed, 17 Jul 2019 23:16:04 +0200
>>>> Stefan Wahren <wahrenst@gmx.net> wrote:
>>>>
>>>>> This adds minimal support for the new Raspberry Pi 4 without the
>>>>> fancy stuff like GENET, PCIe, XHCI, 40 bit DMA and V3D. The RPi 4 is available
>>>>> in 3 different variants (1, 2 and 4 GB RAM), so leave the memory size to zero
>>>>> and let the bootloader take care of it.
>>>>>
>>>>> Other differences to the Raspberry Pi 3:
>>>>> - additional GIC 400 Interrupt controller
>>>>> - new thermal IP and HWRNG
>>>>> - additional MMC interface (emmc2)
>>>>> - additional UART, I2C, SPI and PWM interfaces
>>>>>
>>>>> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
>>>>>
>>>>> ...
>>>>> +	};
>>>>> +
>>>>> +	timer {
>>>>> +		compatible = "arm,armv7-timer";
>> BTW, this should be "arm,armv8-timer".
>>
>>>>> +		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) |
>>>>> +					  IRQ_TYPE_LEVEL_LOW)>,
>>>>> +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) |
>>>>> +					  IRQ_TYPE_LEVEL_LOW)>,
>>>>> +			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) |
>>>>> +					  IRQ_TYPE_LEVEL_LOW)>,
>>>>> +			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) |
>>>>> +					  IRQ_TYPE_LEVEL_LOW)>;
>>>>> +		arm,cpu-registers-not-fw-configured;
>>>> Really? :-(
>>> i asked about that [1] and they said that the arm stubs [2] only set the
>>> timer frequency and zeroing CNTVOFF_EL2.
>> Who is "they"? As long as it is done on all CPUs, that's the right
>> thing to do, and this property is pretty useless in that case.
> 
> "They" are the developer at Raspberry Pi Trading. I forwarded some
> questions regarding this topic to them, but didn't get a reply yet. My
> current understanding is that the armv8 stubs do setup the timer, but
> the armv7 stubs do not. So we probably need to keep it.

From what I gather, these stubs can be updated (and apparently are
updated regularly). So why not fix them once and for all?

> 
>>
>>>>> +		always-on;
>>>> I'm pretty sure that's not the case. This indicates that you can power
>>>> the CPU off, bring it back on, and yet have your timer alive and
>>>> kicking. The only case this actually exists is for VMs. I can see it
>>>> being cargo-culted from previous RPi revisions, but that doesn't make
>>>> it true.
>>> They said that they used this to suppress high interrupt load for the
>>> timers.
>> Indeed, and that's the only thing the kernel can do if it isn't
>> provided with a global timer that can be used as a backup then the
>> CPUs transition to a deep idle state where the timers are not actually
>> running.
>>
>> If you have such a global timer, enable it and you'll see the
>> interrupt rate dropping like a rock. Don't you have a
>> brcm,bcm2835-system-timer stashed somewhere?
> 
> I've got the feedback that the system timer still exists. Unfortunately
> i don't have the new interrupt definition yet. So i need to wait for
> this before sending a new version of this series.

Sure, no problem. I also wonder whether the SoC has the memory-mapped
generic timer, which would make a lot of sense...

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
