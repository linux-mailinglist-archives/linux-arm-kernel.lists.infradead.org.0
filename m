Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C37896C2A9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 23:32:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1zdzWXguFuxQM9K7SYmCwf0BehreW7yjzdQ/sQxhwo8=; b=fWKF+MKEYU3x/x
	nRPb3YVKP6TDkN5EUyRUPZjoDOA7WwKEPDJvstvzHjXQm8kGJb+t19l5hbwStY5699dbj9gDaFANC
	xQ/G0vuEYh+BtM19tOn3WYp9GYbqM3JxpHwn0V24Iy85Eajw7lzrIYu05PgsoqcBLWgXhXZzC50AO
	F5FzdNdcQoVK6Ns8+8MTcvSKf0gS2LV6ETIo+HAV1ptXp/rTYuACI0I3/9D/lYbKSgAfKq/91EtGO
	40cVOBSycvh9yzzuJ2zsxz+qzLrmP/81ED5AavJWoXsPeJ3z9sZlizbK5LSAxraGEcV4bllqJwHkF
	XAoSCe3hFwjMAA5vkV+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnrXd-000846-2j; Wed, 17 Jul 2019 21:32:49 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnrXO-00083O-Sl; Wed, 17 Jul 2019 21:32:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563399139;
 bh=4dqt+fFOEEfbl9asEddCjFKOOBUm9UCS3d/o0b87bO0=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=NekURAyNlhqtY+GoqsWAyY+gmZ2U6svM+/tMsScW9erXV410w6q0v3DKyAyK68O0B
 Xf8/3iWNg3cp2Y3zQqgvlEfTrWo721lrxF4FRt3STfYj/rUv9h57qRnn8Sa3mFxDiP
 BMGbIYLA0ug/fB6t1slthLLdMoOzJdhEpdaNtJHw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.103]) by mail.gmx.com (mrgmx001
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0LsChr-1iRi2O0oXf-013t3Y; Wed, 17
 Jul 2019 23:32:19 +0200
Subject: Re: [PATCH RFC 18/18] ARM: dts: Add minimal Raspberry Pi 4 support
To: Florian Fainelli <f.fainelli@gmail.com>, Eric Anholt <eric@anholt.net>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Mark Brown <broonie@kernel.org>
References: <1563398164-2679-1-git-send-email-wahrenst@gmx.net>
 <1563398164-2679-5-git-send-email-wahrenst@gmx.net>
 <57dea1a5-2a33-5644-05c5-174753307fc0@gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <abde5797-3bd4-c0c0-ec8a-f2408121dc8f@gmx.net>
Date: Wed, 17 Jul 2019 23:32:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <57dea1a5-2a33-5644-05c5-174753307fc0@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:1Sy6eM6oNyEOnA4LCKv7JqTA59Gusl8Skshrgfcf01a2I1VVRSp
 1kxqStCjKEvprp21C+kOcr/szLtp41HmZUugM415vDyyb0RmabjVZCrpkdtdDmxWZzJ67I5
 16hqdqYc1GhB1xXIhYA9/01Jaam+eM6zuVAnjXI2tt/MIABcjTv9VSpMGk5789iylQe4zXA
 wCQ5/80r9sq8FjciBI57w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Oe8GwltFnuw=:4Pt+8vuy3SKoUSo6zefU19
 QxR0RnRs7VLX7ePuJV4aNmMr/o6QxOFpLLWAUX3mSb5h/47Ky5OI/pj0vdM0JgZk3J1IqtTM8
 W0S7WMBqzz+ndPIpYBdF+b21KqMBZxDRpKq4KPFSB+5iJqxJSb/M8FXD/QGPhUQP0DvIkKZx9
 bMWWZMdpkZaDuG8chlE1RlwGdpqFxF2R8WuG5KRSjqnrI7c4MLtOx9UriYE+nsnhU+o/b8DQh
 Cqfyyt8U2dT459w622u1rkMTaYx0dxKJhi/r2WQ5XsqREApZwQ+Iz6IHJbr6KBQBk4WGvXp+F
 ZadVE7v48IpzT/jjhBmpxAn9AvRuprs6VidYOANTYMTaQV7JxA3+S6nmqlTMvq8t+BCkbUxKl
 OQjmSjPmIsiyTKRPJcOB1J5G2hUva8vqH8t5WoGQn6Npk6VSxmRm9dvU2jt3p/AlgbJSvzgLl
 g2Rc0+vTFWR0pAv0mKtQrV6ynMCPeM0s5nYJbC9Ffv3DVNur6c8AjYUdBeN7dkP3WqDUbHYF3
 Fkd2Pledi3DtrTAT984N9r0Ec1ch0cLQvIunTpSMrWYzKzA4/oliD3VkgpJpoHwNhORNVC/Fy
 3Dd+nVNIpLa7k2THVJJ4G/A+3VgD933GNxZ2V5e4fAmF+gR0D+UC2nSrMo6guSWnTd4aPEzQH
 BQkUfQSZcXNOp4Lg29evra6PMyKVCRaAeZsNmKCTzRmFTlcfrXSTiCHIPoqFx9Jdvz2yemjr7
 UIjU+oSEXpx5rCSQfTtDOjIfOlROy43DrTVJXWC2XFSy2hfHWDfGEU0qmunFWnrrl89Kp7HLp
 Td+VpYlVWjWDFYzvrR0DEgUhdBFRuMv0e3sqDwWupQtn77oT0aeZzU9y7rD1jyK+umsX0r1t1
 J78RJUv+k4N4Sbqr0yxF/6wpaxpC3Ps9Nd4O2kVd/7/gQplkkZg/wWulCaMv2QOyhH5LEenOE
 bk37r+Ndwnih9EX9hLih7NYmNv2WtMl4QxVDput37zleS5aWTjujzHK0BXWf3oBrlUc64mmva
 g5QzFSx57sf1h+NBJp/M/nj95F4K1+m8Tfd+//1Akz/0bpakRAOPpEcZJgokMWzCup8qVD7p4
 IPltC5oTRzTHSs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_143235_226119_46C6ECAA 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

Am 17.07.19 um 23:22 schrieb Florian Fainelli:
>
> On 7/17/2019 2:16 PM, Stefan Wahren wrote:
>> This adds minimal support for the new Raspberry Pi 4 without the
>> fancy stuff like GENET, PCIe, XHCI, 40 bit DMA and V3D. The RPi 4 is avail=
>> able
>> in 3 different variants (1, 2 and 4 GB RAM), so leave the memory size to z=
>> ero
>> and let the bootloader take care of it.
>>
>> Other differences to the Raspberry Pi 3:
>> - additional GIC 400 Interrupt controller
>> - new thermal IP and HWRNG
>> - additional MMC interface (emmc2)
>> - additional UART, I2C, SPI and PWM interfaces
>>
>> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
>> =2D--
> [snip]
>
>> +		rng@7e104000 {
>> +			interrupts =3D <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
>> +
>> +			/* RNG is incompatible to brcm,bcm2835-rng */
>> +			status =3D "disabled";
> It's an iproc-rng200, so you can either re-use the bcm7211-rng
> compatible string that was just recently added or you can define a
> bcm2838-rng if you prefer.

i know [1], but this is not essential and the series is long enough.

Thanks
Stefan

[1] -
https://github.com/raspberrypi/linux/commit/5e74aadfd1e0e6c00994521863ba044ce25b40de#diff-472f0181289458c487c07a343f767a81


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
