Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E08677F1C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 13:00:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qIzkq979v1DIfFN9QUITg+ovQPqrxiM2ReXn6p71g74=; b=DIhzeOGT6UF8Sa
	3bENNLEVQ8QB5em5jZn9Xd+LyWsBaAz8O2Cnfc5sXxPI2CN+fWIX4wF7OrByAF2v1P0EUgGJt8gdN
	ewahmNU38hAYU0g3qMGDLZDmJNjESALKXa8GjaxuXy/eIdZa4buH1a8VsWnAz6VzqpGLjTHbrWCjB
	Z8gumpYN8cLvqzKrbng56Wgekad0k4/FPkaPPBTTvAMdGKv4yB301NogJx6tI6hC15QGTUE1c290p
	uWdv/aGqyhR+ySD/F+RCAta3kznL1bnTBJm/f25/eNP/WlCuiE9fj1T+VZlWjd7h/4OoxzoJV9hLg
	w2m0iFv6VhpCY0BjYZug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrguQ-0006bj-3W; Sun, 28 Jul 2019 11:00:10 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrgtf-0006b6-AW; Sun, 28 Jul 2019 10:59:25 +0000
Received: from [192.168.1.162] ([37.4.249.143]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MTRhS-1hx4eX2PL2-00TkC9; Sun, 28 Jul 2019 12:59:01 +0200
Subject: Re: [PATCH RFC 18/18] ARM: dts: Add minimal Raspberry Pi 4 support
To: Marc Zyngier <marc.zyngier@arm.com>, Stefan Wahren <wahrenst@gmx.net>
References: <1563398164-2679-1-git-send-email-wahrenst@gmx.net>
 <1563398164-2679-5-git-send-email-wahrenst@gmx.net>
 <20190723191326.3afdff83@why>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <ebcb934d-7bab-bfc7-3371-1b5032b67ec7@i2se.com>
Date: Sun, 28 Jul 2019 12:58:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723191326.3afdff83@why>
Content-Language: en-US
X-Provags-ID: V03:K1:dvJjV3zHZn+oqCIPkmHwiDSu6I4OA4zKHZSdzsFj3LWRemg8fL9
 MCLUEkOAH3IDkandjQIc7mxs/pVA2D4gW2/aaH0MSjwYauJLDHuvrYPdz0f2cTknSqc9jNc
 6K12zyGJrmD0yr+Lk9fWgvYgYF46edIreLir7MiCBuDl8eADY0MOh1wTQ6+uB5D4cSBL7xV
 QVLU6sOXpDJ0sOVkD1Gpw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6Fq+gLHahKA=:RrsTieCxIc0I9BhYSFgsjK
 EEVxIiRCaDdAdL3E9VeU0QzmTUDNGWrTt/2Ehd5nTNTLi0vlqBeDY2V5qXpWt4O5B9TtXIDO2
 wI5s42ys66/TYBMMytUSs/ZBudgn697viNHSVghbzTjLRr9BfyHRnCUry/pMARqrgHdg6Q7/n
 ABH+NlZrgqLf1NyoH9EGPhuk/7U89OkVDvtAI2ngXvZfLbftR8HrU7bYt8+Tb/Dr2MAN4deuW
 lUtYoXLM5MmPfW3EFWBW+UN8x7/ORjtve/06oxrZ/HjjDbR23fKyx5H4G7qfJsaG8vx8/p5z2
 dvtME+n6mflgj0WDelizt27ONDUOUg/IaDC7oM8f0VIeasp6A2svfMdWLhPlt1DtzalVQo0pj
 bm7rIKrMDR/8bmPnjhtrdWaRvMg+nI4j4cSmDyNd+4PZfex9rGfImzxcIw17saKVb7QwW6Zie
 UrbQcIZ1+NcLFKtbhQQlq7PbL9/Nw1lTn8WDNIM+BQaLv+bN0TvSknfSJHlpnhK1hq3dvKEq9
 gPFCOkB80K+7tHTap+mkn7EvPxFGq/p81zp3DbbPKRxYRQCw9EBJbZ6rQvzKViKVwaMG8coYm
 DvvgN7TRlIP0gFeLokh9oe4HQ4wzTh4PXpssIYNXiXja53XIL/zxYMQQIpy52glYfbrjPmPLN
 l7pqRgNAVUgNBREtked5kJXYitbb+FWZtmB1YX0m/FqLE+hSQOXhgdZN2vx+GfY0+Vs2d7oKi
 PM/eBUUKPRZ5DwXVRxSSqW65SCbg0JciEF0WHxf1DFXZLWN4cM7LY/zklcU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_035923_690298_A558F2E5 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Am 23.07.19 um 20:13 schrieb Marc Zyngier:
> On Wed, 17 Jul 2019 23:16:04 +0200
> Stefan Wahren <wahrenst@gmx.net> wrote:
>
>> This adds minimal support for the new Raspberry Pi 4 without the
>> fancy stuff like GENET, PCIe, XHCI, 40 bit DMA and V3D. The RPi 4 is available
>> in 3 different variants (1, 2 and 4 GB RAM), so leave the memory size to zero
>> and let the bootloader take care of it.
>>
>> Other differences to the Raspberry Pi 3:
>> - additional GIC 400 Interrupt controller
>> - new thermal IP and HWRNG
>> - additional MMC interface (emmc2)
>> - additional UART, I2C, SPI and PWM interfaces
>>
>> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
>>
>> ...
>> +	};
>> +
>> +	timer {
>> +		compatible = "arm,armv7-timer";
>> +		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) |
>> +					  IRQ_TYPE_LEVEL_LOW)>,
>> +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) |
>> +					  IRQ_TYPE_LEVEL_LOW)>,
>> +			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) |
>> +					  IRQ_TYPE_LEVEL_LOW)>,
>> +			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) |
>> +					  IRQ_TYPE_LEVEL_LOW)>;
>> +		arm,cpu-registers-not-fw-configured;
> Really? :-(
i asked about that [1] and they said that the arm stubs [2] only set the
timer frequency and zeroing CNTVOFF_EL2.
>
>> +		always-on;
> I'm pretty sure that's not the case. This indicates that you can power
> the CPU off, bring it back on, and yet have your timer alive and
> kicking. The only case this actually exists is for VMs. I can see it
> being cargo-culted from previous RPi revisions, but that doesn't make
> it true.

They said that they used this to suppress high interrupt load for the
timers.

Stefan

[1] - https://github.com/raspberrypi/linux/issues/3101
[2] - https://github.com/raspberrypi/tools/blob/master/armstubs/armstub8.S

>
> Thanks,
>
> 	M.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
