Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3CED7B209
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 20:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E0BrmEebBxm685zC9bKDMhc4HnuL0p0nX5KZAcQge4U=; b=k50dCXpLuzbZ1H
	N5ceUWgXTLXfmqGtxRrzn8LCch49NEzJvYvHEGXTAed3KMxnpWfpW2+qaBjNIU+1zBxIL5mRP8IJ2
	Y8tH+P2++47tNzF9w/ZHkNKLnvc2kOFOq3E0U0BcCAGW7aJaY2KLA2XkOyn7tLuC2AiJrA/dupFUk
	BSSzUA+FWFMXRRAWwcCzHI28OJ49OEZKeIdGvhsrdeGTAlQQIMscB4t8h1nPnKiSdyUNsP+4O48oX
	8lkPT8s7Kv9Lty6/aV0oviUEFOQA6S8TS7SzgQMXlpxKc9Int9z88y1DNdqV+9BFEKRpgLVzXPO9h
	OEXV3B3DgUUD+/okNUYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsWwg-0007RK-M6; Tue, 30 Jul 2019 18:33:58 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsWwV-0007QX-SF; Tue, 30 Jul 2019 18:33:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1564511605;
 bh=J1a7wihmnGH91L2DQ/qKiHVK9XUqwB7rjCcBDn9lzJY=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Ny0btmd+EAVGoXA+iM8KysJTNw/b2oMSMNR807H4/NveY+K7XjTXymNSrhU6L70u7
 h6Oagzw63CfHhgyBsuWjyX4lP+oiX7TcTc9MawJghqMtzFKDYIYW93BXLvEjsmfQfi
 cypv3JVCbzwzd7MNEa4v7SlkbK2pinErj5a8VyQQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.135]) by mail.gmx.com (mrgmx002
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0MRGPP-1hnwk60RfL-00UY2k; Tue, 30
 Jul 2019 20:33:25 +0200
Subject: Re: [PATCH RFC 18/18] ARM: dts: Add minimal Raspberry Pi 4 support
To: Marc Zyngier <marc.zyngier@arm.com>, Stefan Wahren <stefan.wahren@i2se.com>
References: <1563398164-2679-1-git-send-email-wahrenst@gmx.net>
 <1563398164-2679-5-git-send-email-wahrenst@gmx.net>
 <20190723191326.3afdff83@why> <ebcb934d-7bab-bfc7-3371-1b5032b67ec7@i2se.com>
 <86v9vmmlsd.wl-marc.zyngier@arm.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <6f3933b5-3b6c-f76b-3c7b-8cbf4e23108b@gmx.net>
Date: Tue, 30 Jul 2019 20:33:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <86v9vmmlsd.wl-marc.zyngier@arm.com>
Content-Language: en-US
X-Provags-ID: V03:K1:ZYOkNb/VlCxdm8gvOFHuLgjO2Z9TQWut1ogU1MC3q1eY81JfvFj
 Etk29P9zez6NxMPgalcAwpXPL1VgyV5m4KFwmRuWBpO9cxcqC+y/3lXFK909kN+Uj/9d0MA
 U1C3sPzhEqUeimZKZM8eI9GTHfGQX4tf/3iqauXa4w8OIIw//ac5awZ/8BzImP9NNNF8Z16
 fynpnSX1I7kVhf2jKrz6w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:r/jeGZj5axc=:lC1DA6Hj6v1Xis3wTTgiMN
 tCxU81n0ufcPtGWI1hYwyV6VQhkT6EUawd0bXJkiMl/Irm1uSnBNsjQmlD+JY+4HF2rJDGJGH
 WBJOeKvsaeauLf4C6Aq4KtAuX7PR3Oyr9U2SrAq5EjWiPsQulcJr4JZGIqi8C5Sok77KgpdQa
 xzJB33qIwNIQX8+FnZwAStM0vOkL6sR9myRLOT05WaxL4rnjGUaE020vMVVevkMa/DoGAYXVj
 659a2CzHExF833u56nJFpx5P82zpPPR4rbR5qcZ8TaSkmTwpksa4dsGDbeFeGE+cG7ZU3p4Tz
 feC2Rh5YkraNCKGuSBlHAvZKG0gY84WswE0/bEzYin5WNHBU7nOD1/o5DUSLC1RjRUGI9U3Mg
 QYWyeg2kft7xUT/OPam19KTLL6URyVzfnfiOlhKo/J9ljWduEcbzKf2irYBef+j00nbZfRirS
 ysgvPNBw4ZH1VFgMwO3+1uH6swAy1k2OC4toSjliC6DPgwtGq3Egtixfn0YNaebHAkwBFdqYT
 FSvouVMWsv15K21m+6Xwup7jIt6ewaWYGENeJogd0YKUDvw7fMJN0i6mjYy0A/KYg89XeKvSg
 Eahemdw/VW5ZTOetYGAd3V0U2snrXEHveofzvdLYOHcAhGNul7OrJUql6Z5HqtzbVy0xEzigD
 KyRLSpHz4pqby2YOPALpErNaEAgaH+bEBCXiraRJqnWIr2thugvD9yJ0qA8/qhGecxA+FNqps
 TDH587NZmpTUYI7o43orHkAwuWFs08qH/swD3IxDtoogS8WGK8LJXI9KHoh4UALv4RxANh0qH
 r9jY/bRPhQVIhzJTlAqrJedptnrAuEhm646XGaFzUn75ii+UL6cWfmA6xUcuLnpCwbxhJNzNX
 jWnGtcREfMGx7thi9VANREaFe9CA3Ud56SNdLlWThGBDDmru1SAtruwvU6FNmkQBrxcgwlEI+
 xCpfYW6iG0MZwT+vgmo2eFBQemiog8xBL+rSUQb7xUEHAu6rtVyVtLuRapyLK0Zm15sdQ6/Qj
 WV2X0kdK2ceiW/JqXnmrTOU7mPBFtMWyUv3ZrfMMCX/zMVXc1sA0mrEUD/4CSWDN0cm1l87B6
 gjCMrz9BI4bsR4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_113348_211285_AD36993A 
X-CRM114-Status: GOOD (  25.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi Marc,
>> Hi Marc,
>>
>> Am 23.07.19 um 20:13 schrieb Marc Zyngier:
>>> On Wed, 17 Jul 2019 23:16:04 +0200
>>> Stefan Wahren <wahrenst@gmx.net> wrote:
>>>
>>>> This adds minimal support for the new Raspberry Pi 4 without the
>>>> fancy stuff like GENET, PCIe, XHCI, 40 bit DMA and V3D. The RPi 4 is available
>>>> in 3 different variants (1, 2 and 4 GB RAM), so leave the memory size to zero
>>>> and let the bootloader take care of it.
>>>>
>>>> Other differences to the Raspberry Pi 3:
>>>> - additional GIC 400 Interrupt controller
>>>> - new thermal IP and HWRNG
>>>> - additional MMC interface (emmc2)
>>>> - additional UART, I2C, SPI and PWM interfaces
>>>>
>>>> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
>>>>
>>>> ...
>>>> +	};
>>>> +
>>>> +	timer {
>>>> +		compatible = "arm,armv7-timer";
> BTW, this should be "arm,armv8-timer".
>
>>>> +		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) |
>>>> +					  IRQ_TYPE_LEVEL_LOW)>,
>>>> +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) |
>>>> +					  IRQ_TYPE_LEVEL_LOW)>,
>>>> +			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) |
>>>> +					  IRQ_TYPE_LEVEL_LOW)>,
>>>> +			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) |
>>>> +					  IRQ_TYPE_LEVEL_LOW)>;
>>>> +		arm,cpu-registers-not-fw-configured;
>>> Really? :-(
>> i asked about that [1] and they said that the arm stubs [2] only set the
>> timer frequency and zeroing CNTVOFF_EL2.
> Who is "they"? As long as it is done on all CPUs, that's the right
> thing to do, and this property is pretty useless in that case.

"They" are the developer at Raspberry Pi Trading. I forwarded some
questions regarding this topic to them, but didn't get a reply yet. My
current understanding is that the armv8 stubs do setup the timer, but
the armv7 stubs do not. So we probably need to keep it.

>
>>>> +		always-on;
>>> I'm pretty sure that's not the case. This indicates that you can power
>>> the CPU off, bring it back on, and yet have your timer alive and
>>> kicking. The only case this actually exists is for VMs. I can see it
>>> being cargo-culted from previous RPi revisions, but that doesn't make
>>> it true.
>> They said that they used this to suppress high interrupt load for the
>> timers.
> Indeed, and that's the only thing the kernel can do if it isn't
> provided with a global timer that can be used as a backup then the
> CPUs transition to a deep idle state where the timers are not actually
> running.
>
> If you have such a global timer, enable it and you'll see the
> interrupt rate dropping like a rock. Don't you have a
> brcm,bcm2835-system-timer stashed somewhere?

I've got the feedback that the system timer still exists. Unfortunately
i don't have the new interrupt definition yet. So i need to wait for
this before sending a new version of this series.

Best regards
Stefan Wahren

>
> If you don't have such a timer, then the question is whether the CPUs
> can go into a deep enough sleep state where the timer comparator is
> disabled, leading to missed events. If this system can only reach very
> shallow sleep states, then always-on is OK. Otherwise, this is a total
> lie and you're likely to miss timer events.
>
> Thanks,
>
> 	M.
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
